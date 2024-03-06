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
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Header-->

<!-- END: Header-->


<!-- BEGIN: Main Menu-->

<!-- END: Main Menu-->

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-6 col-12">
                <h3 class="content-header-title mb-50">기부/폐기/회수 관리</h3>
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
                                    <p class="sub-heading">기부</p>
                                    <a href="#" onclick="searchStatus('기부');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${disabledCountVO.donate_count}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">폐기</p>
                                    <a href="#" onclick="searchStatus('폐기');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${disabledCountVO.discard_count}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">회수</p>
                                    <a href="#" onclick="searchStatus('회수');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${disabledCountVO.recovery_count}</span></a>
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
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-left"
                                               for="topName">카테고리</label>
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-6 border-bottom-0">
                                                    <select id="topName" class="search_tag form-control" name="11" onchange="changeMiddle();">
                                                        <option selected value="">전체</option>
                                                        <c:forEach items="${categoryName}" var="categoryName">
                                                            <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-6 border-bottom-0">
                                                    <select id="middle" name="10" class="search_tag form-control">
                                                        <option selected value="">전체</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="col-md-2 label-control text-left"
                                           for="checkbox" id="selectStatus" name="selectStatus">상품상태</label>
                                    <div class="form-group row" style="height: 74px">
                                        <div class="col-md-10 border-left-0" id="checkbox">
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectAll1" checked id="selectAll1" value="전체">
                                                <label class="custom-control-label" for="selectAll1">전체</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch1" value="기부">
                                                <label class="custom-control-label" for="checkSearch1">기부</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch2" value="폐기">
                                                <label class="custom-control-label" for="checkSearch2">폐기</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch3" value="회수">
                                                <label class="custom-control-label" for="checkSearch3">회수</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <label class="col-md-2 label-control text-left">조회기간</label>
                                    <div class="form-group row last">
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
                                                        <div
                                                                class="d-flex align-items-center justify-content-start">
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
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-left"
                                               for="searchProduct">검색어</label>
                                        <div class="col-md-8 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <label class="sr-only" for="searchProduct">상품명</label>
                                                    <select id="searchProduct" name="interested"
                                                            class="form-control">
                                                        <option value="상품명" selected="">상품명</option>
<%--                                                        <option value="상품번호">상품번호</option>--%>
<%--                                                        <option value="구매자">구매자</option>--%>
<%--                                                        <option value="주문번호">주문번호</option>--%>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-6 border-bottom-0">
                                                    <input type="text" id="searchValue" class="form-control"
                                                           placeholder="상품명을 입력하세요" name="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions center">
                            <button type="button" class="btn btn-outline-light btn-min-width mr-1" onclick="javascript:fn_reset();">초기화</button>
                            <button type="button" class="btn btn-outline-blue btn-min-width" onclick="javascript:fn_search();">검색</button>
                        </div>
                    </form>
                </div>
            </section>

            <!-- 리스트 -->
            <section>
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <!-- datatable started -->
                            <div class="table-responsive">
                                <table id="user_data_table" class="table table-striped table-hover">
                                    <thead class="text-center">
                                    <tr>
                                        <th><input type="checkbox" id="selectAll" name="selectAll" /></th>
                                        <th><span class="align-middle">상품번호</span></th>
                                        <th>셀러명</th>
                                        <th class="text-center">카테고리</th>
                                        <th class="col-md-6">상품명</th>
                                        <th class="text-center">상품 수량</th>
                                        <th class="text-center">상품 상태</th>
                                        <th class="text-center">결제 상태</th>
                                        <th class="text-center">신청일</th>
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
    </div>
</div>
<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
        <!-- END: Content-->


<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="true" />


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
        var columnFields = ["checkbox", "product_id", "account_id", "category_name", "product_name", "product_count", "sort_type", "pay_state", "reg_dt", "temp", "category_id", "parent_category_id", "start_dt", "end_dt"];
        var columWidths = [ 30, 80, 80, 80, 80, 80, 80, 80, 80, 30, 0, 0, 0, 0];

        init_datatable("${pageContext.request.contextPath}/disabledManagement.json", columnFields, columWidths, fn_tbl_render);

        <%--var state = '${state}';--%>
        <%--if( state != null && state != undefined && state != ''){--%>
        <%--    searchStatus(state);--%>
        <%--}--%>
    });

    function fn_tbl_render(data, type, full, meta) {

        var title = null;
        if (meta.col == 0) {
            return '<input type="checkbox" id="selectOne" name="selectOne" value="' + full.product_id + '" />';
        } else if (meta.col == 2) {
            return full.account_name + '(' + full.account_id + ')'
        } else if (meta.col == 6) {
            if (full.sort_type == '기부') {
                return '<span class="badge bg-info bg-lighten-2 width-150 d-inline-block">' + '기부' + '</span>'
            } else if (full.sort_type == '폐기') {
                return '<span class="badge bg-amber bg-lighten-2 width-150 d-inline-block">' + '폐기' + '</span>'
            } else if (full.sort_type == '회수') {
                return '<span class="badge bg-blue bg-lighten-2 width-150 d-inline-block">' + '회수' + '</span>'
            }
        } else if (meta.col == 7) {
            if (full.pay_state == null || full.pay_state == "") {
                return '-';
            } else {
                return full.pay_state;
            }
        } else if(meta.col == 9){
            return `<button type="text" class="btn btn-sm btn-outline-blue" onclick="location.href='disabledManagementDetail.do?product_id=`+full.product_id+`'">상세보기</button>`;
        }
        else {
            if(data != null) {
                return data;
            } else{
                return "-";
            }
        }
        // return data;
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
                idx = 4;
                break;
            case "상품번호" :
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
            search = table.column(6).search(statusArray);
        else
            search = search.column(6).search(statusArray);

        var start_dt =$("#start_dt").val();
        var end_dt = $("#end_dt").val()


        if(search == null) {
            search = table.column(12).search(start_dt);
            search = search.column(13).search(end_dt);
        }else {
            search = search.column(12).search(start_dt);
            search = search.column(13).search(end_dt);
        }

        if(search != null)
            search.draw();
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

    function fn_reset() {
        $("button[name=btnDate]").each(function() {
            $(this).css("background-color","white");
        });

        $("input[type=checkbox]").each(function() {
            this.checked = false;
        });
        $('#searchValue').val('');
        $("#selectAll").prop("checked", false);
        $("#selectAll1").prop("checked", true);
        $("#topName").val('');
        $("#middle").html('<option selected value="">전체</option>');
        $('#start_dt').val('');
        $('#end_dt').val('');
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

    function searchStatus(type){
        fn_reset();
        $('#selectAll1').prop("checked", false);
        switch (type){
            case "기부" :
            case "1" :
                $('#checkSearch1').prop("checked", true);
                break;
            case "폐기" :
            case "2" :
                $('#checkSearch2').prop("checked", true);
                break;
            case "회수" :
            case "3" :
                $('#checkSearch3').prop("checked", true);
                break;
        }
        fn_search();
    }

</script>

</body>
<!-- END: Body-->

</html>
