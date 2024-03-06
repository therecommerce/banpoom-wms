package com.sgsone.returnrescue.util;

import org.springframework.stereotype.Component;

@Component
public class ExceptionMessage {
	
	static public enum EXCEPTION_MESSAGE{
		
	}
	
	static public enum SYSTEM_PROC_MESSAGE{
		
		NULL_PARAMETER_MESSAGE("## parameter is null ");
		
		private String messageValue;
		
		private SYSTEM_PROC_MESSAGE(String messageName){
			messageValue = messageName;
		}
		
		public String toString(){
			return messageValue;
		}
		
	}
	
	static public enum LOG4J_CLASS{

		EXCEPTION("EXCEPTION"),
		CONNECTION("CONNECTION"),
		INFO("INFO");

		private String logValue;

		private LOG4J_CLASS(String logName){
			logValue = logName;
		}

		public String toString(){
			return logValue;
		}

	}

}