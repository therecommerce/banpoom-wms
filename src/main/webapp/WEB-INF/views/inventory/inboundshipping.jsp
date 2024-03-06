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
                <h3 class="content-header-title mb-50">입고 관리</h3>
            </div>
        </div>
        <hr>
        <div class="content-body">
            <!-- 상태 정의 -->
            <!-- 검색 필터 -->
            <section>
                <div class="border border-light rounded p-2 mb-2">
                    <form class="form form-horizontal form-bordered">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-6 border-right-blue-grey border-right-lighten-5">
                                    <div class="form-group row">
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
                                                                <input type='text' id="start_dt" name="8"
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
                                                                <input type='text' id="end_dt" name="9"
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
                                
                               	<div class="col-md-6 border-right-blue-grey border-right-lighten-5">
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-left"
                                               for="searchType">입고유형</label>
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <label class="sr-only" for="searchValue">전체</label>
                                                    <select id="searchType" name="1" class=" search_tag form-control">
                                                        <option value="" selected="">전체</option>
                                                        <option value="반품위탁">반품위탁</option>
                                                        <option value="반품보관">반품보관</option>
                                                        <option value="재고위탁">재고위탁</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                               	<!-- <div class="col-md-6 border-right-blue-grey border-right-lighten-5">
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-left"
                                               for="searchName">입고상태</label>
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <label class="sr-only" for="searchValue">전체</label>
                                                    <select id="searchName" name="interested" class="form-control">
                                                        <option value="반품위탁" selected="">반품위탁</option>
                                                        <option value="반품보관">반품보관</option>
                                                        <option value="재고위탁">재고위탁</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                            
                                <div class="col-md-6 border-right-blue-grey border-right-lighten-5">
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-left"
                                               for="searchName">검색어</label>
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-3 border-bottom-0">
                                                    <label class="sr-only" for="searchValue">상품명</label>
                                                    <select id="searchName" name="interested" class="form-control">
                                                        <option value="운송장번호" selected="">운송장번호</option>
                                                        <option value="상품번호">상품번호</option>
                                                        <option value="셀러명">셀러명</option>
                                                        <option value="상품명">상품명</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-6 border-bottom-0">
                                                    <input type="text" id="searchValue" class="form-control"
                                                           placeholder="검색어를 입력하세요" name="">
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
		<section class="users-list-table">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <!-- datatable started -->
                            <div class="table-responsive">
							<table id="user_data_table" class="table table-striped table-bordered data-custom-button">
                                    <thead class="text-center">
                                    <tr>
                                        <th class="">등록일시</th>
                                        <th class="">입고유형</th>
                                        <th class="">입고상태</th>
                                        <th class="">랙이름</th>
                                        <th class="">상품번호</th>
                                        <th class="">상품명</th>
                                        <th class="">수량</th>
                                        <th class="">셀러명</th>
                                        <th class="">운송장번호</th>
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
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
<!-- END: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>

<script type="text/javascript">

    $(document).ready(function() {
        let columnFields = ["reg_dt", "sell_type", "check_yn", "rack_name", "product_id", "product_name", "product_count", "seller_name", "start_dt","end_dt", "tracking_number"];
        let columWidths = [80, 80, 80, 80, 80, 80, 80, 80, 0, 0, 80];

        init_datatable("${pageContext.request.contextPath}/inventory/inboundshippingList.json", columnFields, columWidths, null);
    });


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

        var searchName =$('#searchName').val();
        var searchValue = $('#searchValue').val();
        var val = searchValue;
        var idx = '';
        switch (searchName){
            case "셀러명" :
                idx = 7;
                break;
            case "상품번호" :
                idx = 4;
                break;
            case "상품명" :
                idx = 5;
                break;
            case "운송장번호" :
                idx = 10;
                break;
        }

        if(search == null)
            search = table.column(idx).search(val);
        else
            search = search.column(idx).search(val);

        if(search != null)
            search.draw();
    }

    function fn_reset() {
        $("button[name=btnDate]").each(function() {
            $(this).css("background-color","white");
        });

        $("input[type=checkbox]").each(function() {
            this.checked = false;
        });
        $('#searchValue').val('');
        $('#start_dt').val('');
        $('#end_dt').val('');
        $('#searchState').val('');
        $('#searchName').val('아이디');
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
</script>


<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>