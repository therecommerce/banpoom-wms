package com.sgsone.returnrescue.exception;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.sgsone.returnrescue.util.TraceMessage;


/**
 * <pre>
 * 간략 : .
 * 상세 : .해당 로그의 출력 포멧 구현 클래스
 * Com.sktel.mmsmo.exception
 *   |_ TraceFactory.java
 * </pre>
 * 
 * @Company : SKETCH LAB
 * @Author  : ST NOH
 * @Date    : 2014. 2. 16. 오전 8:52:26
 * @Version : 1.0
 */


@Component
public class TraceFactory {
	
	private Logger logger = Logger.getLogger(getClass());
	
	public void commonTrace(String actor, String action){
		
		logger.info(TraceMessage.SPEECH.ACTOR.toString()  + actor);
		logger.info(TraceMessage.SPEECH.ACTION.toString()  + action);
		
	}
	
	public void serviceTrace(String service, String action){
		
		logger.info(TraceMessage.SPEECH.SERVICE.toString() + service);
		logger.info(TraceMessage.SPEECH.ACTION.toString() + action);
		
	}
	
	public void exceptionTrace(String which, String ex){
		
		logger.info(TraceMessage.SPEECH.WHICH_METHOD.toString() + which);
		logger.info(TraceMessage.SPEECH.ACTION + ex);
	}
	
	public void daoTrace(String dao, String action){
		
		logger.info(TraceMessage.SPEECH.DAO.toString() + dao);
		logger.info(TraceMessage.SPEECH.ACTION + action);
		
	}

}
