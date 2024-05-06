package com.sgsone.returnrescue.schedule;


import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sgsone.returnrescue.exception.ExceptionFactory;
//import com.hmibi.smr.service.impl.ScheduleServiceImpl;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.service.HistoryService;
import com.sgsone.returnrescue.service.WarehouseService;
import com.sgsone.returnrescue.vo.HistoryVO;
import com.sgsone.returnrescue.vo.InventoryVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import com.sgsone.returnrescue.vo.delivery.TrackingDTO;
import com.sgsone.returnrescue.vo.delivery.TrackingVO;
import com.sgsone.returnrescue.vo.naverVO.ProductQnaAnswerRequestVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.client.HttpClient;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.ssl.SSLContextBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.scheduling.support.PeriodicTrigger;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import javax.net.ssl.SSLContext;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

@Component
public class SchedulerService {

    protected Log logger = LogFactory.getLog(SchedulerService.class);

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    HistoryService historyService;

    @Autowired
    CommonService commonService;

    @Autowired
    WarehouseService warehouseService;

    @Scheduled(cron = "0 0 0 * * *")
    public void midnightScheduler() {
        batchReturnItem();
    }

    @Scheduled(cron = "0 */20 * * * *")
    public void twentyMinutesScheduler() {
        updateHanjinTrackingNo();
    }

    @Scheduled(cron = "0 */30 * * * *")
    public void thirtyMinutesScheduler() {
        batchUpdateTrackingHistory();
        updateDeliveryState();
//        updateOrderDecide();  구매확정 로직 수정필요. 1차 오픈 시 미개발 메뉴
    }

//    @Scheduled(cron = "0/10 * * * * *")
//    public void aaa() {
////        selectNaverProductQna();
//        updateNaverProductQna("538546141");
//    }

    public void batchReturnItem() {
        SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");
        int resultCnt = 0;
        try {
            logger.info("==============상품 가격 변경 시작 : " + sDate.format(new Date()) + "==============");
            resultCnt = commonService.batchProductPrice();
        } catch (Exception ex){
            logger.info("==============상품 가격 변경 에러발생==============");
            logger.error(ex.getMessage());
        }
        logger.info("==============상품 가격 변경 시작 : "+sDate.format(new Date())+", 변경데이터 :"+resultCnt+"==============");
    }

    public void batchUpdateTrackingHistory(){

    	try {
            List<TrackingVO> trackingVOList = historyService.selectUpdateTrackingHistoryList();
            if(trackingVOList != null && trackingVOList.size() != 0) {
                for (TrackingVO trackingVO : trackingVOList) {
                    String url = "https://therecommerce.kr/crawling?code="+ trackingVO.getTracking_no()+"&company=HJ";
                    RestTemplate restTemplate = new RestTemplate();
                    ResponseEntity<String> response = restTemplate.getForEntity(url,String.class);
                    ObjectMapper objectMapper = new ObjectMapper();
                    objectMapper.configure(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT, true);
                    TrackingDTO trackingDTO = objectMapper.readValue(response.getBody(), TrackingDTO.class);

                    if(trackingDTO != null){
                        if(trackingDTO.getProgress() != null && trackingDTO.getProgress().size() != 0){
                            HistoryVO historyVO = new HistoryVO();
                            historyVO.setProduct_id(trackingVO.getProduct_id());
                            if(trackingVO.getProduct_state().equals("픽업요청")) {
                                historyVO.setState("반품구조대로 이동 중");
                                historyService.insertProductHistory(historyVO);
                                System.out.println();
                                System.out.println("==============상품 픽업요청처리 성공==============");
                            }
                            // else {
                            //     if (trackingDTO.getProgress().get(trackingDTO.getProgress().size() - 1).getInfo().contains("배송완료")) {
                            //         historyVO.setState("도착/입고");
                            //         historyService.insertProductHistory(historyVO);
                            //         System.out.println();
                            //         System.out.println("==============상품 배송완료처리 성공==============");
                            //     }
                            // }
                        }
                    }
                }
            } else {
                System.out.println();
                System.out.println("==============상품상태 업데이트 목록 없음==============");
            }
        } catch (Exception e){
            logger.info("==============상품상태 업데이트 실패==============");
            logger.error(e.getMessage());
        }
    }

    public void updateDeliveryState() {

        try {
            List<ProductListVO> deliveryList = historyService.selectUpdateDeliveryHistoryList();
            if (deliveryList != null && deliveryList.size() != 0) {
                for (ProductListVO productListVO : deliveryList) {
                    String url = "https://therecommerce.kr/crawling?code="+ productListVO.getTracking_number()+"&company=HJ";
                    RestTemplate restTemplate = new RestTemplate();
                    ResponseEntity<String> response = restTemplate.getForEntity(url,String.class);
                    ObjectMapper objectMapper = new ObjectMapper();
                    objectMapper.configure(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT, true);
                    TrackingDTO trackingDTO = objectMapper.readValue(response.getBody(), TrackingDTO.class);

                    if (trackingDTO != null) {
                        if (trackingDTO.getProgress() != null && trackingDTO.getProgress().size() != 0) {
                            HistoryVO historyVO = new HistoryVO();
                            historyVO.setDelivery_no(Integer.toString(productListVO.getDelivery_no()));
                            historyVO.setDelivery_type("주문");
                            if (productListVO.getDelivery_state().equals("배송완료")) {
                                historyVO.setState("배송완료");
                                historyService.insertDeliveryHistory(historyVO);
                                System.out.println();
                                System.out.println("==============배송 완료처리 성공==============");
                            } else {
                                if (trackingDTO.getProgress().get(trackingDTO.getProgress().size() - 1).getInfo().contains("픽업요청")) {
                                    historyVO.setState("배송중");
                                    historyService.insertDeliveryHistory(historyVO);
                                    System.out.println();
                                    System.out.println("==============배송정보 집하 성공==============");
                                }
                            }
                        }
                    }
                }
            } else {
                System.out.println();
                System.out.println("==============배송정보 업데이트 목록 없음==============");
            }
        } catch (Exception e) {
            logger.info("==============배송정보 업데이트 실패==============");
            logger.error(e.getMessage());
        }
    }

    public void updateHanjinTrackingNo(){

        try {
            System.out.println(" =============================== 한진 송장 업데이트 시작 ===============================");
            System.out.println();

            InventoryVO parameterVO = new InventoryVO();
            List<InventoryVO> resultList = warehouseService.selectProductReleaseListNoLimit(parameterVO);

            if (resultList.size() > 0) {
                for (int i = 0; i < resultList.size(); i++) {
                    if(resultList.get(i).getTracking_number() != null){
                        String url = "https://therecommerce.kr/crawling?code="+ resultList.get(i).getTracking_number()+"&company=HJ";
                        RestTemplate restTemplate = new RestTemplate();
                        ResponseEntity<String> response = restTemplate.getForEntity(url,String.class);


                        ObjectMapper objectMapper = new ObjectMapper();
                        objectMapper.configure(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT, true);
                        TrackingDTO trackingDTO = objectMapper.readValue(response.getBody(), TrackingDTO.class);

                        if (trackingDTO.getProgress() != null && trackingDTO.getProgress().size() == 0) {
                            if (trackingDTO.getProgress().get(trackingDTO.getProgress().size() - 1).getInfo().contains("배송완료")) {
                                parameterVO.setOrder_delivery_state("배송완료");
                            } else if(trackingDTO.getProgress().get(trackingDTO.getProgress().size() - 1).getInfo().contains("배송출발")) {
                                parameterVO.setOrder_delivery_state("배송출발");
                            } else if (trackingDTO.getProgress().get(trackingDTO.getProgress().size() - 1).getInfo().contains("접수")) {
                                parameterVO.setOrder_delivery_state("배송접수");
                            } else {
                                parameterVO.setOrder_delivery_state("배송중");
                            }
                            parameterVO.setOrder_request_id(resultList.get(i).getOrder_request_id());
                            warehouseService.updateOrderRequestStateProgress(parameterVO);
                        }
                    }
                }
            }

            System.out.println();
            System.out.println(" =============================== 한진 송장 업데이트 종료 ===============================");
        }catch (Exception e){

        }
    }

    public void updateOrderDecide(){

        try {
            System.out.println("==============자동구매확정 스케쥴러==============");
            System.out.println();

            HistoryVO historyVO = new HistoryVO();
            List<String> deliveryHistory = historyService.selectAllHistoryProduct();
            if (deliveryHistory != null && !deliveryHistory.isEmpty()) {
                historyVO.setDelivery_no_list(deliveryHistory);
                historyVO.setState("정산예정");

                int result = historyService.insertAutoOrderDecide(historyVO);

                if (result > 0) {
                    System.out.println();
                    System.out.println("==============자동구매확정 완료==============");
                } else {
                    System.out.println();
                    System.out.println("==============자동구매확정 실패==============");
                }
            } else {
                System.out.println();
                System.out.println("==============자동구매확정 업데이트 목록 없음==============");
            }
        } catch (Exception e){
            logger.info("==============자동구매확정 실패==============");
            logger.error(e.getMessage());
        }
    }

    private static final ConcurrentHashMap<String, ThreadPoolTaskScheduler> scheduledMap = new ConcurrentHashMap<>();

    private PeriodicTrigger periodicTrigger(int timeTerm) {
        return new PeriodicTrigger(timeTerm, TimeUnit.HOURS);
    }

    public void changeNaverProductState(String product_id) {
        ///모든 인증서 무시
        try{
            HttpClientBuilder httpClientBuilder = HttpClientBuilder.create();

            // 모든 인증서를 신뢰하도록 설정한다
            SSLContext sslContext = new SSLContextBuilder().loadTrustMaterial(null, (X509Certificate[] chain, String authType) -> true).build();
            httpClientBuilder.setSSLContext(sslContext);

            // Https 인증 요청시 호스트네임 유효성 검사를 진행하지 않게 한다.
            SSLConnectionSocketFactory sslSocketFactory = new SSLConnectionSocketFactory(sslContext, NoopHostnameVerifier.INSTANCE);
            Registry<ConnectionSocketFactory> socketFactoryRegistry = RegistryBuilder.<ConnectionSocketFactory>create()
                    .register("http", PlainConnectionSocketFactory.getSocketFactory())
                    .register("https", sslSocketFactory).build();

            PoolingHttpClientConnectionManager connMgr = new PoolingHttpClientConnectionManager(socketFactoryRegistry);
            httpClientBuilder.setConnectionManager(connMgr);

            // RestTemplate 와 HttpClient 연결
            HttpClient httpClient = httpClientBuilder.build();
            HttpComponentsClientHttpRequestFactory requestFactory = new HttpComponentsClientHttpRequestFactory();
            requestFactory.setHttpClient(httpClient);

            RestTemplate restTemplate = new RestTemplate(requestFactory);

            String url = "https://therecommerce.kr/naver/product/modify/" + product_id;
    //        RestTemplate restTemplate = new RestTemplate();
            restTemplate.exchange(url, HttpMethod.PUT, null, String.class);
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void selectNaverProductQna() {

        try {
            RestTemplate restTemplate = new RestTemplate();

            ZonedDateTime utcTime = ZonedDateTime.now().withZoneSameInstant(ZoneOffset.UTC);

//            String url = "https://therecommerce.kr:8981/naver/getqnalist?fromDate=2023-01-01T00:00:00.000Z&toDate=" + utcTime;
            String url = "https://therecommerce.kr/naver/getqnalist?fromDate=2023-01-01T00:00:00.000Z&toDate=" + utcTime;

            restTemplate.postForEntity(url, null, String.class);

//            String url = "https://localhost:8981/naver/getqnalist";
//
//            UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(url)
//                    .queryParam("fromDate", "2023-01-01T00:00:00.000Z")
//                    .queryParam("toDate", utcTime);
//
//            restTemplate.postForEntity(builder.toUriString(), null, String.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateNaverProductQna(String questionId) {

        try {

            HttpClientBuilder httpClientBuilder = HttpClientBuilder.create();

            // 모든 인증서를 신뢰하도록 설정한다
            SSLContext sslContext = new SSLContextBuilder().loadTrustMaterial(null, (X509Certificate[] chain, String authType) -> true).build();
            httpClientBuilder.setSSLContext(sslContext);

            // Https 인증 요청시 호스트네임 유효성 검사를 진행하지 않게 한다.
            SSLConnectionSocketFactory sslSocketFactory = new SSLConnectionSocketFactory(sslContext, NoopHostnameVerifier.INSTANCE);
            Registry<ConnectionSocketFactory> socketFactoryRegistry = RegistryBuilder.<ConnectionSocketFactory>create()
                    .register("http", PlainConnectionSocketFactory.getSocketFactory())
                    .register("https", sslSocketFactory).build();

            PoolingHttpClientConnectionManager connMgr = new PoolingHttpClientConnectionManager(socketFactoryRegistry);
            httpClientBuilder.setConnectionManager(connMgr);

            // RestTemplate 와 HttpClient 연결
            HttpClient httpClient = httpClientBuilder.build();
            HttpComponentsClientHttpRequestFactory requestFactory = new HttpComponentsClientHttpRequestFactory();
            requestFactory.setHttpClient(httpClient);

            RestTemplate restTemplate = new RestTemplate(requestFactory);

//        String url = "https://therecommerce.kr:8981/naver/modifyqnaanswer/" + questionId;
            String url = "https://therecommerce.kr/naver/modifyqnaanswer/" + questionId;

            String commentContent = "답변 테스트";

            ProductQnaAnswerRequestVO parameter = new ProductQnaAnswerRequestVO();
            parameter.setQuestionId(Long.valueOf(questionId));
            parameter.setCommentContent(commentContent);

            ObjectMapper objectMapper = new ObjectMapper();
            String requestBody = objectMapper.writeValueAsString(parameter);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
//            headers.set( "X-API-KEY", "asdasjkdlenjncie2");

            HttpEntity<String> requestEntity = new HttpEntity<>(requestBody, headers);

            restTemplate.exchange(url, HttpMethod.POST, requestEntity, String.class);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
