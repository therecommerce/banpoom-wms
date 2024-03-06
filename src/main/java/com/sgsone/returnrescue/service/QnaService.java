package com.sgsone.returnrescue.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.naverVO.Contents;
import com.sgsone.returnrescue.vo.naverVO.ProductQnaAnswerRequestVO;
import com.sgsone.returnrescue.vo.naverVO.ProductQnaVO;
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
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import javax.net.ssl.SSLContext;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;

public interface QnaService {
    List<QnaVO> selectQnaBoardList(Map<String, Object> params);
    List<Contents> selectNaverQnaBoardList(Map<String, Object> params);

    QnaVO selectQnaDetail(String param);
    Contents selectNaverQnaDetail(String params);

    Integer selectQnaListCount(Map<String, Object> params);
    Integer selectNaverQnaBoardListTotal(Map<String, Object> params);

    int insertQnaDetailAnswer(QnaVO qnaVO);

    int insertQnaAnswerImage(QnaVO qnaVO);

    List<Integer> selectQnaImageQuestion(QnaVO qnaVO);

    List<Integer> selectQnaImageAnswer(QnaVO qnaVO);

    void updateNaverProductQna(Contents contents);
}
