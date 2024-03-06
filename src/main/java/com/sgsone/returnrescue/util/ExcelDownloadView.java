package com.sgsone.returnrescue.util;

import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sgsone.returnrescue.vo.BaseVO;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

public class ExcelDownloadView extends AbstractExcelView {

	@SuppressWarnings("unchecked")
	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			HSSFWorkbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Map<String, Object> map = (Map<String, Object>) model.get("resultMap");
		//response.setContentType("application/vnd.ms-excel");

		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmSS");
		String dateString = format.format( new Date()   );

		String title = URLEncoder.encode(map.get("title").toString(), "UTF-8") + "_" + dateString;
		
		//크롬에서 다운로드시 파일명 문제. : 파일명 설정
		response.setHeader("Content-Disposition", "attachment; filename=\""+title+".xls\"");

		HSSFSheet excelSheet = workbook.createSheet(map.get("sheetName").toString()); 
		String[] dataSet = (String[]) map.get("dataSet");
		String[] dispSet = (String[]) map.get("dispSet");

		List<? extends BaseVO> msVO = (List<? extends BaseVO>) map.get("resultVO");
		
		HSSFRow excelHeader = excelSheet.createRow(0);
		for(int i=0;i<dispSet.length;i++){
			excelHeader.createCell((short)i).setCellValue(dispSet[i]);
		}

		int count = 1;
		for(@SuppressWarnings("unused") Object object:msVO){
			HSSFRow excelRow = excelSheet.createRow(count++);
			for(int j=0;j<dataSet.length;j++){
				try {
					String value = PropertyUtils.getProperty(object, dataSet[j])==null?"":PropertyUtils.getProperty(object, dataSet[j]).toString();
					
					excelRow.createCell((short)j).setCellValue(value);
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				} catch (NoSuchMethodException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
