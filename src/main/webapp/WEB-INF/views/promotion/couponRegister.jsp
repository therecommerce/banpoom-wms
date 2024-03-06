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
            <h3 class="content-header-title mb-2">쿠폰 등록</h3>
        </div>
        <hr>
        <div class="content-body">

            <section>
                <div id="accordionWrap15" role="tablist" aria-multiselectable="true">

                    <div class="card">
                        <div class="card-header pb-0">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4 class="card-title blue">쿠폰 등록 정보</h4>
                                </div>
                            </div>
                        </div>
                        <hr class="bg-blue mb-0">

                        <div class="card-content">
                            <div class="card-body">
                                <div class="card-text">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰유형<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <div class="form-group row col-md-4 border-bottom-0">
                                                        <label class="sr-only" for="searchValue"></label>
                                                        <select id="selectCouponType" name="interested" class="form-control border-blue-grey" onchange="changeTypeForm()">
                                                            <option value="주문금액 적용 쿠폰" selected="">주문 적용 쿠폰</option>
                                                            <option value="배송비 적용 쿠폰">배송료 적용 쿠폰</option>
                                                        </select>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 지급 방식<span
                                                        class="danger">*</span></dt>
                                                <dd class="row col-sm-10">
                                                    <div class="form-group col-md-4 border-bottom-0">
                                                        <label class="sr-only" for="searchValue"></label>
                                                        <select id="selectGivingType" name="interested"
                                                                class="form-control border-blue-grey" onchange="changeGivingForm()">
                                                            <option value="다운로드" selected="">다운로드</option>
                                                            <option value="자동 지급">자동 지급</option>
                                                            <option value="쿠폰 코드">쿠폰 코드</option>
                                                        </select>
                                                    </div>
                                                    <div id="couponCode" class="form-group col-md-3 border-bottom-0" style="display: none">
                                                        <input type="text" id="coupon_code" class="form-control">
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰명<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <div class="form-group row col-md-4 border-bottom-0">
                                                    <input type="text" id="coupon_name" class="form-control border-blue-grey">
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 적용대상<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <div class="form-group col-md-12 border-bottom-0">

                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio20" id="radio1" value="전체 카테고리" checked="true" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio1">전체 카테고리</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" class="custom-control-input" name="colorRadio20" id="radio2" value="카테고리 선택" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio2">카테고리 선택</label>
                                                            </div>
                                                            <div class="row col-md-6">
                                                                <div class="form-group border-bottom-0">
                                                                    <select id="topName" class="search_tag form-control-sm border-blue-grey width-100" name="14" onchange="changeMiddle();" disabled>
                                                                        <option selected value="">전체</option>
                                                                        <c:forEach items="${categoryName}" var="categoryName">
                                                                            <c:if test="${categoryName.parent_category_id == ''}">
                                                                                <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                                                            </c:if>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group border-bottom-0">
                                                                    <select id="middle" class="search_tag form-control-sm border-blue-grey width-100" name="13" disabled>
                                                                        <option selected value="">전체</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" class="custom-control-input" name="colorRadio20" id="radio3" value="만원샵" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio3">만원샵</label>
                                                            </div>
                                                        </div>
                                                    </div>



                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">할인율<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <div class="form-group col-md-12 border-bottom-0" id="disCountOrder">
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio1" id="radio14" value="정률 할인" checked="true" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio14">정률 할인</label>
                                                            </div>
                                                            <div class="row col-md-6">
                                                                <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="sale_percent" class="form-control-sm border-grey-blue col-md-1"
                                                                       placeholder="" name="">%, 최대
                                                                <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="sale_limit" class="form-control-sm border-blue-grey col-md-1"
                                                                       placeholder="" name="">원 까지 할인
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio1" id="radio15" value="정액 할인" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio15">정액 할인</label>
                                                            </div>
                                                            <div class="row col-md-6">
                                                                <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="sale_price" class="form-control-sm border-blue-grey col-md-1"
                                                                       placeholder="" name="" disabled>원 할인
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group col-md-12 border-bottom-0" id="disCountShipping" style="display: none">
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio11"
                                                                       id="radio4" onclick="" checked="true" value="배송비 무료" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio4">배송비 무료</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio11"
                                                                       id="radio5" value="배송비에서 정액 할인" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio5">배송비에서 정액 할인</label>
                                                            </div>
                                                            <div class="row col-md-6">
                                                                <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="shipping_sale_price" class="form-control-sm border-blue-grey col-md-1"
                                                                       placeholder="" name="" disabled>원 할인
                                                            </div>
                                                        </div>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">최소 주문금액<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <div class="form-group col-md-12 border-bottom-0">

                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio2" id="radio6" value="제한없음" checked="true" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio6">제한없음</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio2" id="radio7" value="제한있음" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio7">
                                                                    <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="minimum_price" class="form-control-sm border-blue-grey" disabled>
                                                                </label>
                                                            </div>
                                                            <div class="row col-md-6">
                                                                &nbsp;이상 구매시 사용 가능
                                                            </div>
                                                        </div>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">복수 발급 가능 여부<span class="danger">*</span></dt>
                                                <dd class="col-sm-10 content-left">
                                                    <div class="form-group col-md-12 border-bottom-0">
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio3" id="radio8" value="복수 발급 불가" checked="true" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio8">복수 발급 불가</label>
                                                            </div>
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio3" id="radio9" value="복수 발급 가능" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio9">
                                                                    복수 발급 가능
                                                                </label>
                                                            </div>
                                                            <div class="row col-md-4">
                                                                <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="issuance_count" class="form-control-sm border-blue-grey col-md-2" disabled>개 까지 발급 가능
                                                            </div>
                                                        </div>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">타 쿠폰 중복 여부<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <div class="form-group col-md-12 border-bottom-0">
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio4" id="radio10" value="중복 사용 불가" checked="true">
                                                                <label class="custom-control-label" for="radio10">중복 사용 불가</label>
                                                            </div>
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio4" id="radio11" value="중복 사용 가능">
                                                                <label class="custom-control-label" for="radio11">중복 사용 가능</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">발급 대상 등급<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <div class="form-group col-md-12 border-bottom-0">
                                                        <div class="col-md-9" id="checkbox">
                                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                <input type="checkbox" class="custom-control-input"
                                                                       name="selectAll1" checked id="selectAll1" value="VVip">
                                                                <label class="custom-control-label" for="selectAll1">VVip</label>
                                                            </div>
                                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                <input type="checkbox" class="custom-control-input"
                                                                       name="selectAll1" id="checkSearch1" value="Vip">
                                                                <label class="custom-control-label" for="checkSearch1">Vip</label>
                                                            </div>
                                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                <input type="checkbox" class="custom-control-input"
                                                                       name="selectAll1" id="checkSearch2" value="Gold">
                                                                <label class="custom-control-label" for="checkSearch2">Gold</label>
                                                            </div>
                                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                <input type="checkbox" class="custom-control-input"
                                                                       name="selectAll1" id="checkSearch3" value="Silver">
                                                                <label class="custom-control-label" for="checkSearch3">Silver</label>
                                                            </div>
                                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                <input type="checkbox" class="custom-control-input"
                                                                       name="selectAll1" id="checkSearch4" value="Family">
                                                                <label class="custom-control-label" for="checkSearch4">Family</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 유효 기간<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <div class="form-group col-md-12 border-bottom-0">

                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio5" id="radio12" value="발급일로부터" checked="true" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio12">발급일로부터</label>
                                                            </div>
                                                            <div class="row col-md-6">
                                                                <input type="text" id="day" class="form-control-sm border-blue-grey col-md-1">일
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="custom-control custom-radio mr-1">
                                                                <input type="radio" class="custom-control-input" name="colorRadio5" id="radio13" value="기간 직접 선택" onchange="checkBoxChange(this)">
                                                                <label class="custom-control-label" for="radio13">직접 기간 선택</label>
                                                            </div>
                                                        </div>

                                                        <div class="row col-md-12">
                                                            <div class="d-flex justify-content-start align-items-start p-0">
                                                                <div class="d-flex align-items-center justify-content-start">
                                                                    <div class="input-group">
                                                                        <input type='text' id="start_dt" name="9" class="search_tag form-control pickadate-selectors" placeholder="" value="" disabled/>
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
                                                                               placeholder="" value="" disabled/>
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
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 표시 이미지<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <div class="form-group col-md-12 border-bottom-0">
                                                        <input type="file" class="form-control-file" id="basicInputFile" accept="img/*" multiple="multiple" onchange="addImageFile(this, 10);">
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 유의사항<span
                                                        class="danger">*</span></dt>
                                                <dd class="col-sm-10">
                                                    <textarea class="form-control" id="coupon_memo" rows="5"></textarea>
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
                    <button type="submit" class="btn btn-blue btn-min-width" onclick="insertCoupon();">저장</button>
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

        <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

        <!-- BEGIN: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
        <%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>--%>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
        <!-- END: Page Vendor JS-->

            <script type="text/javascript">
                let percent = 0;

                 $(document).ready(function () {

                 });

                 function insertCoupon() {

                     var params = {
                         'coupon_type': $("#selectCouponType option:selected").val(),
                         'coupon_classification': $("#selectGivingType option:selected").val(),
                         'coupon_name': $('#coupon_name').val(),
                         'coupon_category': $('input[name=colorRadio20]:checked').val(),
                         'minimum_type' : $('input[name=colorRadio2]:checked').val(),
                         'duplicate_type' : $('input[name=colorRadio3]:checked').val(),
                         'overlap_use': $('input[name=colorRadio4]:checked').val(),
                         'reg_dt_type': $('input[name=colorRadio5]:checked').val(),
                         'coupon_memo': $('#coupon_memo').val(),
                     }


                     if(params.coupon_type == '주문금액 적용 쿠폰'){
                         params.sale_type = $('input[name=colorRadio1]:checked').val();
                     } else if (params.coupon_type == '배송비 적용 쿠폰'){
                         params.sale_type = $('input[name=colorRadio11]:checked').val();
                     }

                     switch (params.sale_type){
                         case '정액 할인' :
                             params.sale_price = $('#sale_price').val();
                             break;
                         case '정률 할인' :
                             params.sale_percent =  $('#sale_percent').val();
                             params.sale_limit = $('#sale_limit').val();
                             break;
                         case '배송비에서 정액 할인' :
                             params.sale_price = $('#shipping_sale_price').val();
                             break;
                     }

                     if(params.coupon_classification == '쿠폰 코드'){
                         params.coupon_code = $('#coupon_code').val();
                     }

                     if (params.coupon_category == '카테고리 선택') {
                         params.coupon_parent_category_id = $("#topName option:selected").val();
                         params.coupon_category_id = $("#middle option:selected").val();
                     }

                     if(params.minimum_type == '제한있음'){
                         params.minimum_price =  $('#minimum_price').val();
                     }

                     if(params.duplicate_type == '복수 발급 가능'){
                         params.issuance_count =  $('#issuance_count').val();
                     }

                     if(params.reg_dt_type == '발급일로부터'){
                         params.day =  $('#day').val();
                     } else if (params.reg_dt_type == '기간 직접 선택'){
                         params.start_dt =  $('#start_dt').val();
                         params.end_dt =  $('#end_dt').val();

                     }

                     if (params.coupon_name == null || params.coupon_name == '') {
                         alert("쿠폰명을 입력해주세요");
                         return false;
                     } else if ($("input[type=radio][name=colorRadio1]:checked").val() == '정률 할인') {
                         if ($('#sale_percent').val() == null || $('#sale_percent').val() == '') {
                             alert("할인를 퍼센트를 입력하세요.");
                             return false;
                         } else if ($('#sale_limit').val() == null || $('#sale_limit').val() == '') {
                             alert("할인률 금액을 입력하세요.");
                             return false;
                         }
                     } else if ($("input[type=radio][name=colorRadio1]:checked").val() == '정액 할인') {
                         if ($('#sale_price').val() == null || $('#sale_price').val() == '') {
                             alert("할인 금액을 입력하세요.");
                             return false;
                         }
                     } else if ($("input[type=radio][name=colorRadio2]:checked").val() == '제한있음') {
                         if ($('#minimum_price').val() == null || $('minimum_price').val() == '') {
                             alert("최소 주문금액을 입력하세요");
                             return false;
                         }
                     } else if ($("input[type=radio][name=colorRadio3]:checked").val() == '복수 발급 가능') {
                         if ($('#issuance_count').val() == null || $('issuance_count').val() == '') {
                             alert("발급가능 갯수를 입력하세요.");
                             return false;
                         }
                     } else if ($("input[type=radio][name=colorRadio5]:checked").val() == '발급일로부터') {
                         if ($('#day').val() == null || $('day').val() == '') {
                             alert("쿠폰유효기간을 입력하세요.");
                             return false;
                         }
                     } else if ($("input[type=radio][name=colorRadio5]:checked").val() == '기간 직접 선택') {
                         if ($('#start_dt').val() == null || $('start_dt').val() == '') {
                             alert("쿠폰 유효기간을 선택하세요.");
                             return false;
                         } else if ($('#end_dt').val() == null || $('end_dt').val() == '') {
                             alert("쿠폰 유효기간을 선택하세요.");
                             return false;
                         }
                     } else if ($('#coupon_memo').val() == null || $('coupon_memo').val() == '') {
                         alert("쿠폰 유의사항을 입력하세요.");
                         return false;
                     }

                         // 'issuance_grade_list': gradeArray
                     var gradeArray= [];

                     $("input[name=selectAll1]").each(function() {
                         if(this.checked) {
                             gradeArray.push($(this).val());
                         }
                     });
                     params.issuance_grade = gradeArray.toString();

                     $.ajax({
                         url : "${pageContext.request.contextPath}/promotion/insertCoupon.json",
                         type : "POST",
                         data: params,
                         success : function(result) {
                             if (result.resultCode == "success") {
                                 alert(result.message)
                                 move("coupon.do", '');
                             } else if (result.resultCode == "fail") {
                                 alert(result.message);
                             } else {
                                 alert(result.message);
                             }
                         }
                     });
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

                function changeTypeForm(){
                    if($('#selectCouponType').val() == '주문금액 적용 쿠폰'){
                        $('#disCountOrder').css('display','');
                        $('#disCountShipping').css('display','none');
                    } else if($('#selectCouponType').val() == '배송비 적용 쿠폰'){
                        $('#disCountShipping').css('display','');
                        $('#disCountOrder').css('display','none');
                    }
                }

                function changeGivingForm(){
                    if($('#selectGivingType').val() == '쿠폰 코드'){

                        $('#couponCode').css('display','');
                    } else {
                        $('#couponCode').css('display','none');
                    }
                }


                function checkBoxChange(event){
                    changeForm($(event).val());
                }

                function changeForm(value) {
                    switch (value) {
                        case '전체 카테고리' :
                        case '만원샵' :
                            $('#topName').attr("disabled", true);
                            $('#middle').attr("disabled", true);
                            $('#topName').val("").prop("selected", true);
                            $('#middle').val("").prop("selected", true);
                            break;
                        case '카테고리 선택' :
                            $('#topName').removeAttr("disabled");
                            $('#middle').removeAttr("disabled");
                            break;
                        case '정률 할인' :
                            $('#sale_price').attr("disabled", true);
                            $('#sale_percent').removeAttr("disabled");
                            $('#sale_limit').removeAttr("disabled");
                            $('#sale_price').val("")
                            break;
                        case '정액 할인' :
                            $('#sale_percent').attr("disabled", true);
                            $('#sale_limit').attr("disabled", true);
                            $('#sale_price').removeAttr("disabled");
                            $('#sale_percent').val("")
                            $('#sale_limit').val("")
                            break;
                        case '배송비 무료' :
                            $('#shipping_sale_price').attr("disabled", true);
                            $('#shipping_sale_price').val("")
                            break;
                        case '배송비에서 정액 할인' :
                            $('#shipping_sale_price').removeAttr("disabled");
                            break;
                        case '제한없음' :
                            $('#minimum_price').attr("disabled", true);
                            $('#minimum_price').val("")
                            break;
                        case '제한있음' :
                            $('#minimum_price').removeAttr("disabled");
                            break;
                        case '복수 발급 불가' :
                            $('#issuance_count').attr("disabled", true);
                            $('#issuance_count').val("")
                            break;
                        case '복수 발급 가능' :
                            $('#issuance_count').removeAttr("disabled");
                            break;
                        case '발급일로부터' :
                            $("#start_dt").pickadate('picker').set('select', null);
                            $("#end_dt").pickadate('picker').set('select', null);
                            $('#start_dt').attr("disabled", true);
                            $('#end_dt').attr("disabled", true);
                            $('#day').removeAttr("disabled");
                            break;
                        case '기간 직접 선택' :
                            $('#start_dt').removeAttr("disabled");
                            $('#end_dt').removeAttr("disabled");

                            $('#day').attr("disabled", true);
                            $('#day').val("")
                            break;
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