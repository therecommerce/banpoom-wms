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
    <title>반품구조대 - Admin </title>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/extensions/raty/jquery.raty.css">
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
                <h3 class="content-header-title mb-50">신고내용 관리</h3>
            </div>
            <div class="content-header-right col-md-6 col-12">
                <div class="float-md-right">
                    <button class="nav-link btn btn-sm btn-outline-blue" type="button">다운로드</button>
                </div>
            </div>
        </div>
        <hr>
        <div class="content-body">
            <!-- 검색 필터 -->
            <section>
                <div class="border border-light rounded p-2 mb-2">
                    <form class="form form-horizontal form-bordered">
                        <div class="form-body">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group row">
                                            <label class="col-md-2 label-control text-left" for="selectReportType1">신고유형</label>
                                            <div class="col-md-10 border-left-0">
                                                <div class="form-group col-md-12 border-bottom-0">
                                                    <label class="sr-only" for="selectReportType1">신고유형</label>
                                                    <select id="selectReportType1" name="0" class="search_tag form-control" onchange="selectListChange()">
                                                        <option selected value="">전체</option>
                                                        <option value="리뷰신고">리뷰신고</option>
                                                        <option value="상품상세화면">상품상세화면</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group row">
                                            <label class="col-md-2 label-control text-left" for="selectReportType2">신고항목</label>
                                            <div class="col-md-10 border-left-0">
                                                <div class="form-group col-md-12 border-bottom-0">
                                                    <label class="sr-only" for="selectReportType2">신고항목</label>
                                                    <select id="selectReportType2" name="1" class="search_tag form-control">
                                                        <option selected value="">전체</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group row">

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group row">
                                            <label class="col-md-2 label-control text-left" for="selectReportSearchInput">상세검색</label>
                                            <div class="col-md-10 border-left-0">
                                                <div class="row">
                                                    <div class="form-group col-md-4 border-bottom-0">
                                                        <select id="selectReportSearchInput" name="interested" class="form-control">
                                                            <option value="신고유형" selected="">신고유형</option>
                                                            <option value="신고항목">신고항목</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-8 border-bottom-0" >
                                                        <input type="text" id="searchValue" class="form-control" placeholder="" name="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-md-1 label-control text-left">작성일</label>
                                            <div class="col-md-11 border-left-0">
                                                <div class="row">
                                                    <div class="form-group col-md-2 border-left-0 left">
                                                        <label class="sr-only" for="projectinput1">1개월</label>
                                                        <select id="projectinput1" name="interested"
                                                                class="form-control" onchange="changeDateTime()">
                                                            <option value="9999" <c:if test="${state == null}">selected=""</c:if>>전체</option>
                                                            <option value="-30" <c:if test="${state != null}">selected=""</c:if>>1개월</option>
                                                            <option value="-90">3개월</option>
                                                            <option value="-180">6개월</option>
                                                            <option value="-365">12개월</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-10 border-bottom-0">
                                                        <div class="d-flex justify-content-start align-items-start p-0">
                                                            <div class="d-flex align-items-center justify-content-start">
                                                                <div class="input-group">
                                                                    <input type='text' id="start_dt" name="6"
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
                                                                    <input type='text' id="end_dt" name="7"
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
                                    <div class="col-6">
                                        <div class="form-group row last">
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
                                            <th>신고유형</th>
                                            <th>신고항목</th>
                                            <th>신고내용</th>
                                            <th>작성자</th>
                                            <th>작성일자</th>
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

<form:form>
    <input type="hidden" id="product_id" name="product_id" value=""/>
    <input type="hidden" id="product_name" name="product_name" value=""/>
    <input type="hidden" id="order_name" name="order_name" value=""/>
    <input type="hidden" id="order_request_id" name="order_request_id" value=""/>
    <input type="hidden" id="modal_cal_dt" name="modal_cal_dt" value=""/>
</form:form>
<!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />


<!-- 답변등록 모달 : 시작 -->
<div class="modal fade text-left" id="modalDetail" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel1">신고내용 상세보기</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- 신고내용 : 시작 -->
                <div class="border border-dark" style="padding:10px">
                    <div>
                        <span><b>신고유형 : </b></span>
                        <span id="reportType1"></span>
                    </div>
                    <div>
                        <span><b>신고항목 : </b></span>
                        <span id="reportType2"></span>
                    </div>
                    <div>
                        <span><b>신고자 : </b></span><span id="reportUser"></span>
                    </div>
                    <div>
                        <span><b>작성일자 : </b></span>
                        <span id="reportRegDate"></span>
                    </div>
                    <div>
                        <span><b>신고내용 : </b></span><br>
                        <span id="reportContent"></span>
                    </div>
                </div>
                <!-- 신고내용 : 끝-->
                <div>

                </div>
                <!-- 문의 -->
                <h4 class="card-title bg-blue bg-lighten-5 border-top p-2 mb-0">
                    <input type="hidden" id="modal_review_no" value=""/>
                    <span id="modalReviewNo"></span>
                    <span>  (리뷰 번호) </span>
                </h4>
                <!-- 문의정보 -->

            </div>
            <p class="modal-dialog modal-dialog-scrollable">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 col-lg-8 col-xl-8 ">
                            <p class="mb-50"><strong>상품명(상품번호)</strong>:
                                <span id="modal_product_name" ></span>
                                <span id="modal_product_id"></span>
                            </p>
                            <p class="mb-0" id="modal_orderRequestId"><strong>주문번호</strong>:
                                <span id="modal_review_type"></span>
                                <span id="modal_order_request_id"></span>
                            </p>
                        </div>
                        <div class="col-md-12 col-lg-4 col-xl-4">
                            <div class="float-right text-right">
                                <div class="d-flex align-items-center justify-content-end mb-50">
                                    <span id="modal_review_score_img" class="font-weight-bold mt-25"></span>
                                    <span id="modal_review_score" class="font-weight-bold mt-25" style="margin-right: 20px;">점수</span>
                                    <span id="modal_review_like_img"></span>
                                    <span id="modal_review_like" class="font-weight-bold mt-25"></span>
                                </div>
                                <p class="mb-0">
                                    <span id="modal_review_account_id"></span>
                                    <span id="modal_review_reg_dt"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 내용 -->
                <div class="card-body border-top">
                    <p id="modal_report_content">
                    </p>
                </div>

                <!-- 첨부파일 -->
                <div class="card-body border-top">
                    <label class="sidebar-label">첨부 파일</label>
                    <ul class="list-unstyled list-inline mb-0">
                        <c:forEach items="${reportModalVO.file_id_list_answer}" var="fileIdAnswer">
                            <li class="cursor-pointer pb-25">
                                <img src="${pageContext.request.contextPath}/file/down/image/${fileIdAnswer}" alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </p>
            <!-- 상품 정보 모달 : 시작-->
            <div class="border-top p-2 mb-0">
                <h6 class="text-primary">상품정보</h6>
                    <table class="table table-bordered">
                        <tr class="table-primary">
                            <th>상품번호</th>
                            <th>상품정보</th>
                        </tr>
                        <tr class="table-active">
                            <th id="modalProductId"></th>
                            <td id="modalProductName"></td>
                        </tr>
                    <br>
                    </table>
            </div>
            <!-- 상품 정보 모달 : 끝-->
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" onclick="">닫기</button>
            </div>
        </div>
    </div>
</div>
<!-- 답변등록 모달 : 끝 -->



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
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/charts/apexcharts/apexcharts.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/extensions/jquery.raty.js"></script>

<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
<!-- END: Page Vendor JS-->



<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>

<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>
<!-- END: Page JS-->

<script>
    $(document).ready(function() {
        changeDateTime();
        let columnFields = [ "report_type1", "report_type2", "report_title", "report_writer", "reg_dt", "report_no", "start_dt", "end_dt"];
        let columWidths = [ 30, 30, 90, 20, 30, 0, 0, 0];

        init_datatable("${pageContext.request.contextPath}/customer/report.json", columnFields, columWidths, fn_tbl_render);
        fn_search();
    });

    function fn_tbl_render(data, type, full, meta) {
        if (meta.col === 1) {
            return '<strong>' + full.report_type2 + '</strong>'
        }
        if (meta.col === 2) {
            if((full.report_content) != 0 && (full.report_content) !== null) {
                return `<a data-toggle="modal" data-target="#modalDetail" style="cursor:pointer" onclick="selectReviewModal(` + full.report_no + `)">` + full.report_content + `</a>`;
            }
        }
        return data;
    }   // 초기 렌더

    //
    // function fn_reset() {
    //     $("button[name=btnDate]").each(function() {
    //         $(this).css("background-color","white");
    //     });
    //
    //     $("input[type=checkbox]").each(function() {
    //         this.checked = false;
    //     });
    //
    //     $('#searchValue').val('');
    //     $("#selectReportSearchInput").val('신고유형');
    //     $("#start_dt").pickadate('picker').set('select', null);
    //     $("#end_dt").pickadate('picker').set('select', null);
    // }   // 초기화


    function searchProductList() {
        let searchProduct = document.getElementById('searchProduct').value;

        if (searchProduct == '상품명') {
            document.getElementById('product_name').value = document.getElementById('searchWord').value;
        } else if (searchProduct == '상품번호') {
            document.getElementById('product_id').value = document.getElementById('searchWord').value;
        } else if (searchProduct == '구매자') {
            document.getElementById('order_send_name').value = document.getElementById('searchWord').value;
        } else if (searchProduct == '주문번호') {
            document.getElementById('order_delivery_no').value = document.getElementById('searchWord').value;
        }
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
    //         $("#start_dt").pickadate('picker').set('select' ,null);
    //         $("#end_dt").pickadate('picker').set('select' ,null);
    //     }else{
    //         $("#start_dt").pickadate('picker').set('select' ,nowDate.setDate(nowDate.getDate() + value));
    //         $("#end_dt").pickadate('picker').set('select' ,new Date());
    //     }
    // }

    <!-- 모달바인딩 : 시작 -->
    function selectReviewModal(reportNo) {
        let report_no = {
            "report_no" : reportNo,
            "review_no" : document.getElementById("modal_review_no").value
        }
        $.ajax({
            url : "${pageContext.request.contextPath}/customer/selectReportModalInfo.json",
            type : "POST",
            data : JSON.stringify(report_no),
            contentType : "application/json",
            success : function(result) {
                if (result.resultCode === "success") {
                    $('#modal_review_no').val(result.data.review_no);
                    $('#modalReviewNo').text(result.data.review_no);
                    $('#modal_product_name').text(result.data.product_name);
                    $('#modal_product_id').text( '('+result.data.product_id+')');
                    $('#modal_order_request_id').text(result.data.order_request_id);
                    $('#modal_report_content').text(result.data.review_content);
                    $('#modal_review_reg_dt').text(result.data.review_reg_dt);
                    $('#modal_review_account_id').text(result.data.review_account_id + " : ");

                    let htmlString = '';
                    let htmlStringLike = '<img src="${pageContext.request.contextPath}/resources/app-assets/images/raty/like-2.png"/>';
                    for(var i = 0 ; i < 5 ; i++) {
                        if( i <= parseInt(result.data.review_score)-1) {
                            htmlString += '<img src="${pageContext.request.contextPath}/resources/app-assets/images/raty/star-on.png"/>';
                        } else {
                            htmlString += '<img src="${pageContext.request.contextPath}/resources/app-assets/images/raty/star-off.png"/>';
                        }
                    }
                    $('#modal_review_score_img').html(htmlString);
                    $('#modal_review_score').text(" "+parseInt(result.data.review_score));
                    $('#modal_review_like_img').html(htmlStringLike);
                    $('#modal_review_like').text(" " + parseInt(result.data.review_like));

                    if(result.data.report_type1 != null) {
                        $("#reportType1").text( result.data.report_type1);
                        $("#reportType2").text( result.data.report_type2);
                        $("#reportUser").text( result.data.report_writer + " ( " + result.data.account_id + " )");
                        $("#reportRegDate").text( result.data.reg_dt);
                        $("#reportContent").text( result.data.report_content);
                    }
                    $("#modalProductId").text(result.data.product_id);
                    $("#modalProductName").text(result.data.product_name);
                }
            }
        })
    }
    <!-- 모달등록바인딩 : 끝 -->

    function fn_reset() {
        $("button[name=btnDate]").each(function() {
            $(this).css("background-color","white");
        });

        $("#selectReportType1").val("");
        $("#selectReportType2 option:selected").val("");
        $("#selectReportType2 option:selected").text("전체");
        $('#projectinput1').val('9999');
        $('#searchValue').val('');
        $('#selectReportSearchInput').val('신고유형');
        $("#start_dt").pickadate('picker').set('select', null);
        $("#end_dt").pickadate('picker').set('select', null);
    }   // 초기환 버튼

    $("#selectAll1").click(function () {
        $('input:checkbox[name="selectOne1"]').each(function () {
            if ($("#selectAll1").is(":checked")) $("input[name=selectOne1]").prop("checked", true);
            else $("input[name=selectOne1]").prop("checked", false);
        });
    }); // 체크박스 전체 작동

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

    function selectListChange() {

        let productDetail = ["상품정보 부정확","광고/홍보","상품게시글 도배","거래금지품목", "사기의심", "기타"];
        let reviewReport = ["욕설/비방/성희롱", "관련없는 이미지", "관련없는 글", "광고/홍보", "개인정보유출", "게시글도배", "기타"];
        let total = ["상품정보 부정확","광고/홍보","상품게시글 도배","거래금지품목", "사기의심", "욕설/비방/성희롱", "관련없는 이미지", "관련없는 글", "광고/홍보", "개인정보유출", "기타"];

        let selectItem = $("#selectReportType1").val();

        let changeItem;

        if(selectItem == "리뷰신고") {
            changeItem = reviewReport;
        }
        else if(selectItem == "상품상세화면") {
            changeItem = productDetail;
        }
        else if(selectItem == "") {
            changeItem = total;
        }

        $('#selectReportType2').empty();

        for(let count = 0; count < changeItem.length; count++){
            let option = $("<option>" + changeItem[count] + "</option>");
            $('#selectReportType2').append(option);
        }
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

            if(search == null) {
                search = table.column(idx).search(val);
            }
            else {
                search = search.column(idx).search(val);
            }
        });


        let selectReportSearchInput = $('#selectReportSearchInput').val();
        let searchValue = $('#searchValue').val();

        let idx = '';
        switch (selectReportSearchInput) {
            case "신고유형" :
                idx = 0;
                break;
            case "신고항목" :
                idx = 1;
                break;
        }

        if(search == null) {
            search = table.column(idx).search(searchValue);
        }
        else {
            search = search.column(idx).search(searchValue);
        }

        if(search != null)
            search.draw();
    }

</script>

</body>
<!-- END: Body-->

</html>