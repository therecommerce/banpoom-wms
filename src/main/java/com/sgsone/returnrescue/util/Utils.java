package com.sgsone.returnrescue.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.SimpleTimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;


public class Utils {
	
	private static Map<String, String> map_order_column = new HashMap<>();
	
	public static String encodeURIComponent(String s)
	  {
	    String result = null;
	 
	    try
	    {
	      result = URLEncoder.encode(s, "UTF-8")
	                         .replaceAll("\\+", "%20")
	                         .replaceAll("\\%21", "!")
	                         .replaceAll("\\%27", "'")
	                         .replaceAll("\\%28", "(")
	                         .replaceAll("\\%29", ")")
	                         .replaceAll("\\%7E", "~");
	    }
	 
	    // This exception should never occur.
	    catch (UnsupportedEncodingException e)
	    {
	      result = s;
	    }
	 
	    return result;
	  }
	
	public static String encryptSHA256(String data) throws Exception {

		if (data == null) {
		    return "";
		}

		byte[] plainText = null; // 평문
		byte[] hashValue = null; // 해쉬값
		plainText = data.getBytes();

		MessageDigest md = MessageDigest.getInstance("SHA-256");
		hashValue = md.digest(plainText);
		return new String(Base64.encodeBase64(hashValue));
	}
	
	public static String getDateTime(String format) {
		Date date = Calendar.getInstance().getTime();  
		DateFormat dateFormat = new SimpleDateFormat(format);
		String strDate = dateFormat.format(date);  
		
		return strDate;
	}
	
	public static String getCurrentDate(String dateFormat) {
		Date dateNow = Calendar.getInstance(new SimpleTimeZone(0x1ee6280, "KST")).getTime();
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat, Locale.getDefault());
		
		return formatter.format(dateNow);
	}

	public static String getMonthAgoDate(String dateFormat, int addMonth) {
		Calendar cal = Calendar.getInstance(new SimpleTimeZone(0x1ee6280, "KST"));
		cal.add(Calendar.DATE, 1);
		cal.add(Calendar.MONTH, addMonth);
		Date monthago = cal.getTime();
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat, Locale.getDefault());
		
		return formatter.format(monthago);
	}
	
	public static String getDayAgoDate(String dateFormat, int addDay) {
		Calendar cal = Calendar.getInstance(new SimpleTimeZone(0x1ee6280, "KST"));
		cal.add(Calendar.DATE, 1);
		cal.add(Calendar.DAY_OF_MONTH, addDay);
		Date monthago = cal.getTime();
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat, Locale.getDefault());
		
		return formatter.format(monthago);
	}
	
	public static String getFirstDayOfMonth() {
		LocalDate today = LocalDate.now();

		return today.withDayOfMonth(1) + " 00:00:00";
	}

	public static String getLastDayOfMonth() {
		LocalDate today = LocalDate.now();

		return today.withDayOfMonth(today.lengthOfMonth()) + " 23:59:59";
	}


	public static boolean compareDate(String dateFormat, String soureDate, String targetDate) throws ParseException {
		boolean isNext = false;
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);
		Date source = formatter.parse(soureDate);
		Date target = formatter.parse(targetDate);
		if(source.getTime() >= target.getTime()) {
			isNext = true;
		}
		
		return isNext;
	}
	
	
	public static String getMinuteAgoDate(String dateFormat, int addMinute) {
		Calendar cal = Calendar.getInstance(new SimpleTimeZone(0x1ee6280, "KST"));
		cal.add(Calendar.MINUTE, addMinute);
		Date monthago = cal.getTime();
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat, Locale.getDefault());

		return formatter.format(monthago);
	}
	
	public static String windWdirName(String windWdir){ 
		String strResult = "북";
		//double fArea = .parseDouble(windWdir);
		float fArea = Float.parseFloat(windWdir);
		
		if(fArea >= 337.5f  || fArea <= 22.5f) {
			 strResult = "남";
		} else if(fArea >= 22.5f && fArea <= 67.5f){
			strResult = "남서";
		} else if(fArea >= 67.5f && fArea <= 112.5f){
			strResult = "서";
		} else if(fArea >= 112.5f && fArea <= 157.5f){
			strResult = "북서";
		} else if(fArea >= 157.5f && fArea <= 202.5f){
			strResult = "북";
		} else if(fArea >= 202.5f && fArea <= 247.5f){
			strResult = "북동";
		} else if(fArea >= 247.5f && fArea <= 292.5f){
			strResult = "동";
		}  else {
			strResult = "남동";
		}
		  
		return strResult; 
	}

	 public static String randomNum(int num){ 
		 Random random = new Random();
		 String val = random.nextInt(num)+"."+random.nextInt(9)+""+random.nextInt(9);
	    return val; 
	 }
	 
	 public static String randomFirstNum(int num){ 
		 Random random = new Random();
		 String val = random.nextInt(num)+"."+random.nextInt(9);
	    return val; 
	 }
	 
	 public static int randomOneNum(int num){ 
		 Random random = new Random();
		 int val = random.nextInt(num);
	    return val; 
	 }
	public static String getBrowser(HttpServletRequest request) {
		String header = request.getHeader("User-Agent");
		
		if (header != null) {
			if (header.indexOf("Trident") > -1) {
				return "MSIE";
			} else if (header.indexOf("Chrome") > -1) {
				return "Chrome";
			} else if (header.indexOf("Opera") > -1) {
				return "Opera";
			} else if (header.indexOf("iPhone") > -1 && header.indexOf("Mobile") > -1) {
				return "iPhone";
			} else if (header.indexOf("Android") > -1 && header.indexOf("Mobile") > -1) {
				return "Android";
			}
		}
		
		return "Firefox";
	}
	
	public static String getBrowserNo(HttpServletRequest request) {
		String osNo = "1";
		if(! "MSIE".equals(getBrowser(request))){
			osNo = "2";
		}
		
		return osNo;
	}
	
	public static String getRestApi(String url, String appkey) {
		
		StringBuffer sb = null;
				
		try{
			DefaultHttpClient httpClient = new DefaultHttpClient( );
			HttpGet getRequest = new HttpGet(url);
			getRequest.addHeader("appKey", appkey);
			getRequest.addHeader("Accept", "application/json");
			getRequest.addHeader("Content-Type", "json;charset=utf-8");
			 
			HttpResponse response = httpClient.execute( getRequest );
			if (response.getStatusLine( ).getStatusCode( ) != 200 ){
				throw new RuntimeException("Failed : HTTP error code : "+ response.getStatusLine( ).getStatusCode( ) );
			}
			
			BufferedReader br = new BufferedReader(new InputStreamReader((response.getEntity( ).getContent())));
			sb = new StringBuffer();
			String output = "";
			
			while ((output = br.readLine( ) ) != null ){
				sb.append(output);
			}
			
			httpClient.getConnectionManager( ).shutdown( );
		}catch (Exception e){
			e.printStackTrace( );
		}
		
		return sb.toString();
	}
	
    
	public static String getRetainName(String retainType) {
	    if("U".equals(retainType))
	    	return "지중경사계";
	    else if("B".equals(retainType))
	    	return "지하수위계";
	    else if("G".equals(retainType))
	    	return "지표침하계";
	    else if("M".equals(retainType))
	    	return "변형률계";
	    else if("E".equals(retainType))
	    	return "E/A하중계";
	    else
	    	return "UNKNOWN";
	    
	}

    
	/*
	 * 열지수를 구하는 공식. 
	 */
	public static double getHeatIndex(String temp, String humd) {

		double F, R;
		
		try {
			F = Double.parseDouble(temp) * 1.8+32;
			R = Double.parseDouble(humd);
			
			double f_adj = 0.0;	// 보정값
			
			double heatIndex = -42.379 + (2.04901523*F) + (10.14333127*R) - (0.22475541*F*R) - (0.00683783*F*F) - (0.05481717*R*R) + (0.00122874*F*F*R) + (0.00085282*F*R*R) - (0.00000199*F*F*R*R); 

			if (R < 13 && F >= 80 && F <= 112) {
				f_adj = 0.25 * (13 - R) * Math.sqrt((17 - Math.abs(F - 95.0)) / 17.0);
				heatIndex = heatIndex - f_adj;
			}

			if (R > 85.0 && F >= 80.0 && F <= 87) {
				f_adj = (R - 85) / 10.0 * (87 - F) / 5.0;
				heatIndex = heatIndex + f_adj;
			}

			if (F < 80.0) { // 화씨변환 온도가 80 미만인 경우 열지수는 온도값
				heatIndex = F;
			}

			heatIndex = (heatIndex - 32) / 1.8; // 화씨를 섭씨온도로 변환	
			heatIndex = Math.round(heatIndex *10) / 10.0;
		
			return heatIndex;
			
		} catch (Exception e) {
		}
		return 0;
	}
	
	public static String getLocale(HttpSession session) {		
		
		if(session == null || session.getAttribute("locale") == null)
			return "";
		
		Locale locale = (Locale) session.getAttribute("locale");
		if(locale != null)
			return locale.getLanguage();
		
		return "";
	}
	
	public static boolean isEnglish(HttpSession session) {		
		
		if(session == null || session.getAttribute("locale") == null)
			return false;
		
		Locale locale = (Locale) session.getAttribute("locale");
		if(locale != null && "en".equals(locale.getLanguage()))
			return true;
		return false;
		
	}

	
	public static boolean overThreshold(String value, String threshold, String type) {
		try {
			
			if(type == "D") {
				Double v = Double.parseDouble(value);
				Double t = Double.parseDouble(threshold);
				if(v >= t) {
					return true;
				} 
			}
			
		} catch (Exception ex) {
			return false;
		}
		return false;
	}
	
	public static boolean hasOrderColumn(String colName) {
		map_order_column.clear();

    	map_order_column.put("cooperator_name", "cooperator_name");
    	map_order_column.put("account_name", "account_name");
    	map_order_column.put("code_name", "code_name");
    	map_order_column.put("reg_dt", "reg_dt");
    	map_order_column.put("gas_version", "gas_version");
    	map_order_column.put("code_name_eng", "code_name_eng");
    	map_order_column.put("A.account_id", "A.account_id");
    	map_order_column.put("B.account_name", "B.account_name");
    	map_order_column.put("D.account_name", "D.account_name");
    	map_order_column.put("cooperator_name_eng", "cooperator_name_eng");
    	map_order_column.put("A.reg_dt", "A.reg_dt");
    	map_order_column.put("A.account_name", "A.account_name");
    	map_order_column.put("A.code_name", "A.code_name");
    	map_order_column.put("A.code_name_eng", "A.code_name_eng");
    	map_order_column.put("A.device_no", "A.device_no");
    	map_order_column.put("C.worker_name", "C.worker_name");
    	map_order_column.put("C.tag_type", "C.tag_type");
    	map_order_column.put("C.reg_dt", "C.reg_dt");
    	map_order_column.put("A.target_dt", "A.target_dt");
    	map_order_column.put("TM.device_no", "TM.device_no");
    	map_order_column.put("A.status", "A.status");
    	map_order_column.put("A.time_observation", "A.time_observation");
    	map_order_column.put("C.employ_dt", "C.employ_dt");
    	map_order_column.put("C.device_no", "C.device_no");
    	
    	/*
    	System.out.println(colName);
    	System.out.println(map_order_column.containsKey(colName));
    	
    	map_order_column.forEach((key, value) -> {
    		  System.out.print("key: "+ key);
    		  System.out.println(", Value: "+ value);
   		});
   		*/

		return map_order_column.containsKey(colName);
	}
	
	public static String splitStr(String str, String delimeter, int retIdx) {
		
		if(str == null) return null;
		
		String sp[] = str.split(delimeter);
		
		if(sp.length <= 0 || sp.length <= retIdx) return null;
		
		return sp[retIdx];
	}
	
}
