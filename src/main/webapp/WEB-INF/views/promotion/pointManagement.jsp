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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/vertical-timeline.css">
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

<!-- Modal -->

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">포인트 설정 관리</h3>
        </div>
        <hr>
        <div class="content-body">

            <section>
                <div id="accordionWrap15" role="tablist" aria-multiselectable="true">
                    <div class="card">
                        <div class="card-header pb-0">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4 class="card-title blue">포인트 지급 설정</h4>
                                </div>
                            </div>
                        </div>
                        <hr class="bg-blue mb-0">

                        <div class="card-content">
                            <div class="card-body">
                                <div class="card-text">
                                    <h5>상품 구매 포인트</h5>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">지급 방식(Vvip)<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <span class="align-bottom">구매 확정 시 구매 금액의  &nbsp; </span>
                                                    <input type="text" id="grade1" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.grade1}">
                                                    <span class="align-bottom"> &nbsp;  % 비율로 지급</span>
                                                </dd>
                                            </dl>
                                        </div>
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">지급 방식(Vip)<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <span class="align-bottom">구매 확정 시 구매 금액의 &nbsp; </span>
                                                    <input type="text" id="grade2" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.grade2}">
                                                    <span class="align-bottom"> &nbsp; % 비율로 지급</span>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">지급 방식(Gold)<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <span class="align-bottom">구매 확정 시 구매 금액의  &nbsp; </span>
                                                    <input type="text" id="grade3" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.grade3}">
                                                    <span class="align-bottom">  &nbsp; % 비율로 지급</span>
                                                </dd>
                                            </dl>
                                        </div>
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">지급 방식(silver)<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <span class="align-bottom">구매 확정 시 구매 금액의  &nbsp; </span>
                                                    <input type="text" id="grade4" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.grade4}">
                                                    <span class="align-bottom">  &nbsp; % 비율로 지급</span>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">지급 방식(Family)<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <span class="align-bottom">구매 확정 시 구매 금액의  &nbsp; </span>
                                                    <input type="text" id="grade5" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.grade5}">
                                                    <span class="align-bottom">  &nbsp; % 비율로 지급</span>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <h5>상시 리뷰 작성 포인트</h5>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">텍스트 리뷰 지급<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <span class="align-bottom">구매 확정 시  &nbsp; </span>
                                                    <input type="text" id="review_reward_point" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.review_reward_point}">
                                                    <span class="align-bottom">  &nbsp; 포인트 지급</span>
                                                </dd>
                                            </dl>
                                        </div>
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">포토 리뷰 지급<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <span class="align-bottom">구매 확정 시  &nbsp; </span>
                                                    <input type="text" id="review_reward_photo_point" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.review_reward_photo_point}">
                                                    <span class="align-bottom">  &nbsp; 포인트 지급</span>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section>
                <div id="accordionWrap15" role="tablist" aria-multiselectable="true">

                    <div class="card">
                        <div class="card-header pb-0">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4 class="card-title blue">포인트 사용 설정</h4>
                                </div>
                            </div>
                        </div>
                        <hr class="bg-blue mb-0">

                        <div class="card-content">
                            <div class="card-body">
                                <div class="card-text">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">구매 제한<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <input type="text" id="restrict_point_purchase" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.restrict_point_purchase}">
                                                    <span class="align-bottom"> &nbsp; 원 구매 시 &nbsp; </span>
                                                    <input type="text" id="restrict_point_use" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.restrict_point_use}">
                                                    <span class="align-bottom"> &nbsp; 이상부터 사용 가능</span>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">사용 한도<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <span class="align-bottom">1회 주문 시 결제금액의 최대  &nbsp; </span>
                                                    <input type="text" id="restrict_point_percent" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.restrict_point_percent}">
                                                    <span class="align-bottom"> &nbsp; % 까지 사용 가능</span>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">할인 쿠폰 중복 여부<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-9 content-left">
                                                    <div class="form-group col-md-12 border-bottom-0">
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="is_duplicate"
                                                                       id="is_duplicateOff" onclick="">
                                                                <label class="custom-control-label" for="is_duplicateOff">중복 사용 불가</label>
                                                            </div>
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="is_duplicate"
                                                                       id="is_duplicateOn" onclick="">
                                                                <label class="custom-control-label" for="is_duplicateOn">
                                                                    중복 사용 가능
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section>
                <div id="accordionWrap15" role="tablist" aria-multiselectable="true">

                    <div class="card">
                        <div class="card-header pb-0">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4 class="card-title blue">포인트 소멸 설정</h4>
                                </div>
                            </div>
                        </div>
                        <hr class="bg-blue mb-0">

                        <div class="card-content">
                            <div class="card-body">
                                <div class="card-text">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">포인트 유효기간<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-9">
                                                    <input type="text" id="point_lifetime" class="form-control col-md-2"
                                                           placeholder="" name="" value="${PointVO.point_lifetime}">
                                                    <span class="align-bottom"> &nbsp; 일</span>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="col-md-12">
                <div class="border-top-blue-grey border-top-lighten-5 text-muted text-center">
                    <button type="button" class="btn btn-light btn-min-width mr-1">취소</button>
                    <button type="submit" class="btn btn-blue btn-min-width" onclick="javascript:updatePoint();">저장</button>
                </div>
            </div>
        </div>
    </div>
        </div>
        <!-- END: Content-->

        <div class="sidenav-overlay"></div>
        <div class="drag-target"></div>
        <jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />


        <!-- BEGIN: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
        <!-- END: Page Vendor JS-->

<%--        <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>--%>

        <!-- BEGIN: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
<%--        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>--%>
<%--        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>--%>
<%--        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>--%>
<%--        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>--%>
        <%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>--%>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
        <!-- END: Page Vendor JS-->


        <script>
            $(document).ready(function() {
                if(${PointVO.is_duplicate}){
                    $("#is_duplicateOn").attr('checked', true);
                } else {
                    $("#is_duplicateOff").attr('checked', true);
                }
            });
        </script>
        <script type="text/javascript">


             function updatePoint() {


                 let params = {
                     "grade1" : document.getElementById("grade1").value,
                     "grade2" : document.getElementById("grade2").value,
                     "grade3" : document.getElementById("grade3").value,
                     "grade4" : document.getElementById("grade4").value,
                     "grade5" : document.getElementById("grade5").value,
                     "review_reward_point" : document.getElementById("review_reward_point").value,
                     "review_reward_photo_point" : document.getElementById("review_reward_photo_point").value,
                     "restrict_point_purchase" : document.getElementById("restrict_point_purchase").value,
                     "restrict_point_use" : document.getElementById("restrict_point_use").value,
                     "restrict_point_percent" : document.getElementById("restrict_point_percent").value,
                     "point_lifetime" : document.getElementById("point_lifetime").value,
                     "is_duplicate" : undefined
                 }

                 if($('#is_duplicateOn').is(':checked')){
                     params.is_duplicate = true;
                 } else {
                     params.is_duplicate = false;
                 };

                 $.ajax({
                     url : "${pageContext.request.contextPath}/promotion/pointUpdate.json",
                     type : "POST",
                     data : JSON.stringify(params),
                     contentType : "application/json",
                     success : function(result) {
                         if(result.resultCode == "success") {
                             alert(result.message);
                             location.reload();
                         } else {
                             alert(result.message);
                         }
                     }
                 });
             }




            <%--function fn_updateVprice() {--%>
            <%--    let params = {--%>
            <%--        'product_vprice': document.getElementById('product_vprice').innerText,--%>
            <%--        'product_id': '${consignmentVO.product_id}'--%>
            <%--    }--%>

            <%--    $.ajax({--%>
            <%--        url : "${pageContext.request.contextPath}/consignment/changPrice.json",--%>
            <%--        type : "POST",--%>
            <%--        data: params,--%>
            <%--        success : function(result) {--%>
            <%--            if(result.resultCode == "success") {--%>
            <%--                alert(result.message)--%>
            <%--                setTimeout(function () {--%>
            <%--                    location.reload();--%>
            <%--                }, 1000);--%>
            <%--                return false;--%>
            <%--            } else if (result.resultCode == "fail") {--%>
            <%--                alert(result.message);--%>
            <%--            } else {--%>
            <%--                alert(result.message);--%>
            <%--            }--%>
            <%--        }--%>
            <%--    });--%>
            <%--}--%>

            <%--function tenDollar(no) {--%>

            <%--    if (no == 0) {--%>
            <%--        var tenDollaruseFlag = '0'--%>
            <%--    } else if (no == 1) {--%>
            <%--        var tenDollaruseFlag = '1'--%>
            <%--    }--%>

            <%--    let param = {--%>
            <%--        'tenDollaruseFlag': tenDollaruseFlag,--%>
            <%--        'product_id': document.getElementById('product_id').value--%>
            <%--    }--%>

            <%--    $.ajax({--%>
            <%--        url : "${pageContext.request.contextPath}/tenDollarUseFlag.json",--%>
            <%--        type : "POST",--%>
            <%--        data: param,--%>
            <%--        success : function(result) {--%>
            <%--            if (result.resultCode == "success") {--%>
            <%--                alert(result.message);--%>
            <%--                location.reload();--%>
            <%--            } else {--%>
            <%--                alert(result.message);--%>
            <%--            }--%>
            <%--        }--%>
            <%--    });--%>
            <%--}--%>

            <%--function fn_saveTracking() {--%>
            <%--    var params = $("form[name=parameterVO]").serialize();--%>

            <%--    $.ajax({--%>
            <%--        url : "${pageContext.request.contextPath}/updateTrackingNum.json",--%>
            <%--        type : "POST",--%>
            <%--        data: params,--%>
            <%--        success : function(result) {--%>
            <%--            if (result.resultCode == "success") {--%>
            <%--                alert(result.message)--%>
            <%--                    setTimeout(function () {--%>
            <%--                        fn_chkPage(side_MENU.commissionSaleList);--%>
            <%--                    }, 1000);--%>
            <%--                } else if (result.resultCode == "fail") {--%>
            <%--                    alert(result.message);--%>
            <%--                } else {--%>
            <%--                    alert(result.message);--%>
            <%--                }--%>
            <%--            }--%>
            <%--    });--%>
            <%--}--%>


            <%--function updateProductStatus(product_status) {--%>
            <%--    var params = {--%>
            <%--        'product_state': product_status,--%>
            <%--        'product_id_list': '${consignmentVO.product_id}'--%>
            <%--    }--%>

            <%--    $.ajax({--%>
            <%--        url : "${pageContext.request.contextPath}/direct/updateProductStatus.json",--%>
            <%--        type : "POST",--%>
            <%--        data: params,--%>
            <%--        success : function(result) {--%>
            <%--            if (result.resultCode == "success") {--%>
            <%--                alert(result.message)--%>
            <%--                location.reload();--%>
            <%--            } else if (result.resultCode == "fail") {--%>
            <%--                alert(result.message);--%>
            <%--            } else {--%>
            <%--                alert(result.message);--%>
            <%--            }--%>
            <%--        }--%>
            <%--    });--%>
            <%--}--%>

            <%--function clickPercent(idx, price) {--%>
            <%--    $('button[name=percent]').each(function(){--%>
            <%--        if($(this).val() == idx){--%>
            <%--            $(this).removeClass('badge bg-blue round badge-min-width mr-1');--%>
            <%--            $(this).removeClass('badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1');--%>
            <%--            $(this).addClass('badge bg-blue round badge-min-width mr-1');--%>
            <%--            // $(this).attr('class', 'badge bg-blue round badge-min-width mr-1')--%>
            <%--        } else {--%>
            <%--            $(this).removeClass('badge bg-blue round badge-min-width mr-1');--%>
            <%--            $(this).removeClass('badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1');--%>
            <%--            $(this).addClass('badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1');--%>
            <%--            // $(this).attr('class', 'bg-blue-grey bg-lighten-2 round badge-min-width mr-1')--%>
            <%--        }--%>
            <%--    });--%>
            <%--    percent = idx;--%>
            <%--    let newPrice = price * (idx/100);--%>
            <%--    $('#salePrice').val(price);--%>
            <%--    document.getElementById('product_vprice').innerText = newPrice;--%>
            <%--}--%>

            <%--function fn_openPage11() {--%>
            <%--    if (document.getElementById('accordion11').style.display === 'block') {--%>
            <%--        document.getElementById('accordion11').style.display = 'none';--%>
            <%--    } else {--%>
            <%--        document.getElementById('accordion11').style.display = 'block';--%>
            <%--    }--%>
            <%--}--%>

            <%--function fn_openPage12() {--%>
            <%--    if (document.getElementById('accordion12').style.display === 'block') {--%>
            <%--        document.getElementById('accordion12').style.display = 'none';--%>
            <%--    } else {--%>
            <%--        document.getElementById('accordion12').style.display = 'block';--%>
            <%--    }--%>
            <%--}--%>

            <%--function fn_openPage13() {--%>
            <%--    if (document.getElementById('accordion13').style.display === 'block') {--%>
            <%--        document.getElementById('accordion13').style.display = 'none';--%>
            <%--    } else {--%>
            <%--        document.getElementById('accordion13').style.display = 'block';--%>
            <%--    }--%>
            <%--}--%>

            <%--function fn_openPage14() {--%>
            <%--    if (document.getElementById('accordion14').style.display === 'block') {--%>
            <%--        document.getElementById('accordion14').style.display = 'none';--%>
            <%--    } else {--%>
            <%--        document.getElementById('accordion14').style.display = 'block';--%>
            <%--    }--%>
            <%--}--%>

            <%--function inspectionComplete() {--%>
            <%--    var params = {--%>
            <%--        "product_id": '${consignmentVO.product_id}'--%>
            <%--    }--%>

            <%--    $.ajax({--%>
            <%--        url : "${pageContext.request.contextPath}/consignment/inspectionComplete.json",--%>
            <%--        type : "POST",--%>
            <%--        data: params,--%>
            <%--        success : function(result) {--%>
            <%--            if (result.resultCode == "success") {--%>
            <%--                alert(result.message)--%>
            <%--                move('inspection.do', '');--%>
            <%--            } else if (result.resultCode == "fail") {--%>
            <%--                alert(result.message);--%>
            <%--            } else {--%>
            <%--                alert(result.message);--%>
            <%--            }--%>
            <%--        }--%>
            <%--    });--%>
            <%--}--%>

        </script>

        <!-- BEGIN: Page JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<%--        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>--%>
<%--        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>--%>
        <!-- END: Page JS-->
</body>
<!-- END: Body-->

</html>