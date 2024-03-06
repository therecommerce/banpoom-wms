package com.sgsone.returnrescue.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sgsone.returnrescue.dao.QnaDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.QnaService;
import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.naverVO.Contents;
import com.sgsone.returnrescue.vo.naverVO.ProductQnaAnswerRequestVO;
import com.sgsone.returnrescue.vo.naverVO.ProductQnaVO;
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
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.net.ssl.SSLContext;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class QnaServiceImpl implements QnaService {

    protected Log logger = LogFactory.getLog(AccountServiceImpl.class);

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private QnaDao customerDao;

    public List<QnaVO> selectQnaBoardList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<QnaVO> customerVOList = new ArrayList<>();

        try {
            customerVOList = customerDao.selectQnaBoardList(params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

        }
        return customerVOList;
    }

    @Override
    public List<Contents> selectNaverQnaBoardList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Contents> productQnaVOList = new ArrayList<>();

        try {
            if(params.get("answered") != null && params.get("answered") != "" ){
                params.put("answered", params.get("answered").toString().split(","));
            }

            productQnaVOList = customerDao.selectNaverQnaBoardList(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return productQnaVOList;
    }

    public QnaVO selectQnaDetail(String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        QnaVO customerVO = new QnaVO();

        try {
            customerVO = customerDao.selectQnaDetail(param);
            return  customerVO;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

        }
        return null;
    }

    @Override
    public Contents selectNaverQnaDetail(String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        Contents contents = new Contents();

        try {
            contents = customerDao.selectNaverQnaDetail(param);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            contents = null;
        }
        return contents;
    }

    public Integer selectQnaListCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();


        try {
            Integer total = customerDao.selectQnaListCount(params);
            return  total;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

        }
        return null;
    }

    @Override
    public Integer selectNaverQnaBoardListTotal(Map<String ,Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            result = customerDao.selectNaverQnaBoardListTotal(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            result = -1;
        }
        return result;
    }

    public int insertQnaDetailAnswer(QnaVO qnaVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return customerDao.insertQnaDetailAnswer(qnaVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public  int insertQnaAnswerImage(QnaVO qnaVO){
        return customerDao.insertQnaAnswerImage(qnaVO);
    }

    public List<Integer> selectQnaImageQuestion(QnaVO qnaVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = customerDao.selectQnaImageQuestion(qnaVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<Integer> selectQnaImageAnswer(QnaVO qnaVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = customerDao.selectQnaImageAnswer(qnaVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public void updateNaverProductQna(Contents contents) {

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
            String url = "https://therecommerce.kr/naver/modifyqnaanswer/" + contents.getQuestionId();

            ProductQnaAnswerRequestVO parameter = new ProductQnaAnswerRequestVO();
//            parameter.setQuestionId(Long.valueOf(contents.getQuestionId()));
            parameter.setCommentContent(contents.getAnswer());

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
