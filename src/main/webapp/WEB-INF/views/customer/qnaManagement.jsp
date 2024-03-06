<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
    <title>반품구조대 - Admin</title>
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">

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
                <h3 class="content-header-title mb-50">상품문의(앱)</h3>
            </div>
            <div class="content-header-right col-md-6 col-12">
            </div>
        </div>
        <hr>
        <div class="content-body">
            <!-- 검색 필터 -->
            <section>
                <div class="border border-light rounded p-2 mb-2">
                    <form class="form form-horizontal form-bordered">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-left" for="selectSearchCategory">상세검색</label>
                                        <div class="col-md-5 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <label class="sr-only" for="selectSearchCategory">작성자</label>
                                                    <select id="selectSearchCategory" name="interested" class="form-control">
                                                        <option value="작성자" selected="">작성자</option>
                                                        <option value="상품명" >상품명</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-7 border-bottom-0" >
                                                    <input type="text" id="searchValue" class="form-control" placeholder="" name="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group row" style="height: 74px">
                                        <label class="col-md-1 label-control text-left" for="selectAll1" id="selectStatus">답변상태</label>
                                        <div class="col-md-5 border-left-0">
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input" id="selectAll1"  <c:if test="${state == null}">checked</c:if>>
                                                <label class="custom-control-label" for="selectAll1">전체</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input" name="selectOne1" id="checkSearch1" value="미답변" <c:if test="${state != null}">checked</c:if> >
                                                <label class="custom-control-label" for="checkSearch1">미답변</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input" name="selectOne1" id="checkSearch2" value="답변완료">
                                                <label class="custom-control-label" for="checkSearch2">답변완료</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group row last">
                                        <label class="col-md-1 label-control text-left" for="selectCategoryTerm">조회기간</label>
                                        <div class="col-md-11 border-left-0">
                                            <div class="row">
                                                <div class="row col-md-3">
                                                    <div class="form-group col-md-4 border-bottom-0">
                                                        <label class="sr-only" for="selectCategoryTerm">상품명</label>
                                                        <select id="selectCategoryTerm" name="interested" class="form-control" onchange="changeDateTime()">
                                                            <option value="-30" selected="">1개월</option>
                                                            <option value="-90">3개월</option>
                                                            <option value="-180">6개월</option>
                                                            <option value="-365">1년</option>
                                                            <option value="9999">직접입력</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="d-flex justify-content-start align-items-start">
                                                        <div class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="start_dt" name="12"
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
                                                        <div class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="end_dt" name="13"
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
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions center">
                            <button type="button" class="btn btn-outline-light btn-min-width mr-1" onclick="fn_reset()">초기화</button>
                            <button type="button" class="btn btn-outline-blue btn-min-width" onclick="fn_search();">검색</button>
                        </div>
                    </form>
                </div>
            </section>

            <!-- 리스트 -->
            <section>
                <div class="users-list-table">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <!-- datatable start -->
                                <div class="table-responsive">
                                    <table id="user_data_table" class="table table-striped table-hover">
                                        <thead class="text-center">
                                        <tr>
                                            <th>No</th>
                                            <th>상품명(상품번호)</th>
                                            <th>문의내용</th>
                                            <th>문의유형</th>
                                            <th>답변상태</th>
                                            <th>작성자 </th>
                                            <th>작성일자</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                    </table>
                                </div>
                                <!-- datatable ends -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>


<!-- Modal : start -->
<div class="modal fade text-left" id="orderNumberModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel1">주문 상세정보</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- 주문정보 -->
                <span>주문번호 : </span>
                <span id="order_request_no"></span>
                <span class="float-md-right" id="order_request_dt"> 주문일 : </span>
                <span ></span>
                <h4 class="card-title bg-blue bg-lighten-5 border-top p-2 mb-0">
                    <input type="hidden" id="modal_review_no" value=""/>
                    <span id="paid_state" class="btn btn-sm btn-outline-grey-blue"> 결제 상태 데이터 바인딩</span>
                    <button class="float-md-right" id="btnOrderCheck" hidden="hidden">주문확인</button>
                    <button class="float-md-right" id="btnOrderCancel" hidden="hidden">취소요청(품절)</button>
                    <button class="float-md-right" id="btnReturnOrder" hidden="hidden">반품 수거지시</button>
                    <button class="float-md-right" id="btnReturnReject" hidden="hidden">반품거절</button>
                </h4>
                <!-- 상품정보 -->
                <div class="card-body">
                </div>
                <section hidden="hidden">
                    <div class="card">
                        <div class="card-header pb-0">
                            <h4 class="card-title blue">상품 정보</h4>
                            <hr class="bg-blue mb-0">
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                <div class="row mb-1">
                                    <div class="col-xl-3 col-md-12 col-12">
                                        <table>
                                            <tr class="table">
                                                <th>상품번호</th>
                                                <th>상품명</th>
                                                <th>옵션</th>
                                                <th>수량</th>
                                            </tr>
                                            <tr class="table-active">
                                                <th id="product_id"></th>
                                                <th id="productName"></th>
                                                <th id="product_option"></th>
                                                <th id="order_product_count"></th>
                                            </tr>
                                        </table>
                                        <br>
                                    </div>
                                    <div class="col-xl-3 col-md-12 col-12">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-6 col-md-12 col-12">
                                        <div class="card bg-blue bg-lighten-4">
                                            <div class="card-content">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- 결제정보 -->
                <section hidden="hidden">
                    <div class="card">
                        <div class="card-header pb-0">
                            <h4 class="card-title blue">결제정보</h4>
                            <hr class="bg-blue mb-0">
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                <div class="row mb-1">
                                    <div class="col-xl-3 col-md-12 col-12">
                                        <ul class="list-group">
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="order_name"></li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="cal_dt"></li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" >상품 가격</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" >현금영수증</li>    <!-- 조건문 추가부분 -->
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" >총 결제 금액</li>
                                        </ul>
                                    </div>
                                    <div class="col-xl-3 col-md-12 col-12">
                                        <ul class="list-group">
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" >구매자 연락처</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" >결제수단</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="deliveryCost">배송비</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between">현금영수증 번호</li>  <!-- 조건문 추가부분 -->
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between">123원</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row">자
                                    <div class="col-xl-6 col-md-12 col-12">
                                        <div class="card bg-blue bg-lighten-4">
                                            <div class="card-content">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- 배송정보 -->
                <section hidden="hidden">
                    <div class="card">
                        <div class="card-header pb-0">
                            <h4 class="card-title blue">배송 정보</h4>
                            <hr class="bg-blue mb-0">
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                <div class="row mb-1">
                                    <div class="col-xl-3 col-md-12 col-12">
                                        <ul class="list-group">
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="order_rcv_name"></li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="order_rcv_addr">배송주소 : </li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="order_delivery_company">택배사 : </li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between">배송옵션 : </li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="order_request_message">배송메세지 : </li>
                                        </ul>
                                    </div>
                                    <div class="col-xl-3 col-md-12 col-12">
                                        <ul class="list-group">
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="order_rcv_phone">수령인 연락처 : </li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between"></li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between"></li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between"></li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="tracking_number">운송장 번호</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="order_delivery_cost">배송비</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between"></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-6 col-md-12 col-12">
                                        <div class="card bg-blue bg-lighten-4">
                                            <div class="card-content">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- 반품정보 -->
                <section hidden="hidden">
                    <div class="card">
                        <div class="card-header pb-0">
                            <h4 class="card-title blue">반품정보</h4>
                            <hr class="bg-blue mb-0">
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                <div class="row mb-1">
                                    <div class="col-xl-3 col-md-12 col-12">
                                        <ul class="list-group">
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" >귀책자 </li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="return_reason">반품사유</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="is_direct_delivery">반품 발송 방법</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="direct_delivery">반품 발송 방법</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="return_request_message1">메세지</li>  <!-- 고객직접 배송시 출력 부분 -->
                                            <hr class="bg-blue mb-0">
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="return_send_name">이름</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="addr">수거지 주소</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="return_send_phone">휴대폰 번호</li>
                                            <li class="list-group-item border-0 p-50 d-flex justify-content-between" id="return_request_message2">배송요청사항</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-6 col-md-12 col-12">
                                        <div class="card bg-blue bg-lighten-4">
                                            <div class="card-content">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- 환불내역 -->
                <section hidden="hidden">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title blue">환불내역</h4>
                            <hr style="background-color: blue">
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-2 text-center">
                                                <dt>반품 신청 상품 금액</dt>
                                                <br>
                                                <dd id="product_price"><b>3,000원</b></dd>
                                                <dd></dd>
                                            </div>
                                            <br>
                                            <br>
                                            <dt style="font-size: 50px;">-</dt>
                                            <br>
                                            <br>
                                            <div class="col-md-2 text-center">
                                                <dt>반품 시 추가 배송비</dt>
                                                <br>
                                                <dd><b>3,000원</b></dd>
                                                <dd></dd>
                                            </div>
                                            <br>
                                            <br>
                                            <dt style="font-size: 50px;">=</dt>
                                            <br>
                                            <br>
                                            <div class="col-md-2 text-center">
                                                <dt>환불 예정 금액</dt>
                                                <br>
                                                <dd id="product_price_total"><b>5,000원</b></dd>
                                                <dd>환불수단 | 신용카드 취소</dd>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" onclick="closeModalBtn()">닫기</button>
            </div>
        </div>
    </div>
</div>


<form:form>
</form:form>


<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />


<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.checkboxes.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>
<!-- END: Page JS-->

<script>
    $(document).ready(function() {
        let columnFields = [ "product_qna_no", "product_name", "product_qna_content", "product_qna_type1", "product_qna_state", "product_qna_name", "product_qna_reg_dt", "product_answer_dt", 'start_dt', 'end_dt'];
        let columWidths = [ 15, 20, 40, 30, 10, 10, 20, 15, 0, 0];

        init_datatable("${pageContext.request.contextPath}/customer/qna.json", columnFields, columWidths, fn_tbl_render);
        fn_search();

        $("#selectAll1").click(function () {
            $('input:checkbox[name="selectOne1"]').each(function () {
                if ($("#selectAll1").is(":checked")) {
                    $("input[name=selectOne1]").prop("checked", true);
                }
                else {
                    $("input[name=selectOne1]").prop("checked", false);
                }
            });
        });

        $('input:checkbox[name="selectOne1"]').each(function () {
            $("input[name=selectOne1]").click(function () {
                let total = $("input[name=selectOne1]").length;
                let checked = $("input[name=selectOne1]:checked").length;

                if (total != checked) {
                    $("#selectAll1").prop("checked", false);
                } else {
                    $("#selectAll1").prop("checked", true);
                }
            });
        });

    });

    function fn_tbl_render(data, type, full, meta) {
        // const str = full.product_qna_content;

        if(meta.col == 1) {
            if (full.product_id != null) {
                return '<span class="mb-0">'+full.product_name+'</span><a target="_blank" href="${pageContext.request.contextPath}/consignment/consignmentDetail.do?product_id=' + full.product_id + '">('+full.product_id+')</a>';
            } else {
                return '<span class="mb-0">'+ " - "+'</span><a href="#">('+ " - " +')</a>';
            }
        }
        if(meta.col == 2) {
            return full.product_qna_content;
            // return str.split("")[0] + str.split("")[1] + str.split("")[2] + str.split("")[3] + str.split("")[4] + str.split("")[5] + str.split("")[6] + str.split("")[7] + str.split("")[8] + '...'
        }
        if(meta.col == 3) {
            if(full.order_request_id != null) {
                return '<span class="mb-0">'+full.product_qna_type1 +'</span><a data-toggle="modal" data-target="#orderNumberModal" onclick="orderNumberModal('+full.order_request_id+')">(' + full.order_request_id + ')</a>';
            } else {
                return '<span class="mb-0">'+full.product_qna_type1 +'</span><a href="#">(' + "-" + ')</a>';
            }
        }
        if(meta.col == 4) {
            if(full.product_qna_state == '미답변' ) {
                return '<span class="badge bg-light-blue-grey width-100 text-muted">미답변</span>';
            } else {
                return '<span class="badge bg-light-blue width-100" style="color: blue">답변완료</span>';
            }
        }
        if(meta.col === 7) {
            if (full.product_qna_state == '미답변' ) {
                return `<button type="button" class="btn btn-sm btn-outline-grey-blue" onclick="location.href='qnaManagementDetail.do?product_qna_no=`+full.product_qna_no+`'"> 답변등록 </button>`;
            } else {
                return `<button type="button" class="btn btn-sm btn-outline-bitbucket" onclick="location.href='qnaManagementDetail.do?product_qna_no=`+full.product_qna_no+`'"> 답변보기 </button>`;
            }
        }
        return data;
    }   // 테이블 조건 추가

    function fn_reset() {
        $("button[name=btnDate]").each(function() {
            $(this).css("background-color","white");
        }); //css

        $("input[type=checkbox]").each(function() {
            this.checked = false;
        }); //체크박스 해제

        $('#selectSearchCategory').val('작성자');
        $('#searchValue').val('');
        $("#selectAll").prop("checked", false);
        $("#selectAll1").prop("checked", true);
        $("#selectCategoryTerm").val('-30');
        $("#start_dt").pickadate('picker').set('select', null);
        $("#end_dt").pickadate('picker').set('select', null);
    }   // 초기화


    $("#selectAll1").click(function () {
        $('input:checkbox[name="selectOne1"]').each(function () {
            if ($("#selectAll1").is(":checked")) $("input[name=selectOne1]").prop("checked", true);
            else $("input[name=selectOne1]").prop("checked", false);
        });
    }); // 체크박스 전체 작동

    function changeDateTime() {
        let value = parseInt($('#selectCategoryTerm').val());
        let nowDate = new Date()
        if(value == 9999) {
            $("#start_dt").pickadate('picker').set('select', null);
            $("#end_dt").pickadate('picker').set('select', null);
        }else {
            $("#start_dt").pickadate('picker').set('select', nowDate.setDate(nowDate.getDate() + value));
            $("#end_dt").pickadate('picker').set('select', new Date());
        }
    }   // 날짜 변경 함수

    // 모달창 닫기
    function closeModalBtn() {
        $('#orderNumberModal').modal('toggle');
    }

    function fn_search() {
        let table = $('#user_data_table').DataTable();
        let numCols = table.columns().nodes().length;

        for(let i=0; i<numCols; i++) {
            table.column(i).search('');
        }

        let search = null;
        $(".search_tag").each(function() {
            let val = $(this).val();
            let idx = $(this).attr('name');

            if(search == null)
                search = table.column(idx).search(val);
            else
                search = search.column(idx).search(val);
        });

        let searchCategory = $('#selectSearchCategory').val();
        let searchValue = $('#searchValue').val();
        let val = searchValue;
        let idx = '';
        switch (searchCategory){
            case "작성자" :
                idx = 5;
                break;
            case "상품명" :
                idx = 1;
                break;
        }

        if(search == null) {
            search = table.column(idx).search(val);
        } else {
            search = search.column(idx).search(val);
        }


        let statusArray= [];
        if ($("#selectAll1").is(":checked")){
            statusArray = '';
        } else {
            $("input[name=selectOne1]").each(function() {
                if(this.checked) {
                    statusArray.push($(this).val());
                }
            });
        }

        if(search == null) {
            search = table.column(4).search(statusArray);
        } else {
            search = search.column(4).search(statusArray);
        }

        let start_dt =$("#start_dt").val();
        let end_dt = $("#end_dt").val();

        if(search == null) {
            search = table.column(8).search(start_dt);
            search = search.column(9).search(end_dt);
        } else {
            search = search.column(8).search(start_dt);
            search = search.column(9).search(end_dt);
        }

        if(search != null) {
            search.draw();
        }
    }

    // 모달창 내용가져오는 함수
    function orderNumberModal(orderNumber) {
        let order_request_no = orderNumber;

        $.ajax({
            url : "${pageContext.request.contextPath}/customer/orderInfoModal.json",
            type : "POST",
            data : JSON.stringify(order_request_no),
            contentType : "application/json",
            success : function(result) {
                if (result.resultCode === "success") {
                    $('#order_request_no').text(order_request_no);
                    $('#order_request_dt').text(" 주문일 : " + result.data.order_request_dt);
                    if (result.data.paid_state == 1 && result.data.return_delivery_state == null) {
                        $('#paid_state').text("결제 완료");
                        document.getElementsByTagName('section')[2].removeAttribute('hidden')
                        document.getElementsByTagName('section')[3].removeAttribute('hidden')
                        document.getElementsByTagName('section')[4].removeAttribute('hidden')
                        document.getElementsByTagName('section')[5].setAttribute('hidden', "hidden")
                        document.getElementsByTagName('section')[6].setAttribute('hidden', "hidden")
                        document.getElementById("btnOrderCheck").removeAttribute('hidden')
                        document.getElementById("btnOrderCancel").removeAttribute('hidden')
                        document.getElementById("btnReturnOrder").setAttribute('hidden', "hidden")
                        document.getElementById("btnReturnReject").setAttribute('hidden', "hidden")
                    } else {
                        $('#paid_state').text("반품 요청");
                        document.getElementsByTagName('section')[2].removeAttribute('hidden')
                        document.getElementsByTagName('section')[5].removeAttribute('hidden')
                        document.getElementsByTagName('section')[6].removeAttribute('hidden')
                        document.getElementsByTagName('section')[3].setAttribute('hidden', "hidden")
                        document.getElementsByTagName('section')[4].setAttribute('hidden', "hidden")
                        document.getElementById("btnReturnOrder").removeAttribute('hidden')
                        document.getElementById("btnReturnReject").removeAttribute('hidden')
                        document.getElementById("btnOrderCancel").setAttribute('hidden', "hidden")
                        document.getElementById("btnOrderCheck").setAttribute('hidden', "hidden")
                    }
                    $('#order_name').text("구매자 : " + result.data.order_name);
                    $('#product_id').text(result.data.product_id);
                    $('#productName').text(result.data.product_name);
                    $('#order_rcv_name').text( "구매자 : " + result.data.order_rcv_name);
                    $('#order_send_phone').text( "구매자 연락처 : ");
                    $('#cal_dt').text("결제완료일 : " + result.data.cal_dt);
                    $('#order_rcv_addr').text("배송주소 : " + result.data.order_rcv_addr1 + " " + result.data.order_rcv_addr2);
                    $('#order_delivery_company').text("택배사 : " + result.data.order_delivery_company);
                    $('#order_delivery_cost').text("택배비 : " + result.data.order_delivery_cost);
                    $('#tracking_number').text("운송장번호 : " + result.data.tracking_number);
                    $('#order_rcv_phone').text("수령인 연락처 : " + result.data.order_rcv_phone);
                    $('#order_request_message').text("수령인 연락처 : " + result.data.order_request_message);
                    $('#order_product_count').text(result.data.order_product_count);
                    $('#deliveryCost').text("배송비 : " + result.data.order_delivery_cost);
                    $('#return_reason').text("반품사유 : " + result.data.return_reason);
                    $('#is_direct_delivery').text("반품 발송 방법 : " + result.data.is_direct_delivery);
                    $('#direct_delivery').text("반품 발송 방법 : " + result.data.is_direct_delivery);
                    $('#return_send_name').text("이름 : " + result.data.return_send_name);
                    $('#addr').text("수거지 주소 : " + "우) " + result.data.pickup_zipcode + " " + result.data.pickup_address1 + " " + result.data.pickup_address2);
                    $('#return_send_phone').text("휴대폰 번호 : " + result.data.return_send_phone);
                    $('#return_request_message').text("베송 요청 사항 : " + result.data.return_request_message);
                    $('#product_price').text(Number(result.data.product_price) * Number(result.data.order_product_count));
                    $('#product_price_total').text(Number(result.data.product_price) * Number(result.data.order_product_count) - 3000);
                } else {
                    alert("실패")
                }
            }
        })
    }


</script>

<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>

</body>
<!-- END: Body-->

</html>
