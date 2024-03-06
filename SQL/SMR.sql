/*
 Navicat Premium Data Transfer

 Source Server         : 사내서버
 Source Server Type    : MariaDB
 Source Server Version : 100509
 Source Host           : 39.118.52.71:3306
 Source Schema         : SMR

 Target Server Type    : MariaDB
 Target Server Version : 100509
 File Encoding         : 65001

 Date: 02/10/2021 10:54:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for TBL_ACCOUNT
-- ----------------------------
DROP TABLE IF EXISTS `TBL_ACCOUNT`;
CREATE TABLE `TBL_ACCOUNT` (
  `account_id` varchar(50) NOT NULL COMMENT '아이디',
  `account_name` varchar(60) NOT NULL COMMENT '이름',
  `account_pwd` varchar(256) NOT NULL COMMENT '비밀번호',
  `grade_id` bigint(20) unsigned NOT NULL COMMENT '등급 아이디',
  `gender` enum('M','W') DEFAULT 'M' COMMENT '성별(M:남, W:여)',
  `birth` datetime DEFAULT NULL COMMENT '생년월일',
  `address1` varchar(255) DEFAULT NULL COMMENT '주소',
  `address2` varchar(255) DEFAULT NULL COMMENT '상세주소',
  `pushnoti_yn` enum('Y','N') DEFAULT 'Y' COMMENT 'PUSH알림 수신 여부',
  `account_email` varchar(100) DEFAULT NULL COMMENT '이메일',
  `account_tel` varchar(20) DEFAULT NULL COMMENT '연락처',
  `account_phone` varchar(30) DEFAULT NULL COMMENT '연락처',
  `account_use_yn` enum('Y','N') DEFAULT 'N' COMMENT '계정 사용여부',
  `account_status` enum('N','R','S','Q') DEFAULT 'N' COMMENT '상태(N:정상, R:재발급요청, S:정지, Q:휴면)',
  `confirm_id` varchar(50) DEFAULT NULL COMMENT '권한승인 관리자 아이디',
  `file_id` bigint(20) unsigned DEFAULT NULL COMMENT '관리자 프로파일 아이디',
  `pw_error_count` int(11) DEFAULT 0 COMMENT '비밀번호 실패 횟수',
  `first_login` enum('Y','N') DEFAULT 'Y' COMMENT '최초로그인 여부 확인',
  `sms_auth_token` varchar(128) DEFAULT NULL COMMENT '휴대폰 인증번호',
  `lang_type` enum('K','E') DEFAULT 'K' COMMENT '국문, 영문 메뉴 사용 여부',
  `pwchg_dt` datetime DEFAULT NULL COMMENT '비밀번호 변경 일자',
  `login_status` enum('N','W','M') DEFAULT 'N' COMMENT '로그인 여부 확인',
  `mobile_login_cnt` bigint(20) DEFAULT NULL COMMENT 'APP로그인횟수',
  `user_height` double DEFAULT NULL COMMENT '키',
  `user_weight` double DEFAULT NULL COMMENT '몸무게',
  `extrainfo` varchar(255) DEFAULT NULL COMMENT '질병 및 특이사항',
  `prot_name` varchar(64) DEFAULT NULL COMMENT '보호자 이름',
  `relationship` varchar(64) DEFAULT NULL COMMENT '보호자와의 관계',
  `prot_phone` varchar(24) DEFAULT NULL COMMENT '보호자 연락처',
  `prot_email` varchar(64) DEFAULT NULL COMMENT '보호자 이메일',
  `reg_dt` datetime DEFAULT NULL COMMENT '등록일',
  `reg_id` varchar(64) DEFAULT '' COMMENT '등록 아이디',
  `mod_dt` datetime DEFAULT NULL COMMENT '수정일',
  `mod_id` varchar(64) DEFAULT '' COMMENT '수정 아이디',
  PRIMARY KEY (`account_id`) USING BTREE,
  KEY `fk_file_id` (`file_id`),
  KEY `fk_account_grade_id` (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='관리자 정보';

-- ----------------------------
-- Table structure for TBL_APP_DEVICE
-- ----------------------------
DROP TABLE IF EXISTS `TBL_APP_DEVICE`;
CREATE TABLE `TBL_APP_DEVICE` (
  `os_type` enum('A','I') DEFAULT 'A' COMMENT 'OS구분(A:안드로이드, I:iOS)',
  `push_token` varchar(255) DEFAULT '' COMMENT '푸시토큰',
  `site_id` bigint(20) DEFAULT NULL COMMENT '사이트아이디',
  `account_id` varchar(30) NOT NULL DEFAULT '' COMMENT '계정아이디',
  `serial_number` varchar(128) DEFAULT NULL COMMENT '시리얼 번호',
  `serial_number2` varchar(128) DEFAULT NULL COMMENT '시리얼 번호2',
  `model` varchar(64) DEFAULT NULL COMMENT '모델명',
  `model2` varchar(64) DEFAULT NULL COMMENT '모델명2',
  `reg_dt` datetime DEFAULT NULL COMMENT '등록일자1',
  `mod_dt` datetime DEFAULT NULL COMMENT '수정일',
  `mod_id` varchar(64) DEFAULT NULL COMMENT '수정아이디',
  `use_yn` enum('Y','N') DEFAULT 'N' COMMENT '사용여부( Y: 사용 , N : 미사용 )',
  `push_token2` varchar(255) DEFAULT NULL COMMENT '푸시토큰2',
  `reg_dt2` datetime DEFAULT NULL COMMENT '등록일자2',
  `phone_name` varchar(30) DEFAULT NULL COMMENT '휴대폰이름1',
  `phone_name2` varchar(30) DEFAULT NULL COMMENT '휴대폰이름2',
  `session_key` varchar(200) DEFAULT NULL COMMENT '세션키',
  PRIMARY KEY (`account_id`),
  KEY `account_id` (`account_id`),
  KEY `account_id_2` (`account_id`),
  CONSTRAINT `TBL_APP_DEVICE_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `TBL_ACCOUNT` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='앱 단말기 정보';

-- ----------------------------
-- Table structure for TBL_COLLECT_BIOWAVE
-- ----------------------------
DROP TABLE IF EXISTS `TBL_COLLECT_BIOWAVE`;
CREATE TABLE `TBL_COLLECT_BIOWAVE` (
  `tbl_seq` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '테이블 키값',
  `site_id` varchar(24) DEFAULT NULL COMMENT '사용현장 아이디',
  `account_id` varchar(64) DEFAULT NULL COMMENT '사용자 아이디',
  `device_id` varchar(64) NOT NULL COMMENT '심박계 아이디',
  `detection` enum('0','1') DEFAULT NULL COMMENT '객체 감지상태',
  `heartbeat_cnt` int(11) DEFAULT NULL COMMENT '분당심박수',
  `respiration_cnt` int(11) DEFAULT NULL COMMENT '분당호흡수',
  `stress_index` int(11) DEFAULT NULL COMMENT '스트레스 지수',
  `interval_ms` int(11) DEFAULT NULL COMMENT '측정간격',
  `msr_dt` datetime DEFAULT NULL COMMENT '측정일',
  `reg_dt` datetime DEFAULT NULL COMMENT '등록일자',
  PRIMARY KEY (`tbl_seq`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for TBL_COLLECT_BIOWAVE_REAL
-- ----------------------------
DROP TABLE IF EXISTS `TBL_COLLECT_BIOWAVE_REAL`;
CREATE TABLE `TBL_COLLECT_BIOWAVE_REAL` (
  `site_id` varchar(24) DEFAULT NULL COMMENT '사용현장 아이디',
  `account_id` varchar(64) DEFAULT NULL COMMENT '사용자 아이디',
  `device_id` varchar(64) NOT NULL COMMENT '심박계 아이디',
  `detection` enum('0','1') DEFAULT NULL COMMENT '객체 감지상태',
  `heartbeat_cnt` int(11) DEFAULT NULL COMMENT '분당심박수',
  `respiration_cnt` int(11) DEFAULT NULL COMMENT '분당호흡수',
  `stress_index` int(11) DEFAULT NULL COMMENT '스트레스 지수',
  `interval_ms` int(11) DEFAULT NULL COMMENT '측정간격',
  `msr_dt` datetime DEFAULT NULL COMMENT '측정일',
  `reg_dt` datetime DEFAULT NULL COMMENT '등록일자',
  PRIMARY KEY (`device_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for TBL_COLLECT_XBODY
-- ----------------------------
DROP TABLE IF EXISTS `TBL_COLLECT_XBODY`;
CREATE TABLE `TBL_COLLECT_XBODY` (
  `user_id` int(11) NOT NULL COMMENT 'XBODY에 가입한 사용자 아이디',
  `report_id` bigint(20) NOT NULL COMMENT 'XBODY 측정 ID, 순차적으로 증가',
  `report_type` int(11) NOT NULL COMMENT 'XBODY REPORT 종류',
  `report_date` datetime DEFAULT NULL COMMENT 'XBODY측정 일자',
  `file_id` bigint(20) DEFAULT NULL COMMENT '이미지 파일 아이디(TBL_FILE)',
  `xbody_id` varchar(64) NOT NULL COMMENT 'XBODY 기기아이디',
  `reg_dt` datetime DEFAULT NULL COMMENT '등록일자',
  PRIMARY KEY (`user_id`,`report_id`,`report_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for TBL_DEVICE_BIOWAVE
-- ----------------------------
DROP TABLE IF EXISTS `TBL_DEVICE_BIOWAVE`;
CREATE TABLE `TBL_DEVICE_BIOWAVE` (
  `site_id` varchar(24) DEFAULT NULL COMMENT '사용현장 아이디',
  `device_id` varchar(64) NOT NULL COMMENT '심박계 아이디(시리얼번호)',
  `device_no` varchar(24) DEFAULT NULL COMMENT '디바이스 식별번호',
  `account_id` varchar(64) DEFAULT NULL COMMENT '등록된 사용자',
  `model_name` varchar(128) DEFAULT NULL COMMENT '모델명',
  `firmware_ver` varchar(24) DEFAULT NULL COMMENT '무선센서 펌웨어 버전',
  `operation_time` datetime DEFAULT NULL COMMENT '감지상태 시간',
  `reg_dt` datetime DEFAULT NULL COMMENT '등록일',
  `reg_id` varchar(64) DEFAULT '' COMMENT '등록 아이디',
  `mod_dt` datetime DEFAULT NULL COMMENT '수정일',
  `mod_id` varchar(64) DEFAULT '' COMMENT '수정 아이디',
  PRIMARY KEY (`device_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for TBL_DEVICE_XBODY
-- ----------------------------
DROP TABLE IF EXISTS `TBL_DEVICE_XBODY`;
CREATE TABLE `TBL_DEVICE_XBODY` (
  `xbody_id` varchar(64) NOT NULL COMMENT 'XBODY 기기 아이디',
  `auth_token` varchar(64) DEFAULT NULL COMMENT '인증키',
  `location` varchar(255) DEFAULT NULL COMMENT '설치장소',
  `reg_dt` datetime DEFAULT NULL COMMENT '등록일',
  PRIMARY KEY (`xbody_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for TBL_FILE
-- ----------------------------
DROP TABLE IF EXISTS `TBL_FILE`;
CREATE TABLE `TBL_FILE` (
  `file_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '파일아이디',
  `file_name` varchar(256) DEFAULT NULL COMMENT '파일명',
  `file_real_name` varchar(256) DEFAULT NULL COMMENT '실제 파일명',
  `file_path` varchar(256) DEFAULT NULL COMMENT '파일경로',
  `file_ext` varchar(24) DEFAULT NULL COMMENT '파일 확장자',
  `file_content_type` varchar(256) DEFAULT NULL COMMENT '파일종류',
  `file_size` int(11) DEFAULT NULL COMMENT '파일 용량',
  `reg_id` varchar(30) DEFAULT NULL COMMENT '등록아이디',
  `reg_dt` datetime DEFAULT NULL COMMENT '등록일',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for TBL_GRADE
-- ----------------------------
DROP TABLE IF EXISTS `TBL_GRADE`;
CREATE TABLE `TBL_GRADE` (
  `grade_id` bigint(20) unsigned NOT NULL COMMENT '등급아이디',
  `grade_name` varchar(60) NOT NULL COMMENT '등급명',
  `grade_desc` varchar(100) NOT NULL COMMENT '등급설명',
  `grade_auth_view` varchar(200) NOT NULL COMMENT '등급 조회 권한',
  `grade_auth_setting` varchar(200) DEFAULT NULL COMMENT '등급 설정 권한',
  `grade_type` enum('U','A') NOT NULL DEFAULT 'U' COMMENT '등급 구분 (U:일반, A:관리자)',
  `reg_dt` datetime DEFAULT NULL COMMENT '등록일',
  `reg_id` varchar(64) DEFAULT NULL COMMENT '등록 아이디',
  `mod_dt` datetime DEFAULT NULL COMMENT '수정일',
  `mod_id` varchar(64) DEFAULT NULL COMMENT '수정 아이디',
  PRIMARY KEY (`grade_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='등급 정보';

-- ----------------------------
-- Table structure for TBL_XBODY_REPORT_TYPE
-- ----------------------------
DROP TABLE IF EXISTS `TBL_XBODY_REPORT_TYPE`;
CREATE TABLE `TBL_XBODY_REPORT_TYPE` (
  `report_type` int(11) NOT NULL COMMENT 'XBODY REPORT 종류',
  `name` varchar(128) DEFAULT NULL COMMENT 'REPORT 이름',
  `name_eng` varchar(128) DEFAULT NULL COMMENT 'REPORT 영문 이름',
  PRIMARY KEY (`report_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
