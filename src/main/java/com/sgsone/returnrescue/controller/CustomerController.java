package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.schedule.SchedulerService;
import com.sgsone.returnrescue.service.*;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.datatable.DataTablesInput;
import com.sgsone.returnrescue.vo.datatable.DataTablesOutput;
import com.sgsone.returnrescue.vo.naverVO.Contents;
import com.sgsone.returnrescue.vo.naverVO.ProductQnaVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private QnaService qnaService;

    @Autowired
    ReviewService reviewService;

    @Autowired
    ReportService reportService;

    @Autowired
    SellerInquiryService sellerInquiryService;

    @Autowired
    UserInquiryService userInquiryService;

    @Autowired
    private FileService fileService;

    @Autowired
    private StartSellerService startSellerService;

    @Autowired
    private OrderInfoService orderInfoService;

    @Autowired
    private CommonService commonService;

    @Autowired
    NotificationService notificationService;

    @RequestMapping(value = "/qnaManagement.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String qanManagement(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String state = request.getParameter("state");
                modelVO.addAttribute("state", state);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "/customer/qnaManagement";
    }

    @RequestMapping(value = "/naverQnaManagement.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String naverQanManagement(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String state = request.getParameter("state");
                modelVO.addAttribute("state", state);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "/customer/naverQnaManagement";
    }

    @RequestMapping(value = "/qna.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<QnaVO> qnaBoardList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<QnaVO> output = new DataTablesOutput<QnaVO>();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");
            QnaVO qnaVO = new QnaVO();
            qnaVO.setDataTablesInput(input);
            qnaVO.getSearchMap().put("account_id", sessionValue.getAccount_id());

            List<QnaVO> qnaBoardList = qnaService.selectQnaBoardList(qnaVO.getSearchMap());
            int total = qnaService.selectQnaListCount(qnaVO.getSearchMap());

            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(qnaBoardList);

            return output;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @RequestMapping(value = "/naverQna.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<Contents> naverQnaBoardList(HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<Contents> output = new DataTablesOutput<Contents>();

        try {
            AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
            Contents contents = new Contents();
            contents.setDataTablesInput(input);
            contents.getSearchMap().put("account_id", sessionValue.getAccount_id());

            List<Contents> qnaBoardList = qnaService.selectNaverQnaBoardList(contents.getSearchMap());
            int total = qnaService.selectNaverQnaBoardListTotal(contents.getSearchMap());

            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(qnaBoardList);

            return output;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @RequestMapping(value = "/qnaManagementDetail.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String qnaManagementDetail(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String product_qna_no = request.getParameter("product_qna_no");
                QnaVO qnaVO = qnaService.selectQnaDetail(product_qna_no);
                qnaVO.setFile_id_list_question(qnaService.selectQnaImageQuestion(qnaVO));
                qnaVO.setFile_id_list_answer(qnaService.selectQnaImageAnswer(qnaVO));
                model.addAttribute("qnaVO", qnaVO);
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/qnaManagementDetail";
    }

    @RequestMapping(value = "/naverQnaManagementDetail.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String naverQnaManagementDetail(ModelMap model, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String questionId = request.getParameter("questionId");
                Contents contents = qnaService.selectNaverQnaDetail(questionId);
                model.addAttribute("contents", contents);
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/naverQnaManagementDetail";
    }

    @RequestMapping(value = "/insertQnaAnswer.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView insertQnaAnswer(MultipartHttpServletRequest mtfRequest, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        ModelAndView modelAndView = new ModelAndView("jsonView");
        QnaVO qnaVO = new QnaVO();

        try {
            qnaVO.setProduct_qna_answerer(loginVO.getAccount_name());
            qnaVO.setAnswer_account_id(session.getId());
            qnaVO.setProduct_qna_answer(mtfRequest.getParameter("product_qna_answer"));
            qnaVO.setProduct_qna_no(Integer.parseInt(mtfRequest.getParameter("product_qna_no")));

            if (session.getAttribute("sessionVO") == null) {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "로그인이 되어 있지 않습니다.");
                return modelAndView;
            } else {
                List<MultipartFile> checkFileList = mtfRequest.getFiles("files");
                int resultCnt = 0;

                for (MultipartFile mf : checkFileList) {
                    if (mf.getSize() > 0) {
                        FileVO addFileVO = new FileVO();
                        addFileVO = fileService.save(mf);

                        qnaVO.setFile_id(addFileVO.getFile_id());

                        qnaService.insertQnaAnswerImage(qnaVO);
                        resultCnt++;
                    }
                }
            }
            int result = qnaService.insertQnaDetailAnswer(qnaVO);

            if (result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "답변등록 되었습니다.");
                modelAndView.addObject("data", result);

            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "실패");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "DB 오류");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/insertNaverQnaAnswer.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView insertNaverQnaAnswer(MultipartHttpServletRequest mtfRequest, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        ModelAndView modelAndView = new ModelAndView("jsonView");
        Contents contents = new Contents();

        try {
            contents.setQuestionId(mtfRequest.getParameter("qnaNo"));
            contents.setAnswer(mtfRequest.getParameter("answer"));

            if (session.getAttribute("sessionVO") == null) {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "로그인이 되어 있지 않습니다.");
                return modelAndView;
            } else {
                qnaService.updateNaverProductQna(contents);
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "답변등록 되었습니다.");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "DB 오류");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/reviewManagement.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String reviewManagement(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String state = request.getParameter("state");
                modelVO.addAttribute("state", state);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/reviewManagement";
    }

    @RequestMapping(value = "/review.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<ReviewVO> reviewManagement(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        AdminVO parameterVO = new AdminVO();

        try {
            parameterVO.setDataTablesInput(input);
            parameterVO.getSearchMap().put("account_id",loginVO.getAccount_id());


            List<ReviewVO> reviewList = reviewService.selectReviewList(parameterVO.getSearchMap());
            int total = reviewService.selectReviewListCount(parameterVO.getSearchMap());

            DataTablesOutput<ReviewVO> output = new DataTablesOutput<ReviewVO>();
            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(reviewList);

            return output;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
    @RequestMapping(value = "/selectReviewModal.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView selectReviewModal(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody String review_no) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ModelAndView modelAndView = new ModelAndView("jsonView");
        ReviewVO selectReviewModal = new ReviewVO();

        try {
            selectReviewModal = reviewService.selectReviewModal(review_no);
            selectReviewModal.setFile_id_list_question(reviewService.selectReviewImageQuestion(selectReviewModal));

            modelAndView.addObject("resultCode", "success");
            modelAndView.addObject("message", "성공");
            modelAndView.addObject("data", selectReviewModal);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "실패");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/updateReviewAnswer.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView updateReviewAnswer(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ModelAndView modelAndView = new ModelAndView("jsonView");
//        ReviewVO reviewVO = new ReviewVO();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");

        try {
            reviewVO.setReview_answer_writer(loginVO.getAccount_name());
            reviewVO.setAnswer_account_id(session.getId());

            reviewService.updateReviewAnswer(reviewVO);
            modelAndView.addObject("resultCode", "success");
            modelAndView.addObject("message", "답변 등록에 성공하였습니다.");

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "실패");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/updateBestReview.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView updateBestReview(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ModelAndView modelAndView = new ModelAndView("jsonView");

        try {
            int updateResult = reviewService.updateBestReview(reviewVO);


            if (updateResult >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "베스트리뷰 선정되었습니다.");
                modelAndView.addObject("data", updateResult);
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "실패");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "DB 오류");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/deleteReview.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView deleteReview(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ModelAndView modelAndView = new ModelAndView("jsonView");

        try {

            int updateResult = reviewService.deleteReview(reviewVO);

            if (updateResult >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "리뷰 삭제 되었습니다.");
                modelAndView.addObject("data", updateResult);
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "실패");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "DB 오류");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/reportManagement.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String reportManagement(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String state = request.getParameter("state");
                modelVO.addAttribute("state", state);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/reportManagement";
    }

    @RequestMapping(value = "/report.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<ReviewVO> selectReportList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        AdminVO parameterVO = new AdminVO();

        try {
            parameterVO.setDataTablesInput(input);
            parameterVO.getSearchMap().put("account_id",loginVO.getAccount_id());

            List<ReviewVO> reportList = reportService.selectReportList(parameterVO.getSearchMap());
            int total = reportService.selectReportListCount(parameterVO.getSearchMap());

            DataTablesOutput<ReviewVO> output = new DataTablesOutput<ReviewVO>();
            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(reportList);

            return output;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }


    @RequestMapping(value = "/selectReportModalInfo.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView selectReportModalInfo(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody ReportModalVO reportModalVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        ModelAndView modelAndView = new ModelAndView("jsonView");

        try {
            reportModalVO.setAes_key(loginVO.getAes_key());

            reportModalVO = reportService.selectReportModalInfo(reportModalVO);
            reportModalVO.setFile_id_list_question(reportService.selectReportImageQuestion(reportModalVO));

            if (reportModalVO != null) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("data", reportModalVO);
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "DB 오류");
        }
        return modelAndView;
    }
    @RequestMapping(value = "/manOnManQnaSeller.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String manOnManQnaSeller(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String state = request.getParameter("state");
                modelVO.addAttribute("state", state);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/manOnManQnaSeller";
    }

    @RequestMapping(value = "/sellerInquiry.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<SellerInquiryVO> selectSellerInquiryList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");
            SellerInquiryVO sellerInquiryVO = new SellerInquiryVO();
            sellerInquiryVO.setDataTablesInput(input);
            sellerInquiryVO.getSearchMap().put("account_id", sessionValue.getAccount_id());

            List<SellerInquiryVO> sellerInquiryList = sellerInquiryService.selectSellerInquiryList(sellerInquiryVO.getSearchMap());
            int total = sellerInquiryService.selectQnaSellerInquiryCount(sellerInquiryVO.getSearchMap());

            DataTablesOutput<SellerInquiryVO> output = new DataTablesOutput<SellerInquiryVO>();
            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(sellerInquiryList);

            return output;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @RequestMapping(value = "/insertUserInquiryAnswer.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView insertUserInquiryAnswer(MultipartHttpServletRequest mtfRequest, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        ModelAndView modelAndView = new ModelAndView("jsonView");
        UserInquiryVO userInquiryVO = new UserInquiryVO();

        try {
            userInquiryVO.setUser_qna_answerer(loginVO.getAccount_name());
            userInquiryVO.setUser_answer_account_id(session.getId());
            userInquiryVO.setUser_qna_answer(mtfRequest.getParameter("user_qna_answer"));
            userInquiryVO.setUser_qna_no(Integer.parseInt(mtfRequest.getParameter("user_qna_no")));

            if (session.getAttribute("sessionVO") == null) {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "로그인이 되어 있지 않습니다.");
                return modelAndView;
            } else {
                List<MultipartFile> checkFileList = mtfRequest.getFiles("files");
                int resultCnt = 0;

                for (MultipartFile mf : checkFileList) {
                    if (mf.getSize() > 0) {
                        FileVO addFileVO = new FileVO();
                        addFileVO = fileService.save(mf);

                        userInquiryVO.setFile_id(addFileVO.getFile_id());

                        userInquiryService.insertUserInquiryAnswerImage(userInquiryVO);
                        resultCnt++;
                    }
                }
            }
            int result = userInquiryService.insertUserInquiryAnswer(userInquiryVO);

            if (result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "답변등록 되었습니다.");
                modelAndView.addObject("data", result);

            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "실패");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "DB 오류");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/insertSellerInquiryAnswer.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView insertSellerInquiryAnswer(MultipartHttpServletRequest mtfRequest, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        ModelAndView modelAndView = new ModelAndView("jsonView");
        SellerInquiryVO sellerInquiryVO = new SellerInquiryVO();

        if (session.getAttribute("sessionVO") == null) {
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "로그인이 되어 있지 않습니다.");
            return modelAndView;
        }

        sellerInquiryVO.setQna_no(Integer.parseInt(mtfRequest.getParameter("qna_no")));
        sellerInquiryVO.getSearchMap().put("qna_no", Integer.parseInt(mtfRequest.getParameter("qna_no")));
        SellerInquiryVO sellerInfo = sellerInquiryService.selectQnaList(sellerInquiryVO.getSearchMap());

        try {
            sellerInquiryVO.setAnsweris(loginVO.getAccount_name());
            sellerInquiryVO.setAnswer_account_id(session.getId());
            sellerInquiryVO.setQna_answer(mtfRequest.getParameter("qna_answer"));
            sellerInquiryVO.setQna_no(Integer.parseInt(mtfRequest.getParameter("qna_no")));

            List<MultipartFile> checkFileList = mtfRequest.getFiles("files");
            int resultCnt = 0;

            for (MultipartFile mf : checkFileList) {
                if (mf.getSize() > 0) {
                    FileVO addFileVO = new FileVO();
                    addFileVO = fileService.save(mf);

                    sellerInquiryVO.setFile_id(addFileVO.getFile_id());

                    sellerInquiryService.insertSellerInquiryAnswerImage(sellerInquiryVO);
                        resultCnt++;
                }
            }
            int result = sellerInquiryService.insertSellerInquiryAnswer(sellerInquiryVO);

            if (result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "답변등록 되었습니다.");
                modelAndView.addObject("data", result);

                NotificationVO notificationVO = new NotificationVO();
                notificationVO.setTitle(NotificationMessage.Message.MANTOMANANSWERREGISTE.getMessageTitle());
                notificationVO.setContent(NotificationMessage.getMessage(NotificationMessage.Message.MANTOMANANSWERREGISTE).getMessageContent());
                notificationVO.setAccount_id(sellerInfo.getAccount_id());
                notificationService.insertNotification(notificationVO);

            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "답변 등록 실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "오류가 발생했습니다. 다시 시도해주세요");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/manOnManQnaUser.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String manOnManQnaUser(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String state = request.getParameter("state");
                modelVO.addAttribute("state", state);
            }
        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/manOnManQnaUser";
    }

    @RequestMapping(value = "/userInquiry.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<UserInquiryVO> selectUserInquiryList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session,  @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");
            UserInquiryVO userInquiryVO = new UserInquiryVO();
            userInquiryVO.setDataTablesInput(input);
            userInquiryVO.getSearchMap().put("account_id", sessionValue.getAccount_id());

            List<UserInquiryVO> userInquiryList = userInquiryService.selectUserInquiryList(userInquiryVO.getSearchMap());
            int total = userInquiryService.selectQnaUserInquiryCount(userInquiryVO.getSearchMap());

            DataTablesOutput<UserInquiryVO> output = new DataTablesOutput<UserInquiryVO>();
            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(userInquiryList);

            return output;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @RequestMapping(value = "/startSellerQna.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String startSellerQna(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {

            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/startSellerQna";
    }

    @RequestMapping(value = "/startSeller.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<StartSellerVO> selectStartSellerBoardList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session,  @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");
            StartSellerVO startSellerVO = new StartSellerVO();
            startSellerVO.setDataTablesInput(input);
            startSellerVO.getSearchMap().put("account_id", sessionValue.getAccount_id());

            List<StartSellerVO> startSellerBoardList = startSellerService.selectStartSellerBoardList(startSellerVO.getSearchMap());
            int total = startSellerService.selectStartSellerBoardTotal(startSellerVO.getSearchMap());

            DataTablesOutput<StartSellerVO> output = new DataTablesOutput<StartSellerVO>();
            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(startSellerBoardList);

            return output;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @RequestMapping(value = "/startSellerQnaDetail.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String startSellerQnaDetail(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String startseller_qna_no = request.getParameter("startseller_qna_no");

                StartSellerVO startSellerVO = startSellerService.selectStartSellerQnaDetail(startseller_qna_no);
                startSellerVO.setFile_id_list_question(startSellerService.selectStartSellerQuestionImage(startSellerVO));
                startSellerVO.setFile_id_list_answer(startSellerService.selectStartSellerAnswerImage(startSellerVO));

                model.addAttribute("startSellerVO", startSellerVO);

            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/startSellerQnaDetail";
    }

    @RequestMapping(value = "/updateStartSellerAnswer.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView updateStartSellerAnswer(MultipartHttpServletRequest mtfRequest, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        ModelAndView modelAndView = new ModelAndView("jsonView");
        StartSellerVO startSellerVO = new StartSellerVO();

        try {
            startSellerVO.setStartseller_qna_answerer(loginVO.getAccount_name());
            startSellerVO.setStartseller_qna_answer_account_id(session.getId());
            startSellerVO.setStartseller_qna_answer(mtfRequest.getParameter("startseller_qna_answer"));
            startSellerVO.setStartseller_qna_no(Integer.parseInt(mtfRequest.getParameter("startseller_qna_no")));

            if (session.getAttribute("sessionVO") == null) {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "로그인이 되어 있지 않습니다.");
                return modelAndView;
            } else {
                List<MultipartFile> checkFileList = mtfRequest.getFiles("files");
                int resultCnt = 0;

                for (MultipartFile mf : checkFileList) {
                    if (mf.getSize() > 0) {
                        FileVO addFileVO = new FileVO();
                        addFileVO = fileService.save(mf);

                        startSellerVO.setFile_id(addFileVO.getFile_id());

                        startSellerService.insertStartSellerAnswerImage(startSellerVO);
                        resultCnt++;
                    }
                }
            }
            int result = startSellerService.updateStartSellerAnswer(startSellerVO);

            if (result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "답변등록 되었습니다.");
                modelAndView.addObject("data", result);

            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "실패");
            }


        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "DB 오류");
        }
        return modelAndView;
    }
    @RequestMapping(value = "/manOnManQnaSellerDetail.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String qnaSellerDetail(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String qna_no = request.getParameter("qna_no");

                SellerInquiryVO sellerInquiryVO = sellerInquiryService.selectQnaSellerInquiryDetail(qna_no);
                sellerInquiryVO.setFile_id_list_question(sellerInquiryService.selectSellerInquiryImageQuestion(sellerInquiryVO));
                sellerInquiryVO.setFile_id_list_answer(sellerInquiryService.selectSellerInquiryImageAnswer(sellerInquiryVO));

                model.addAttribute("sellerInquiryVO", sellerInquiryVO);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/manOnManQnaSellerDetail";
    }

    @RequestMapping(value = "/manOnManQnaUserDetail.do", method = { RequestMethod.POST, RequestMethod.GET })
    public String qnaUserDetail(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String user_qna_no = request.getParameter("user_qna_no");

                UserInquiryVO userInquiryVO = userInquiryService.selectQnaUserInquiryDetail(user_qna_no);
                userInquiryVO.setFile_id_list_question(userInquiryService.selectUserInquiryImageQuestion(userInquiryVO));
                userInquiryVO.setFile_id_list_answer(userInquiryService.selectUserInquiryImageAnswer(userInquiryVO));

                model.addAttribute("userInquiryVO", userInquiryVO);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return "customer/manOnManQnaUserDetail";
    }

    @RequestMapping(value = "/orderInfoModal.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public ModelAndView orderInfoModal(@RequestBody String order_request_no, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        ModelAndView modelAndView = new ModelAndView("jsonView");

        try {
            if (session.getAttribute("sessionVO") == null) {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "로그인이 되어 있지 않습니다.");
                return modelAndView;

            } else {
                OrderInfoVO orderInfoVO = orderInfoService.selectOrderInfoModal(order_request_no);

                if (orderInfoVO != null) {
                    modelAndView.addObject("resultCode", "success");
                    modelAndView.addObject("message", "답변등록 되었습니다.");
                    modelAndView.addObject("data", orderInfoVO);
                } else {
                    modelAndView.addObject("resultCode", "fail");
                    modelAndView.addObject("message", "실패");
                }
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "실패");
        }
        return modelAndView;
    }
}
