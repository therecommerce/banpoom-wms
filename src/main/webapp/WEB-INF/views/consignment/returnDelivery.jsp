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

    <style>
        input[type="checkbox"]{
            width: 15px;
            height: 15px;
        }
    </style>
</head>

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-6 col-12">
                <h3 class="content-header-title mb-50">반품 관리</h3>
            </div>
        </div>
        <hr>
        <div class="content-body">
            <!-- 상태 정의 -->
            <section>
                <div class="row">
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">반품요청</p>
                                    <a href="#" onclick="searchStatus('반품요청');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${returnCountVO.returnRequestCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">반품거절</p>
                                    <a href="#" onclick="searchStatus('반품거절');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${returnCountVO.holdReturnCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">반품 반송중</p>
                                    <a href="#" onclick="searchStatus('반품 반송중');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${returnCountVO.returnDeliveryCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">반품 반송 완료</p>
                                    <a href="#" onclick="searchStatus('반품 반송 완료');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${returnCountVO.returnCompleteCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">반품 환불 완료</p>
                                    <a href="#" onclick="searchStatus('반품 환불 완료');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${returnCountVO.returnRefundCompletCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 검색 필터 -->
            <section>
                <div class="border border-light rounded p-2 mb-2">
                    <form class="form form-horizontal form-bordered">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-12 border-right-blue-grey border-right-lighten-5">
                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-left"
                                               for="searchProduct1">검색어</label>
                                        <div class="col-md-5 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <label class="sr-only" for="searchProduct">상품명</label>
                                                    <select id="searchProduct" name="interested"
                                                            class="form-control">
                                                        <option value="상품명" selected="">상품명</option>
                                                        <option value="구매자">구매자</option>
                                                        <option value="주문번호">주문번호</option>
                                                        <option value="셀러명">셀러명</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-8 border-bottom-0">
                                                    <input type="text" id="searchValue" class="form-control"
                                                           placeholder="상품명을 입력하세요" name="">
                                                </div>
                                            </div>
                                        </div>
                                        <label class="col-md-1 label-control text-left"
                                               for="checkbox" id="selectStatus" name="selectStatus">상품상태</label>
                                        <div class="col-md-5 border-left-0" id="checkbox">
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectAll1" checked id="selectAll1" value="전체">
                                                <label class="custom-control-label" for="selectAll1">전체</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch1" value="반품요청">
                                                <label class="custom-control-label" for="checkSearch1">반품요청</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch2" value="반품거절">
                                                <label class="custom-control-label" for="checkSearch2">반품거절</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch3" value="반품 반송중">
                                                <label class="custom-control-label" for="checkSearch3">반품 반송중</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch4" value="반품 반송 완료">
                                                <label class="custom-control-label" for="checkSearch4">반품 반송 완료</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch5" value="반품 환불 완료">
                                                <label class="custom-control-label" for="checkSearch5">반품 환불 완료</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row last">
                                        <label class="col-md-2 label-control text-left"
                                               for="userinput1">조회기간</label>
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-3 border-left-0 left">
                                                    <label class="sr-only" for="projectinput1">1개월</label>
                                                    <select id="projectinput1" name="interested"
                                                            class="form-control" onchange="changeDateTime()">
                                                        <option value="9999" selected="">전체</option>
                                                        <option value="-30">1개월</option>
                                                        <option value="-60">2개월</option>
                                                        <option value="-90">3개월</option>
                                                        <option value="-120">4개월</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-9 border-bottom-0">
                                                    <div class="d-flex justify-content-start align-items-start p-0">
                                                        <div class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="start_dt" name="13"
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
                                                                <input type='text' id="end_dt" name="14"
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
                            <button type="button" class="btn btn-outline-light btn-min-width mr-1" onclick="javascript:fn_reset();">초기화</button>
                            <button type="button" class="btn btn-outline-blue btn-min-width" onclick="javascript:fn_search()">검색</button>
                        </div>
                    </form>
                </div>
            </section>

            <!-- 리스트 -->
            <section>
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-1">반품 수거지시</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-2">반품 보류</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-3">반품거절철회</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width"
                                            data-toggle="modal" data-target="#modal-4">반품 승인(환불)</button>
                                </div>
                            </div>
                            <hr class="my-2">
                            <!-- datatable started -->
                            <div id="app-invoice-wrapper" class="">
                                <table id="user_data_table" class="table table-striped table-hover" style="width: 100%;">
                                    <thead class="border-bottom border-dark text-center">
                                    <tr>
                                        <th><input type="checkbox" id="selectAll" name="selectAll" /></th>
                                        <th>주문번호</th>
                                        <th>셀러명</th>
                                        <th>상품명(옵션)수량</th>
                                        <th>반품 등록일</th>
                                        <th>반품 사유</th>
                                        <th>구매자</th>
                                        <th>구매자 연락처</th>
                                        <th>반품 상태</th>
                                        <th>발송 방법</th>
                                        <th>택배사</th>
                                        <th>운송장번호</th>
                                        <th class="bg-blue-grey bg-lighten-5 text-center border-right">환불 완료일</th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- END: Content-->

        <div class="sidenav-overlay"></div>
        <div class="drag-target"></div>

        <!-- Modal-1 -->
        <div class="modal fade text-left" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel20">반품 수거 지시</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <h5 class="my-4">반품 수거를 배송사에 요청하시겠습니까?</h5>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus('반품 반송중');">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal-2 -->
        <div class="modal fade text-left" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel20">반품거절</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center my-2">
                            <h5>반품 요청을 거절하시겠습니까?</h5>
                            <p>거절 사유를 입력하시면 고객에게 전달됩니다.</p>
                        </div>
                        <form class="form">
                            <div class="form-body">
                                <div class="form-group">
                                    <label class="label-control text-bold-700 text-left" for="return_cancel_reason">거절사유
                                        <span class="danger">*</span></label>
                                    <textarea class="form-control" id="return_cancel_reason" rows="5"
                                              placeholder="거절 사유를 입력하세요"></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus('반품 보류');">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal-3 -->
        <div class="modal fade text-left" id="modal-3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel20">반품거절철회</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <h5 class="my-4">반품거절건을 철회하시겠습니까?</h5>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus('반품거절 철회');">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal-4 -->
        <div class="modal fade text-left" id="modal-4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel20">반품 승인(환불)</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <h5 class="my-4"><b>환불을 위해 반품을 승인 처리하시겠습니까?</b><br>
                        반품된 물품을 반드시 확인 후 처리 부탁드립니다.</h5>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus('반품 환불 완료');">확인</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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
        <%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>--%>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
        <!-- END: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>

        <script type="text/javascript">

            $(document).ready(function() {

                $("#selectAll1").click(function () {
                    $('input:checkbox[name="selectOne1"]').each(function () {
                        if ($("#selectAll1").is(":checked")) $("input[name=selectOne1]").prop("checked", true);
                        else $("input[name=selectOne1]").prop("checked", false);
                    });
                });

                $('input:checkbox[name="selectOne1"]').each(function () {
                    $("input[name=selectOne1]").click(function () {
                        var total = $("input[name=selectOne1]").length;
                        var checked = $("input[name=selectOne1]:checked").length;

                        if (total != checked) {
                            $("#selectAll1").prop("checked", false);
                        }
                        else {
                            $("#selectAll1").prop("checked", true);
                        }
                    });
                });
            });

            $(document).ready(function() {
                var columnFields = ["checkbox", "delivery_no", "account_name", "product_name", "return_delivery_dt", "return_reason","order_send_name", "order_send_phone", "return_delivery_state", "return_way", "return_delivery_company", "tracking_number", "return_decide_dt","start_dt","end_dt"];
                var columWidths = [ 30, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 0, 0];

                init_datatable("${pageContext.request.contextPath}/consignment/returnManagement.json", columnFields, columWidths, fn_tbl_render);
            });

            function fn_tbl_render(data, type, full, meta) {
                const str = full.product_name;

                var title = null;
                if (meta.col == 0) {
                    return '<input type="checkbox" id="selectOne" name="selectOne" value="' + full.return_delivery_state + '" />';
                } else if (meta.col == 1) {
                    return '<span>' + full.delivery_no + '</span>'
                } else if (meta.col == 2) {
                    return full.account_name + '(' + full.account_id + ')'
                } else if (meta.col == 3) {
                    if (full.product_name.length >= 8) {
                        return str.split("")[0] + str.split("")[1] + str.split("")[2] + str.split("")[3] + str.split("")[4] + str.split("")[5] + str.split("")[6] + '...'
                    } else if (full.product_name.length <= 7 && (full.product_option1 == '' || full.product_option1 == null)) {
                        return '<td>' + full.product_name + '(-)' + '/ ' + full.product_count + '개' + '</td>'
                    } else if (full.product_name.length <= 7 && (full.product_option1 != '' && full.product_option1 != null)) {
                        return '<td>' + full.product_name + '(' + full.product_option1 + ')' + '/ ' + full.product_count + '개' + '</td>'
                    }
                } else if(meta.col == 8) {
                    switch (full.return_delivery_state) {
                        case null :
                            return "";
                            break;
                        case '반품 반송중':
                            return '<span class="badge bg-purple bg-lighten-2 width-100 d-inline-block">' + full.return_delivery_state + '</span>'
                            break;
                        case '반품 반송 완료':
                            return '<span class="badge bg-blue bg-lighten-2 width-100 d-inline-block">' + full.return_delivery_state + '</span>'
                            break;
                        case '반품 환불 완료':
                            return '<span class="badge bg-success width-100 d-inline-block">' + full.return_delivery_state + '</span>'
                            break;
                        case '반품요청':
                            return '<span class="badge width-100 d-inline-block" style="background-color: lightgrey">' + full.return_delivery_state + '</span>'
                            break;
                        case '반품거절':
                            return '<span class="badge bg-warning bg-lighten-2 width-100 d-inline-block">' + full.return_delivery_state + '</span>'
                            break;
                        default:
                            return '<span>' + full.return_delivery_state + '</span>'
                            break;
                    }
                } else if (meta.col == 12) {
                    if (full.return_decide_dt == null || full.return_decide_dt == '') {
                        return '-';
                    } else if (full.return_decide_dt != null && full.return_decide_dt != '') {
                        return full.return_decide_dt;
                    }
                } else {
                    if(data != null) {
                        return data;
                    } else{
                        return "";
                    }
                }
            }


            function fn_search() {
                var table = $('#user_data_table').DataTable();

                var numCols = table.columns().nodes().length;
                for(var i=0; i<numCols; i++) { table.column(i).search(''); }


                var search = null;
                $(".search_tag").each(function() {
                    var val = $(this).val();
                    var idx = $(this).attr('name');

                    if(search == null)
                        search = table.column(idx).search(val);
                    else
                        search = search.column(idx).search(val);
                });

                var searchName =$('#searchProduct').val();
                var searchValue = $('#searchValue').val();
                var val = searchValue;
                var idx = '';
                switch (searchName){
                    case "상품명" :
                        idx = 2;
                        break;
                    case "주문번호" :
                        idx = 1;
                        break;
                    case "구매자" :
                        idx = 5;
                        break;
                    case "셀러명" :
                        idx = 2;
                        break;
                }
                if(search == null)
                    search = table.column(idx).search(val);
                else
                    search = search.column(idx).search(val);

                var statusArray= [];
                if ($("#selectAll1").is(":checked")){
                    statusArray = '';
                }else{
                    $("input[name=selectOne1]").each(function() {
                        if(this.checked) {
                            statusArray.push($(this).val());
                        }
                    });
                }
                if(search == null)
                    search = table.column(8).search(statusArray);
                else
                    search = search.column(8).search(statusArray);

                if(search != null)
                    search.draw();
            }

            function changeStatus(state) {

                let chk_val = [];
                let return_noArr = [];

                $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                    if ($(this).is(":checked") == true) {
                        chk_val.push(iVal.value);

                        let checkBtn = $(this);
                        let tr = checkBtn.closest('tr');
                        let td = tr.children('td');

                        td.each(function (i) {
                            if (i == 1) {
                                return_noArr.push(td.eq(i).text());
                            }
                        });
                    }
                })

                if(chk_val.length ==0){
                    alert('선택된 항목이 없습니다. 다시 확인해주세요.');
                    return;
                }
                var params = {
                    'return_delivery_state': state,
                    'delivery_state_list': chk_val,
                    'return_cancel_reason': document.getElementById('return_cancel_reason').value,
                    'return_no_list': return_noArr
                }

                if (params.return_delivery_state == "반품 환불 완료" && !chk_val.indexOf("반품 반송 완료")) {
                    alert("반품 반송 완료 상태에서만 반품 승인(환불) 신청가능합니다.");
                    return;
                } else {
                    $.ajax({
                        url : "${pageContext.request.contextPath}/direct/orderReturnStatus.json",
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
                    })
                }
            }

            function fn_reset() {
                $("button[name=btnDate]").each(function() {
                    $(this).css("background-color","white");
                });
                $("input[type=checkbox]").each(function() {
                    this.checked = false;
                });
                $('#searchValue').val('');
                $("#selectAll1").prop("checked", true);
                $("#start_dt").val('');
                $("#end_dt").val('');
            }

            function changeDateTime() {
                var value = parseInt($('#projectinput1').val());
                var nowDate = new Date()
                if(value == 9999){
                    $("#start_dt").pickadate('picker').set('select', null);
                    $("#end_dt").pickadate('picker').set('select', null);
                }else{
                    $("#start_dt").pickadate('picker').set('select', nowDate.setDate(nowDate.getDate() + value));
                    $("#end_dt").pickadate('picker').set('select', new Date());
                }
            }

            function searchProductList() {
                let searchProduct = document.getElementById('searchProduct').value;

                if (searchProduct == '상품명') {
                    document.getElementById('product_name').value = document.getElementById('searchProduct1').value;
                }  else if (searchProduct == '구매자') {
                    document.getElementById('order_send_name').value = document.getElementById('searchProduct1').value;
                } else if (searchProduct == '주문번호') {
                    document.getElementById('order_delivery_no').value = document.getElementById('searchProduct1').value;
                }

                var params = {
                    'product_name': document.getElementById('product_name').value,
                    'order_send_name': document.getElementById('order_send_name').value,
                    'order_delivery_no': document.getElementById('order_delivery_no').value,
                    'mediumName': $("#middle option:selected").text(),
                    'product_status': $("input:checkbox[name='selectOne1']:checked").val(),
                    'product_selling_dt1': document.getElementById('btn1').value,
                    'product_selling_dt2': document.getElementById('btn2').value,
                    'product_selling_dt3': document.getElementById('btn3').value,
                    'product_selling_dt4': document.getElementById('btn4').value,
                    'product_selling_dt5': document.getElementById('btn5').value,
                    'product_selling_dt6': document.getElementById('btn6').value,
                    'picker_from': document.getElementById('picker_from').value,
                    'picker_to': document.getElementById('picker_to').value
                }

                $.ajax({
                    url : "${pageContext.request.contextPath}/orderDeliveryList.do",
                    type : "POST",
                    data : params,
                    success : function() {
                        fn_chkPage(side_MENU.orderDeliveryList, params);
                    }
                });
            }

            function searchStatus(type){
                fn_reset();
                $('#selectAll1').prop("checked", false);
                switch (type){
                    case "반품요청" :
                        $('#checkSearch1').prop("checked", true);
                        break;
                    case "반품거절" :
                        $('#checkSearch2').prop("checked", true);
                        break;
                    case "반품 반송중" :
                        $('#checkSearch3').prop("checked", true);
                        break;
                    case "반품 반송 완료" :
                        $('#checkSearch4').prop("checked", true);
                        break;
                    case "반품 환불 완료" :
                        $('#checkSearch5').prop("checked", true);
                        break;
                }
                fn_search();
            }


        </script>


        <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

        <!-- BEGIN: Page JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>
        <!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
