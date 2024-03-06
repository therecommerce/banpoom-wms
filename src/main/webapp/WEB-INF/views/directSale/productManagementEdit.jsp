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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/vertical-timeline.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/switch.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-users.css">
    <!-- END: Custom CSS-->

    <style>
        select option[value=""][disabled] {
            display: none;
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
        <div class="content-header">
            <h3 class="content-header-title mb-2">상품 수정</h3>
        </div>
        <hr>
        <div class="content-body">
            <!-- 상태 정보 -->
            <section>
                <div class="row">
                    <div class="col-12">
                        <h4 class="text-uppercase mb-1">${productDetail.product_name} (${productDetail.product_id})</h4>
                    </div>
                    <div class="col-12">
                        <div id="accordionWrap1" role="tablist" aria-multiselectable="true">
                            <div class="card border-blue accordion custom collapse-icon bg-blue bg-lighten-5 mb-4">
                                <c:choose>
                                    <c:when test="${productDetail.product_state == '판매중' && productDetail.diffDate <= '22'}">
                                        <div class="heading-elements">
<%--                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" onclick="updateProductStatus('판매중지')">판매중지</button>--%>
<%--                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" onclick="updateProductStatus('품절')">품절</button>--%>
                                        </div>
                                        <div id="heading11" class="card-header" data-toggle="collapse" href="#accordion11"
                                             aria-expanded="true" aria-controls="accordion11">
                                            <div class="mb-1">
                                                <span class="badge bg-success width-50">판매중</span>
                                                <span class="ml-50">판매 등록일 ${productDetail.product_selling_dt} (${productDetail.diffDate}일 경과)</span>
                                                <div class="float-right" style="margin-right: 30px;">
                                                    <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" data-toggle="modal"data-target="#modalSaleStop" disabled>판매중지</button>
                                                    <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" data-toggle="modal"data-target="#modalSoldOut" disabled>품절</button>
                                                </div>
                                            </div>
                                        </div>
                                    </c:when>
                                    <c:when test="${productDetail.product_state == '판매중' && productDetail.diffDate > '23'}">
                                        <div class="heading-elements">
<%--                                            <button type="button" class="btn btn-sm btn-outline-blue btn-min-width">판매연장</button>--%>
<%--                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" onclick="updateProductStatus('판매중지')">판매중지</button>--%>
<%--                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" onclick="updateProductStatus('품절')">품절</button>--%>
                                        </div>
                                        <div id="heading11" class="card-header" data-toggle="collapse" href="#accordion11"
                                             aria-expanded="true" aria-controls="accordion11">
                                            <div class="mb-1">
                                                <span class="badge bg-success">판매중</span>
                                                <span class="ml-50">판매 등록일 ${productDetail.product_selling_dt} (${productDetail.diffDate}일 경과)</span>
                                                <div class="float-right" style="margin-right: 30px;">
                                                    <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" data-toggle="modal"data-target="#modalSaleExtention" disabled>판매연장</button>
                                                    <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" data-toggle="modal"data-target="#modalSaleStop" disabled>판매중지</button>
                                                    <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" data-toggle="modal"data-target="#modalSoldOut" disabled>품절</button>
                                                </div>
                                            </div>
                                            <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                                <i class="feather icon-alert-circle"></i> 해당 상품은 판매 기한이(30일)이 지나는 경우 등록된 상품이 자동으로
                                                삭제됩니다. 판매 연장 시 30일이 추가 연장됩니다.
                                                <a href="#" class="alert-link ml-2">판매 정책 확인 <i class="fa fa-angle-right"></i></a>
                                            </div>
                                        </div>
                                    </c:when>
                                    <c:when test="${productDetail.product_state == '판매중지'}">
                                        <div class="heading-elements">
<%--                                            <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" onclick="updateProductStatus('판매중')">판매중으로 변경</button>--%>
<%--                                            <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" onclick="updateProductStatus('품절')">품절</button>--%>
                                        </div>
                                        <div id="heading11" class="card-header" data-toggle="collapse" href="#accordion11"
                                             aria-expanded="true" aria-controls="accordion11">
                                                <div class="mb-1">
                                                    <span class="badge bg-blue-grey">판매중지</span>
                                                    <span class="ml-50">판매 등록일 ${productDetail.product_selling_dt} (${productDetail.diffDate}일 경과)</span>
                                                    <div class="float-right" style="margin-right: 30px;">
                                                    <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" data-toggle="modal"data-target="#modalSelling" disabled>판매중으로 변경</button>
                                                    <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" data-toggle="modal"data-target="#modalSoldOut" disabled>품절</button>
                                                    </div>
                                                </div>
                                                <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                                <i class="feather icon-alert-circle"></i> 해당 상품은 판매 기한이(30일) 지나 자동으로 판매중지 되었습니다.
                                                <a href="#" class="alert-link ml-2">판매 정책 확인 <i class="fa fa-angle-right"></i></a>
                                            </div>
                                        </div>
                                    </c:when>
                                    <c:when test="${productDetail.product_state == '품절'}">
                                        <div id="heading11" class="card-header" data-toggle="collapse" href="#accordion11"
                                             aria-expanded="true" aria-controls="accordion11">
                                            <div class="mb-1">
                                                <span class="badge bg-danger">품절</span>
                                                <!-- <span class="ml-50">판매 등록일  2022-07-14 (30일 경과)</span> -->
                                            </div>
                                            <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                                <i class="feather icon-alert-circle"></i> 재고 수량이 0개로 품절 상태입니다.
                                                <a href="#" class="alert-link ml-2">주문/배송 현황 <i class="fa fa-angle-right"></i></a>
                                            </div>
                                        </div>
                                    </c:when>
                                </c:choose>
                                <div id="accordion11" role="tabpanel" data-parent="#accordionWrap1"
                                     aria-labelledby="heading11" class="collapse">
                                    <hr class="bg-blue mx-2">
                                    <div class="card-content">
                                        <div class="card-body">
                                            <div class="widget-timeline">
                                                <ul>
                                                    <c:forEach items="${historyVOList}" var="historyVO" varStatus="i">
                                                        <li class="<c:choose><c:when test="${i.last}">timeline-items timeline-icon-blue</c:when><c:otherwise>timeline-items timeline-icon-outline-secondary</c:otherwise></c:choose>">
                                                            <span class="timeline-title mr-1">${historyVO.reg_dt}</span>
                                                            <span class="text-muted">${historyVO.state}</span>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 상품정보 -->
                <input type="hidden" id="product_id" name="product_id" value="${productDetail.product_id}" />
            <input type="hidden" id="product_state" name="product_state" value="${productDetail.product_state}" />
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">상품정보</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <p><i class="feather icon-alert-circle"></i> 등록할 상품의 기본정보를 입력하세요.</p>
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-bold-700 text-left"
                                               for="switch1">상품상태 <span class="danger">*</span></label>
                                        <div class="col-md-4">
                                            <div class="float-left">
                                                <button id="switch1" onclick="javascript:clickBtn('판매중');" disabled>판매중</button>
                                                <button id="switch2" onclick="javascript:clickBtn('판매중지');" disabled>판매중지</button>
                                                <button id="switch3" onclick="javascript:clickBtn('품절');" disabled>품절</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-1" for="topName">카테고리 <span
                                            class="danger">*</span></label>
                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="form-group col-md-6 mb-1">
                                                    <label class="sr-only" for="topName"></label>
                                                    <select id="topName" class="form-control" onchange="changeMiddle();" disabled>
                                                        <option disabled selected value="">1차 카테고리</option>
                                                        <c:forEach items="${categoryName}" var="categoryName">
                                                            <c:if test="${categoryName.parent_category_id == ''}">
                                                                <c:choose>
                                                                    <c:when test="${categoryName.category_name == producuListVO.maxName}">
                                                                        <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                                                    </c:when>
                                                                    <c:when test="${categoryName.category_name != producuListVO.maxName}">
                                                                        <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                                                    </c:when>
                                                                </c:choose>
                                                            </c:if>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-6 mb-1">
                                                    <select id="middle" class="form-control" disabled>
                                                        <option>2차 카테고리</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-bold-700 text-left"
                                               for="product_name">상품명 <span class="danger">*</span></label>
                                        <div class="col-md-11">
                                            <input type="text" class="form-control" id="product_name" name="product_name"
                                                   placeholder="" value="${productDetail.product_name}" disabled>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-bold-700 text-left"
                                               for="seller_url">판매사이트 주소</label>
                                        <div class="col-md-11">
                                            <input type="text" class="form-control" id="seller_url" name="seller_url"
                                                   placeholder="" value="${productDetail.seller_url}" disabled>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-bold-700 text-left"
                                               for="eventRegInput5">상품이미지</label>
                                        <div class="col-md-11">
                                            <input type="file" class="form-control-file" id="basicInputFile">
                                            <div class="card-text">
                                                <ul class="list-unstyled">
                                                    <li>* 크기: 최소 100px 이상 * 용량 10MB 이하 * 파일 확장자 JPG, JPEG, GIF, BMP,
                                                        PNG, 동영상 확장자 지원</li>
                                                    <li>* 파일은 최소 3장에서 최대 10장까지 업로드 가능</li>
                                                    <li>* 업로드 파일 순서대로 상품 이미지가 제공되며 첫번째 이미지가 대표 이미지로 제공</li>
                                                    <li>* 파일 업로드 후 드래그애드롭으로 순서 변경 가능</li>
                                                </ul>

                                                <ul class="list-inline">
                                                    <li class="list-inline-item">
                                                        <div class="position-absolute mt-n25">
                                                                <span
                                                                        class="badge badge-pill badge-success badge-square">대표</span>
                                                        </div>
                                                        <div
                                                                class="bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
                                                            <div class="text-center">
                                                                <img src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-18.png"
                                                                     class="rounded" alt="profile image" height="64"
                                                                     width="64">
                                                                <p class="mt-50 mb-0">파일명:확장자</p>
                                                            </div>

                                                            <div
                                                                    class="delete-and-discount-config h-100 ml-50 d-flex flex-column justify-content-between">
                                                                    <span
                                                                            class="cursor-pointer d-flex justify-content-center align-items-center">
                                                                        <i
                                                                                class="fa fa-times-circle-o font-size-increase danger"></i>
                                                                    </span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                                <ul class="list-inline">
                                                    <li class="list-inline-item">
                                                        <div
                                                                class="bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
                                                            <div class="text-center">
                                                                <img src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-18.png"
                                                                     class="rounded" alt="profile image" height="64"
                                                                     width="64">
                                                                <p class="mt-50 mb-0">파일명:확장자</p>
                                                            </div>
                                                            <div
                                                                    class="delete-and-discount-config h-100 ml-50 d-flex flex-column justify-content-between">
                                                                    <span
                                                                            class="cursor-pointer d-flex justify-content-center align-items-center">
                                                                        <i
                                                                                class="fa fa-times-circle-o font-size-increase danger"></i>
                                                                    </span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 옵션 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">옵션</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <p><i class="feather icon-alert-circle"></i> 등록할 상품의 옵션을 설정하세요.</p>
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-bold-700 text-left"
                                               for="eventRegInput2">옵션 설정 <span class="danger">*</span></label>
                                        <div class="col-md-4">
                                            <div class="d-inline-block custom-control custom-radio mr-1">
                                                <input type="radio" class="custom-control-input" name="colorRadio2"
                                                       id="radio21" checked="" disabled>
                                                <label class="custom-control-label" for="radio21">설정 안함</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" name="colorRadio2"
                                                       id="radio22" disabled>
                                                <label class="custom-control-label" for="radio22">설정함</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="group row">
                                        <div class="col-md-6">
                                            <div class="row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="eventRegInput1">판매 가격 <span class="danger">*</span></label>
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder=""
                                                               aria-label="" id="product_price" name="product_price" value="${productDetail.product_price}" disabled>
                                                        <div class="input-group-append">
                                                            <span class="input-group-text">원</span>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-1 align-self-center">
                                                    <button type="button" class="btn btn-icon btn-pure p-0"
                                                            data-toggle="tooltip" data-placement="right" title=""
                                                            data-original-title="참고) 판매가격 기입방법

                                                            - A등급: 상품가격의 70~60% 권장
                                                            - B등급: 상품가격의 50~40% 권장
                                                            - C등급: 상품가격의 40~30% 권장">
                                                        <i class="feather icon-help-circle"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="eventRegInput2">재고수량 <span class="danger">*</span></label>
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder=""
                                                               aria-label="" id="product_count" name="product_count" value="${productDetail.product_count}" disabled>
                                                        <div class="input-group-append">
                                                            <span class="input-group-text">개</span>
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
            </section>

            <!-- 상품 상세 설명 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">상품 상세 설명</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <p><i class="feather icon-alert-circle"></i> 등록할 상품의 상세 설명을 입력하세요.</p>
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <div class="form-group">
                                        <div class="controls">
                                            <label class="label-control text-bold-700" for="user-email">작업유형 <span
                                                    class="danger">*</span></label>

                                            <div class="text-left">
                                                <input type="checkbox" class="switch" id="switch5"
                                                       data-group-cls="btn-group-sm" data-on-label="에디터 작성"
                                                       data-off-label="이미지 업로드" id="switch12" checked />
                                            </div>

                                        </div>
                                    </div>

                                    <div class="card border-blue-grey border-lighten-2 mb-0">
                                        <div class="text-center">
                                            <div class="card-body h-150">
                                                <p class="text-muted">
                                                        <span class="badge badge-success round">
                                                            <i
                                                                    class="font-medium-2 icon-line-height feather icon-check"></i>
                                                        </span> 작성된 상세 설명이 있습니다.
                                                </p>
                                                <a href="#"
                                                   class="btn btn-sm btn-outline-blue btn-min-width">수정하기</a>
                                            </div>
                                        </div>
                                    </div>
                                    <p><small class="blue">이미지 권장 사이즈 : 가로 ## px x 세로 #### px 이하 10MB 이하의 JPG, PNG
                                        파일</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 배송 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">배송</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="row mb-1">
                                <div class="col-md-6">
                                        <span class="float-left"><i class="feather icon-alert-circle"></i> 배송정보를
                                            설정하세요.</span>
                                    <span class="float-right">
                                            <a href="#" class="card-link">판매자 주소록 <i class="fa fa-angle-right"></i></a>
                                        </span>
                                </div>
                            </div>
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="sample6_postcode">출고지 <span class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <div class="input-group mb-1">
                                                        <input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" value="${productDetail.forwarding_destination_zip}" disabled>
                                                        <div class="input-group-append" id="button-addon2">
                                                            <input type="button" class="btn btn-blue" onclick="sample6_execDaumPostcode()" value="주소검색" disabled><br>
                                                        </div>
                                                    </div>
                                                    <input type="text" class="form-control mb-1" id="sample6_address" placeholder="주소" value="${productDetail.forwarding_destination_addr1}" disabled><br>
                                                    <input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소" value="${productDetail.forwarding_destination_addr2}" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="delivery_company">택배사 <span class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <select id="delivery_company" name="delivery_company" class="form-control" disabled>
                                                        <option value="반품구조대">반품구조대</option>
                                                        <option value="한진택배">한진택배</option>
                                                        <option value="CJ대한통운">CJ대한통운</option>
                                                        <option value="우체국">우체국</option>
                                                        <option value="롯데택배">롯데택배</option>
                                                        <option value="로젠택배">로젠택배</option>
                                                        <option value="일양택배">일양택배</option>
                                                        <option value="경동택배">경동택배</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="delivery_type">배송비 <span class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <div class="row">
                                                        <div class="form-group col-md-6 mb-1">
                                                            <input type="hidden" id="type" name="type" value="${productDetail.delivery_type}" />
                                                            <label class="sr-only" for="delivery_type">유료배송</label>
                                                            <select id="delivery_type" name="delivery_type" class="form-control" disabled>
                                                                <option value="유료배송">유료배송
                                                                <option value="a">a</option>
                                                                <option value="b">b</option>
                                                                <option value="c">c</option>
                                                                </option>
                                                            </select>
                                                        </div>

                                                        <div class="form-group col-md-6 mb-1">
                                                            <div class="input-group">
                                                                <input type="text" class="form-control" id="delivery_charge"
                                                                       placeholder="" aria-label="" name="" value="${productDetail.delivery_charge}" disabled>
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text">원</span>
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
                    </div>
                </div>
            </section>

            <!-- 반품/교환 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">반품/교환</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="row mb-1">
                                <div class="col-md-6">
                                        <span class="float-left"><i class="feather icon-alert-circle"></i> 반품/교환지를
                                            설정하세요</span>
                                    <span class="float-right">
                                            <a href="#" class="card-link">판매자 주소록 <i class="fa fa-angle-right"></i></a>
                                        </span>
                                </div>
                            </div>
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="sample6_postcode1">반품/교환지 <span
                                                        class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <div class="input-group mb-1">
                                                        <input type="text" class="form-control" id="sample6_postcode1" placeholder="우편번호" value="${productDetail.return_location_zip}" disabled>
                                                        <div class="input-group-append" id="button-addon2">
                                                            <input type="button" class="btn btn-blue" onclick="sample6_execDaumPostcode1();" value="주소검색" disabled><br>
                                                        </div>
                                                    </div>
                                                    <input type="text" class="form-control mb-1" id="sample6_address1" placeholder="주소" value="${productDetail.return_location_addr1}" disabled><br>
                                                    <input type="text" class="form-control" id="sample6_detailAddress1" placeholder="상세주소" value="${productDetail.return_location_addr2}" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="return_charge">반품 배송비 <span
                                                        class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder=""
                                                               aria-label="" name="" id="return_charge" value="${productDetail.return_charge}" disabled>
                                                        <div class="input-group-append">
                                                            <span class="input-group-text">원</span>
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
            </section>

            <div class="row">
                <div class="col-md-6">
                    <button type="button" class="btn btn-outline-secondary btn-min-width">미리보기</button>
                </div>
                <div class="col-md-6">
                    <div class="float-right">
                        <button type="button" class="btn btn-light btn-min-width mr-1" onclick="move('productManagement.do', '');">취소</button>
                        <button type="button" class="btn btn-blue btn-min-width" onclick="fn_updateProductInfo();">완료</button>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade text-center" id="modalSoldOut" tabindex="-1" role="dialog" aria-labelledby="myModalLabel40" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header bg-blue-grey bg-lighten-5">
                    <h3 class="modal-title" id="modal-add-title"> 품절 </h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>
                        품절 상태로 변경하시겠습니까?<br>
                        변경 시 고객의 앱화면에 상품이 노출되지 않습니다.
                    </p>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" aria-label="Close"> 취소 </button>
                    <a type="button" class="btn btn-blue btn-min-width" onclick="updateProductStatus('품절')"> 확인 </a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade text-center" id="modalSaleStop" tabindex="-1" role="dialog" aria-labelledby="myModalLabel41" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header bg-blue-grey bg-lighten-5">
                    <h3 class="modal-title" id="modal-add-title"> 판매중지 </h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>
                        판매중지로 변경하시겠습니까?<br>
                        변경 시 고객의 앱화면에 상품이 노출되지 않습니다.
                    </p>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" aria-label="Close"> 취소 </button>
                    <a type="button" class="btn btn-blue btn-min-width" onclick="updateProductStatus('판매중지')"> 확인 </a>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade text-center" id="modalSelling" tabindex="-1" role="dialog" aria-labelledby="myModalLabel42" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header bg-blue-grey bg-lighten-5">
                    <h3 class="modal-title" id="modal-add-title"> 판매중 </h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>
                        판매중으로 변경하시겠습니까?<br>
                    </p>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" aria-label="Close"> 취소 </button>
                    <a type="button" class="btn btn-blue btn-min-width" onclick="updateProductStatus('판매중')"> 확인 </a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade text-center" id="modalSaleExtention" tabindex="-1" role="dialog" aria-labelledby="myModalLabel43" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header bg-blue-grey bg-lighten-5">
                    <h3 class="modal-title" id="modal-add-title"> 판매연장 </h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>
                        판매연장 하시겠습니까?<br>
                        판매 연장 시 30일 판매 가능 기간으로 설정됩니다.
                    </p>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" aria-label="Close"> 취소 </button>
                    <a type="button" class="btn btn-blue btn-min-width" data-dismiss="modal" aria-label="Close"> 확인 </a>
                </div>
            </div>
        </div>
    </div>
</div>
        <!-- END: Content-->

        <div class="sidenav-overlay"></div>
        <div class="drag-target"></div>
        <jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <!-- BEGIN: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
        <!-- END: Page Vendor JS-->

        <script type="text/javascript">

            $(document).ready(function() {
                clickBtn('${productDetail.product_state}');
                $('#delivery_company').val('${productDetail.delivery_company}');
                $('#topName').val(${productDetail.parent_category_id});

                var htmlString = '';
                var params = {
                    'category_id': document.getElementById('topName').options[document.getElementById('topName').selectedIndex].value
                }
                $.ajax({
                    url : "${pageContext.request.contextPath}/common/category.json",
                    type : "POST",
                    data: params,
                    success : function(result) {
                        for (var i=0; i<result.categoryList.length; i++) {
                            htmlString += '<option + value="'+result.categoryList[i].category_id + '">' + result.categoryList[i].category_name + '</option>';
                        }
                        document.getElementById("middle").innerHTML = htmlString;
                        $('#middle').val(${productDetail.category_id});
                    }
                });

            })

            function clickBtn(state) {
                // ar class_by_id = $('#test_id').attr('class');

                if (state == '판매중') {
                    $('#switch1').attr('class','btn btn-primary btn-min-width');
                    $('#switch2').attr('class','btn btn-outline-secondary btn-min-width');
                    $('#switch3').attr('class','btn btn-outline-secondary btn-min-width');
                } else if (state == '판매중지') {
                    $('#switch1').attr('class','btn btn-outline-secondary btn-min-width');
                    $('#switch2').attr('class','btn btn-danger btn-min-width');
                    $('#switch3').attr('class','btn btn-outline-secondary btn-min-width');
                } else if (state == '품절') {
                    $('#switch1').attr('class','btn btn-outline-secondary btn-min-width');
                    $('#switch2').attr('class','btn btn-outline-secondary btn-min-width');
                    $('#switch3').attr('class','btn btn-dark btn-min-width');
                }
            }

            function changeMiddle(){
                var htmlString = '';
                var params = {
                    'category_id': document.getElementById('topName').options[document.getElementById('topName').selectedIndex].value
                }
                $.ajax({
                    url : "${pageContext.request.contextPath}/common/category.json",
                    type : "POST",
                    data: params,
                    success : function(result) {
                        for (var i=0; i<result.categoryList.length; i++) {
                            htmlString += '<option + value="'+result.categoryList[i].category_id + '">' + result.categoryList[i].category_name + '</option>';
                        }
                        document.getElementById("middle").innerHTML = htmlString;
                    }
                });
            }

            function updateProductStatus(product_status) {
                var params = {
                    'product_state': product_status,
                    'product_id_list': document.getElementById('product_id').value
                }

                $.ajax({
                    url : "${pageContext.request.contextPath}/direct/updateProductStatus.json",
                    type : "POST",
                    data: params,
                    success : function(result) {
                        if (result.resultCode == "success") {
                            alert(result.message)
                            location.reload();
                        } else if (result.resultCode == "fail") {
                            alert(result.message);
                        } else {
                            alert(result.message);
                        }
                    }
                });
            }

            function fn_updateProductInfo() {
                var product_state = ''
                if ($('#switch1').attr('class') == 'btn btn-primary btn-min-width') {
                    product_state = '판매중';
                } else if($('#switch2').attr('class') == 'btn btn-danger btn-min-width') {
                    product_state = '판매중지';
                } else if ($('#switch3').attr('class') == 'btn btn-dark btn-min-width') {
                    product_state = '품절';
                }

                if (document.getElementById('product_state').value == '품절') {
                    if (product_state == '판매중') {
                        alert("품절상태에서 판매중으로 변경 불가능합니다.");
                        return;
                    } else if (product_state == '판매중지') {
                        alert("품절상태에서 판매중지로 변경 불가능합니다.");
                        return;
                    }
                }

                var params = {
                   "product_id": document.getElementById('product_id').value,
                    "category_id": $("#middle option:selected").val(),
                    "product_name": document.getElementById('product_name').value,
                    "seller_url": document.getElementById('seller_url').value,
                    "forwarding_destination_zip": document.getElementById('sample6_postcode').value,
                    "forwarding_destination_addr1": document.getElementById('sample6_address').value,
                    "forwarding_destination_addr2": document.getElementById('sample6_detailAddress').value,
                    "delivery_company": $("#delivery_company option:selected").text(),
                    "delivery_type": $("#delivery_type option:selected").text(),
                    "delivery_charge": document.getElementById('delivery_charge').value,
                    "return_location_zip": document.getElementById('sample6_postcode1').value,
                    "return_location_addr1": document.getElementById('sample6_address1').value,
                    "return_location_addr2": document.getElementById('sample6_detailAddress1').value,
                    "return_charge": document.getElementById('return_charge').value,
                    "product_count" : document.getElementById('product_count').value,
                    "product_price" : document.getElementById('product_price').value,
                    "product_state" : product_state
                }

                $.ajax({
                    url : "${pageContext.request.contextPath}/direct/updateDirectProductInfo.json",
                    type : "POST",
                    data: params,
                    success : function(result) {
                        if (result.resultCode == "success") {
                            alert(result.message)
                            move('productManagement.do', '');
                        } else if (result.resultCode == "fail") {
                            alert(result.message);
                        } else {
                            alert(result.message);
                        }
                    }
                });
            }

            function sample6_execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var addr = ''; // 주소 변수
                        var extraAddr = ''; // 참고항목 변수

                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                            addr = data.roadAddress;
                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                            addr = data.jibunAddress;
                        }

                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        document.getElementById('sample6_postcode').value = data.zonecode;
                        document.getElementById("sample6_address").value = addr;
                        // 커서를 상세주소 필드로 이동한다.
                        // document.getElementById("sample6_detailAddress").focus();
                    }
                }).open();
            }

            function sample6_execDaumPostcode1() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var addr = ''; // 주소 변수
                        var extraAddr = ''; // 참고항목 변수

                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                            addr = data.roadAddress;
                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                            addr = data.jibunAddress;
                        }

                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        document.getElementById('sample6_postcode1').value = data.zonecode;
                        document.getElementById("sample6_address1").value = addr;
                        // 커서를 상세주소 필드로 이동한다.
                        // document.getElementById("sample6_detailAddress").focus();
                    }
                }).open();
            }

        </script>

        <!-- BEGIN: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
        <%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>--%>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>

        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/toggle/bootstrap-checkbox.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/toggle/switchery.min.js"></script>
        <!-- END: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
        <!-- BEGIN: Page JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<%--        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>--%>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/switch.js"></script>
        <!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
