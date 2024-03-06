<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html class="loading" lang="kr" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description"
          content="Stack admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords"
          content="admin template, stack admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>반품구조대</title>
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/favicon.ico">
    <link
            href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i"
            rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/pickers/daterange/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/pickers/datetime/bootstrap-datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/pickers/pickadate/pickadate.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/ui/prism.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/tables/datatable/datatables.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/components.css">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/pickers/daterange/daterange.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-invoice.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-users.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-6 col-12">
                <h3 class="content-header-title mb-50">일반회원 정보</h3>
            </div>
            <div class="content-header-right col-md-6 col-12">
                <div class="float-md-right" style="margin-left: 25px">
                    <button class="nav-link btn btn-sm btn-outline-blue" type="button">강퇴하기</button>
                </div>
                <div class="float-md-right" style="margin-left: 25px">
                    <button class="nav-link btn btn-sm btn-outline-blue" type="button">쿠폰 지급</button>
                </div>
                <div class="float-md-right" style="margin-left: 25px">
                    <button class="nav-link btn btn-sm btn-outline-blue" data-toggle="modal" data-target="#modal-2" type="button">등급 변경</button>
                </div>
            </div>
        </div>
        <hr>
        <div class="content-body">
            <!-- 상태 정의 -->
            <!-- 검색 필터 -->
            <section>
                <div class="border border-light bg-white rounded p-2 mb-2">
                    <form class="form form-horizontal form-bordered">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-2 border-right-blue-grey border-right-lighten-5">
                                    <div>${userManagementVO.vip_grade}</div>
                                    <div><span style="font-size: large;">${userManagementVO.account_name}(${userManagementVO.account_id})</span>
                                        <c:if test="${userManagementVO.account_dormant == 0}"><span class="badge bg-blue bg-lighten-4 width-100 d-inline-block">휴면</span></c:if>
                                        <c:if test="${userManagementVO.account_dormant == 1}"><span class="badge bg-success bg-lighten-2 width-100 d-inline-block">정상</span></c:if>
                                        <c:if test="${userManagementVO.account_dormant == 2}"><span class="badge bg-blue-grey bg-lighten-2 width-100 d-inline-block">탈퇴</span></c:if>
                                        </div>
                                        <c:if test="${userManagementVO.business_info_flag == 0}"><div>사업자 미인증</div></c:if>
                                        <c:if test="${userManagementVO.business_info_flag == 1}"><div>사업자 승인대기</div></c:if>
                                        <c:if test="${userManagementVO.business_info_flag == 2}"><div>사업자 인증</div></c:if>
                                </div>
                                <div class="col-md-2">
                                    <div>이달 구매상품</div>
                                    <div><fmt:formatNumber type="number" value="${userManagementVO.monthly_buy_count}"/>개</div>
                                </div>
                                <div class="col-md-2">
                                    <div>이달 구매금액</div>
                                    <div><fmt:formatNumber type="number" value="${userManagementVO.monthly_buy_price}"/>원</div>
                                </div>
                                <div class="col-md-2">
                                    <div>1:1 문의내역</div>
                                    <div>TBL_USER_QNA_BOARD 작업 후 바인딩</div>
                                </div>
                                <div class="col-md-1">
                                    <div>쿠폰</div>
                                    <div>쿠폰db생성 후 바인딩</div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </section>

            <!-- 리스트 -->
            <section>
                <div class="card">
                    <ul class="nav nav-tabs page-table-taps mb-4">
                        <li>
                            <a class="nav-link" type="button" onclick="javascript:showTap(0);">회원정보</a>
                        </li>
                        <li>
                            <a class="nav-link bg-grey" type="button" onclick="javascript:showTap(1);">상품구매이력</a>
                        </li>
                        <li>
                            <a class="nav-link" type="button" onclick="javascript:showTap(2);">쿠폰</a>
                        </li>
                        <li>
                            <a class="nav-link" type="button" onclick="javascript:showTap(3);">정보수정이력</a>
                        </li>
                    </ul>
                    <div class="card-content">
                        <div class="float-md-right" style="margin-right: 25px;">
                            <button class="nav-link btn btn-sm btn-outline-blue" type="button">수정</button>
                        </div>
                        <div class="card-body">

                            <div class="card" id="tab-menu0">
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">회원 번호</dt>
                                                    <dd class="col-sm-10">${userManagementVO.account_no}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">회원 상태</dt>
                                                    <dd class="col-sm-10">
                                                        <c:if test="${userManagementVO.account_dormant == 0}"><span class="badge bg-blue bg-lighten-4 width-100 d-inline-block">휴면</span></c:if>
                                                        <c:if test="${userManagementVO.account_dormant == 1}"><span class="badge bg-success bg-lighten-2 width-100 d-inline-block">정상</span></c:if>
                                                        <c:if test="${userManagementVO.account_dormant == 2}"><span class="badge bg-blue-grey bg-lighten-2 width-100 d-inline-block">탈퇴</span></c:if>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">가입 유형</dt>
                                                    <dd class="col-sm-10">회원가입 시 입력받는 곳 없음</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">회원 등급</dt>
                                                    <dd class="col-sm-10">${userManagementVO.vip_grade}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">회원가입 일</dt>
                                                    <dd class="col-sm-10">${userManagementVO.reg_dt}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">최종 로그인</dt>
                                                    <dd class="col-sm-10">${userManagementVO.last_login}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <hr>
                                            <h4 class="card-title">계정정보</h4>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">아이디</dt>
                                                    <dd class="col-sm-10">${userManagementVO.account_id}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">이름</dt>
                                                    <dd class="col-sm-10">${userManagementVO.account_name}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">휴대폰 번호</dt>
                                                <dd class="col-sm-10">${userManagementVO.account_phone}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">이메일 주소</dt>
                                                    <dd class="col-sm-12">${userManagementVO.account_email}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card" id="tab-menu1" style="display: none">
<%--                                <div class="col-6">--%>
<%--                                    <div class="form-group row last">--%>
                                        <div class="col-md-10 border-left-0">
                                            <div style="margin-bottom: 10px;">조회기간</div>
                                            <div class="row">
                                                <div class="form-group col-md-10 border-bottom-0">
                                                    <div class="d-flex justify-content-start align-items-start p-0">
                                                        <div class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="start_dt" name="10"
                                                                       class="search_tag form-control pickadate-selectors"
                                                                       placeholder="" value="" />
                                                                <div class="input-group-append">
                                                                            <span class="input-group-text">
                                                                                <span class="fa fa-calendar-o"></span>
                                                                            </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <span class="font-weight-bold mx-1 pt-50">~</span>
                                                        <div
                                                                class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="end_dt" name="11"
                                                                       class="search_tag form-control pickadate-selectors"
                                                                       placeholder="" value="" />
                                                                <div class="input-group-append">
                                                                            <span class="input-group-text">
                                                                                <span class="fa fa-calendar-o"></span>
                                                                            </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <section>
                                    <div class="card">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <!-- datatable started -->
                                                <div class="table-responsive">
                                                    <table id="user_data_table" class="table table-striped table-hover">
                                                        <thead class="text-center">
                                                        <tr>
                                                            <th><span class="align-middle">상품번호</span></th>
                                                            <th>주문번호</th>
                                                            <th>상품명</th>
                                                            <th class="text-center">결제(환불)수단</th>
                                                            <th class="col-md-6">결제금액</th>
                                                            <th class="text-center">환불금액</th>
                                                            <th class="text-center">처리 상태</th>
                                                            <th class="text-center">결제 일자</th>
                                                            <th></th>
                                                        </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>

                            <div class="card" id="tab-menu2" style="display: none">
                                <section>
                                    <div class="card">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <!-- datatable started -->
                                                <div class="table-responsive">
                                                    <table id="user_data_table" class="table table-striped table-hover">
                                                        <thead class="text-center">
                                                        <tr>
                                                            <th><span class="align-middle">No</span></th>
                                                            <th>쿠폰명</th>
                                                            <th>쿠폰 분류</th>
                                                            <th class="text-center">쿠폰 유형</th>
                                                            <th class="col-md-6">쿠폰 사용 여부</th>
                                                            <th class="text-center">유효기간</th>
                                                            <th class="text-center">쿠폰 등록일</th>
                                                        </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>

                            <div class="card" id="tab-menu3" style="display: none">
                                <section>
                                    <div class="card">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <!-- datatable started -->
                                                <div class="table-responsive">
                                                    <table id="user_data_table" class="table table-striped table-hover">
                                                        <thead class="text-center">
                                                        <tr>
                                                            <th><span class="align-middle">No</span></th>
                                                            <th>변경일자</th>
                                                            <th>처리자</th>
                                                            <th class="text-center">변경항목</th>
                                                            <th class="col-md-6">변경 이전</th>
                                                            <th class="text-center">변경 이후</th>
                                                        </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="border-top-blue-grey border-top-lighten-5 text-muted text-center">
                    <button type="button" class="btn btn-blue btn-lg btn-min-width"><a onclick="move('userManagement.do', '');">목록</a></button>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
        <!-- END: Content-->

<!-- Modal-1 -->
<div class="modal fade text-left" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel1">사업자등록 승인</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                <h5>사업자등록을 승인하시겠습니까?</h5>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="approvalBusinessInfo();">확인</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal-2 -->
<div class="modal fade text-left" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel2">등급 변경</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                <h5>선택한 회원의 등급을 아래 등급으로 변경하시겠습니까?</h5>
                <%--                <p>중지 시에 사용자의 화면에서 상품은 표시되지 않습니다.</p>--%>
            </div>
            <c:choose>
                <c:when test="${userManagementVO.vip_grade == '일반'}">
                    <div style="margin-left: 10px;">
                        <input type="radio" value="일반" id="normal" name="grade" checked/>&nbsp;&nbsp;<label for="normal">일반(이달 구매 상품 10개 미만 / 이 달 구매금액 20만원 미만)</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="우수회원" id="premium" name="grade" />&nbsp;&nbsp;<label for="premium">우수회원(이 달 구매상품 10개 이상 / 이 달 구매금액 20만원 이상)</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="vip" id="vip" name="grade" />&nbsp;&nbsp;<label for="vip">VIP(이 달 구매상품 30개 이상 / 이 달 구매금액 50만원 이상)</label>
                    </div>
                </c:when>
                <c:when test="${userManagementVO.vip_grade == '우수회원'}">
                    <div style="margin-left: 10px;">
                        <input type="radio" value="일반" id="normal" name="grade" />&nbsp;&nbsp;<label for="normal">일반(이달 구매 상품 10개 미만 / 이 달 구매금액 20만원 미만)</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="우수회원" id="premium" name="grade" checked/>&nbsp;&nbsp;<label for="premium">우수회원(이 달 구매상품 10개 이상 / 이 달 구매금액 20만원 이상)</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="vip" id="vip" name="grade" />&nbsp;&nbsp;<label for="vip">VIP(이 달 구매상품 30개 이상 / 이 달 구매금액 50만원 이상)</label>
                    </div>
                </c:when>
                <c:when test="${userManagementVO.vip_grade == 'vip'}">
                    <div style="margin-left: 10px;">
                        <input type="radio" value="일반" id="normal" name="grade" />&nbsp;&nbsp;<label for="normal">일반(이달 구매 상품 10개 미만 / 이 달 구매금액 20만원 미만)</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="우수회원" id="premium" name="grade" />&nbsp;&nbsp;<label for="premium">우수회원(이 달 구매상품 10개 이상 / 이 달 구매금액 20만원 이상)</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="vip" id="vip" name="grade" checked/>&nbsp;&nbsp;<label for="vip">VIP(이 달 구매상품 30개 이상 / 이 달 구매금액 50만원 이상)</label>
                    </div>
                </c:when>
                <c:otherwise>
                    <div style="margin-left: 10px;">
                        <input type="radio" value="일반" id="normal" name="grade" />&nbsp;&nbsp;<label for="normal">일반(이달 구매 상품 10개 미만 / 이 달 구매금액 20만원 미만)</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="우수회원" id="premium" name="grade" />&nbsp;&nbsp;<label for="premium">우수회원(이 달 구매상품 10개 이상 / 이 달 구매금액 20만원 이상)</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="vip" id="vip" name="grade" />&nbsp;&nbsp;<label for="vip">VIP(이 달 구매상품 30개 이상 / 이 달 구매금액 50만원 이상)</label>
                    </div>
                </c:otherwise>
            </c:choose>

            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="changeVipGrade();">확인</button>
            </div>
        </div>
    </div>
</div>


<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="true" />


<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/vendors.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/icheck/icheck.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/checkbox-radio.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
<!-- END: Page JS-->
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>


<script type="text/javascript">

    $(document).ready(function() {

    });

    function changeVipGrade() {
        let grade = $('input[name=grade]:checked').val();


        let params = {
            'account_id': '${userManagementVO.account_id}',
            'vip_grade': grade
        }

        $.ajax({
            url: "${pageContext.request.contextPath}/changeVipGrade.json",
            type : "POST",
            data : JSON.stringify(params),
            contentType : "application/json;",
            success : function(result) {
                if (result.resultCode == "success") {
                    alert(result.message);
                    location.reload();
                } else if (result.resultCode == "fail") {
                    alert(result.message);
                } else{
                    alert(result.message);
                }
            }
        });
    }

    function approvalBusinessInfo() {


        var params = {
            'business_info_flag': 2,
            'account_id': '${userManagementVO.account_id}'
        }

        $.ajax({
            url: "${pageContext.request.contextPath}/approvalBusinessInfo.json",
            type : "POST",
            data : JSON.stringify(params),
            contentType : "application/json;",
            success : function(result) {
                if (result.resultCode == "success") {
                    alert(result.message);
                    location.reload();
                } else if (result.resultCode == "fail") {
                    alert(result.message);
                } else{
                    alert(result.message);
                }
            }
        });
    }

    function showTap(a)
    {
        for(var i = 0 ; i < 7 ; i++)
        {

            var target = document.getElementById('tab-menu' + i)

            if(i == a) {
                target.style.display = 'block';
            } else {
                target.style.display = 'none';
            }
        }
    }

</script>

</body>
<!-- END: Body-->

</html>