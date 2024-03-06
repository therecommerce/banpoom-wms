package com.sgsone.returnrescue.exception;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sgsone.returnrescue.util.ExceptionMessage;

@Component
public class ExceptionFactory {
	
	@Autowired
	TraceFactory traceFactory;
	
	static Logger logger = Logger.getLogger(ExceptionMessage.LOG4J_CLASS.EXCEPTION.toString());

	/**
	* <PRE>
	* 간략 : .
	* 상세 : .공통 예외 로그를 출력한다.
	* <PRE>
	* @param e
	* @param sourceClass 
	*/
	public void commonException(Exception e, String sourceClass){
		Map<String, String> errorMap = new HashMap<String, String>();
    	errorMap.put("message", "Y");
    	errorMap.put("detail", e.getMessage());
     //   BaseVO.setErrorMap(errorMap);
		traceFactory.exceptionTrace(sourceClass, e.toString());
		logger.error("#Detail#\n",e);
		
		if(e != null)
			writeLog(e.getMessage());
		
	}
	
	public void commonExceptionNon(Exception e, String sourceClass){
		traceFactory.exceptionTrace(sourceClass, e.toString());
		logger.error("#Detail#\n",e);
		if(e != null)
			writeLog(e.getMessage());

	}
	
	public void writeLog(String log) {
		PrintWriter out = null;
	 
		if(true){
			return;
		}
			try
		
		{
			String filePath =  "/Exception.log";
			FileWriter fw = new FileWriter(filePath,true); //true가 append 모드
			BufferedWriter bw = new BufferedWriter(fw);
			out = new PrintWriter(bw);

			out.println(log); //파일에 출력 

			out.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally
		{
			if(out != null)
				out.close();
		}		
	}


}