package com.sgsone.returnrescue.util;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DataSetFactory {
	
	@Autowired
	private MultiLanguage multiLang;
	
	// * 관리자설정 *//
	public String[] getAdminSetting1DataSet(Locale locale){
		String[] resultSet = null;
		if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
			resultSet = new String[] { "rownum", "cooperator_name", "account_id", "account_name", "account_status", "grade_id", "reg_dt" };
		}else {
			resultSet = new String[] { "rownum", "cooperator_name_eng", "account_id", "account_name", "account_status", "grade_id", "reg_dt" };
		}
		return resultSet;
	}
	
	public String[] getAdminSetting1DispSet(Locale locale){
		return multiLang.get(new String[] { "No", "고객사", "아이디", "성명", "계정상태", "권한", "등록일자" }, locale);
	}
	
	public String[] getAdminSetting2DataSet(Locale locale){
		String[] resultSet = null;
		if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
			resultSet = new String[] { "rownum", "account_id", "account_name", "cooperator_name", "account_use_yn", "account_status", "grade_id", "reg_dt" };
		}else {
			resultSet = new String[] { "rownum", "account_id", "account_name", "cooperator_name_eng", "account_use_yn", "account_status", "grade_id", "reg_dt" };
		}
		return resultSet;
	}
	
	public String[] getAdminSetting2DispSet(Locale locale){
		return multiLang.get(new String[] { "No", "아이디", "성명", "업체명", "HIoS 사용여부", "계정상태", "권한", "등록일자" }, locale);
	}

	// * 근로자설정 *//
	public String[] getWorkerDataSet(Locale locale){
		String[] resultSet = null;
		if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
			resultSet = new String[] { "rownum", "worker_name", "new_yn", "cooperator_name", "job_name", "device_no", "device_status", "tag_type", "access_status", "visit_start_dt", "reg_dt" };
		}else {
			resultSet = new String[] { "rownum", "worker_name", "new_yn", "cooperator_name_eng", "job_name_eng", "device_no", "device_status", "tag_type", "access_status", "visit_start_dt", "reg_dt" };
		}
		return resultSet;
	}
	
	public String[] getWorkerDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "성명", "속성", "업체명", "직종", "태그번호", "태그상태", "태그속성", "출입승인", "작업기간", "등록일자" }, locale);
		
	}
	public String[] getWorkerTagDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "tag_type", "device_no", "mac_addr"};
		return resultSet;
	}
	
	public String[] getWorkerTagDispSet(Locale locale){
		String[] resultSet = null;
		// 해당 excel 은 근로자설정우ㅏ 태그 일괄반납 다운로드 -- 미사용
		resultSet = new String[] { "No", "디바이스 종류(필수)", "번호", "MAC주소" };
		return resultSet;
		// return multiLang.get(new String[] { "No", "디바이스 종류(필수)", "번호", "MAC주소" }, locale);
	}


	// * 재발급요청현황 *//
	public String[] getReIssuePasswordDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "reissue_dt", "account_id", "account_name", "status" };
		return resultSet;
	}
	
	public String[] getReIssuePasswordDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "요청일", "아이디", "성명", "상태" }, locale);
	}

	
	// * 기초데이터관리 *//
	public String[] getBaseCodeManageDataSet(Locale locale){
		String[] resultSet = null;
		if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
			resultSet = new String[] { "rownum", "cooperator_name", "code_type_name", "code", "code_name", "code_name_eng", "reg_dt" };
		}else {
			resultSet = new String[] { "rownum", "cooperator_name_eng", "code_type_name", "code", "code_name", "code_name_eng", "reg_dt" };
		}
		return resultSet;
	}
	
	public String[] getBaseCodeManageDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "고객사", "구분", "코드", "국문", "영문", "등록일자" }, locale);
	}

	// * 코드관리 *//
	public String[] getCodeManageDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "code_type_name", "code", "code_name", "code_name_eng", "reg_dt" };
		return resultSet;
	}
	
	public String[] getCodeManageDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "구분", "코드", "국문", "영문", "등록일자" }, locale);
	}


	// * 구역유형지정 *//
	public String[] getAreaDataSet(Locale locale){
		String[] resultSet = null;
		if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
			resultSet = new String[] { "rownum", "building_name", "floor", "cell_name", "area_type_name" };
		}else {
			resultSet = new String[] { "rownum", "building_name", "floor", "cell_name", "area_type_name_eng" };
		}
		return resultSet;
	}
	
	public String[] getAreaDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "빌딩", "층", "구역명", "구역유형" }, locale);
	}

	// * 제품등록관리 *//
	public String[] getProductDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "device_name", "product_name", "reg_dt" };
		return resultSet;
	}
	
	public String[] getProductDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "장치유형", "제품명", "등록일자" }, locale);
	}


	// * 장치등록관리 *//
	public String[] getDeviceDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "device_name", "device_no", "product_name", "mac_addr", "device_use_yn", "reg_dt" };
		return resultSet;
	}
	
	public String[] getDeviceDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "장치유형", "장치번호", "제품명", "MAC (S/N)", "사용현황", "등록일자" }, locale);
	}


	// * 디바이스 설치해제 *//
	public String[] getDeviceManageDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "device_no", "device_name", "product_name", "building_name", "check_out_type_name" ,"firmware_version", "reg_dt_report" };
		return resultSet;
	}
	
	public String[] getDeviceManageDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "장치번호", "장치유형", "제품명", "위치", "측정방식", "펌웨어", "설치일" }, locale);
	}

	// * 가스경보설정 *//
	public String[] getGasAlertDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "reg_dt", "gas_title", "gas_version" };
		return resultSet;
	}
	
	public String[] getGasAlertDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "등록일자", "명칭", "버전" }, locale);
	}
	
	
	// 환경정보 - 센서별 이력조회
	// 기상센서(온/습도)
	public String[] getSensorHistoryDataSet1(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "time_observation_list" , "skp_sensor_name", "skp_device_name" , "temperature_tc" , "humidity" , "heat_index" , "threshold_heatindex" };
		return resultSet;
	}
	
	public String[] getSensorHistoryDispSet1(Locale locale){
		return multiLang.get(new String[] { "No", "수집일" , "센서" , "장치명" ,"온도" , "습도" , "열지수" , "열지수 기준치"}, locale);
	}
	
	// 기상센서(강우량)
	public String[] getSensorHistoryDataSet2(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "time_observation_list" , "skp_sensor_name", "skp_device_name", "last1hour" , "threshold_rain" };
		return resultSet;
	}
	
	public String[] getSensorHistoryDispSet2(Locale locale){
		return multiLang.get(new String[] { "No", "수집일" , "센서" , "장치명" , "강우량" , "기준치"}, locale);
	}
	
	// 기상센서(풍속)
	public String[] getSensorHistoryDataSet3(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "time_observation_list" , "skp_sensor_name", "skp_device_name", "wind_wspd" , "wind_wdir_name" , "threshold_wind" };
		return resultSet;
	}
	
	public String[] getSensorHistoryDispSet3(Locale locale){
		return multiLang.get(new String[] { "No", "수집일" , "센서" , "장치명" ,  "풍속" , "풍향" , "기준치"}, locale);
	}
	
	// 미세먼지 센서
	public String[] getSensorHistoryDataSet4(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "time_observation_list" , "skp_sensor_name", "skp_device_name" , "type" , "value" , "threshold" };
		return resultSet;
	}
	
	public String[] getSensorHistoryDispSet4(Locale locale){
		return multiLang.get(new String[] { "No", "수집일" , "센서" , "장치명" , "종류" , "농도" , "기준치"}, locale);
	}
	
	// 소음센서
	public String[] getSensorHistoryDataSet5(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "time_observation_list" , "skp_sensor_name", "skp_device_name" , "value" , "threshold" };
		return resultSet;
	}
	
	public String[] getSensorHistoryDispSet5(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "수집일" , "센서" , "장치명" , "소음(db)" , "기준치"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "수집일" , "센서" , "장치명" , "소음" , "기준치"}, locale);
	}
	
	// 진동센서
	public String[] getSensorHistoryDataSet6(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "time_observation_list" , "skp_sensor_name", "skp_device_name" , "value" , "threshold" };
		return resultSet;
	}
	
	public String[] getSensorHistoryDispSet6(Locale locale){
		return multiLang.get(new String[] { "No", "수집일" , "센서" , "장치명" , "진동" , "기준치"}, locale);
	}

	// App 관리
	// App단말기관리
	public String[] getAppDeviceListDataSet(Locale locale){
		String[] resultSet = null;
		if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
			resultSet = new String[] { "rownum", "code_name" , "account_id", "account_name" , "reg_dt_list" , "model" , "phone_name" , "reg_dt_list2" , "model2" , "phone_name2" };
		}else {
			resultSet = new String[] { "rownum", "code_name_eng" , "account_id", "account_name" , "reg_dt_list" , "model" , "phone_name" , "reg_dt_list2" , "model2" , "phone_name2" };
		}
		return resultSet;
	}
	
	public String[] getAppDeviceListDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "업체명", "아이디", "관리자명" , "등록일" , "모델명" , "휴대전화이름1" , "등록일" , "모델명" , "휴대전화이름2" }, locale);
	}
	
	// App다운로드관리
	public String[] getAppDownloadListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "os_type" , "version_name", "description" , "reg_dt_list" };
		return resultSet;
	}
	
	public String[] getAppDownloadListDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "OS", "버전", "타이틀" , "등록일" }, locale);
	}
	
	// App메뉴권한관리
	public String[] getAppMenuGradeSettingDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "code_name" , "account_id", "account_name" , "menu_app_use_yn_1" , "menu_app_use_yn_2" , "menu_app_use_yn_3" , "menu_app_use_yn_4" , "menu_app_use_yn_5" };
		return resultSet;
	}
	
	public String[] getAppMenuGradeSettingDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "업체명", "아이디", "관리자명" , "위치관제" , "T/C안전관리" , "환경정보" , "터널관제" , "태그관리" };
		// return resultSet;
		return multiLang.get(new String[] { "No", "업체명", "아이디", "관리자명" , "위치관제" , "T/C안전관리" , "환경정보" , "터널관제" , "태그관리" }, locale);
	}
	
	public String[] getRetainListDataSet(String retainType){
		String[] resultSet = null;
		if("U".equals(retainType)) {
			resultSet = new String[] { "rownum", "measure_dt", "device_no", "auto_yn", "setting_value", "max_variation_depth", "max_variation_measure", "manage_value", "building_name", "reg_dt" };
		}else {
			resultSet = new String[] { "rownum", "measure_dt", "device_no", "auto_yn", "setting_value", "measure_value", "manage_value", "building_name", "reg_dt" };
		}
		return resultSet;
	}
	
	public String[] getRetainListDispSet(Locale locale, String retainType){
		String[] resultSet = null;
		
		if("U".equals(retainType)) {
			// resultSet = new String[] { "No", "기록일", "장치번호", "유형", "설치심도 (GL-m)", "최대변위 발생심도 (GL-m)", "최대변위 측정값 (mm)", "관리기준 (mm)", "설치위치", "설치일" };
			resultSet = multiLang.get(new String[] { "No", "기록일", "장치번호", "유형", "설치심도 (GL-m)", "최대변위 발생심도 (GL-m)", "최대변위 측정값 (mm)", "관리기준 (mm)", "설치위치", "설치일" }, locale);
		}else if("B".equals(retainType)){
			// resultSet = new String[] { "No", "기록일", "장치번호", "유형", "초기수위 (GL-m)", "측정값 (m)", "관리기준 (m)", "설치위치", "설치일" };
			resultSet = multiLang.get(new String[] { "No", "기록일", "장치번호", "유형", "초기수위 (GL-m)", "측정값 (m)", "관리기준 (m)", "설치위치", "설치일" }, locale);
		}else if("G".equals(retainType)){
			// resultSet = new String[] { "No", "기록일", "장치번호", "유형", "초기측정치 (m)", "측정값 (m)", "관리기준 (mm)", "설치위치", "설치일" };
			resultSet = multiLang.get(new String[] { "No", "기록일", "장치번호", "유형", "초기측정치 (m)", "측정값 (m)", "관리기준 (mm)", "설치위치", "설치일" }, locale);
		}else if("M".equals(retainType)){
			// resultSet = new String[] { "No", "기록일", "장치번호", "유형", "초기측정응력 (ton)", "측정값 (ton)", "관리기준 (ton)", "설치위치", "설치일" };
			resultSet = multiLang.get(new String[] { "No", "기록일", "장치번호", "유형", "초기측정응력 (ton)", "측정값 (ton)", "관리기준 (ton)", "설치위치", "설치일" }, locale);
		}else if("E".equals(retainType)){
			// resultSet = new String[] { "No", "기록일", "장치번호", "유형", "초기하중 (ton)", "측정값 (ton)", "관리기준 (ton)", "설치위치", "설치일" };
			resultSet = multiLang.get(new String[] { "No", "기록일", "장치번호", "유형", "초기하중 (ton)", "측정값 (ton)", "관리기준 (ton)", "설치위치", "설치일" }, locale);
		}
		return resultSet;
	}
	
	public String[] getRetainListPopupDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "retain_type", "device_no", "status", "reg_dt", "measure_dt" };
		return resultSet;
	}
	
	public String[] getRetainListPopupDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "계측기유형", "장치번호", "통신", "설치일", "최종기록일" };
		// return resultSet;
		return multiLang.get(new String[] { "No", "계측기유형", "장치번호", "통신", "설치일", "최종기록일" }, locale);
	}
	
	public String[] getRetainDetailListDataSet(String retainType){
		String[] resultSet = null;
		if("U".equals(retainType)) {
			resultSet = new String[] { "rownum", "measure_dt", "setting_value", "max_variation_depth", "max_variation_measure", "manage_value"};
		}else {
			resultSet = new String[] { "rownum", "measure_dt", "setting_value", "measure_value", "manage_value"};
		}
		return resultSet;
	}
	
	public String[] getRetainDetailListDispSet(Locale locale, String retainType){
		String[] resultSet = null;
		if("U".equals(retainType)) {
			// resultSet = new String[] { "No", "기록일", "설치심도 (GL-m)", "최대변위 발생심도 (GL-m)", "최대변위 측정값 (mm)", "관리기준 (mm)"};
			resultSet = multiLang.get(new String[] { "No", "기록일", "설치심도 (GL-m)", "최대변위 발생심도 (GL-m)", "최대변위 측정값 (mm)", "관리기준 (mm)"}, locale);
		}else if("B".equals(retainType)){
			// resultSet = new String[] { "No", "기록일", "초기수위 (GL-m)", "측정값 (m)", "관리기준 (m)"};
			resultSet = multiLang.get(new String[] { "No", "기록일", "초기수위 (GL-m)", "측정값 (m)", "관리기준 (m)"}, locale);
		}else if("G".equals(retainType)){
			// resultSet = new String[] { "No", "기록일", "초기측정치 (m)", "측정값 (m)", "관리기준 (mm)"};
			resultSet = multiLang.get(new String[] { "No", "기록일", "초기측정치 (m)", "측정값 (m)", "관리기준 (mm)"}, locale);
		}else if("M".equals(retainType)){
			// resultSet = new String[] { "No", "기록일", "초기측정응력 (ton)", "측정값 (ton)", "관리기준 (ton)"};
			resultSet = multiLang.get(new String[] { "No", "기록일", "초기측정응력 (ton)", "측정값 (ton)", "관리기준 (ton)"}, locale);
		}else if("E".equals(retainType)){
			// resultSet = new String[] { "No", "기록일", "초기하중 (ton)", "측정값 (ton)", "관리기준 (ton)"};
			resultSet = multiLang.get(new String[] { "No", "기록일", "초기하중 (ton)", "측정값 (ton)", "관리기준 (ton)"}, locale);
		}
		return resultSet;
	}
	
	public String[] getRetainDetailListDataSet2(String retainType){
		String[] resultSet = null;
		if("U".equals(retainType)) {
			resultSet = new String[] { "rownum", "measure_dt", "setting_value", "max_variation_depth", "max_variation_measure", "manage_value"};
		}else {
			resultSet = new String[] { "rownum", "measure_dt", "setting_value", "measure_value", "manage_value"};
		}
		return resultSet;
	}
	
	public String[] getRetainDetailListDispSet2(Locale locale, String retainType){
		String[] resultSet = null;
		if("U".equals(retainType)) {
			// resultSet = new String[] { "No", "측정일", "설치심도 (GL-m)", "최대변위 발생심도 (GL-m)", "최대변위 측정값 (mm)", "관리기준 (mm)"};
			resultSet = multiLang.get(new String[] { "No", "측정일", "설치심도 (GL-m)", "최대변위 발생심도 (GL-m)", "최대변위 측정값 (mm)", "관리기준 (mm)"}, locale);
		}else if("B".equals(retainType)){
			// resultSet = new String[] { "No", "측정일", "초기수위 (GL-m)", "측정값 (m)", "관리기준 (m)"};
			resultSet = multiLang.get(new String[] { "No", "측정일", "초기수위 (GL-m)", "측정값 (m)", "관리기준 (m)"}, locale);
		}else if("G".equals(retainType)){
			// resultSet = new String[] { "No", "측정일", "초기측정치 (m)", "측정값 (m)", "관리기준 (mm)"};
			resultSet = multiLang.get(new String[] { "No", "측정일", "초기측정치 (m)", "측정값 (m)", "관리기준 (mm)"}, locale);
		}else if("M".equals(retainType)){
			// resultSet = new String[] { "No", "측정일", "초기측정응력 (ton)", "측정값 (ton)", "관리기준 (ton)"};
			resultSet = multiLang.get(new String[] { "No", "측정일", "초기측정응력 (ton)", "측정값 (ton)", "관리기준 (ton)"}, locale);
		}else if("E".equals(retainType)){
			// resultSet = new String[] { "No", "측정일", "초기하중 (ton)", "측정값 (ton)", "관리기준 (ton)"};
			resultSet = multiLang.get(new String[] { "No", "측정일", "초기하중 (ton)", "측정값 (ton)", "관리기준 (ton)"}, locale);
		}
		return resultSet;
	}
	
	public String[] getEventListDataSet(Locale locale, String menuType){
		String[] resultSet = null;
		
		if("MENU_LOCATION".equals(menuType) || //위치관제
		   "MENU_STRICTURE".equals(menuType) || 
		   "MENU_FEVER".equals(menuType)) //감염관제 
		   {
			if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
				resultSet = new String[] { "rownum", "reg_dt", "device_name", "event_name", "status", "event_msg", "worker_name", "cooperator_name", "job_name", "mac_addr", "building_name" };
			}else {
				resultSet = new String[] { "rownum", "reg_dt", "device_name", "event_name_eng", "status", "event_msg_eng", "worker_name", "cooperator_name_eng", "job_name_eng", "mac_addr", "building_name" };
			}
		}else if("MENU_TC".equals(menuType) || 
				 "MENU_OILMIST".equals(menuType) || //유증기
				 "MENU_WATER".equals(menuType)) //침수/침하			
		{
			if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
				resultSet = new String[] { "rownum", "reg_dt", "device_name", "event_name", "status", "event_msg", "mac_addr", "building_name" };
			}else {
				resultSet = new String[] { "rownum", "reg_dt", "device_name", "event_name_eng", "status", "event_msg_eng", "mac_addr", "building_name" };
			}
		}else if("MENU_RETAIN".equals(menuType)) {
			if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
				resultSet = new String[] { "rownum", "reg_dt", "device_name", "event_name", "status", "event_msg", "mac_addr", "building_name" };
			}else {
				resultSet = new String[] { "rownum", "reg_dt", "device_name", "event_name_eng", "status", "event_msg_eng", "mac_addr", "building_name" };
			}
		}else if("MENU_CCTV".equals(menuType)) {
			if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
				resultSet = new String[] { "rownum", "reg_dt", "device_name", "event_name", "status", "event_msg", "mac_addr", "building_id" };
			}else {
				resultSet = new String[] { "rownum", "reg_dt", "device_name", "event_name_eng", "status", "event_msg_eng", "mac_addr", "building_id" };
			}
		}
		return resultSet;
	}
	
	public String[] getEventListDispSet(Locale locale, String menuType){
		String[] resultSet = null;
		
		if("MENU_LOCATION".equals(menuType) || //위치관제
		   "MENU_STRICTURE".equals(menuType) || //장비협착
		   "MENU_FEVER".equals(menuType)) //감염관제 
			// resultSet = new String[] { "No", "발생일시", "장치유형", "경고알림유형", "조치", "알림내용", "성명", "업체명", "직종", "장치번호/MAC", "발생위치" };
			resultSet = multiLang.get(new String[] { "No", "발생일시", "장치유형", "경고알림유형", "조치", "알림내용", "성명", "업체명", "직종", "장치번호/MAC", "발생위치" }, locale);
		else if("MENU_TC".equals(menuType) || //TC 충돌
  			    "MENU_OILMIST".equals(menuType) || //유증기
				"MENU_WATER".equals(menuType)) //침수/침하
			// resultSet = new String[] { "No", "발생일시", "장치유형", "경고알림유형", "조치", "알림내용", "장치번호/MAC", "발생위치" };
			resultSet = multiLang.get(new String[] { "No", "발생일시", "장치유형", "경고알림유형", "조치", "알림내용", "장치번호/MAC", "발생위치" }, locale);
		else if("MENU_RETAIN".equals(menuType)) //흙막이
			// resultSet = new String[] { "No", "발생일시", "계측기", "경고알림유형", "조치", "알림내용", "장치번호/MAC", "발생위치" };
			resultSet = multiLang.get(new String[] { "No", "발생일시", "계측기", "경고알림유형", "조치", "알림내용", "장치번호/MAC", "발생위치" }, locale);
		else if("MENU_CCTV".equals(menuType)) //CCTV
			// resultSet = new String[] { "No", "발생일시", "장치유형", "경고알림유형", "조치", "알림내용", "채널번호", "발생위치" };
			resultSet = multiLang.get(new String[] { "No", "발생일시", "장치유형", "경고알림유형", "조치", "알림내용", "채널번호", "발생위치" }, locale);

		return resultSet;
	}
	
	public String[] getAlarmListPerPopupDataSet(){
		String[] resultSet = null;
		
		resultSet = new String[] { "rownum", "reg_dt", "building_name", "event_name", "status"};
			
		return resultSet;
	}
	
	public String[] getAlarmListPerPopupDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "발생일시", "위치", "경고알림유형", "조치" };
		// return resultSet;
		return multiLang.get(new String[] { "No", "발생일시", "위치", "경고알림유형", "조치" }, locale);
	}
	
	public String[] getEventListPopDataSet(Locale locale, String menuType){
		if( locale.getLanguage().equals("ko_kr") || locale.getLanguage().equals("ko_KR") ) {
			return new String[] { "rownum", "reg_dt", "device_name", "event_name", "status", "event_msg", "worker_name", "cooperator_name", "job_name", "mac_addr", "building_name" };
		}else {
			return new String[] { "rownum", "reg_dt", "device_name", "event_name_eng", "status", "event_msg_eng", "worker_name", "cooperator_name_eng", "job_name_eng", "mac_addr", "building_name_eng" };
		}
	}
	
	public String[] getEventListPopDispSet(Locale locale, String menuType){
		
		// return new String[] { "No", "발생일시", "장치유형", "경고알림유형", "조치", "알림내용", "성명", "업체명", "직종", "장치번호/MAC", "발생위치" };
		return multiLang.get(new String[] { "No", "발생일시", "장치유형", "경고알림유형", "조치", "알림내용", "성명", "업체명", "직종", "장치번호/MAC", "발생위치" }, locale);
	}

	
	public String[] getAnemometerDetailListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "reg_dt", "device_no", "wind_speed_current", "wind_speed_average", "wind_danger_threshold"};
		return resultSet;
	}
	
	public String[] getAnemometerDetailListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "기록일", "장치번호", "순간풍속(m/s)", "평균풍속(m/s)", "기준치"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "기록일", "장치번호", "순간풍속(m/s)", "평균풍속(m/s)", "기준치"}, locale);
	}

	public String[] getLocationWorkListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "cooperator_name", "total_cnt", "tag_cnt", "site_in_cnt"};
		return resultSet;
	}
	
	public String[] getLocationWorkListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "업체명", "등록인원", "배포인원", "현장내"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "기록일", "장치번호", "순간풍속(m/s)", "평균풍속(m/s)", "기준치"}, locale);
	}
	
	public String[] getLocationWorkerListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "reg_dt", "employ_dt", "device_no", "worker_name", "cooperator_name", "job_name", "tag_type", "status", "entry_status", "visit_start_dt"};
		return resultSet;
	}
	
	public String[] getLocationWorkerListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "등록일자", "채용일", "태그번호", "성명", "업체명", "직종", "속성", "태그상태", "출입승인", "작업기간"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "등록일자", "채용일", "태그번호", "성명", "업체명", "직종", "속성", "태그상태", "출입승인", "작업기간"}, locale);
	}
	
	public String[] getLocationEnterListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "access_time", "access_status", "gate_name", "device_no", "worker_name", "cooperator_name", "job_name", "tag_type", "building_name"};
		return resultSet;
	}
	
	public String[] getLocationEnterListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "일시", "진입/진출", "게이트", "태그번호", "성명", "업체명", "직종", "속성", "현재위치"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "일시", "진입/진출", "게이트", "태그번호", "성명", "업체명", "직종", "속성", "현재위치"}, locale);
	}
	
	public String[] getLocationGasListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "device_no", "reg_dt", "temperature_value", "oxygen_value", "carbon_monoxide_value", "hydrogen_sulfide_value", "methan_value", "building_name"};
		return resultSet;
	}
	
	public String[] getLocationGasListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "장치번호", "기록일", "온/습도", "산소(%)", "일산화탄소(ppm)", "황화수소(ppm)", "메탄(%)", "위치정보"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "장치번호", "기록일", "온/습도", "산소(%)", "일산화탄소(ppm)", "황화수소(ppm)", "메탄(%)", "위치정보"}, locale);
	}

	public String[] getLocationMoveListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "reg_dt", "building_name", "entry_status", "device_no", "cooperator_name", "job_name", "worker_name", "tag_type"};
		return resultSet;
	}
	
	public String[] getLocationMoveListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "갱신일시", "위치정보", "IN/OUT", "태그번호", "업체명", "직종", "성명", "속성"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "갱신일시", "위치정보", "IN/OUT", "태그번호", "업체명", "직종", "성명", "속성"}, locale);
	}
	
	public String[] getLocationGasDetailListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "reg_dt", "temperature_value", "oxygen_value", "carbon_monoxide_value", "hydrogen_sulfide_value", "methan_value", "building_name"};
		return resultSet;
	}
	
	public String[] getLocationGasDetailListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "기록일", "온/습도", "산소(%)", "일산화탄소(ppm)", "황화수소(ppm)", "메탄(%)", "위치정보"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "기록일", "온/습도", "산소(%)", "일산화탄소(ppm)", "황화수소(ppm)", "메탄(%)", "위치정보"}, locale);
	}
	
	public String[] getTunnelHistoryListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "reg_dt", "digthrough_elevation_id", "dig_name", "section_name", "section_sum", "section_total", "section_percent", "account_name", "cooperator_name"};
		return resultSet;
	}
	
	public String[] getTunnelHistoryListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "수정일시", "입면도", "터널명", "구간", "굴착", "연장", "굴진율(%)", "성명", "회사명"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "수정일시", "입면도", "터널명", "구간", "굴착", "연장", "굴진율(%)", "성명", "업체명"}, locale);
	}
	
	public String[] getProcessHistoryListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "target_dt", "digthrough_process_target", "digthrough_process_ing", "digthrough_process_gap", "account_name", "cooperator_name", "reg_dt"};
		return resultSet;
	}
	
	public String[] getProcessHistoryListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "계획일", "계획", "실적", "차이", "성명", "회사명", "수정일시"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "계획일", "계획", "실적", "차이", "성명", "업체명", "수정일시"}, locale);
	}
	
	public String[] getParasiteListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "device_no", "ap_id", "building_name", "entry_time", "leave_time"};
		return resultSet;
	}
	
	public String[] getParasiteListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "계획일", "계획", "실적", "차이", "성명", "회사명", "수정일시"};
		// return resultSet;
		return multiLang.get(new String[] { "No", "GATE명", "AP정보(번호)", "AP정보(설치구역)", "최초감지", "최종감지"}, locale);
	}
	
	public String[] getDangerListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "ap_id", "building_name", "worker_id", "worker_name", "cooperator_name", "entry_time", "leave_time", "start_date", "end_date"};
		return resultSet;
	}
	
	public String[] getDangerListDispSet(Locale locale){
		// String[] resultSet = null;
		// resultSet = new String[] { "No", "계획일", "계획", "실적", "차이", "성명", "회사명", "수정일시"};
		// return resultSet;
		return multiLang.get(new String[] { "AP ID", "AP 설치구역", "HPMS작업자일련번호", "성명", "업체명", "최초감지", "최종감지", "FROM", "TO"}, locale);
	}
	
	public String[] getSubmergenceListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "device_type", "device_no", "building_name", "value", "threshold", "time_observation"};
		return resultSet;
	}
	
	public String[] getSubmergenceDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "센서종류", "장치번호", "설치구역", "잔여수위", "상태", "측정일자"}, locale);
	}
	
	public String[] getFireListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "device_type", "device_no", "building_name", "value_1", "threshold_warning_1", "value_2", "threshold_warning_2", "value_3", "threshold_warning_3", "value_4", "threshold_warning_4", "msr_dt"};
		return resultSet;
	}
	
	public String[] getParasiteWorkerListDataSet(){
		String[] resultSet = null;
		resultSet = new String[] { "rownum", "worker_name", "cooperator_name", "job_name", "senior_yn", "device_no", "gate_info", "building_name", "first_time", "last_time", "temperature"};
		return resultSet;
	}
	
	public String[] getParasiteWorkerListDispSet(Locale locale){
		return multiLang.get(new String[] { "No", "성명", "업체명", "직종", "유형", "태그/MAC", "GATE 명", "AP설치구역", "최초감지", "최종감지", "상태"}, locale);
	}
}
