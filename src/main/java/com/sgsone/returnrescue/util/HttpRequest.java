package com.sgsone.returnrescue.util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;


public class HttpRequest {

	public String post(String strUrl, String jsonMessage){
		try {
						
			URL url = new URL(strUrl);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setConnectTimeout(5000); //서버에 연결되는 Timeout 시간 설정
			con.setReadTimeout(5000); // InputStream 읽어 오는 Timeout 시간 설정
	
			con.setRequestMethod("POST");
	                                 //json으로 message를 전달하고자 할 때 
			con.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
			con.setDoInput(true);
			con.setDoOutput(true); //POST 데이터를 OutputStream으로 넘겨 주겠다는 설정 
			con.setUseCaches(false);
			con.setDefaultUseCaches(false);
	
			OutputStreamWriter wr = new OutputStreamWriter(con.getOutputStream());
			wr.write(jsonMessage); //json 형식의 message 전달 
			wr.flush();
	
			StringBuilder sb = new StringBuilder();
			if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(
						new InputStreamReader(con.getInputStream(), "utf-8"));
				String line;
				while ((line = br.readLine()) != null) {
					sb.append(line).append("\n");
				}
				br.close();
				return sb.toString();
			} else {
				return null;
			}
		} catch (Exception e){
			return null;
		}
	}
	
	public String get(String strUrl, String jsonMessage){
		try {
						
			URL url = new URL(strUrl);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setConnectTimeout(5000); //서버에 연결되는 Timeout 시간 설정
			con.setReadTimeout(5000); // InputStream 읽어 오는 Timeout 시간 설정
	
			con.setRequestMethod("GET");
	                                 //json으로 message를 전달하고자 할 때 
			con.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
			con.setDoInput(true);
			con.setDoOutput(true); //POST 데이터를 OutputStream으로 넘겨 주겠다는 설정 
			con.setUseCaches(false);
			con.setDefaultUseCaches(false);
	
			if(jsonMessage != null) {
				OutputStreamWriter wr = new OutputStreamWriter(con.getOutputStream());
				wr.write(jsonMessage); //json 형식의 message 전달 
				wr.flush();
			}
	
			StringBuilder sb = new StringBuilder();
			if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(
						new InputStreamReader(con.getInputStream(), "utf-8"));
				String line;
				while ((line = br.readLine()) != null) {
					sb.append(line).append("\n");
				}
				br.close();
				return sb.toString();
			} else {
				return null;
			}
		} catch (IOException e){
			return null;
		}
	}

}


