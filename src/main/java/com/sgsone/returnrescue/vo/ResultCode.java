
package com.sgsone.returnrescue.vo;

import java.util.HashMap;
import java.util.Map;

public enum ResultCode {
	Success("0000", "Success"),
	Fail("0001", "Fail"),
	NotExsitAccount("1101", "Not Exist Account"),
	NotExistAccountSite("1103", "Not Exist Account Site"),
	NotExsitAccountReissue("1105", "Not Exist Account Reissue"),
	AlreayExistId("1201", "Already Exist Id"),
	InvalidSessionkey("8002", "Invalid Sessionkey"),
	InvalidSystemToken("8004", "Invalid System Token"),
	InvalidAccountId("8005", "Invalid Account Id"),
	InvalidAccountPassword("8006", "{0}, Invalid Account Password"),
	InvalidAccountAuthority("8009", "Invalid Account Authority"),
	InvalidAccountReissueStatus("8045", "Invalid Account Reissue Status"),
	OvertheErrorCountofPassword("8052", "5, Over the Error Count of Password"),
	OvertheExpirationDateofPassword("8053", "90, Over the Expiration Date of Password"),
	NotExistMandatoryParameter("8101", "Not Exist Mandatory Parameter"),
	ServerAccessError("8601", "Server Access Error"),
	DataNotFound("8603", "Data Not Found"),
	OverTwoAccountDeviceRegister("8606", "Over Two Account Device Register"),
	AlreadyLogin("8607", "Over Already Login"),
	StopedAccount("8609", "Stoped Account"),
	DormantACcount("8610", "Dormant Account"),
	PasswordChange("8611", "Password Change");
	
	private static Map<Object, Object> map = new HashMap<>();
	private String code;
	private String msg;
	
	private ResultCode(String code, String msg) {
		this.code = code;
		this.msg = msg;
	}


    static {
        for (ResultCode resultCode : ResultCode.values()) {
            map.put(resultCode.code, resultCode);
        }
    }

    public static ResultCode value(String code) {
        return (ResultCode) map.get(code);
    }
	
	    
    public String getCode() {
    	return this.code;
    }
    
    public String getMsg() {
    	return this.msg;
    }

}

