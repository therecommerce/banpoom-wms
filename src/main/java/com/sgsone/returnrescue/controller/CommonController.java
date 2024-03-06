package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.vo.CalculateVO;
import com.sgsone.returnrescue.vo.CategoryVO;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/common")
public class CommonController {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private CommonService commonService;

//    @RequestMapping(value = "/category.json", method = { RequestMethod.POST })
//    @ResponseBody
//    public ModelAndView directSaleEdit(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") CategoryVO parameterVO, ModelMap modelVO) {
//        ModelAndView modelAndView = new ModelAndView("jsonView");
//        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
//        String category_id = request.getParameter("category_id");
//
//        try {
//
//            List<CategoryVO> categoryNameList = categoryService.selectCategoryNameList();
//            modelVO.addAttribute("categoryName", categoryNameList);
//
//            List<CategoryVO> mediumNameList = categoryService.selectMediumNameList(category_id);
//            modelVO.addAttribute("mediumName", mediumNameList);
//
//        } catch (Exception e) {
//            exceptionFactory.commonException(e, whoAmi);
//            modelAndView.addObject("resultCode", "fail");
//            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
//        }
//
//        return modelAndView;
//    }

    @RequestMapping(value = "/category.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView selectCategoryList(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") CategoryVO parameterVO, ModelMap modelVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        String category_id = request.getParameter("category_id");
        try {
            List<CategoryVO> categoryList = commonService.selectCategoryList(category_id);
            modelVO.addAttribute("categoryList", categoryList);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }
        return modelAndView;
    }

    @RequestMapping(value="/excelDownload", method = {RequestMethod.POST})
    @ResponseBody
    public ResponseEntity<byte[]> excelDownload(Locale locale, HttpServletRequest request, HttpSession session, @RequestBody CalculateVO parameterVO, ModelMap modelVO) throws IOException {
        File file = new File("excel/" + parameterVO.getAccount_id()); // 파일명 VO생성 후 수정
        Workbook workbook = new XSSFWorkbook();

        Sheet sheet = workbook.createSheet("excel List");

        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        workbook.write(bos);
        byte[] bytes = bos.toByteArray();
        FileOutputStream fos = new FileOutputStream(file);
        fos.write(bytes);
        fos.close();
        workbook.close();

        return new ResponseEntity<>(bytes, HttpStatus.OK);
    }
}
