package com.sgsone.returnrescue.util;

import org.springframework.stereotype.Component;

@Component
public class TraceMessage {
	
	
	static public enum SPEECH{
		
		ACTOR("# ACTOR :  "),
		ACTION("# ACTION :  "),
		SERVICE("# SERVICE :  "),
		WHICH("# WHICH : "),
		WHICH_METHOD("# WHICH METHOD : "),
		DAO("# DATA ACCESS OBJECT : ");
		
		private String speechValue;
		
		private SPEECH(String speechName){
			speechValue = speechName;
		}
		
		public String toString(){
			return speechValue;
		}
	}
	
	
	static public enum ACTIONS{
		
		ENTER_MODULE(" Entered module "),
		ESCAPE_MODULE(" Escaped module "),
		
		EXCEPTION_OCCURRED(" occurred the exception ");
		
		private String actionValue;
		
		private ACTIONS(String actionName){
			actionValue = actionName;
		}
		
		public String toString(){
			return actionValue;
		}
		
	}
	
}