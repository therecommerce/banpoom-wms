package com.sgsone.returnrescue.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.schedule.SchedulerService;
import com.sgsone.returnrescue.service.*;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.datatable.DataTablesInput;
import com.sgsone.returnrescue.vo.datatable.DataTablesOutput;
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
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.net.ssl.SSLContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/direct/")
public class DirectProductSaleManagementController {

    @Autowired
    private ExceptionFactory exceptionFactory;
    @Autowired
    DirectProductSaleManagementService directProductSaleManagementService;

    @Autowired
    CommonService commonService;

    @Autowired
    HistoryService historyService;

    @Autowired
    ManagerService managerService;

    @Autowired
    ConsignmentService consignmentService;

    @Autowired
    SchedulerService schedulerService;

    @RequestMapping(value = "/productManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String directSale(@ModelAttribute("parameterVO") DirectProductManagementVO parameterVO, HttpSession session, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        ManagerVO managerVO = new ManagerVO();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            }
            if (session.getAttribute("sessionVO") != null) {
                managerVO.setAccount_id(sessionValue.getAccount_id());

                managerVO = managerService.selectManagerAuth(managerVO);

                if (managerVO.isSeller_product_access() == false) {
                    return "redirect:/home.do";
                } else {
                    DirectProductManagementVO productCountVO = directProductSaleManagementService.getDirectProductCount();
                    if (productCountVO == null) {
                        productCountVO = new DirectProductManagementVO();
                    }
                    modelVO.addAttribute("productCountVO", productCountVO);

                    List<DirectProductManagementVO> categoryNameList = directProductSaleManagementService.getCategoryNameList();
                    modelVO.addAttribute("categoryName", categoryNameList);
                }
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "directSale/productManagement";
    }

    @RequestMapping(value = "/productManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput<DirectProductManagementVO> selectDirectSaleList(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DirectProductManagementVO parameterVO = new DirectProductManagementVO();

        parameterVO.setDataTablesInput(input);
        List<DirectProductManagementVO> DirectProductManagementList = directProductSaleManagementService.selectDirectSaleList(parameterVO.getSearchMap());
        int total = directProductSaleManagementService.selectDirectSaleListTotal(parameterVO.getSearchMap());

        DataTablesOutput<DirectProductManagementVO> output = new DataTablesOutput<DirectProductManagementVO>();
        output.setDraw(input.getDraw());
        output.setRecordsTotal(total);
        output.setRecordsFiltered(total);
        output.setData(DirectProductManagementList);

        return output;
    }

    @RequestMapping(value = "/productManagementEdit.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String directSaleEdit(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") DirectProductManagementVO params, Model modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        String product_id = request.getParameter("product_id");

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
                modelVO.addAttribute("account_id", sessionValue.getAccount_id());

                DirectProductManagementVO productDetail = directProductSaleManagementService.getDirectProductDetail(product_id);
                modelVO.addAttribute("productDetail", productDetail);

                List<HistoryVO> historyVOList = directProductSaleManagementService.selectHistoryProduct(product_id);
                modelVO.addAttribute("historyVOList", historyVOList);

                List<CategoryVO> categoryNameList = commonService.selectCategoryList(null);
                modelVO.addAttribute("categoryName", categoryNameList);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "directSale/productManagementEdit";
    }

    @RequestMapping(value = "/updateDirectProductInfo.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView updateProductInfo(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") DirectProductManagementVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        String product_state = request.getParameter("product_state");

        try {

            int info_result = directProductSaleManagementService.updateDirectProductInfo(parameterVO);
            int delivery_result = commonService.insertDeliveryInfo(parameterVO);
            List<HistoryVO> historyVOList = historyService.selectHistoryProduct(parameterVO.getProduct_id());

            if(historyVOList != null && historyVOList.size() != 0 && (!historyVOList.get(historyVOList.size()-1).getState().equals(parameterVO.getProduct_state()))){
                HistoryVO historyVO = new HistoryVO();
                historyVO.setState(product_state);
                historyVO.setProduct_id(parameterVO.getProduct_id());
                historyService.insertProductHistory(historyVO);
            }
            if (info_result >= 0) {
                if (delivery_result >= 0) {
                    modelAndView.addObject("resultCode", "success");
                    modelAndView.addObject("message", "상품정보 수정성공");
                }
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "상품정보 수정실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/updateProductStatus.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView updateProductStatus(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") DirectProductManagementVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {

            int result = directProductSaleManagementService.updateProductStatus(parameterVO);
            int history_result = directProductSaleManagementService.insertChangeProductState(parameterVO);
            if(parameterVO.getProduct_id() != null ){
                schedulerService.changeNaverProductState(parameterVO.getProduct_id());
            } else {
                if (parameterVO.getProduct_id_list() != null){
                    for (String product_id : parameterVO.getProduct_id_list()) {
                        schedulerService.changeNaverProductState(product_id);
                    }
                }
            }

            if (result >= 0) {
                if (history_result >= 0) {
                    modelAndView.addObject("resultCode", "success");
                    modelAndView.addObject("message", "상품상태 수정성공");
                }
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "상품상태 수정실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/changeDirectProductStatus.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView changeDirectProductStatus(HttpSession session, HttpServletRequest request, @RequestBody DirectProductManagementVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {

            int result = directProductSaleManagementService.changeDirectProductStatus(parameterVO);
            int history_result = directProductSaleManagementService.insertChangeProductState(parameterVO);

            if(parameterVO.getProduct_id() != null ){
                schedulerService.changeNaverProductState(parameterVO.getProduct_id());
            } else {
                if (parameterVO.getProduct_id_list() != null){
                    for (String product_id : parameterVO.getProduct_id_list()) {
                        schedulerService.changeNaverProductState(product_id);
                    }
                }
            }
        
            if (result >= 0) {
                if (history_result >= 0) {
                    modelAndView.addObject("resultCode", "success");
                    modelAndView.addObject("message", "상품상태 변경성공");
                }
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "상품상태 변경실패");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/orderDeliveryManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String orderDeliveryList(@ModelAttribute("parameterVO") DirectProductManagementVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ManagerVO managerVO = new ManagerVO();
        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            }
            if (session.getAttribute("sessionVO") != null) {
                managerVO.setAccount_id(sessionValue.getAccount_id());

                managerVO = managerService.selectManagerAuth(managerVO);

                if (managerVO.isSeller_delivery_access() == false) {
                    return "redirect:/home.do";
                } else {

                    modelVO.addAttribute("account_id", sessionValue.getAccount_id());

                    DirectProductManagementVO deliveryCountVO = directProductSaleManagementService.getDeliveryCount();
                    if (deliveryCountVO == null) {
                        deliveryCountVO = new DirectProductManagementVO();
                    }
                    modelVO.addAttribute("deliveryCountVO", deliveryCountVO);
                }
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "/directSale/orderDeliveryManagement";
    }

    @RequestMapping(value = "/orderDeliveryManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput<DirectProductManagementVO> orderDeliveryManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DirectProductManagementVO parameterVO = new DirectProductManagementVO();

        parameterVO.setDataTablesInput(input);
        List<DirectProductManagementVO> productListVO = directProductSaleManagementService.selectOrderDeliveryProductList(parameterVO.getSearchMap());
        int total = directProductSaleManagementService.selectOrderDeliveryProductListTotal(parameterVO.getSearchMap());

        DataTablesOutput<DirectProductManagementVO> output = new DataTablesOutput<DirectProductManagementVO>();
        output.setDraw(input.getDraw());
        output.setRecordsTotal(total);
        output.setRecordsFiltered(total);
        output.setData(productListVO);

        return output;
    }


    @RequestMapping(value = "/returnManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String returnManagement(@ModelAttribute("parameterVO") DirectProductManagementVO parameterVO, HttpSession session, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ManagerVO managerVO = new ManagerVO();
        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        DirectProductManagementVO params = new DirectProductManagementVO();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            }
            if (session.getAttribute("sessionVO") != null) {
                managerVO.setAccount_id(sessionValue.getAccount_id());

                managerVO = managerService.selectManagerAuth(managerVO);

                if (managerVO.isSeller_return_access() == false) {
                    return "redirect:/home.do";
                } else {
                    DirectProductManagementVO returnCountVO = directProductSaleManagementService.getReturnCount();
                    if (returnCountVO == null) {
                        returnCountVO = new DirectProductManagementVO();
                    }
                    modelVO.addAttribute("returnCountVO", returnCountVO);
                }
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/directSale/returnManagement";
    }

    @RequestMapping(value = "/returnManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput<DirectProductManagementVO> returnManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DirectProductManagementVO parameterVO = new DirectProductManagementVO();

        parameterVO.setDataTablesInput(input);
        List<DirectProductManagementVO> productListVO = directProductSaleManagementService.selectReturnDeliveryProductList(parameterVO.getSearchMap());
        int total = directProductSaleManagementService.selectReturnDeliveryProductListTotal(parameterVO.getSearchMap());
        DataTablesOutput<DirectProductManagementVO> output = new DataTablesOutput<DirectProductManagementVO>();
        output.setDraw(input.getDraw());
        output.setRecordsTotal(total);
        output.setRecordsFiltered(total);
        output.setData(productListVO);

        return output;
    }

    @RequestMapping(value = "/orderDeliveryStatus.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView orderDeliveryStatus(HttpSession session, HttpServletRequest request, @RequestBody ProductListVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {
			int result = consignmentService.insertDeliveryHistory(parameterVO);

            if (result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "상품상태 변경성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "상품상태 변경실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/orderReturnStatus.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView orderReturnStatus(@RequestBody DirectProductManagementVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {

            ///모든 인증서 무시
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

            if (parameterVO.getReturn_delivery_state().equals("반품 반송중")) {
                // 반품 요청
                for (Integer return_no: parameterVO.getReturn_no_list()) {
                    //수거요청이 반품 요청이 아닌것으로 확인되어 주석
                    // String url = "https://therecommerce.kr:8981/naver/return/request/" + return_no;
                    // ResponseEntity<RestAPIResponse> responseEntity = restTemplate.exchange(url,HttpMethod.POST, null, RestAPIResponse.class);
                    // if(responseEntity.getBody().getCode() != 200){
                    //     modelAndView.addObject("resultCode", "fail");
                    //     modelAndView.addObject("message", "상품상태 변경실패");
                    //     return modelAndView;
                    // }
                }
            } else if (parameterVO.getReturn_delivery_state().equals("반품 보류")) {
                // 반품보류
                for (Integer return_no: parameterVO.getReturn_no_list()) {
                    String url = "https://therecommerce.kr/naver/return/hold/" + return_no;

                    HttpHeaders headers = new HttpHeaders();
                    headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
                    HttpEntity<String> requestEntity = new HttpEntity<>(parameterVO.getReturn_cancel_reason(), headers);

                    ResponseEntity<RestAPIResponse> responseEntity = restTemplate.exchange(url, HttpMethod.POST, requestEntity, RestAPIResponse.class);
                    if(responseEntity.getBody().getCode() != 200){
                        modelAndView.addObject("resultCode", "fail");
                        modelAndView.addObject("message", "상품상태 변경실패");
                        return modelAndView;
                    }
                }
            } else if (parameterVO.getReturn_delivery_state().equals("반품거절 철회")) {
                // 반품 거부(철회)
                for (Integer return_no: parameterVO.getReturn_no_list()) {
                    String url = "https://therecommerce.kr/naver/return/deny/" + return_no;
                    ResponseEntity<RestAPIResponse> responseEntity = restTemplate.exchange(url, HttpMethod.POST, null, RestAPIResponse.class);
                    if(responseEntity.getBody().getCode() != 200){
                        modelAndView.addObject("resultCode", "fail");
                        modelAndView.addObject("message", "상품상태 변경실패");
                        return modelAndView;
                    }
                }
            } else if (parameterVO.getReturn_delivery_state().equals("반품 환불 완료")) {
                // 반품 승인
                for (Integer return_no: parameterVO.getReturn_no_list()) {
                    String url = "https://therecommerce.kr/naver/return/decide/" + return_no;
                    ResponseEntity<RestAPIResponse> responseEntity = restTemplate.exchange(url, HttpMethod.POST, null, RestAPIResponse.class);
                    if(responseEntity.getBody().getCode() != 200){
                        modelAndView.addObject("resultCode", "fail");
                        modelAndView.addObject("message", "상품상태 변경실패");
                        return modelAndView;
                    }
                }
            }

            int result = directProductSaleManagementService.orderReturnStatus(parameterVO);
            directProductSaleManagementService.insertHistoryDelivery(parameterVO);

            if (result >= 0) {
                if (result >= 0) {
                    modelAndView.addObject("resultCode", "success");
                    modelAndView.addObject("message", "상품상태 변경성공");
                }
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "상품상태 변경실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/orderDecide.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView orderDecide(HttpSession session, HttpServletRequest request, @RequestBody DirectProductManagementVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        ProductListVO productListVO = new ProductListVO();

        try {
            int resultCnt = 0;

            productListVO.setProduct_state("정산예정");
            productListVO.setDelivery_type("주문");
            productListVO.setDelivery_no_list(parameterVO.getOrder_request_list());
            consignmentService.insertDeliveryHistory(productListVO);

              resultCnt= directProductSaleManagementService.insertCalculateDetail(parameterVO.getOrder_request_list());
            if(resultCnt == parameterVO.getOrder_request_list().size()){
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "구매확정 변경성공");
            }
            else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "구매확정 변경실패");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/orderDecideCancel.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView orderDecideCancel(HttpSession session, HttpServletRequest request, @RequestBody DirectProductManagementVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        ProductListVO productListVO = new ProductListVO();

        try {
            int result = directProductSaleManagementService.updateOrderDecideCancel(parameterVO);
            directProductSaleManagementService.deleteCalculateInfo(parameterVO);
            productListVO.setDelivery_no_list(parameterVO.getOrder_request_list());
            consignmentService.deleteDeliveryHistory(productListVO);

            if (result > 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "구매확정취소 변경성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "구매확정취소 변경실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }
}
