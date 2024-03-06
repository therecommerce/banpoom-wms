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
        select option[value=""][disabled] {
            display: none;
        }

         input[type="checkbox"]{
             width: 15px;
             height: 15px;
         }
    </style>

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
                <h3 class="content-header-title mb-50">쿠폰 관리</h3>
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
                                <div class="col-md-3">
<%--                                    <div class="form-group row">--%>
                                        <label class="col-md-3 label-control text-left"
                                               for="coupon_classification">쿠폰 분류</label>
                                        <div class="col-md-9 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-12 border-bottom-0">
                                                    <select id="coupon_classification" name="interested"
                                                            class="form-control">
                                                        <option value="" selected="">전체</option>
                                                        <option value="다운로드">다운로드</option>
                                                        <option value="자동 지급">자동 지급</option>
                                                        <option value="쿠폰 코드">쿠폰 코드</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
<%--                                    </div>--%>
                                </div>
                                <div class="col-md-3">
<%--                                    <div class="form-group row">--%>
                                        <label class="col-md-3 label-control text-left"
                                               for="coupon_type">쿠폰 유형</label>
                                        <div class="col-md-9 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-12 border-bottom-0">
                                                    <label class="sr-only" for="searchValue">상품명</label>
                                                    <select id="coupon_type" name="interested"
                                                            class="form-control">
                                                        <option value="" selected="">전체</option>
                                                        <option value="주문금액 적용 쿠폰">주문금액 적용 쿠폰</option>
                                                        <option value="배송비 적용 쿠폰">배송비 적용 쿠폰</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
<%--                                    </div>--%>
                                </div>
                                <div class="col-md-3">
<%--                                    <div class="form-group row">--%>
                                        <label class="col-md-3 label-control text-left"
                                               for="checkbox">발급 상태</label>
                                        <div class="col-md-12" id="checkbox">
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectAll1" checked id="selectAll1" value="전체">
                                                <label class="none custom-control-label" style="display:inline-block; width:100px;" for="selectAll1">전체</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch1" value="발급중">
                                                <label class="none custom-control-label" style="display:inline-block; width:100px;" for="checkSearch1" >발급중</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch2" value="발급대기">
                                                <label class="none custom-control-label" style="display:inline-block; width:100px;" for="checkSearch2" >발급대기</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch3" value="발급중단">
                                                <label class="none custom-control-label" style="display:inline-block; width:100px;" for="checkSearch3" >발급중단</label>
                                            </div>
                                        </div>
<%--                                    </div>--%>
                                </div>
                                <div class="col-md-3">
<%--                                    <div class="form-group row">--%>
                                        <label class="col-md-3 label-control text-left"
                                               for="searchCoupon">상세검색</label>
                                        <div class="col-md-9 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-5 border-bottom-0">
                                                    <label class="sr-only" for="searchValue">쿠폰명</label>
                                                    <select id="searchCoupon" name="interested"
                                                            class="form-control">
                                                        <option value="쿠폰명" selected="">쿠폰명</option>
                                                        <option value="등록자">등록자</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-7 border-bottom-0">
                                                    <input type="text" id="searchValue" class="form-control"
                                                           placeholder="" name="">
                                                </div>
                                            </div>
                                        </div>
<%--                                    </div>--%>
                                </div>


                                <div class="col-md-6 border-right-blue-grey border-right-lighten-5" style="margin-top: 30px">
<%--                                    <div class="form-group row last">--%>
                                        <label class="col-md-2 label-control text-left"
                                               for="date_pick">쿠폰 등록일</label>
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-2 border-left-0 left">
                                                    <select id="date_pick" name="interested"
                                                            class="form-control" onchange="changeDateTime()">
                                                        <option value="9999" selected="">전체</option>
                                                        <option value="-30">1개월</option>
                                                        <option value="-90">3개월</option>
                                                        <option value="-180">6개월</option>
                                                        <option value="-365">1년</option>
                                                        <option value="">직접입력</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-10 border-bottom-0">
                                                    <div class="d-flex justify-content-start align-items-start p-0">
                                                        <div class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="start_dt" name="7"
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
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            onclick="location.href='couponRegister.do'">쿠폰 등록</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-2">삭제</button>
                                </div>
                                <!-- <div class="col-md-6">
                                    <button type="button"
                                        class="btn btn-outline-blue btn-min-width float-right">다운로드</button>
                                </div> -->
                            </div>
                            <hr class="my-2">
                            <!-- datatable started -->
                            <div id="app-invoice-wrapper" class="">
                                <table id="user_data_table" class="table" style="width: 100%;">
                                    <thead class="border-bottom border-dark text-center">
                                    <tr>
                                        <th><input type="checkbox" id="selectAll" name="selectAll" /></th>
                                        <th>No.</th>
                                        <th>쿠폰명</th>
                                        <th>등록자</th>
                                        <th>쿠폰 분류</th>
                                        <th>쿠폰 유형</th>
                                        <th>발급 상태</th>
                                        <th>유효기간</th>
                                        <th>쿠폰 등록일</th>
                                        <th>쿠폰 발급내역</th>
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
        <!-- END: Content-->

        <div class="sidenav-overlay"></div>
        <div class="drag-target"></div>

        <!-- Modal-2 -->
        <div class="modal fade text-left" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel2">확인</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center my-2">
                            <h5>해당 쿠폰을 삭제하시겠습니까?</h5>
                            <p>삭제시 발급중인 쿠폰 사용이 불가합니다.</p>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="deleteCoupon();">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal-3 -->
        <div class="modal fade text-left" id="modal-3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel200">발급 내역</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center" id="trackingContent">
                        <div class="modal-body">
<%--                            <div class="text-center my-2">--%>
                                <div class="row" style="display: table; height: 35px; margin-bottom: 5%">
                                    <div class="font-weight-bold" style="margin: 10px 210px 0 20px; font-size: 15px">쿠폰명</div>
                                    <div class="border btn-min-width mr-1 align-middle" style="display: table-cell; background-color: lightgrey">발급 건수</div>
                                    <div class="border btn-min-width mr-1 align-middle" style="display: table-cell">N</div>
                                    <div class="border btn-min-width mr-1 align-middle" style="display: table-cell; background-color: lightgrey">사용 건수</div>
                                    <div class="border btn-min-width mr-1 align-middle" style="display: table-cell">N</div>
                                </div>
<%--                                <h5>발급 건수랑 사용 건수는 부탁합녜다..</h5>--%>
<%--                                <p></p>--%>
<%--                            </div>--%>
                        </div>
                        <table class="table align-middle">
                            <thead class="text-center bg-blue-grey bg-lighten-5">
                            <tr>
                                <th>No.</th>
                                <th>회원명</th>
                                <th>쿠폰 발급일</th>
                                <th>쿠폰 사용 여부</th>
                                <th>쿠폰 사용일</th>
                                <th>주문금액</th>
                                <th>할인액</th>
                            </tr>
                            </thead>
                            <tbody id="couponTable">
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">닫기</button>
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
        <script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
        <!-- END: Page Vendor JS-->


        <script type="text/javascript">
            $(document).ready(function() {
                var columnFields = ["checkbox", "coupon_no", "coupon_name", "register", "coupon_classification", "coupon_type", "coupon_state", "start_dt", "reg_dt", "info", "detail", "end_dt"];
                var columWidths = [ 30, 30, 80, 80, 80, 80, 80, 80, 80, 30, 30, 0];

                init_datatable("${pageContext.request.contextPath}/promotion/coupon.json", columnFields, columWidths, fn_tbl_render);
            });

            function fn_tbl_render(data, type, full, meta) {

                var title = null;
                if (meta.col == 0) {
                    return '<input type="checkbox" id="selectOne" name="selectOne" value="' + full.coupon_no + '" />';
                } else if (meta.col == 6) {
                    switch (full.coupon_state) {
                        case null :
                            return "";
                            break;
                        case '발급중':
                            return '<span id="coupon_state" name="product_state" class="badge bg-success width-100 d-inline-block" style="color: darkgreen" value="발급중">' + full.coupon_state + '</span>'
                            break;
                        case '발급중단':
                            return '<span class="badge width-100 d-inline-block" style="background-color: grey">' + full.coupon_state + '</span>'
                            break;
                        case '발급대기':
                            return '<span class="badge width-100 d-inline-block" style="background-color: lightgrey; color: grey">' + full.coupon_state + '</span>'
                            break;
                        case undefined:
                            return '-'
                        default:
                            return '<span id="coupon_state" name="coupon_state">' + full.coupon_state + '</span>'
                            break;
                    }
                } else if (meta.col == 7) {
                    return full.start_dt + '~' + full.end_dt
                } else if (meta.col == 9) {
                    return `<button type="text" class="btn btn-sm btn-outline-blue-grey" data-toggle="modal" data-target="#modal-3">발급내역</button>`;
                } else if (meta.col == 10) {
                    return `<button type="text" class="btn btn-sm btn-outline-blue-grey" onclick="location.href='couponDetail.do?coupon_no=` + full.coupon_no + `'">상세보기</button>`;
                }
                if(data != null && data != undefined) {
                    return data;
                } else{
                    return "-";
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


                var val = $("#coupon_classification option:selected").val();
                var idx = '';
                switch (val) {
                    case "다운로드" :
                    case "자동 지급" :
                    case "쿠폰 코드" :
                        idx = 4;
                        break;
                }
                if(search == null)
                    search = table.column(idx).search(val);
                else
                    search = search.column(idx).search(val);


                var type = $("#coupon_type option:selected").val();
                var type_idx = '';
                switch (type) {
                    case "주문금액 적용 쿠폰" :
                    case "배송비 적용 쿠폰" :
                        type_idx = 5;
                        break;
                }
                if(search == null)
                    search = table.column(type_idx).search(type);
                else
                    search = search.column(type_idx).search(type);


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
                    search = table.column(6).search(statusArray);
                else
                    search = search.column(6).search(statusArray);



                var searchName =$('#searchCoupon').val();
                var searchValue = $('#searchValue').val();
                var val = searchValue;
                var idx = '';
                switch (searchName) {
                    case "쿠폰명" :
                        idx = 2;
                        break;
                    case "등록자" :
                        idx = 3;
                        break;
                }
                if(search == null)
                    search = table.column(idx).search(val);
                else
                    search = search.column(idx).search(val);


                var start_dt =$("#start_dt").val();
                var end_dt = $("#end_dt").val()

                if(search == null) {
                    search = table.column(7).search(start_dt);
                    search = search.column(11).search(end_dt);
                }else {
                    search = search.column(7).search(start_dt);
                    search = search.column(11).search(end_dt);
                }

                if(search != null)
                    search.draw();
            }

            $(document).ready(function () {

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
                        } else {
                            $("#selectAll1").prop("checked", true);
                        }
                    });
                });
            });

            function deleteCoupon() {
                var table = $('#user_data_table').DataTable();
                var rowData = $.map(table.rows().data(), function(item){
                    return item;
                });

                let chk_val = [];
                let isShowEmpty = true;

                $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                    if ($(this).is(":checked") == true) {
                        chk_val.push(iVal.value);
                    }
                })

                if(chk_val.length ==0 && isShowEmpty){
                    alert('선택된 항목이 없습니다. 다시 확인해주세요.');
                    isShowEmpty = false;
                    return;
                }
                var params = {
                    'coupon_no_list': chk_val
                }

                if(isShowEmpty){
                    $.ajax({
                        url: "${pageContext.request.contextPath}/promotion/deleteCoupon.json",
                        type : "POST",
                        data : JSON.stringify(params),
                        contentType : "application/json;",
                        success : function(result) {
                            if (result.resultCode == "success") {
                                alert(result.message);
                                fn_search();
                            } else if (result.resultCode == "fail") {
                                alert(result.message);
                            } else{
                                alert(result.message);
                            }
                        }
                    });
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
                $("#topName").val('');
                $("#middle").html('<option selected value="">전체</option>');
                $("#start_dt").val('');
                $("#end_dt").val('');
                $('#coupon_classification').val('').prop("selected", true);
                $('#coupon_type').val('').prop("selected", true);
                $('#searchCoupon').val('쿠폰명').prop("selected", true);
                $('#date_pick').val('9999').prop("selected", true);

            }

            function changeDateTime() {
                var value = parseInt($('#date_pick').val());
                var nowDate = new Date()
                if(value == 9999){
                    $("#start_dt").pickadate('picker').set('select', null);
                    $("#end_dt").pickadate('picker').set('select', null);
                }else{
                    $("#start_dt").pickadate('picker').set('select', nowDate.setDate(nowDate.getDate() + value));
                    $("#end_dt").pickadate('picker').set('select', new Date());
                }
            }

            function changeMiddle(){
                var htmlString = '';
                var params = {
                    'category_id': document.getElementById('topName').options[document.getElementById('topName').selectedIndex].value
                }
                if(params.category_id == ''){
                    htmlString += '<option selected value="">전체</option>';
                    document.getElementById("middle").innerHTML = htmlString;
                    return;
                }
                $.ajax({
                    url : "${pageContext.request.contextPath}/common/category.json",
                    type : "POST",
                    data: params,
                    success : function(result) {
                        htmlString += '<option selected value="">전체</option>';
                        for (var i=0; i<result.categoryList.length; i++) {
                            htmlString += '<option + value="'+result.categoryList[i].category_id + '">' + result.categoryList[i].category_name + '</option>';
                        }
                        document.getElementById("middle").innerHTML = htmlString;
                    }
                });
            }

        </script>


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
