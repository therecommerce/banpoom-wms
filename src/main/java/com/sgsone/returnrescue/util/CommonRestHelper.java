
package com.sgsone.returnrescue.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sgsone.returnrescue.vo.AdminVO;
import com.sgsone.returnrescue.vo.ResultCode;
import com.sgsone.returnrescue.vo.rest.RestHeader;
import com.sgsone.returnrescue.vo.rest.RestRequest;
import com.sgsone.returnrescue.vo.rest.RestResponse;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;


@Controller
public class CommonRestHelper {

	protected Log logger = LogFactory.getLog(CommonRestHelper.class);
		
	public static RestResponse checkMandatoryParam(RestRequest restRequest) {

		if(restRequest.getHeader() == null || StringUtils.isEmpty(restRequest.getHeader().getClient_type())) {
			return makeRestResponse(ResultCode.NotExistMandatoryParameter);
		}
		return null;
	}
	

	public static RestResponse checkMandatoryParam(RestRequest restRequest, HttpServletRequest request) {

		if(restRequest.getHeader() == null || StringUtils.isEmpty(restRequest.getHeader().getClient_type())) {
			return makeRestResponse(ResultCode.NotExistMandatoryParameter);
		}
		
 
		return null;
	}

	
	public static RestResponse makeRestResponse(ResultCode resultCode, String resultParameter) {

		RestResponse response =  makeRestResponse("", resultCode);
		
		response.getHeader().setResult_msg(response.getHeader().getResult_msg().replace("{0}", resultParameter));
		return response; 
	}
		
	public static RestResponse makeRestResponse(ResultCode resultCode) {

		return makeRestResponse("", resultCode);
	}
	
	public static RestResponse makeRestResponse(Object body, ResultCode resultCode) {

		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();

		if(body != null) {
			
			restResp.setBody(body);
		}
		
		if(resultCode != null)
			header.setResult(resultCode);
		
		restResp.setHeader(header);
		
		return restResp;
	}
	
	//For Temp
	private static Map<String, AdminVO> userList = new HashMap<String, AdminVO>();
	public static void setUserAccount(String sessionKey, AdminVO admin) {
		userList.put(sessionKey, admin);
	}
	
	public static AdminVO getUserAccount(String sessionKey) {
		return userList.get(sessionKey);
	}
	
	public static AdminVO getUserAccountByAccount(String account_id) {
		List<AdminVO> adminList = new ArrayList(userList.values());
		
		for(AdminVO admin : adminList) {
			if(account_id.equals(admin.getAccount_id()))
				return admin;
		}
		return null;
	}
	
	public static void removeUserAccount(String sessionKey) {
		
		AdminVO admin = userList.remove(sessionKey);
	}
}
