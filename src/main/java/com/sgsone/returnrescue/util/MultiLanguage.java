package com.sgsone.returnrescue.util;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;


@Service
public class MultiLanguage {

	@Autowired
	MessageSource messageSource;
		
    private final Map<String, String> langMap = new HashMap<String, String>() {
    	
		private static final long serialVersionUID = 1L;
		{
            put("성명", "hios.name");
            put("속성", "hios.attribute");
            put("직종", "hios.job");
            put("태그번호", "hios.tag.number");
            put("태그상태", "hios.tag.status");
            put("태그속성", "hios.tag.attribute");
            put("출입승인", "hios.access.approval");
            put("작업기간", "hios.working.period");
            put("등록일자", "hios.registration.date");
            put("고객사", "hios.customer");
            put("아이디", "hios.id");
            put("계정상태", "hios.account.status");
            put("권한", "hios.permission");
            put("업체명", "hios.company.name");
            put("HIoS 사용여부", "hios.hios.use.or.not");
            put("요청일", "hios.request.date");
            put("상태", "hios.status");
            put("구분", "hios.classification");
            put("코드", "hios.code");
            put("국문", "hios.korean");
            put("영문", "hios.english");
            put("빌딩", "hios.building");
            put("층", "hios.floor");
            put("구역명", "hios.zone.name");
            put("구역유형", "hios.zone.type");
            put("장치유형", "hios.device.type");
            put("제품명", "hios.product.name");
            put("장치번호", "hios.device.number");
            put("사용현황", "hios.usage.status");
            put("위치", "hios.location");
            put("측정방식", "hios.measurement.method");
            put("펌웨어", "hios.firmware");
            put("설치일", "hios.installation.date");
            put("명칭", "hios.classification.name");
            put("버전", "hios.version");
            put("수집일", "hios.collection.date");
            put("센서", "hios.sensor");
            put("장치명", "hios.device.name");
            put("온도", "hios.temperature.excel");
            put("습도", "hios.humidity.excel");
            put("열지수", "hios.heat.index");
            put("열지수 기준치", "hios.heat.index.criteria");
            put("강우량", "hios.rainfall.excel");
            put("기준치", "hios.criteria");
            put("풍속", "hios.wind.speed.excel");
            put("풍향", "hios.wind.direction");
            put("종류", "hios.type.excel");
            put("농도", "hios.concentration.excel");
            put("소음", "hios.noise.excel");
            put("진동", "hios.vibration.excel");
            put("관리자명", "hios.administrators");
            put("등록일", "hios.registration.date");
            put("모델명", "hios.model.name");
            put("내용", "hios.content");
            put("위치관제", "hios.location.control");
            put("T/C안전관리", "hios.tc.safety.management.excel" );
            put("환경정보", "hios.environmental.info");
            put("터널관제", "hios.tunnel.control");
            put("태그관리", "hios.tag.management");
            put("기록일", "hios.record.date");
            put("유형", "hios.type");
            put("설치심도 (GL-m)", "hios.depth.installation.excel");
            put("최대변위 발생심도 (GL-m)", "hios.max.occurrence.depth.excel");
            put("최대변위 측정값 (mm)", "hios.max.measurement.value.excel");
            put("관리기준 (mm)", "hios.management.standard.mm.value");
            put("설치위치", "hios.installation.location");
            put("초기수위 (GL-m)", "hios.initial.water.level.excel");
            put("측정값 (m)", "hios.measurement.m.value");
            put("초기측정치 (m)", "hios.initial.measured.m.value");
            put("초기측정응력 (ton)", "hios.initial.measured.ton.stress");
            put("측정값 (ton)", "hios.measurement.ton.value");
            put("관리기준 (ton)", "hios.management.standard.ton.value");
            put("초기하중 (ton)", "hios.initial.load.ton.value");
            put("계측기유형", "hios.retaining.Instrument.type");
            put("통신", "hios.communication");
            put("최종기록일", "hios.last.record.date");
            put("측정일", "hios.measurement.day");
            put("발생일시", "hios.date.time.occurrence");
            put("경고알림유형", "hios.warning.notification.type");
            put("조치", "hios.action");
            put("알림내용", "hios.notification.content");
            put("장치번호/MAC", "hios.device.number.mac");
            put("발생위치", "hios.occurrence.location");
            put("채널번호", "hios.channel.number");
            put("순간풍속(m/s)", "hios.instantaneous.wind.speed.excel");
            put("평균풍속(m/s)", "hios.average.wind.speed.excel");
            put("채용일", "hios.recruitment.date");
            put("출입승인", "hios.access.approval");
            put("일시", "hios.dateand.time");
            put("진입/진출", "hios.entry.exit");
            put("게이트", "hios.gate");
            put("온/습도", "hios.temperature.humidity");
            put("산소(%)", "hios.oxygen.excel");
            put("일산화탄소(ppm)", "hios.carbon.monoxide.excel");
            put("황화수소(ppm)", "hios.hydrogen.excel");
            put("메탄(%)", "hios.methane.excel");
            put("위치정보", "hios.location.information");
            put("갱신일시", "hios.update.date.time");
            put("수정일시", "hios.edit.date.and.time");
            put("입면도", "hios.elevation");
            put("터널명", "hios.tunnel.name");
            put("구간", "hios.section");
            put("굴착", "hios.excavation");
            put("연장", "hios.extension");
            put("굴진율", "hios.excavation.rate.excel");
            put("계획일", "hios.planning.day");
            put("계획", "hios.plan");
            put("실적", "hios.performance");
            put("차이", "hios.gap");
            put("다른 PC에서 동일계정으로 로그인하였습니다.강제 로그아웃됩니다.", "hios.using.same.account.logout");
            put("시스템관리자", "hios.system.administrator");
            put("본사관리자", "hios.head.office.manager");
            put("현장관리자", "hios.site.manager");
            put("협력업체관리자", "hios.supplier.manager");
            put("사용자", "hios.user");
            put("사용가능", "hios.available");
            put("사용불가", "hios.can.not.used");
            put("정상", "hios.normal");
            put("차단", "hios.block");
            put("비밀번호 재발급", "hios.password.reissuance");
            put("휴면", "hios.dormancy");
            put("관리자_설정", "hios.administrator.settings");
            put("신규/", "hios.new.excel");
            put("고령자/", "hios.the.elderly.excel");
            put("일반인/", "hios.public.excel");
            put("내국인", "hios.local");
            put("외국인", "hios.foreigner");
            put("장비", "hios.equipment.excel");
            put("인원", "hios.personnel.excel");
            put("근로자_설정", "hios.worker.setting");
            put("근로자", "hios.worker");
            put("등록", "hios.working.registration");
            put("미등록", "hios.working.unregistered");
            put("기간만료", "hios.working.period.expiration");
            put("가능", "hios.accessible");
            put("불가", "hios.not.allowed");
            put("발급완료", "hios.issuance.complete");
            put("미처리", "hios.nothandled");
            put("재발급_요청현황", "hios.status.request.reissuance");
            put("구역유형_지정", "hios.zone.type.designation");
            put("코드관리", "hios.code.management");
            put("제품등록_관리", "hios.product.registration.management");
            put("사용", "hios.use");
            put("미사용", "hios.unused");
            put("장치등록_관리", "hios.device.registration.management");
            put("디바이스_설치_해제", "hios.device.installation.uninstallation");
            put("가스경보_설정", "hios.gas.alarm.setting");
            put("기상센서(온/습도)", "hios.weather.sensor.temperature.humidity");
            put("기상센서(강우량)", "hios.weather.sensor.rainfall");
            put("mm(3시간)", "hios.mm.3hours.excel");
            put("기상센서(풍속)", "hios.weather.sensor.wind.speed");
            put("미세먼지센서", "hios.fine.dust.sensor");
            put("소음센서", "hios.noise.sensor");
            put("진동센서", "hios.vibration.sensor");
            put("센서별_이력_조회", "hios.searching.history.each.sensor");
            put("APP_다운로드관리", "hios.app.download.management");
            put("타이틀", "hios.title");
            put("APP_단말기관리", "hios.app.terminal.management");
            put("APP_메뉴권한관리", "hios.app.menu.authority.management");
            put("자동", "hios.automatic");
            put("수동", "hios.manual");
            put("흙막이붕괴방지_센서별이력조회", "hios.retaining.earth.collapse.prevention.excel");
            put("지중경사계", "hios.underground.inclinometer");
            put("지하수위계", "hios.groundwater.level.gauge");
            put("지표침하계", "hios.ground.surface.settlement.gauge");
            put("변형율계", "hios.strain.gauge");
            put("E/A하중계", "hios.ea.road.cell");
            put("흙막이붕괴방지_계측기목록보기", "hios.retaining.earth.gauge.detail.view.excel");
            put("흙막이붕괴방지_센서별이력조회_상세", "hios.retaining.earth.gauge.detail.view.excel");
            put("흙막이붕괴방지_흙막이계측기별상세보기", "hios.retaining.earth.gauge.detail.view");
            put("기초데이터관리", "hios.basic.data.management");
            put("미조치", "hios.no.action");
            put("조치필요", "hios.action.required");
            put("조치완료", "hios.action.completed");
            put("이벤트알람", "hios.event.excel");
            put("이벤트알람_팝업", "hios.event.popup.excel");
            put("경고발생이력", "hios.warning.history");
            put("주의", "hios.caution");
            put("위험", "hios.danger");
            put("풍속데이터 상세현황", "hios.wind.speed.data.details");
            put("번", "hios.no");
            put("허용", "hios.allowed");
            put("근무현황_상세", "hios.working.status.detail.excel");
            put("진입", "hios.go.into");
            put("진출", "hios.go.out");
            put("출입현황", "hios.access.status");
            put("가스현황", "hios.gas.status");
            put("근로자이동현황", "hios.worker.movement.status");
            put("가스현황_상세", "hios.gas.status.detail.execel");
            put("(삭제)", "hios.delete.excel");
            put("굴진율이력조회", "hios.excavation.rate.history.inquiry");
            put("공정율이력조회", "hios.process.rate.history.inquiry");
            put("비밀번호 변경 설정이 3개월이 초과되었습니다.개인정보 보안을 위하여 주기적(최소 3개월)으로 비밀번호를 변경해주시기 바랍니다.", "hios.change.password.alert");
            put("MAP소프트웨어 버전 정보가 없습니다. MAP소프트웨어를 등록하시기 바랍니다.", "hios.map.not.software.alert");
            put("아이디 또는 비밀번호가 일치하지 않습니다.", "hios.id.password.not.match");
            put("존재하지 않는 아이디 입니다.", "hios.account.not.exist");
            put("HIoS 임시비밀번호 발급안내", "hios.tmeporary.password.sms.msg1");
            put("님의 임시비밀번호는", "hios.tmeporary.password.sms.msg2");
            put("입니다.", "hios.tmeporary.password.sms.msg3");
            put("장치 일괄 등록에 실패하였습니다.첨부파일을 확인해주시기 바랍니다.", "hios.device.bundleRegi.faile");
            put("휴대전화이름1", "hios.app.phoneName1");
            put("휴대전화이름2", "hios.app.phoneName2");
            put("중복된 명칭이 존재합니다.", "hios.duplicate.name");
            put("파일 저장을 실패하였습니다.", "hios.file.save.fail");
            put("선택된 메뉴가 없습니다.", "hios.menu.noSelected");
            put("처리되었습니다.", "hios.processed.msg");
            put("태그 일괄 반납에 실패하였습니다.첨부파일을 확인해주시기 바랍니다.", "hios.tag.bundleRegi.fail");
            put("근로자 등록에 실패하였습니다.첨부파일을 확인해주시기 바랍니다.", "hios.workers.register.fail");
            put("흙막이 제품명이 잘못되었습니다.", "hios.earth.product.name.fail");
            put("[HIoS]로그인 인증번호 [", "hios.log.in.authentication.number1");
            put("]을 입력해 주시기 바랍니다.", "hios.log.in.authentication.number2");
        }
    };

	public String get(String korean, Locale locale) {
		String tag = langMap.get(korean);
		if(StringUtils.isEmpty(tag))
			return korean;
		
		String english = messageSource.getMessage(tag, null, locale);
		if(StringUtils.isEmpty(english))
			return korean;
		
		return english;
	}
	
	public String[] get(String []koreans, Locale locale) {
		
		String englishs[] = new String[koreans.length];
		for(int i = 0; i < koreans.length; i++) {
			englishs[i] = get(koreans[i], locale);
		}
		
		return englishs;
	}
}
