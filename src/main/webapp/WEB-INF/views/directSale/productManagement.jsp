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
                <h3 class="content-header-title mb-50">상품/판매 목록 (직접판매)</h3>
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
                                    <p class="sub-heading">판매중</p>
                                    <a href="#" onclick="searchStatus('판매중');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${productCountVO.directSaleCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">판매중지</p>
                                    <a href="#" onclick="searchStatus('판매중지');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${productCountVO.directSaleStopCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">품절</p>
                                    <a href="#" onclick="searchStatus('품절');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${productCountVO.directSoldOutCount}</span></a>
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
                                <div class="col-md-6 border-right-blue-grey border-right-lighten-5">
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-left"
                                               for="searchProduct">상세검색</label>
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <label class="sr-only" for="searchValue">상품명</label>
                                                    <select id="searchProduct" name="interested"
                                                            class="form-control">
                                                        <option value="상품명" selected="">상품명</option>
                                                        <option value="상품번호">상품번호</option>
                                                        <option value="셀러명">셀러명</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-8 border-bottom-0">
                                                    <input type="text" id="searchValue" class="form-control"
                                                           placeholder="상품명을 입력하세요" name="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-left"
                                               for="topName">카테고리</label>
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-6 border-bottom-0">
                                                    <select id="topName" class="search_tag form-control" name="13" onchange="changeMiddle();">
                                                        <option selected value="">전체</option>
                                                        <c:forEach items="${categoryName}" var="categoryName">
                                                            <c:if test="${categoryName.parent_category_id == ''}">
                                                                <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                                            </c:if>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-6 border-bottom-0">
                                                    <select id="middle" name="12" class="search_tag form-control">
                                                        <option selected value="">전체</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row" style="height: 74px">
                                        <label class="col-md-2 label-control text-left"
                                               for="checkbox" id="selectStatus" name="selectStatus">상품상태</label>
                                        <div class="col-md-10 border-left-0" id="checkbox">
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectAll1" checked id="selectAll1" value="전체">
                                                <label class="custom-control-label" for="selectAll1">전체</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch1" value="판매중">
                                                <label class="custom-control-label" for="checkSearch1" >판매중</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch2" value="판매중지">
                                                <label class="custom-control-label" for="checkSearch2" >판매중지</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch3" value="품절">
                                                <label class="custom-control-label" for="checkSearch3" >품절</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 border-right-blue-grey border-right-lighten-5">
                                    <div class="form-group row last">
                                        <label class="col-md-2 label-control text-left"
                                               for="userinput1">조회기간</label>
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-2 border-left-0 left">
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
                                                <div class="form-group col-md-10 border-bottom-0">
                                                    <div class="d-flex justify-content-start align-items-start p-0">
                                                        <div class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="start_dt" name="9"
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
                                                                <input type='text' id="end_dt" name="10"
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
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-1">판매중지</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-2">판매상태로 변경</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-3">품절</button>
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
                                        <th>상품번호</th>
                                        <th>셀러명</th>
                                        <th>카테고리</th>
                                        <th>상품명</th>
                                        <th>상품가격</th>
                                        <th>상품수량</th>
                                        <th>상품상태</th>
                                        <th>판매 등록일</th>
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

        <!-- Modal-1 -->
        <div class="modal fade text-left" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel1">판매 중지</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <h5>해당 상품을 판매 중지하시겠습니까?</h5>
                        <p>중지 시에 사용자의 화면에서 상품은 표시되지 않습니다.</p>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="changeProductStatus('판매중지');">확인</button>
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
                        <h4 class="modal-title" id="myModalLabel2">판매 상태로 변경</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center my-2">
                            <h5>해당 상품을 판매 상태로 변경하시겠습니까?</h5>
                            <p>변경시에 사용자의 화면에 상품이 노출됩니다.</p>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="changeProductStatus('판매중');">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal-3 -->
        <div class="modal fade text-left" id="modal-3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel3">품절</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center my-2">
                            <h5>해당 상품을 품절 처리하시겠습니까?</h5>
                            <p class="mb-0">품절 시 더 이상 해당 상품을 판매할 수 없습니다.</p>
                            <p>일시적인 판매중지를 원하는 경우 판매중지를 활용하세요.</p>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="javascript:changeProductStatus('품절');return;">확인</button>
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

        <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                var columnFields = ["checkbox", "product_id", "account_name", "category_name", "product_name", "product_price", "product_count", "product_state", "product_selling_dt", "modify", "start_dt", "end_dt", "category_id", "parent_category_id"];
                var columWidths = [ 30, 80, 80, 80, 80, 80, 80, 80, 80, 80, 0, 0, 0 ,0];

                init_datatable("${pageContext.request.contextPath}/direct/productManagement.json", columnFields, columWidths, fn_tbl_render);
            });

            function fn_tbl_render(data, type, full, meta) {

                var title = null;
                if (meta.col == 0) {
                    return '<input type="checkbox" id="selectOne" name="selectOne" value="' + full.product_id + '" />';
                } else if (meta.col == 2) {
                    return full.account_name + '(' + full.account_id + ')'
                } else if (meta.col == 3) {
                    if (full.category_name == '' || full.category_name == null) {
                        return '-'
                    } else {
                        return full.category_name
                    }
                } else if(meta.col == 5) {
                    if (full.product_price != null && full.product_price != '' && full.product_price != 0) {
                        return full.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + '원';
                    } else {
                        return '-';
                    }
                } else if (meta.col == 7) {
                    switch (full.product_state) {
                        case null :
                            return "";
                            break;
                        case '판매중지':
                            return '<span id="product_state" name="product_state" class="badge bg-blue-grey bg-lighten-2 width-100 d-inline-block" value="판매중지">' + full.product_state + '</span>'
                            break;
                        case '판매중':
                            return '<span class="badge bg-info bg-lighten-2 width-100 d-inline-block">' + full.product_state + '</span>'
                            break;
                        case '품절':
                            return '<span class="badge bg-danger bg-lighten-2 width-100 d-inline-block">' + full.product_state + '</span>'
                            break;
                        case undefined:
                            return '-'
                        default:
                            return '<span id="product_state" name="product_state">' + full.product_state + '</span>'
                            break;
                    }
                } else if (meta.col == 8) {
                    if (full.product_selling_dt != null && full.product_selling_dt != '') {
                        return full.product_selling_dt + '(' + full.diffDate + '일 경과)';
                    } else {
                        return '-' + '(' + '-' + ')'
                    }
                } else if (meta.col == 9) {
                    return `<button type="text" class="btn btn-sm btn-outline-blue" onclick="location.href='productManagementEdit.do?product_id=` + full.product_id + `'">수정</button>`;
                }

                return data;
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
                switch (searchName) {
                    case "상품명" :
                        idx = 4;
                        break;
                    case "상품번호" :
                        idx = 1;
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
                    search = table.column(7).search(statusArray);
                else
                    search = search.column(7).search(statusArray);

                var start_dt =$("#start_dt").val();
                var end_dt = $("#end_dt").val()

                if(search == null) {
                    search = table.column(10).search(start_dt);
                    search = search.column(11).search(end_dt);
                }else {
                    search = search.column(10).search(start_dt);
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

            function changeProductStatus(product_state) {
                var table = $('#user_data_table').DataTable();
                var rowData = $.map(table.rows().data(), function(item){
                    return item;
                });

                console.log(table);
                console.log(rowData);

                let chk_val = [];
                let isShowEmpty = true;

                if(product_state == '판매중지') {
                    $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                        if ($(this).is(":checked") == true) {
                            rowData.forEach(function (row) {
                                if (row.product_id == iVal.value) {
                                    if (row.product_state != "판매중"){
                                        alert('판매중인 상품만 판매중지가 가능합니다.');
                                        isShowEmpty = false;
                                        return;
                                    }else{
                                        chk_val.push(iVal.value);
                                    }
                                }
                            })
                        }
                    })
                } else if(product_state == '판매중'){
                    $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                        if ($(this).is(":checked") == true) {
                            rowData.forEach(function (row) {
                                if (row.product_id == iVal.value) {
                                    if (row.product_state != "판매중지"){
                                        alert('판매중지 상품만 판매중으로 변경이 가능합니다.');
                                        isShowEmpty = false;
                                        return;
                                    }else{
                                        chk_val.push(iVal.value);
                                    }
                                }
                            })
                        }
                    })
                } else {
                    $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                        if ($(this).is(":checked") == true) {
                            rowData.forEach(function (row) {
                                if (row.product_id == iVal.value) {
                                    if (row.product_state == "품절"){
                                        alert('품절이 아닌 상품만 품절으로 상태 변경이 가능합니다.');
                                        isShowEmpty = false;
                                        return;
                                    }else{
                                        chk_val.push(iVal.value);
                                    }
                                }
                            })
                        }
                    })
                }
                if(chk_val.length ==0 && isShowEmpty){
                    alert('선택된 항목이 없습니다. 다시 확인해주세요.');
                    isShowEmpty = false;
                    return;
                }
                var params = {
                    'product_state': product_state,
                    'product_id_list': chk_val
                }

                if(isShowEmpty){
                    $.ajax({
                        url: "${pageContext.request.contextPath}/direct/changeDirectProductStatus.json",
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
                $("#end_dt").val('')
            }

            // function changeDateTime(id,value) {
            //     $("button[name=btnDate]").each(function() {
            //         if($(this).attr('id')== id) {
            //             $(this).css("background-color","cornflowerblue")
            //         }else{
            //             $(this).css("background-color","white")
            //         }
            //     });
            //     var nowDate = new Date()
            //     if(value == 9999){
            //         $("#start_dt").pickadate('picker').set('select' ,nowDate);
            //         $("#end_dt").pickadate('picker').set('select' ,nowDate);
            //     }else{
            //         $("#start_dt").pickadate('picker').set('select' ,nowDate.setDate(nowDate.getDate() + value));
            //         $("#end_dt").pickadate('picker').set('select' ,new Date());
            //     }
            // }

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

            function searchStatus(type){
                fn_reset();
                $('#selectAll1').prop("checked", false);
                switch (type){
                    case "판매중" :
                        $('#checkSearch1').prop("checked", true);
                        break;
                    case "판매중지" :
                        $('#checkSearch2').prop("checked", true);
                        break;
                    case "품절" :
                        $('#checkSearch3').prop("checked", true);
                        break;
                }
                fn_search();
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
