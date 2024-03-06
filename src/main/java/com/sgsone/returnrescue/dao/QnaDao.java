package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.naverVO.Contents;
import com.sgsone.returnrescue.vo.naverVO.ProductQnaVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class QnaDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<QnaVO> selectQnaBoardList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<QnaVO> customerVOList = new ArrayList<>();

        try {
            return sqlSessionTemplate.selectList("qna.selectQnaBoardList", params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public List<Contents> selectNaverQnaBoardList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Contents> productQnaVOList = new ArrayList<>();

        try {
            productQnaVOList = sqlSessionTemplate.selectList("qna.selectNaverQnaBoardList", params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            productQnaVOList = null;
        }
        return productQnaVOList;
    }

    public QnaVO selectQnaDetail(String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        QnaVO customerVOList = new QnaVO();

        try {
            return sqlSessionTemplate.selectOne("qna.selectQnaDetail", param);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public Contents selectNaverQnaDetail(String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        Contents contents = new Contents();

        try {
            contents = sqlSessionTemplate.selectOne("qna.selectNaverQnaDetail", param);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            contents = null;
        }
        return contents;
    }

    public Integer selectQnaListCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("qna.selectQnaListCount", params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public Integer selectNaverQnaBoardListTotal(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            result = sqlSessionTemplate.selectOne("qna.selectNaverQnaBoardListTotal", params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            result = 0;
        }
        return result;
    }

    public int insertQnaDetailAnswer(QnaVO qnaVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("qna.insertQnaDetailAnswer", qnaVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertQnaAnswerImage(QnaVO qnaVO) {
        return sqlSessionTemplate.insert("qna.insertQnaAnswerImage", qnaVO);
    }

    public List<Integer> selectQnaImageQuestion(QnaVO qna) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("qna.selectQnaImageQuestion", qna);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public List<Integer> selectQnaImageAnswer(QnaVO qna) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("qna.selectQnaImageAnswer", qna);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

}
