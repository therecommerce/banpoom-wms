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

<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">상품 수정</h3>
        </div>
        <hr>


        <div class="content-body" id="tab-menu0">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12">
                    <span class="text-muted"><h4 class="text-uppercase mb-1">상품명(상품번호) : ${consignmentVO.product_name}(${consignmentVO.product_id})</h4></span>
                    <input type="hidden" id="product_id" value="${consignmentVO.product_id}" />
                </div>
            </div>
            <c:if test="${consignmentVO.product_state != '판매중' && consignmentVO.product_state != '판매중지' && consignmentVO.product_state != '품절'}">
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">반품구조대 검수 정보</h4>
                        <hr class="bg-blue mb-0">
                        <div class="heading-elements">
                            <a data-toggle="modal" data-target="#modal4" class="card-link">검수 결과 보기 <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <div class="form-group row">
                                        <label class="col-md-1" for="selectConsignReason">검수 등급<span
                                                class="danger">*</span></label>
                                        <div class="col-md-4" id="selectConsignReason">
                                            <select id="product_grade" name="consign_reason" class="form-control">
                                                <option value="A">A등급</option>
                                                <option value="B">B등급</option>
                                                <option value="C">C등급</option>
                                                <option value="D">D등급</option>
                                            </select>
                                        </div>
<%--                                        <input type="text" id="inspection_opinion" class="col-md-4" style="display: none" placeholder="" />--%>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-1" for="inspection_opinion">등급 의견<span
                                                class="danger">*</span></label>
                                        <div class="col-md-11">
                                            <input type="text" id="inspection_opinion" name="inspection_opinion" class="form-control"
                                                   placeholder="" value="${consignmentVO.inspection_opinion}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            </c:if>
            <!-- 상품정보 -->
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
                                    <c:if test="${consignmentVO.selling == true}">
                                    <div class="form-group row">
                                        <label class="col-md-1">상품상태 <span
                                                class="danger">*</span></label>
                                        <div class="col-md-4">
                                            <div class="float-left">
                                                <button id="switch1" onclick="javascript:clickBtn('판매중');">판매중</button>
                                                <button id="switch2" onclick="javascript:clickBtn('판매중지');">판매중지</button>
                                                <button id="switch3" onclick="javascript:clickBtn('품절');">품절</button>
                                            </div>
                                        </div>
                                    </div>
                                    </c:if>
                                    <div class="form-group row">
                                        <label class="col-md-1" for="topName">카테고리 <span
                                                class="danger">*</span></label>
                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <select id="topName" class="form-control" onchange="changeMiddle();">
                                                        <option disabled selected value="">1차 카테고리</option>
                                                        <c:forEach items="${categoryName}" var="categoryName">
                                                            <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>

                                                <div class="col-md-6">
                                                    <select id="middle" class="form-control">
                                                        <option>2차 카테고리</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-1" for="product_name">상품명 <span
                                                class="danger">*</span></label>
                                        <div class="col-md-11">
                                            <input type="text" id="product_name" name="product_name" class="form-control"
                                                   placeholder="상품명을 입력해주세요. (ex: Nike Air Force)" value="${consignmentVO.product_name}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-1" for="product_price">판매 가격<span class="danger">*</span></label>
                                        <div class="col-md-4">
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="product_price" name="product_price" placeholder=""
                                                       aria-describedby="basic-addon2" readonly>
                                                <div class="input-group-append">
                                                    <span class="input-group-text" id="basic-addon3">원</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-1" for="basicInputFile">상품이미지 <span
                                                class="danger">*</span></label>
                                        <div class="col-md-11">
                                            <input class="col-md-9" type="file" class="form-control-file" id="basicInputFile" onchange="addImageFile2(this, 10);">
                                            <div class="card-text">
                                                <ul class="list-inline" id="image_list1">
                                                <p><small class="text-muted">이미지 첨부는 이미지 파일(jpg, bmp, gif)의 10MB만 가능</small></p>
                                                </ul>

                                                <ul class="list-inline" id="image_list">
                                                    <dd class="col-sm-9">
                                                        <c:forEach items="${productListVO.file_id_list}" var="fileId">
                                                            <img src="${pageContext.request.contextPath}/file/down/image/${fileId}"
                                                                 alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >
                                                        </c:forEach>
                                                    </dd>
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
                                        <label class="col-md-1">옵션 설정 <span
                                                class="danger">*</span></label>
                                        <div class="col-md-4">
                                            <div class="d-inline-block custom-control custom-radio mr-1">
                                                <input type="radio" class="custom-control-input" name="colorRadio20"
                                                       id="radio210" onclick="hidePopup()">
                                                <label class="custom-control-label" for="radio210">설정 안함</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" name="colorRadio20"
                                                       id="radio220" onclick="showPopup()">
                                                <label class="custom-control-label" for="radio220">설정함</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row" id="tab-menu00">
                                        <div class="col-md-6">
                                            <div class="row"></div>
                                        </div>
                                    </div>
                                    <div class="form-group row" id="tab-menu1">
                                        <label class="col-md-1" for="optionCount">옵션명 개수 <span class="danger">*</span></label>
                                        <div class="col-md-2">
                                            <select id="optionCount" class="form-control" onchange="fn_countOption();">
                                                <option value="1개">1개</option>
                                                <option value="2개">2개</option>
                                                <option value="3개">3개</option>
                                                <option value="4개">4개</option>
                                                <option value="5">5개</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="card border border-light bg-blue-grey bg-lighten-5 rounded mb-2" id="tab-menu2">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <div class="repeater-default">
                                                    <div data-repeater-list="car">
                                                        <div data-repeater-item>
                                                            <div class="row" id="formOption1">
                                                                <div class="col-md-10">
                                                                    <form class="form row form-horizontal">
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6">
                                                                            <label class="col-md-2" for="optionMenu1">옵션명
                                                                                <span class="danger">*</span></label>
                                                                            <div class="col-md-10" id="optionMenu1">
                                                                                <select id="optionName1" class="form-control" onchange="changeMiddleOption1()">
                                                                                    <option disabled selected value="">옵션을 선택하세요</option>
                                                                                    <option value="직접입력">직접입력</option>
                                                                                    <option value="사이즈">사이즈</option>
                                                                                    <option value="컬러">컬러</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-md-10" id="optionMenuDirect1" style="display: none">
                                                                                <div class="row">
                                                                                    <div class="col-md-4">
                                                                                        <select id="optionNameDirect1" class="form-control" onchange="changeMiddleOption2()">
                                                                                            <option value="직접입력">직접입력</option>
                                                                                            <option value="사이즈">사이즈</option>
                                                                                            <option value="컬러">컬러</option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="col-md-8">
                                                                                        <input type="text" id="inputOptionNameDirect1" class="form-control" placeholder="옵션명을 입력하세요">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValue1">
                                                                            <label id="middleOptionName" class="col-md-2" for="optionValueCategory1">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input id="optionValueCategory1" name="optionValueCategory1" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValueDirect1" style="display: none">
                                                                            <label class="col-md-2" for="inputOptionValueDirect1">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input type="text" id="inputOptionValueDirect1" class="form-control" placeholder="옵션값을 입력하세요"/>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <button type="button" class="btn btn-danger mr-1" data-repeater-delete style="visibility: hidden"><i class="feather icon-x"></i></button>
                                                                    <button data-repeater-create type="button" class="btn btn-outline-secondary"><i class="feather icon-plus" onclick="javascript:addRow(2);"></i></button>
                                                                </div>
                                                            </div>
                                                            <div class="row" id="formOption2" style="display: none">
                                                                <div class="col-md-10">
                                                                    <form class="form row form-horizontal">
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6">
                                                                            <label class="col-md-2" for="optionMenu1">옵션명
                                                                                <span class="danger">*</span></label>
                                                                            <div class="col-md-10" id="optionMenu2">
                                                                                <select id="optionName2" class="form-control" onchange="changeMiddleOption3()">
                                                                                    <option disabled selected value="">옵션을 선택하세요</option>
                                                                                    <option value="직접입력">직접입력</option>
                                                                                    <option value="사이즈">사이즈</option>
                                                                                    <option value="컬러">컬러</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-md-10" id="optionMenuDirect2" style="display: none">
                                                                                <div class="row">
                                                                                    <div class="col-md-4">
                                                                                        <select id="optionNameDirect2" class="form-control" onchange="changeMiddleOption4()">
                                                                                            <option selected value="직접입력">직접입력</option>
                                                                                            <option value="사이즈">사이즈</option>
                                                                                            <option value="컬러">컬러</option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="col-md-8">
                                                                                        <input type="text" id="inputOptionNameDirect2" class="form-control" placeholder="옵션명을 입력하세요">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValue2">
                                                                            <label id="middleOptionName2" class="col-md-2" for="optionValueCategory2">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input id="optionValueCategory2" name="optionValueCategory2" class="form-control"></input>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValueDirect2" style="display: none">
                                                                            <label class="col-md-2" for="inputOptionValueDirect2">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input type="text" id="inputOptionValueDirect2" class="form-control" placeholder="옵션값을 입력하세요" />
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <button type="button" class="btn btn-danger mr-1" data-repeater-delete><i class="feather icon-x" onclick="javascript:removeRow(countOption());"></i></button>
                                                                    <button data-repeater-create type="button" class="btn btn-outline-secondary"><i class="feather icon-plus" onclick="javascript:addRow(3);"></i></button>
                                                                </div>
                                                            </div>
                                                            <div class="row" id="formOption3" style="display: none">
                                                                <div class="col-md-10">
                                                                    <form class="form row form-horizontal">
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6">
                                                                            <label class="col-md-2" for="optionMenu1">옵션명
                                                                                <span class="danger">*</span></label>
                                                                            <div class="col-md-10" id="optionMenu3">
                                                                                <select id="optionName3" class="form-control" onchange="changeMiddleOption5()">
                                                                                    <option disabled selected value="">옵션을 선택하세요</option>
                                                                                    <option value="직접입력">직접입력</option>
                                                                                    <option value="사이즈">사이즈</option>
                                                                                    <option value="컬러">컬러</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-md-10" id="optionMenuDirect3" style="display: none">
                                                                                <div class="row">
                                                                                    <div class="col-md-4">
                                                                                        <select id="optionNameDirect3" class="form-control" onchange="changeMiddleOption6()">
                                                                                            <option selected value="직접입력">직접입력</option>
                                                                                            <option value="사이즈">사이즈</option>
                                                                                            <option value="컬러">컬러</option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="col-md-8">
                                                                                        <input type="text" id="inputOptionNameDirect3" class="form-control" placeholder="옵션명을 입력하세요">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValue3">
                                                                            <label id="middleOptionName3" class="col-md-2" for="optionValueCategory3">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input id="optionValueCategory3" name="optionValueCategory3" class="form-control"></input>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValueDirect3" style="display: none">
                                                                            <label class="col-md-2" for="inputOptionValueDirect3">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input type="text" id="inputOptionValueDirect3" class="form-control" placeholder="옵션값을 입력하세요" />
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <button type="button" class="btn btn-danger mr-1" data-repeater-delete><i class="feather icon-x" onclick="javascript:removeRow(countOption());"></i></button>
                                                                    <button data-repeater-create type="button" class="btn btn-outline-secondary"><i class="feather icon-plus" onclick="javascript:addRow(4);"></i></button>
                                                                </div>
                                                            </div>
                                                            <div class="row" id="formOption4" style="display: none">
                                                                <div class="col-md-10">
                                                                    <form class="form row form-horizontal">
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6">
                                                                            <label class="col-md-2" for="optionMenu1">옵션명
                                                                                <span class="danger">*</span></label>
                                                                            <div class="col-md-10" id="optionMenu4">
                                                                                <select id="optionName4" class="form-control" onchange="changeMiddleOption7()">
                                                                                    <option disabled selected value="">옵션을 선택하세요</option>
                                                                                    <option value="직접입력">직접입력</option>
                                                                                    <option value="사이즈">사이즈</option>
                                                                                    <option value="컬러">컬러</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-md-10" id="optionMenuDirect4" style="display: none">
                                                                                <div class="row">
                                                                                    <div class="col-md-4">
                                                                                        <select id="optionNameDirect4" class="form-control" onchange="changeMiddleOption8()">
                                                                                            <option selected value="직접입력">직접입력</option>
                                                                                            <option value="사이즈">사이즈</option>
                                                                                            <option value="컬러">컬러</option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="col-md-8">
                                                                                        <input type="text" id="inputOptionNameDirect4" class="form-control" placeholder="옵션명을 입력하세요">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValue4">
                                                                            <label id="middleOptionName4" class="col-md-2" for="optionValueCategory4">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input id="optionValueCategory4" name="optionValueCategory4" class="form-control"></input>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValueDirect4" style="display: none">
                                                                            <label class="col-md-2" for="inputOptionValueDirect4">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input type="text" id="inputOptionValueDirect4" class="form-control" placeholder="옵션값을 입력하세요" />
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <button type="button" class="btn btn-danger mr-1" data-repeater-delete><i class="feather icon-x" onclick="javascript:removeRow(countOption());"></i></button>
                                                                    <button data-repeater-create type="button" class="btn btn-outline-secondary"><i class="feather icon-plus" onclick="javascript:addRow(5);"></i></button>
                                                                </div>
                                                            </div>
                                                            <div class="row" id="formOption5" style="display: none">
                                                                <div class="col-md-10">
                                                                    <form class="form row form-horizontal">
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6">
                                                                            <label class="col-md-2" for="optionMenu1">옵션명
                                                                                <span class="danger">*</span></label>
                                                                            <div class="col-md-10" id="optionMenu5">
                                                                                <select id="optionName5" class="form-control" onchange="changeMiddleOption9()">
                                                                                    <option disabled selected value="">옵션을 선택하세요</option>
                                                                                    <option value="직접입력">직접입력</option>
                                                                                    <option value="사이즈">사이즈</option>
                                                                                    <option value="컬러">컬러</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-md-10" id="optionMenuDirect5" style="display: none">
                                                                                <div class="row">
                                                                                    <div class="col-md-4">
                                                                                        <select id="optionNameDirect5" class="form-control" onchange="changeMiddleOption10()">
                                                                                            <option selected value="직접입력">직접입력</option>
                                                                                            <option value="사이즈">사이즈</option>
                                                                                            <option value="컬러">컬러</option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="col-md-8">
                                                                                        <input type="text" id="inputOptionNameDirect5" class="form-control" placeholder="옵션명을 입력하세요">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValue5">
                                                                            <label id="middleOptionName5" class="col-md-2" for="optionValueCategory5">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input id="optionValueCategory5" name="optionValueCategory5" class="form-control"></input>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row mb-1 col-sm-12 col-md-6" id="optionValueDirect5" style="display: none">
                                                                            <label class="col-md-2" for="inputOptionValueDirect5">옵션값 <span class="danger">*</span></label>
                                                                            <div class="col-md-10">
                                                                                <input type="text" id="inputOptionValueDirect5" class="form-control" placeholder="옵션값을 입력하세요" />
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <button type="button" class="btn btn-danger mr-1" data-repeater-delete><i class="feather icon-x" onclick="javascript:removeRow(countOption());"></i></button>
                                                                    <button data-repeater-create type="button" class="btn btn-outline-secondary" style="visibility:hidden;"><i class="feather icon-plus"></i></button>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="blue text-center">
                                                    <a onclick="fn_openOption()"><i class="feather icon-chevrons-down"></i> 옵션 목록에 적용</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card border border-light rounded mb-2" id="tab-menu3">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between mb-1">
                                                    <div class="d-flex align-items-center">
                                                        <h4 class="card-title m-0 mr-1" id="optionCountA">옵션 목록(옵션명갯수 개)</h4>
                                                        <button type="button" class="btn btn-sm btn-outline-secondary" onclick="removeCheckedOptionList()">삭제</button>
                                                    </div>
                                                </div>
                                                <div id="app-invoice-wrapper1" class="">
                                                    <table class="table table-striped table-hover ">
                                                        <thead class="border-bottom border-dark bg-blue-grey bg-lighten-6 text-center">
                                                        <tr>
                                                            <th colspan="6" class="border-right-blue-grey border-right-lighten-5">옵션</th>
                                                            <th rowspan="2" class="border-right-blue-grey border-right-lighten-4">
                                                                <p class="mb-50">옵션가</p>
                                                                <!-- Button trigger modal -->
                                                                <button type="text" class="btn btn-sm btn-outline-blue" data-toggle="modal" data-target="#registerTotalPrice">일괄적용</button>
                                                            </th>
                                                            <th rowspan="2"
                                                                class="border-right-blue-grey border-right-lighten-4">
                                                                <p class="mb-50">재고수량<span class="blue"></span></p>
                                                                <!-- Button trigger modal -->
                                                                <button type="text" class="btn btn-sm btn-outline-blue" data-toggle="modal" data-target="#registerTotalCount">일괄적용</button>
                                                            </th>
                                                            <th class="align-middle width-50" rowspan="2">삭제</th>
                                                        </tr>
                                                        <tr>
                                                            <th></th>
                                                            <th>옵션1</th>
                                                            <th>옵션2</th>
                                                            <th>옵션3</th>
                                                            <th>옵션4</th>
                                                            <th>옵션5</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody id="optionTable">

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row" id="noOption">
                                        <div class="col-md-6">
                                            <div class="row">
                                                <label class="col-md-2" for="product_vprice">판매가격 <span
                                                        class="danger">*</span></label>
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="product_vprice" name="product_vprice" placeholder=""
                                                               aria-describedby="basic-addon2" onkeyup="inputNumberFormat(this);">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text" id="basic-addon4">원</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-1 align-self-center">
                                                    <button type="button" class="btn btn-icon btn-pure p-0"
                                                            data-toggle="tooltip" data-placement="right" title=""
                                                            data-original-title="현재 판매중인 상품가격을 입력해주세요">
                                                        <i class="feather icon-help-circle"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <label class="col-md-2" for="product_count">판매수량 <span
                                                        class="danger">*</span></label>
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="product_count" name="product_count" placeholder="최소 n개 입력"
                                                               aria-describedby="basic-addon2" onkeyup="inputNumberFormat(this);">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text" id="basic-addon2">개</span>
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

            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">상품 상세 설명</h4>
                        <hr class="bg-blue mb-0">
                    </div>

                    <div class="card-content">
                        <div class="card-body">
                            <p><i class="feather icon-alert-circle"></i> 등록할 상품의 상세 설명을 입력하세요.</p>
                            <form class="form form-horizontal">
                                <div class="form-body">
                                    <div class="form-group">
                                        <div class="controls">
                                            <label class="label-control text-left" for="switch12">작성유형 <span class="danger">*</span></label>
                                            <div class="text-left">
                                                <input type="checkbox" class="switch" id="switch12" data-group-cls="btn-group-sm"
                                                       data-on-label="에디터 작성" data-off-label="이미지 업로드" checked />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card border-blue-grey border-lighten-2 mb-0">
                                        <div class="text-center">
                                            <div class="card-body h-150">
                                                <p class="text-muted">
                            <span class="badge badge-success round">
                              <i class="font-medium-2 icon-line-height feather icon-check"></i>
                            </span> 작성된 상세 설명이 있습니다.
                                                </p>
                                                <p>
                                                    <!-- Button trigger modal -->
                                                    <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" data-toggle="modal"
                                                            data-target="#default-1">수정하기</button>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <p><small class="blue">이미지 권장 사이즈 : 가로 ## px x 세로 #### px 이하 10MB 이하의 JPG, PNG
                                        파일</small></p>
                                </div>
                            </form>
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
                                                        <input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" value="15878">
                                                        <div class="input-group-append" id="button-addon5">
                                                            <input type="button" class="btn btn-blue" onclick="sample6_execDaumPostcode()" value="주소검색"><br>
                                                        </div>
                                                    </div>
                                                    <input type="text" class="form-control mb-1" id="sample6_address" placeholder="주소" value="경기 군포시 번영로 82"><br>
                                                    <input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소" value="복합물류터미널H동 4층 반품구조대">
                                                    <div class="help-block"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="delivery_company">택배사 <span class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <select id="delivery_company" name="delivery_company" class="form-control">
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
                                                            <input type="hidden" id="type" name="type" value="${consignmentVO.delivery_type}" />
                                                            <label class="sr-only" for="delivery_type">유료배송</label>
                                                            <select id="delivery_type" name="delivery_type"
                                                                    class="form-control" onchange="changeDeliveryType()">
                                                                <option value="유료배송">유료배송</option>
                                                                <option value="무료배송">무료배송</option>
                                                                <option value="조건부 무료배송">조건부 무료배송</option>
                                                                </option>
                                                            </select>
                                                        </div>

                                                        <div class="form-group col-md-6 mb-1">
                                                            <div class="input-group">
                                                                <input type="text" class="form-control" id="delivery_charge" onkeyup="inputNumberFormat(this);"
                                                                       placeholder="" aria-label="" name="" value="${consignmentVO.delivery_charge}" <c:if test="${consignmentVO.delivery_type == '무료배송'}">readonly</c:if>>
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text" id="delivery_cost">원</span> <span id="freeDelivery" style="margin-top: 15px; margin-left: 5px; display: none">이상 무료배송</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control text-bold-700 text-left"
                                                       for="delivery_type">묶음배송<span class="danger">*</span></label>
                                                <div class="custom-radio">
                                                    <input type="radio" class="custom-control-input" name="bundle_delivery"
                                                           id="able" checked="" value="가능">
                                                    <label class="custom-control-label" for="able">가능</label>
                                                </div>
                                                <div class="custom-radio">
                                                    <input type="radio" class="custom-control-input" name="bundle_delivery"
                                                           id="disable" value="불가능">
                                                    <label class="custom-control-label" for="disable">불가능</label>
                                                </div>
                                                <span style="color: dodgerblue; font-size: 10px; margin-top: 3px">출고지 정보가 같은 상품만 묶음배송 할 수 있습니다.</span>
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
                                                        <input type="text" class="form-control" id="sample6_postcode1" placeholder="우편번호" value="15878">
                                                        <div class="input-group-append" id="button-addon2">
                                                            <input type="button" class="btn btn-blue" onclick="sample6_execDaumPostcode1();" value="주소검색"><br>
                                                        </div>
                                                    </div>
                                                    <input type="text" class="form-control mb-1" id="sample6_address1" placeholder="주소" value="경기 군포시 번영로 82"><br>
                                                    <input type="text" class="form-control" id="sample6_detailAddress1" placeholder="상세주소" value="복합물류터미널H동 4층 반품구조대">
                                                    <div class="help-block"></div>
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
                                                        <input type="text" class="form-control" placeholder="" onkeyup="inputNumberFormat(this);"
                                                               aria-label="" name="" id="return_charge" value="${consignmentVO.return_charge}">
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
                    <button type="button" class="btn btn-outline-secondary btn-min-width" data-toggle="modal" data-target="#preview" onclick="preview()">미리보기</button>
                </div>
                <div class="col-md-6">
                    <div class="float-right">
                        <button type="button" class="btn btn-light btn-min-width mr-1" onclick="window.history.back()">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" onclick="updateProduct();">저장</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-left" id="modal4" tabindex="-1"
             role="dialog" aria-labelledby="myModalLabel3"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel3">검수 결과 보기</h4>
                        <button type="button" class="close"
                                data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="card">
                            <div class="card-header pb-0">
                                <h4 class="card-title blue">검수 정보</h4>
                                <hr class="bg-blue mb-0">
                            </div>
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="card-body">
                                        <dl class="row">
                                            <dt class="col-sm-3">검수등급</dt>
                                            <dd class="col-sm-9">${consignmentVO.product_grade}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3">검수의견</dt>
                                            <dd class="col-sm-9">${consignmentVO.inspection_opinion}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3">검수자</dt>
                                            <dd class="col-sm-9">${consignmentVO.inspector_name}</dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                            <c:if test="${inspectionFileList.size() != 0}">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue">입고 영상/이미지(${inspectionFileList.size()})</h4>
                                    <hr class="bg-blue mb-0">
                                    <div class="card-content">
                                        <div class="row">
                                            <c:forEach items="${inspectionFileList}" var="inspectionFile">
                                                <c:if test="${inspectionFile.file_name.indexOf('영상') != -1}">
                                                    <div class="col-md-6">
                                                        <video width="350px;" height="350px;"  src="${pageContext.request.contextPath}/file/down/image/${inspectionFile.file_id}" controls download="${pageContext.request.contextPath}/file/down/${inspectionFile.file_id}"></video>
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                            <c:forEach items="${inspectionFileList}" var="inspectionFile">
                                                <c:if test="${inspectionFile.file_name.indexOf('영상') == -1}">
                                                    <div class="col-md-6">
                                                        <img src="${pageContext.request.contextPath}/file/down/image/${inspectionFile.file_id}" style="width: 350px;height: 350px;" onclick="window.open(this.src)" download="${pageContext.request.contextPath}/file/down/${inspectionFile.file_id}">
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 일괄적용 가격 : 시작 -->
<div class="modal fade text-left" id="registerTotalPrice" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
     aria-hidden="true">
    <div class="modal-dialog modal-xs modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="registTotalPriceTitle">판매가 일괄적용</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="form">
                    <div class="form-group mb-0">
                        <label class="sr-only" for="insertCount">옵션값</label>
                        <div class="input-group">
                            <input type="text" class="form-control text-right" id="insertPrice">
                            <div class="input-group-append">
                                <span class="input-group-text">원</span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn grey" data-dismiss="modal">취소</button>
                <button type="button" class="btn blue" data-dismiss="modal" onclick="registerTotal1(document.getElementById('insertPrice').value)">적용</button>
            </div>
        </div>
    </div>
</div>
<!-- 일괄적용 수량 : 끝 -->

<!-- 일괄적용 수량 : 시작 -->
<div class="modal fade text-left" id="registerTotalCount" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
     aria-hidden="true">
    <div class="modal-dialog modal-xs modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="registTotalCountTitle">판매수량 일괄적용</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="form">
                    <div class="form-group mb-0">
                        <label class="sr-only" for="insertCount">옵션값</label>
                        <div class="input-group">
                            <input type="text" class="form-control text-right" id="insertCount">
                            <div class="input-group-append">
                                <span class="input-group-text">개</span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn grey" data-dismiss="modal">취소</button>
                <button type="button" class="btn blue" data-dismiss="modal" onclick="registerTotal2(document.getElementById('insertCount').value)">적용</button>
            </div>
        </div>
    </div>
</div>
<!-- 일괄적용 수량 : 끝-->

<div class="modal fade text-center" id="preview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
    <div class="modal-dialog modal-l" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h3 class="modal-title" id="modal-add-title">미리보기</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p id="pre_grade"></p>
                <p id="pre_opinion"></p>
                <p id="pre_category"></p>
                <p id="pre_product_name"></p>
                <p id="pre_product_price"></p>
                <p id="pre_delivery_company"></p>
                <p id="pre_delivery_cost"></p>
                <p id="pre_delivery_once"></p>
                <p id="pre_return_cost"></p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" aria-label="Close">확인</button>
            </div>
        </div>
    </div>
</div>

    <!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- BEGIN: Page Vendor JS-->
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>

    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>

    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/toggle/bootstrap-checkbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/toggle/switchery.min.js"></script>
    <!-- END: Page Vendor JS-->

    <script type="text/javascript">

        let fileNo = 0;
        let filesArr = new Array();

        let tab0 = document.getElementById("tab-menu00");
        let tab1 = document.getElementById("tab-menu1");
        let tab2 = document.getElementById("tab-menu2");
        let tab3 = document.getElementById("tab-menu3");

        $(document).ready(function() {

            let option_count = ${consignmentVO.option_count};
            let optionCount = ${consignmentVO.optionCount};
            let optionName1 = "${consignmentVO.optionName1}";
            let optionName2 = "${consignmentVO.optionName2}";
            let optionName3 = "${consignmentVO.optionName3}";
            let optionName4 = "${consignmentVO.optionName4}";
            let optionName5 = "${consignmentVO.optionName5}";
            let option1 = "${optionName.option1}";
            let option2 = "${optionName.option2}";
            let option3 = "${optionName.option3}";
            let option4 = "${optionName.option4}";
            let option5 = "${optionName.option5}";
            let optionPrice = "${optionName.optionPrice}";
            let optionStockCount = "${optionName.optionCount}";
            let radio210 = document.getElementById("radio210");
            let radio220 = document.getElementById("radio220");


            $("#optionCount").val(optionCount+"개").prop("selected", true);
            fn_countOption();

            if (optionCount == 5) {
                if (optionName1 != '컬러' && optionName1 != '사이즈') {
                    $("#optionName1").val('직접입력').prop("selected", true);
                    changeMiddleOption1();
                    document.getElementById("optionMenuDirect1").value = optionName1
                    document.getElementById("inputOptionValueDirect1").value = option1
                } else {
                    document.getElementById("optionMenu1").value = optionName1
                    $("#optionName1").val(optionName1).prop("selected", true);
                    document.getElementById("optionValueCategory1").value = option1
                }

                if (optionName2 != '컬러' && optionName2 != '사이즈') {
                    $("#optionName2").val('직접입력').prop("selected", true);
                    changeMiddleOption3();
                    document.getElementById("optionMenuDirect2").value = optionName2
                    document.getElementById("inputOptionValueDirect2").value = option2
                } else {
                    document.getElementById("optionMenu2").value = optionName2
                    $("#optionName2").val(optionName2).prop("selected", true);
                    document.getElementById("optionValueCategory2").value = option2
                }

                if (optionName3 != '컬러' && optionName3 != '사이즈') {
                    $("#optionName3").val('직접입력').prop("selected", true);
                    changeMiddleOption5();
                    document.getElementById("optionMenuDirect3").value = optionName3
                    document.getElementById("inputOptionValueDirect3").value = option3
                } else {
                    document.getElementById("optionMenu3").value = optionName3
                    $("#optionName3").val(optionName3).prop("selected", true);
                    document.getElementById("optionValueCategory3").value = option3
                }

                if (optionName4 != '컬러' && optionName4 != '사이즈') {
                    $("#optionName4").val('직접입력').prop("selected", true);
                    changeMiddleOption7();
                    document.getElementById("optionMenuDirect4").value = optionName4
                    document.getElementById("inputOptionValueDirect4").value = option4
                } else {
                    document.getElementById("optionMenu4").value = optionName4
                    $("#optionName4").val(optionName4).prop("selected", true);
                    document.getElementById("optionValueCategory4").value = option4
                }

                if (optionName5 != '컬러' && optionName5 != '사이즈') {
                    $("#optionName5").val('직접입력').prop("selected", true);
                    changeMiddleOption9();
                    document.getElementById("optionMenuDirect5").value = optionName1
                    document.getElementById("inputOptionValueDirect5").value = option5
                } else {
                    document.getElementById("optionMenu5").value = optionName1
                    $("#optionName5").val(optionName5).prop("selected", true);
                    document.getElementById("optionValueCategory5").value = option5
                }

            } else if (optionCount == 4) {
                if (optionName1 != '컬러' && optionName1 != '사이즈') {
                    $("#optionName1").val('직접입력').prop("selected", true);
                    changeMiddleOption1();
                    document.getElementById("optionMenuDirect1").value = optionName1
                    document.getElementById("inputOptionValueDirect1").value = option1
                } else {
                    document.getElementById("optionMenu1").value = optionName1
                    $("#optionName1").val(optionName1).prop("selected", true);
                    document.getElementById("optionValueCategory1").value = option1
                }

                if (optionName2 != '컬러' && optionName2 != '사이즈') {
                    $("#optionName2").val('직접입력').prop("selected", true);
                    changeMiddleOption3();
                    document.getElementById("optionMenuDirect2").value = optionName2
                    document.getElementById("inputOptionValueDirect2").value = option2
                } else {
                    document.getElementById("optionMenu2").value = optionName2
                    $("#optionName2").val(optionName2).prop("selected", true);
                    document.getElementById("optionValueCategory2").value = option2
                }

                if (optionName3 != '컬러' && optionName3 != '사이즈') {
                    $("#optionName3").val('직접입력').prop("selected", true);
                    changeMiddleOption5();
                    document.getElementById("optionMenuDirect3").value = optionName3
                    document.getElementById("inputOptionValueDirect3").value = option3
                } else {
                    document.getElementById("optionMenu3").value = optionName3
                    $("#optionName3").val(optionName3).prop("selected", true);
                    document.getElementById("optionValueCategory3").value = option3
                }

                if (optionName4 != '컬러' && optionName4 != '사이즈') {
                    $("#optionName4").val('직접입력').prop("selected", true);
                    changeMiddleOption7();
                    document.getElementById("optionMenuDirect4").value = optionName4
                    document.getElementById("inputOptionValueDirect4").value = option4
                } else {
                    document.getElementById("optionMenu4").value = optionName4
                    $("#optionName4").val(optionName4).prop("selected", true);
                    document.getElementById("optionValueCategory4").value = option4
                }

            } else if (optionCount == 3) {
                if (optionName1 != '컬러' && optionName1 != '사이즈') {
                    $("#optionName1").val('직접입력').prop("selected", true);
                    changeMiddleOption1();
                    document.getElementById("optionMenuDirect1").value = optionName1
                    document.getElementById("inputOptionValueDirect1").value = option1
                } else {
                    document.getElementById("optionMenu1").value = optionName1
                    $("#optionName1").val(optionName1).prop("selected", true);
                    document.getElementById("inputOptionNameDirect3").value = optionName1
                    document.getElementById("optionValueCategory1").value = option1
                }

                if (optionName2 != '컬러' && optionName2 != '사이즈') {
                    $("#optionName2").val('직접입력').prop("selected", true);
                    changeMiddleOption3();
                    document.getElementById("optionMenuDirect2").value = optionName2
                    document.getElementById("inputOptionValueDirect2").value = option2
                } else {
                    document.getElementById("optionMenu2").value = optionName2
                    $("#optionName2").val(optionName2).prop("selected", true);
                    document.getElementById("optionValueCategory2").value = option2
                }

                if (optionName3 != '컬러' && optionName3 != '사이즈') {
                    $("#optionName3").val('직접입력').prop("selected", true);
                    changeMiddleOption5();
                    document.getElementById("optionMenuDirect3").value = optionName3
                    document.getElementById("inputOptionValueDirect3").value = option3
                } else {
                    document.getElementById("optionMenu3").value = optionName3
                    $("#optionName3").val(optionName3).prop("selected", true);
                    document.getElementById("optionValueCategory3").value = option3
                }


            } else if (optionCount == 2) {
                if (optionName1 != '컬러' && optionName1 != '사이즈') {
                    $("#optionName1").val('직접입력').prop("selected", true);
                    changeMiddleOption1();
                    document.getElementById("optionMenuDirect1").value = optionName1
                    document.getElementById("inputOptionValueDirect1").value = option1
                } else {
                    document.getElementById("optionMenu1").value = optionName1
                    $("#optionName1").val(optionName1).prop("selected", true);
                    document.getElementById("optionValueCategory1").value = option1
                }

                if (optionName2 != '컬러' && optionName2 != '사이즈') {
                    $("#optionName2").val('직접입력').prop("selected", true);
                    changeMiddleOption3();
                    document.getElementById("optionMenuDirect2").value = optionName2
                    document.getElementById("inputOptionValueDirect2").value = option2
                } else {
                    document.getElementById("optionMenu2").value = optionName2
                    $("#optionName2").val(optionName2).prop("selected", true);
                    document.getElementById("optionValueCategory2").value = option2
                }

            } else if (optionCount == 1) {
                if (optionName1 != '컬러' && optionName1 != '사이즈') {
                    $("#optionName1").val('직접입력').prop("selected", true);
                    changeMiddleOption1();
                    document.getElementById("optionMenuDirect1").value = optionName1
                    document.getElementById("inputOptionValueDirect1").value = option1
                } else {
                    document.getElementById("optionMenu1").value = optionName1
                    $("#optionName1").val(optionName1).prop("selected", true);
                    document.getElementById("optionValueCategory1").value = option1
                }
            }

            if (option_count == 0) {
                radio210.checked = true;
                radio220.checked = false;
                hidePopup();
            } else {
                radio220.checked = true;
                radio210.checked = false;
                showPopup();
                fn_openOption();

                setTimeout(function() {
                    document.querySelector(".optionList1")[1].value = optionPrice;
                    document.querySelector(".optionList2")[1].value = optionStockCount;
                }, 2000);
            }

            let params1 = {
                "product_id": document.getElementById('product_id').value
            };

            $.ajax({
                url : "${pageContext.request.contextPath}/consignment/optionInfo.json",
                type : "POST",
                data: params1,
                success : function(result) {
                    if(result.resultCode == "success") {
                        let optionInfoList = result.OptionInfoList;

                        optionInfoList.forEach(function(item, index) {
                            let list1 = document.querySelectorAll('.optionList1');
                            let list2 = document.querySelectorAll('.optionList2');

                            if (list1[index]) {
                                list1[index].value = item.optionPrice.toLocaleString('ko-KR');
                            }

                            if (list2[index]) {
                                list2[index].value = item.optionCount.toLocaleString('ko-KR');
                            }
                        });
                    } else {
                        alert(result.message);
                    }
                }
            });

            $('#product_price').val(new Intl.NumberFormat().format(${consignmentVO.product_price}));
            $('#product_vprice').val(new Intl.NumberFormat().format(${consignmentVO.product_vprice}));
            $('#product_count').val(new Intl.NumberFormat().format(${consignmentVO.product_count}));
            $('#delivery_company').val('${consignmentVO.delivery_company}');
            $('#delivery_type').val('${consignmentVO.delivery_type}');
            $('#product_grade').val('${consignmentVO.product_grade}');
            $('#topName').val(${consignmentVO.parent_category_id});
            clickBtn('${consignmentVO.product_state}');

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
                    $('#middle').val(${consignmentVO.category_id});
                }
            });

        });

        function preview() {
            let product_sale_state = '${consignmentVO.product_state}';
            let inspection_grade = '${consignmentVO.product_grade}';
            let inspection_opinion = '${consignmentVO.inspection_opinion}';

            if (product_sale_state != '판매중' && product_sale_state != '판매중지' && product_sale_state != '품절') {
                document.getElementById('pre_grade').innerText = '검수 등급: ' + $("#product_grade option:selected").val();
                document.getElementById('pre_opinion').innerText = '등급 의견: ' + document.getElementById('inspection_opinion').value;
            } else {
                document.getElementById('pre_grade').innerText = '검수 등급: ' + inspection_grade;
                document.getElementById('pre_opinion').innerText = '등급 의견: ' + inspection_opinion;
            }
            document.getElementById('pre_category').innerText = '카테고리: ' + $("#topName option:selected").text() + '>' + $("#middle option:selected").text();
            document.getElementById('pre_product_name').innerText = '상품명: ' +  document.getElementById('product_name').value;
            document.getElementById('pre_product_price').innerText = '판매 가격: ' + document.getElementById('product_vprice').value;
            if ($("#delivery_company option:selected").val() != null && $("#delivery_company option:selected").val() != '') {
                document.getElementById('pre_delivery_company').innerText = '배송 택배사: ' + $("#delivery_company option:selected").val();
            }
            if (document.getElementById('delivery_cost').value != null && document.getElementById('delivery_cost').value != '') {
                document.getElementById('pre_delivery_cost').innerText = '배송비: ' + document.getElementById('delivery_cost').value;
            }
            document.getElementById('pre_delivery_once').innerText = '묶음 배송: ' + $('input[name="bundle_delivery"]:checked').val();
            if (document.getElementById('return_charge').value != null && document.getElementById('return_charge').value != '') {
                document.getElementById('pre_return_cost').innerText = '반품 배송비: ' + document.getElementById('return_charge').value;
            }
        }


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


        function change_consignReason() {
            if ($("#consign_reason option:selected").val() != '직접입력') {
                document.getElementById('inputConsignReason').style.display = 'none';
            } else if ($("#consign_reason option:selected").val() == '직접입력') {
                document.getElementById('inputConsignReason').style.display = '';
            }
        }

        function updateProduct() {
            let count1 = 0;
            let count2 = 0;
            const formData = new FormData();
            var product_state = ''

            if ($('#switch1').attr('class') == 'btn btn-primary btn-min-width') {
                product_state = '판매중';
            } else if($('#switch2').attr('class') == 'btn btn-danger btn-min-width') {
                product_state = '판매중지';
            } else if ($('#switch3').attr('class') == 'btn btn-dark btn-min-width') {
                product_state = '품절';
            }

            if (${consignmentVO.product_state== '품절'}) {
                if (product_state == '판매중') {
                    alert("품절상태에서 판매중으로 변경 불가능합니다.");
                    return;
                } else if (product_state == '판매중지') {
                    alert("품절상태에서 판매중지로 변경 불가능합니다.");
                    return;
                }
            }

            if(product_state == ''){
                product_state = '${consignmentVO.product_state}'
            }

            let optionList = [];

            for (let i = 0; i < document.getElementsByClassName("optionList1").length; i++) {

                let option = {
                    "optionName1" : '',
                    "optionName2" : '',
                    "optionName3" : '',
                    "optionName4" : '',
                    "optionName5" : '',
                    "option1" : '',
                    "option2" : '',
                    "option3" : '',
                    "option4" : '',
                    "option5" : '',
                    "optionPrice" : '',
                    "optionCount" : ''
                };
                option.optionName1 = document.querySelector(".optionListName1").innerText;
                option.optionName2 = document.querySelector(".optionListName2").innerText;
                option.optionName3 = document.querySelector(".optionListName3").innerText;
                option.optionName4 = document.querySelector(".optionListName4").innerText;
                option.optionName5 = document.querySelector(".optionListName5").innerText;
                option.option1 = document.querySelectorAll(".option1")[i].innerText;
                option.option2 = document.querySelectorAll(".option2")[i].innerText;
                option.option3 = document.querySelectorAll(".option3")[i].innerText;
                option.option4 = document.querySelectorAll(".option4")[i].innerText;
                option.option5 = document.querySelectorAll(".option5")[i].innerText;
                option.optionPrice = parseInt((document.querySelectorAll(".optionList1")[i].value).replace(",", ""));
                option.optionCount = parseInt((document.querySelectorAll(".optionList2")[i].value).replace(",", ""));
                optionList.push(option);
            }

            var params = {
                "product_id": '${consignmentVO.product_id}',
                "category_id": $("#middle option:selected").val(),
                "product_name": document.getElementById('product_name').value,
                "forwarding_destination_zip": document.getElementById('sample6_postcode').value,
                "forwarding_destination_addr1": document.getElementById('sample6_address').value,
                "forwarding_destination_addr2": document.getElementById('sample6_detailAddress').value,
                "delivery_company": $("#delivery_company").val(),
                "delivery_type": $("#delivery_type").val(),
                "delivery_charge": document.getElementById('delivery_charge').value,
                "return_location_zip": document.getElementById('sample6_postcode1').value,
                "return_location_addr1": document.getElementById('sample6_address1').value,
                "return_location_addr2": document.getElementById('sample6_detailAddress1').value,
                "return_charge": document.getElementById('return_charge').value,
                "product_count" : document.getElementById('product_count').value,
                "product_vprice" : document.getElementById('product_vprice').value.replace(',',''),
                "product_grade" : $('#product_grade').val(),
                "inspection_opinion" : $('#inspection_opinion').val(),
                "product_state" : product_state,
                "selling" : ${consignmentVO.selling},
                "option_category1" : $('#inputOptionNameDirect1').val(),
                "option_category2" : $('#inputOptionNameDirect2').val(),
                "option_category3" : $('#inputOptionNameDirect3').val(),
                "option_category4" : $('#inputOptionNameDirect4').val(),
                "option_category5" : $('#inputOptionNameDirect5').val(),
                "option_name1" : $('#inputOptionValueDirect1').val(),
                "option_name2" : $('#inputOptionValueDirect2').val(),
                "option_name3" : $('#inputOptionValueDirect3').val(),
                "option_name4" : $('#inputOptionValueDirect4').val(),
                "option_name5" : $('#inputOptionValueDirect5').val(),
                "optionList" : optionList,
                "bundle_delivery" : $('input[name="bundle_delivery"]:checked').val()
            }

            filesArr.forEach(function(imageFile) {
                if(!imageFile.is_delete) {
                    formData.append("files", imageFile);
                }
            })

            formData.append("params", JSON.stringify(params));

            if(document.getElementById("optionName1").value == '직접입력') {
                params.option_category1 = document.getElementById('inputOptionNameDirect1').value;
                params.option_name1 = $('#inputOptionValueDirect1').val();
                if( params.option_category1 == '옵션을 선택하세요') {
                    params.option_category1 = '';
                }
            } else {
                params.option_category1 = $("#optionName1 option:selected").val();
                params.option_name1 = $('#optionValueCategory1').val();
            };
            if(document.getElementById('optionName2').value == '직접입력') {
                params.option_category2 = document.getElementById('inputOptionNameDirect2').value;
                params.option_name2 = $('#inputOptionValueDirect2').val();
                if( params.option_category2 == '옵션을 선택하세요') {
                    params.option_category2 = '';
                }
            } else {
                params.option_category2 = $("#optionName2 option:selected").val();
                params.option_name2 = $('#optionValueCategory2').val();
            };
            if(document.getElementById('optionName3').value == '직접입력') {
                params.option_category3 = document.getElementById('inputOptionNameDirect3').value;
                params.option_name3 = $('#inputOptionValueDirect3').val();
                if( params.option_category3 == '옵션을 선택하세요') {
                    params.option_category3 = '';
                }
            } else {
                params.option_category3 = $("#optionName3 option:selected").val();
                params.option_name3 = $('#optionValueCategory3').val();
            };
            if(document.getElementById('optionName4').value == '직접입력') {
                params.option_category4 = document.getElementById('inputOptionNameDirect4').value;
                params.option_name4 = $('#inputOptionValueDirect4').val();
                if( params.option_category4 == '옵션을 선택하세요') {
                    params.option_category4 = '';
                }
            } else {
                params.option_category4 = $("#optionName4 option:selected").val();
                params.option_name4 = $('#optionValueCategory4').val();
            };
            if(document.getElementById('optionName5').value == '직접입력') {
                params.option_category5 = document.getElementById('inputOptionNameDirect5').value;
                params.option_name5 = $('#inputOptionValueDirect5').val();
                if( params.option_category5 == '옵션을 선택하세요') {
                    params.option_category5 = '';
                }
            } else {
                params.option_category5 = $("#optionName5 option:selected").val();
                params.option_name5 = $('#optionValueCategory5').val();
            };

            if ($('input:radio[id=radio220]').is(':checked')) {
                // <!-- 옵션 1 : 시작 -->
                if (((Number)((document.getElementById("optionCount").value).slice(0,1))) == 1) {
                    if ($("#optionName1 option:selected").val() == '') {
                        alert("옵션명1을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName1 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect1').val() == '') {
                                alert("직접입력 옵션명1을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect1').val() == '') {
                                alert("직접입력 옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName1 option:selected").val() == '사이즈' || $("#optionName1 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory1').val() == '') {
                                alert("옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                    }
                }
                // <!-- 옵션 1 : 끝 -->

                // <!-- 옵션 2 : 시작 -->
                if (((Number)((document.getElementById("optionCount").value).slice(0,1))) == 2) {
                    if ($("#optionName1 option:selected").val() == '') {
                        alert("옵션명1을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName1 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect1').val() == '') {
                                alert("직접입력 옵션명1을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect1').val() == '') {
                                alert("직접입력 옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName1 option:selected").val() == '사이즈' || $("#optionName1 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory1').val() == '') {
                                alert("옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName2 option:selected").val() == '') {
                        alert("옵션명2을 설정해주세요.");
                    } else {
                        if ($("#optionName2 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect2').val() == '') {
                                alert("직접입력 옵션명2을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect1').val() == '') {
                                alert("직접입력 옵션값2을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName2 option:selected").val() == '사이즈' || $("#optionName2 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory2').val() == '') {
                                alert("옵션값2을 설정해주세요.");
                                return;
                            }
                        }
                    }
                }
                // <!-- 옵션 2 : 끝 -->

                // <!-- 옵션 3 : 시작 -->
                if (((Number)((document.getElementById("optionCount").value).slice(0,1))) == 3) {
                    if ($("#optionName1 option:selected").val() == '') {
                        alert("옵션명1을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName1 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect1').val() == '') {
                                alert("직접입력 옵션명1을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect1').val() == '') {
                                alert("직접입력 옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName1 option:selected").val() == '사이즈' || $("#optionName1 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory1').val() == '') {
                                alert("옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName2 option:selected").val() == '') {
                        alert("옵션명2을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName2 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect2').val() == '') {
                                alert("직접입력 옵션명2을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect1').val() == '') {
                                alert("직접입력 옵션값2을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName2 option:selected").val() == '사이즈' || $("#optionName2 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory2').val() == '') {
                                alert("옵션값2을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName3 option:selected").val() == '') {
                        alert("옵션명3을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName3 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect3').val() == '') {
                                alert("직접입력 옵션명3을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect3').val() == '') {
                                alert("직접입력 옵션값3을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName3 option:selected").val() == '사이즈' || $("#optionName3 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory3').val() == '') {
                                alert("옵션값3을 설정해주세요.");
                                return;
                            }
                        }
                    }
                }
                // <!-- 옵션 3 : 끝 -->

                // <!-- 옵션 4 : 시작 -->
                if (((Number)((document.getElementById("optionCount").value).slice(0,1))) == 4) {
                    if ($("#optionName1 option:selected").val() == '') {
                        alert("옵션명1을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName1 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect1').val() == '') {
                                alert("직접입력 옵션명1을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect1').val() == '') {
                                alert("직접입력 옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName1 option:selected").val() == '사이즈' || $("#optionName1 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory1').val() == '') {
                                alert("옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName2 option:selected").val() == '') {
                        alert("옵션명2을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName2 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect2').val() == '') {
                                alert("직접입력 옵션명2을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect1').val() == '') {
                                alert("직접입력 옵션값2을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName2 option:selected").val() == '사이즈' || $("#optionName2 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory2').val() == '') {
                                alert("옵션값2을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName3 option:selected").val() == '') {
                        alert("옵션명3을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName3 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect3').val() == '') {
                                alert("직접입력 옵션명3을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect3').val() == '') {
                                alert("직접입력 옵션값3을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName3 option:selected").val() == '사이즈' || $("#optionName3 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory3').val() == '') {
                                alert("옵션값3을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName4 option:selected").val() == '') {
                        alert("옵션명4을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName4 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect4').val() == '') {
                                alert("직접입력 옵션명4을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect4').val() == '') {
                                alert("직접입력 옵션값4을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName4 option:selected").val() == '사이즈' || $("#optionName4 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory4').val() == '') {
                                alert("옵션값4을 설정해주세요.");
                                return;
                            }
                        }
                    }
                }
                // <!-- 옵션 4 : 끝 -->

                // <!-- 옵션 5 : 시작 -->
                if (((Number)((document.getElementById("optionCount").value).slice(0,1))) == 5) {
                    if ($("#optionName1 option:selected").val() == '') {
                        alert("옵션명1을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName1 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect1').val() == '') {
                                alert("직접입력 옵션명1을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect1').val() == '') {
                                alert("직접입력 옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName1 option:selected").val() == '사이즈' || $("#optionName1 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory1').val() == '') {
                                alert("옵션값1을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName2 option:selected").val() == '') {
                        alert("옵션명2을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName2 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect2').val() == '') {
                                alert("직접입력 옵션명2을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect1').val() == '') {
                                alert("직접입력 옵션값2을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName2 option:selected").val() == '사이즈' || $("#optionName2 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory2').val() == '') {
                                alert("옵션값2을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName3 option:selected").val() == '') {
                        alert("옵션명3을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName3 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect3').val() == '') {
                                alert("직접입력 옵션명3을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect3').val() == '') {
                                alert("직접입력 옵션값3을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName3 option:selected").val() == '사이즈' || $("#optionName3 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory3').val() == '') {
                                alert("옵션값3을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName4 option:selected").val() == '') {
                        alert("옵션명4을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName4 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect4').val() == '') {
                                alert("직접입력 옵션명4을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect4').val() == '') {
                                alert("직접입력 옵션값4을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName4 option:selected").val() == '사이즈' || $("#optionName4 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory4').val() == '') {
                                alert("옵션값4을 설정해주세요.");
                                return;
                            }
                        }
                    }
                    if ($("#optionName5 option:selected").val() == '') {
                        alert("옵션명5을 설정해주세요.");
                        return;
                    } else {
                        if ($("#optionName5 option:selected").val() == '직접입력') {
                            if ($('#inputOptionNameDirect5').val() == '') {
                                alert("직접입력 옵션명5을 설정해주세요.");
                                return;
                            } else if ($('#inputOptionValueDirect5').val() == '') {
                                alert("직접입력 옵션값5을 설정해주세요.");
                                return;
                            }
                        }
                        else if ($("#optionName5 option:selected").val() == '사이즈' || $("#optionName5 option:selected").val() == '컬러'){
                            if ($('#optionValueCategory5').val() == '') {
                                alert("옵션값5을 설정해주세요.");
                                return;
                            }
                        }
                    }
                }
                // <!-- 옵션 5 : 끝 -->


                // <!-- 옵션 리스트 : 시작 -->
                $('.optionList1').each(function (index, value) {
                    if (value.value == '') {
                        count1++
                    } else {
                        count1 = count2;
                    }
                })
                $('.optionList2').each(function (index, value) {
                    if (value.value == '') {
                        count2++
                    } else {
                        count2 = count2;
                    }
                })
                if (count1 > 0) {
                    alert("옵션가 확인해주세요.");
                    return;
                }
                if (count2 > 0) {
                    alert("옵션수량 확인해주세요.");
                    return;
                }
                // <!-- 옵션 리스트 : 끝 -->
            }


            // <%--$.ajax({--%>
            // <%--    url : "${pageContext.request.contextPath}/consignment/updateImage.json",--%>
            // <%--    type : "POST",--%>
            // <%--    enctype:'multipart/form-data',--%>
            // <%--    data: formData,--%>
            // <%--    contentType: false,--%>
            // <%--    processData: false,--%>
            // <%--    success : function(result) {--%>
            // <%--        if (result.resultCode === "success") {--%>
            // <%--            $.ajax({--%>
            // <%--                url : "${pageContext.request.contextPath}/consignment/updateProductInspectionInfo.json",--%>
            // <%--                type : "POST",--%>
            // <%--                data: params,--%>
            // <%--                success : function(result) {--%>
            // <%--                    if (result.resultCode == "success") {--%>
            // <%--                        alert(result.message)--%>
            // <%--                        if(${consignmentVO.selling == true}){--%>
            // <%--                            move('productSale.do', '');--%>
            // <%--                        }else{--%>
            // <%--                            move('inspection.do', '');--%>
            // <%--                        }--%>
            // <%--                    } else if (result.resultCode == "fail") {--%>
            // <%--                        alert(result.message);--%>
            // <%--                    } else {--%>
            // <%--                        alert(result.message);--%>
            // <%--                    }--%>
            // <%--                }--%>
            // <%--            });--%>
            // <%--        } else {--%>
            // <%--            alert(result.message);--%>
            // <%--        }--%>
            // <%--    }--%>
            // <%--});--%>

            $.ajax({
                url : "${pageContext.request.contextPath}/consignment/updateProductInspectionInfo.json",
                type : "POST",
                enctype:'multipart/form-data',
                data: formData,
                contentType: false,
                processData: false,
                success : function(result) {
                    if (result.resultCode == "success") {
                        alert(result.message)
                        if(${consignmentVO.selling == true}){
                            move('productSale.do', '');
                        }else{
                            move('inspection.do', '');
                        }
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

        function changeDeliveryType(){
            if($('#delivery_type').val() =='무료배송'){
                $('#delivery_charge').val('');
                $('#delivery_charge').prop("readonly",true);
                document.getElementById('freeDelivery').style.display = 'none';
            } else if ($('#delivery_type').val() =='조건부 무료배송') {
                document.getElementById('freeDelivery').style.display = '';
                $('#delivery_charge').prop("readonly",false);
            } else if ($('#delivery_type').val() == '유료배송') {
                document.getElementById('freeDelivery').style.display = 'none';
                $('#delivery_charge').prop("readonly",false);
            }
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

        function addImageFile2(obj, maxFile){
            var maxFileCnt = maxFile;   // 첨부파일 최대 개수
            var attFileCnt = document.querySelectorAll('.list-inline-item').length;
            var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
            var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수
            var fileNo = 0;

            // 첨부이미지 개수 확인
            if (curFileCnt > remainFileCnt) {
                alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
                return;
            }

            for (var i = 0; i < Math.min(curFileCnt, remainFileCnt); i++) {
                const file = obj.files[i];

                // 첨부이미지 검증
                if (imageValidation(file)) {
                    // 파일 배열에 담기
                    var reader = new FileReader();
                    reader.onload = function () {
                        filesArr.push(file);
                    };
                    reader.readAsDataURL(file)

                    var imageSrc = URL.createObjectURL(file);
                    // 목록 추가
                    let htmlData = '';

                    htmlData += '<li class="list-inline-item" id="previewBox' + fileNo + '" >';
                    htmlData += '<div class="bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex"><div class="text-center">';
                    htmlData += '<img src="'+ imageSrc +'" id="preview'+fileNo+'" class="rounded" alt="profile image" height="64" width="64">';
                    htmlData += '<p class="mt-50 mb-0">'+ longNameCutter(file.name) +'</p>';
                    htmlData += '</div><div class="delete-and-discount-config h-100 ml-50 d-flex flex-column justify-content-between"><span class="cursor-pointer d-flex justify-content-center align-items-center">';
                    htmlData += `<i class="fa fa-times-circle-o font-size-increase danger" onclick="imageDeleteFile(`+ fileNo +`)"></i>`;
                    htmlData += '</span></div></div></li>';

                    $('#image_list1').append(htmlData);
                    fileNo++;
                } else {
                    continue;
                }
            }
            // 초기화
            // document.querySelector("input[type=file]").value = "";
        }

        function imageDeleteFile(num) {
            document.querySelector("#previewBox" + num).remove();
            filesArr[num].is_delete = true;
        }

        function fn_countOption() {
            if (document.getElementById("optionCount").value == '1개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = 'none';
                document.getElementById('formOption3').style.display = 'none';
                document.getElementById('formOption4').style.display = 'none';
                document.getElementById('formOption5').style.display = 'none';
            } else if (document.getElementById("optionCount").value == '2개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = '';
                document.getElementById('formOption3').style.display = 'none';
                document.getElementById('formOption4').style.display = 'none';
                document.getElementById('formOption5').style.display = 'none';
            } else if (document.getElementById("optionCount").value == '3개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = '';
                document.getElementById('formOption3').style.display = '';
                document.getElementById('formOption4').style.display = 'none';
                document.getElementById('formOption5').style.display = 'none';
            } else if (document.getElementById("optionCount").value == '4개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = '';
                document.getElementById('formOption3').style.display = '';
                document.getElementById('formOption4').style.display = '';
                document.getElementById('formOption5').style.display = 'none';
            } else if (document.getElementById("optionCount").value == '5개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = '';
                document.getElementById('formOption3').style.display = '';
                document.getElementById('formOption4').style.display = '';
                document.getElementById('formOption5').style.display = '';
            }
            document.getElementById("optionCountA").innerText = '옵션 목록(옵션명갯수'+ document.getElementById("optionCount").value +')';
        }

        function showPopup(){
            tab0.style.display = 'none';
            tab1.style.display = '';
            tab2.style.display = '';
            tab3.style.display = 'none';
            document.getElementById('noOption').style.display = 'none';

        };

        function hidePopup(){
            tab0.style.display = '';
            tab1.style.display = 'none';
            tab2.style.display = 'none';
            tab3.style.display = 'none';
            document.getElementById('noOption').style.display = '';

        };

        function remove_tr(even){
            even.closest('tr').remove();//삭제
        };
        function addRow(no) {
            if (no == 2) {
                $("#optionCount").val("2개").prop("selected", true);
                document.getElementById('formOption2').style.display = '';
            } else if (no == 3) {
                $("#optionCount").val("3개").prop("selected", true);
                document.getElementById('formOption3').style.display = '';
            } else if (no == 4) {
                $("#optionCount").val("4개").prop("selected", true);
                document.getElementById('formOption4').style.display = '';
            } else if (no == 5) {
                $("#optionCount").val("5개").prop("selected", true);
                document.getElementById('formOption5').style.display = '';
            }
        };

        function countOption() {
            let count = 0;
            if (document.getElementById('formOption1').style.display != 'none') {
                count++;
            }
            if (document.getElementById('formOption2').style.display != 'none') {
                count++;
            }
            if (document.getElementById('formOption3').style.display != 'none') {
                count++;
            }
            if (document.getElementById('formOption4').style.display != 'none') {
                count++;
            }
            if (document.getElementById('formOption5').style.display != 'none') {
                count++;
            }
            return count;
        };

        function removeRow(no) {
            if (no == 2) {
                // $("#optionCount").val("1개").prop("selected", true);
                document.getElementById('optionCount').value = '1개';
                document.getElementById('formOption2').style.display = 'none';
                document.getElementById('optionValueCategory2').value = '';
                document.getElementById('inputOptionNameDirect2').value = '';
                document.getElementById('inputOptionValueDirect2').value = '';
            } else if (no == 3) {
                // $("#optionCount").val("2개").prop("selected", true);
                document.getElementById('optionCount').value = '2개';
                document.getElementById('formOption3').style.display = 'none';
                document.getElementById('optionValueCategory3').value = '';
                document.getElementById('inputOptionNameDirect3').value = '';
                document.getElementById('inputOptionValueDirect3').value = '';
            } else if (no == 4) {
                // $("#optionCount").val("3개").prop("selected", true);
                document.getElementById('optionCount').value = '3개';
                document.getElementById('formOption4').style.display = 'none';
                document.getElementById('optionValueCategory4').value = '';
                document.getElementById('inputOptionNameDirect4').value = '';
                document.getElementById('inputOptionValueDirect4').value = '';
            } else if (no == 5) {
                // $("#optionCount").val("4개").prop("selected", true);
                document.getElementById('optionCount').value = '4개';
                document.getElementById('formOption5').style.display = 'none';
                document.getElementById('optionValueCategory5').value = '';
                document.getElementById('inputOptionNameDirect5').value = '';
                document.getElementById('inputOptionValueDirect5').value = '';
            }
        };

        function change_reason() {
            if ($("#return_reason option:selected").val() != '직접입력') {
                $('#selectReason').attr('class', 'col-md-10');
                document.getElementById('inputReason').style.display = 'none';
            } else if ($("#return_reason option:selected").val() == '직접입력') {
                $('#selectReason').attr('class', 'col-md-4');
                document.getElementById('inputReason').style.display = '';
            }
        };

        function fn_countOption() {
            if (document.getElementById("optionCount").value == '1개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = 'none';
                document.getElementById('formOption3').style.display = 'none';
                document.getElementById('formOption4').style.display = 'none';
                document.getElementById('formOption5').style.display = 'none';
            } else if (document.getElementById("optionCount").value == '2개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = '';
                document.getElementById('formOption3').style.display = 'none';
                document.getElementById('formOption4').style.display = 'none';
                document.getElementById('formOption5').style.display = 'none';
            } else if (document.getElementById("optionCount").value == '3개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = '';
                document.getElementById('formOption3').style.display = '';
                document.getElementById('formOption4').style.display = 'none';
                document.getElementById('formOption5').style.display = 'none';
            } else if (document.getElementById("optionCount").value == '4개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = '';
                document.getElementById('formOption3').style.display = '';
                document.getElementById('formOption4').style.display = '';
                document.getElementById('formOption5').style.display = 'none';
            } else if (document.getElementById("optionCount").value == '5개') {
                document.getElementById('formOption1').style.display = '';
                document.getElementById('formOption2').style.display = '';
                document.getElementById('formOption3').style.display = '';
                document.getElementById('formOption4').style.display = '';
                document.getElementById('formOption5').style.display = '';
            }
            document.getElementById("optionCountA").innerText = '옵션 목록(옵션명갯수'+ document.getElementById("optionCount").value +')';
        }

        function changeMiddleOption1() {
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionName1').options[document.getElementById('optionName1').selectedIndex].value
            }

            if (document.getElementById('optionName1').options[document.getElementById('optionName1').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu1").style.display = '';
                document.getElementById("optionMenuDirect1").style.display = 'none';
                document.getElementById("optionValue1").style.display = '';
                document.getElementById("optionValueDirect1").style.display = 'none';
            } else if (document.getElementById('optionName1').options[document.getElementById('optionName1').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu1").style.display = 'none';
                document.getElementById("optionMenuDirect1").style.display = '';
                document.getElementById("optionValue1").style.display = 'none';
                document.getElementById("optionValueDirect1").style.display = '';
            }
        }

        function changeMiddleOption2(){
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionNameDirect1').options[document.getElementById('optionNameDirect1').selectedIndex].value
            }

            if (document.getElementById('optionNameDirect1').options[document.getElementById('optionNameDirect1').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu1").style.display = '';
                document.getElementById("optionMenuDirect1").style.display = 'none';
                document.getElementById("optionValue1").style.display = '';
                document.getElementById("optionValueDirect1").style.display = 'none';
            } else if (document.getElementById('optionNameDirect1').options[document.getElementById('optionNameDirect1').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu1").style.display = 'none';
                document.getElementById("optionMenuDirect1").style.display = '';
                document.getElementById("optionValue1").style.display = 'none';
                document.getElementById("optionValueDirect1").style.display = '';
            }
        }

        function changeMiddleOption3(){
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionName2').options[document.getElementById('optionName2').selectedIndex].value
            }

            if (document.getElementById('optionName2').options[document.getElementById('optionName2').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu2").style.display = '';
                document.getElementById("optionMenuDirect2").style.display = 'none';
                document.getElementById("optionValue2").style.display = '';
                document.getElementById("optionValueDirect2").style.display = 'none';
            } else if (document.getElementById('optionName2').options[document.getElementById('optionName2').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu2").style.display = 'none';
                document.getElementById("optionMenuDirect2").style.display = '';
                document.getElementById("optionValue2").style.display = 'none';
                document.getElementById("optionValueDirect2").style.display = '';
            }
        }

        function changeMiddleOption4(){
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionNameDirect2').options[document.getElementById('optionNameDirect2').selectedIndex].value
            }

            if (document.getElementById('optionNameDirect2').options[document.getElementById('optionNameDirect2').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu2").style.display = '';
                document.getElementById("optionMenuDirect2").style.display = 'none';
                document.getElementById("optionValue2").style.display = '';
                document.getElementById("optionValueDirect2").style.display = 'none';
            } else if (document.getElementById('optionNameDirect2').options[document.getElementById('optionNameDirect2').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu2").style.display = 'none';
                document.getElementById("optionMenuDirect2").style.display = '';
                document.getElementById("optionValue2").style.display = 'none';
                document.getElementById("optionValueDirect2").style.display = '';
            }
        }

        function changeMiddleOption5(){
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionName3').options[document.getElementById('optionName3').selectedIndex].value
            }

            if (document.getElementById('optionName3').options[document.getElementById('optionName3').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu3").style.display = '';
                document.getElementById("optionMenuDirect3").style.display = 'none';
                document.getElementById("optionValue3").style.display = '';
                document.getElementById("optionValueDirect3").style.display = 'none';
            } else if (document.getElementById('optionName3').options[document.getElementById('optionName3').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu3").style.display = 'none';
                document.getElementById("optionMenuDirect3").style.display = '';
                document.getElementById("optionValue3").style.display = 'none';
                document.getElementById("optionValueDirect3").style.display = '';
            }
        }

        function changeMiddleOption6() {
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionNameDirect3').options[document.getElementById('optionNameDirect3').selectedIndex].value
            }

            if (document.getElementById('optionNameDirect3').options[document.getElementById('optionNameDirect3').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu3").style.display = '';
                document.getElementById("optionMenuDirect3").style.display = 'none';
                document.getElementById("optionValue3").style.display = '';
                document.getElementById("optionValueDirect3").style.display = 'none';
            } else if (document.getElementById('optionNameDirect3').options[document.getElementById('optionNameDirect3').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu3").style.display = 'none';
                document.getElementById("optionMenuDirect3").style.display = '';
                document.getElementById("optionValue3").style.display = 'none';
                document.getElementById("optionValueDirect3").style.display = '';
            }
        }

        function changeMiddleOption7(){
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionName4').options[document.getElementById('optionName4').selectedIndex].value
            }

            if (document.getElementById('optionName4').options[document.getElementById('optionName4').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu4").style.display = '';
                document.getElementById("optionMenuDirect4").style.display = 'none';
                document.getElementById("optionValue4").style.display = '';
                document.getElementById("optionValueDirect4").style.display = 'none';
            } else if (document.getElementById('optionName4').options[document.getElementById('optionName4').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu4").style.display = 'none';
                document.getElementById("optionMenuDirect4").style.display = '';
                document.getElementById("optionValue4").style.display = 'none';
                document.getElementById("optionValueDirect4").style.display = '';
            }
        }

        function changeMiddleOption8(){
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionNameDirect4').options[document.getElementById('optionNameDirect4').selectedIndex].value
            }

            if (document.getElementById('optionNameDirect4').options[document.getElementById('optionNameDirect4').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu4").style.display = '';
                document.getElementById("optionMenuDirect4").style.display = 'none';
                document.getElementById("optionValue4").style.display = '';
                document.getElementById("optionValueDirect4").style.display = 'none';
            } else if (document.getElementById('optionNameDirect4').options[document.getElementById('optionNameDirect4').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu4").style.display = 'none';
                document.getElementById("optionMenuDirect4").style.display = '';
                document.getElementById("optionValue4").style.display = 'none';
                document.getElementById("optionValueDirect4").style.display = '';
            }
        }

        function changeMiddleOption9(){
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionName5').options[document.getElementById('optionName5').selectedIndex].value
            }

            if (document.getElementById('optionName5').options[document.getElementById('optionName5').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu5").style.display = '';
                document.getElementById("optionMenuDirect5").style.display = 'none';
                document.getElementById("optionValue5").style.display = '';
                document.getElementById("optionValueDirect5").style.display = 'none';
            } else if (document.getElementById('optionName5').options[document.getElementById('optionName5').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu5").style.display = 'none';
                document.getElementById("optionMenuDirect5").style.display = '';
                document.getElementById("optionValue5").style.display = 'none';
                document.getElementById("optionValueDirect5").style.display = '';
            }
        }

        function changeMiddleOption10(){
            var htmlString = '';
            var params = {
                'option_id': document.getElementById('optionNameDirect5').options[document.getElementById('optionNameDirect5').selectedIndex].value
            }

            if (document.getElementById('optionNameDirect5').options[document.getElementById('optionNameDirect5').selectedIndex].value != '직접입력') {
                document.getElementById("optionMenu5").style.display = '';
                document.getElementById("optionMenuDirect5").style.display = 'none';
                document.getElementById("optionValue5").style.display = '';
                document.getElementById("optionValueDirect5").style.display = 'none';
            } else if (document.getElementById('optionNameDirect5').options[document.getElementById('optionNameDirect5').selectedIndex].value == '직접입력') {
                document.getElementById("optionMenu5").style.display = 'none';
                document.getElementById("optionMenuDirect5").style.display = '';
                document.getElementById("optionValue5").style.display = 'none';
                document.getElementById("optionValueDirect5").style.display = '';
            }
        }

        function fn_openOption() {
            if (document.getElementById('tab-menu3').style.display === '') {
                document.getElementById('tab-menu3').style.display = 'none';
            } else {
                document.getElementById('tab-menu3').style.display = '';
            }

            let html = '';
            let count = (Number)(document.getElementById("optionCount").value.slice(0,1));

            document.getElementById("optionCountA").innerText = '옵션 목록(옵션명 갯수' + count + '개)'

            let optionName1 = document.getElementById("optionName1").value;     // 셀렉트 선택 부분
            let optionName2 = document.getElementById("optionName2").value;
            let optionName3 = document.getElementById("optionName3").value;
            let optionName4 = document.getElementById("optionName4").value;
            let optionName5 = document.getElementById("optionName5").value;

            let optionFull1 = document.getElementById("optionValueCategory1").value;
            let optionFull2 = document.getElementById("optionValueCategory2").value;
            let optionFull3 = document.getElementById("optionValueCategory3").value;
            let optionFull4 = document.getElementById("optionValueCategory4").value;
            let optionFull5 = document.getElementById("optionValueCategory5").value;

            let optionFullPre1 = document.getElementById("optionValueCategory1").value;
            let optionFullPre2 = document.getElementById("optionValueCategory2").value;
            let optionFullPre3 = document.getElementById("optionValueCategory3").value;
            let optionFullPre4 = document.getElementById("optionValueCategory4").value;
            let optionFullPre5 = document.getElementById("optionValueCategory5").value;

            let optionList1 = document.getElementById("optionValueCategory1").value.split(",");         // 사이즈, 컬러 입력값 배열
            let optionList2 = document.getElementById("optionValueCategory2").value.split(",");
            let optionList3 = document.getElementById("optionValueCategory3").value.split(",");
            let optionList4 = document.getElementById("optionValueCategory4").value.split(",");
            let optionList5 = document.getElementById("optionValueCategory5").value.split(",");

            let inputOptionValue1 = document.getElementById("inputOptionValueDirect1").value.split(",");        // 직접입력 입력값 배열
            let inputOptionValue2 = document.getElementById("inputOptionValueDirect2").value.split(",");
            let inputOptionValue3 = document.getElementById("inputOptionValueDirect3").value.split(",");
            let inputOptionValue4 = document.getElementById("inputOptionValueDirect4").value.split(",");
            let inputOptionValue5 = document.getElementById("inputOptionValueDirect5").value.split(",");

            if (optionName1 == "직접입력") {
                optionName1 = document.getElementById("inputOptionNameDirect1").value;
            }
            if (optionName2 == "직접입력") {
                optionName2 = document.getElementById("inputOptionNameDirect2").value;
            }
            if (optionName3 == "직접입력") {
                optionName3 = document.getElementById("inputOptionNameDirect3").value;
            }
            if (optionName4 == "직접입력") {
                optionName4 = document.getElementById("inputOptionNameDirect4").value;
            }
            if (optionName5 == "직접입력") {
                optionName5 = document.getElementById("inputOptionNameDirect5").value;
            }


            let optionD1 = '';
            let option1 = '';
            let optionD2 = '';
            let option2 = '';
            let optionD3 = '';
            let option3 = '';
            let optionD4 = '';
            let option4 = '';
            let optionD5 = '';
            let option5 = '';


            if (optionFull1.length == 0) {
                optionD1 = inputOptionValue1.length;
            } else {
                optionD1 = optionList1.length;
            }
            if (optionFull2.length == 0) {
                optionD2 = inputOptionValue2.length;
            } else {
                optionD2 = optionList2.length;
            }
            if (optionFull3.length == 0) {
                optionD3 = inputOptionValue3.length;
            } else {
                optionD3 = optionList3.length;
            }
            if (optionFull4.length == 0) {
                optionD4 = inputOptionValue4.length;
            } else {
                optionD4 = optionList4.length;
            }
            if (optionFull5.length == 0) {
                optionD5 = inputOptionValue5.length;
            } else {
                optionD5 = optionList5.length;
            }

            for (let j = 0; j < optionD1; j++) {
                if (optionFullPre1.length != 0) {
                    option1 = optionList1[j];
                } else {
                    option1 = inputOptionValue1[j];
                }
                for (let k = 0; k < optionD2; k++) {
                    if (optionFullPre2.length != 0) {
                        option2 = optionList2[k];
                    } else {
                        option2 = inputOptionValue2[k];
                    }
                    for (let l = 0; l < optionD3; l++) {
                        if (optionFullPre3.length != 0) {
                            option3 = optionList3[l];
                        } else {
                            option3 = inputOptionValue3[l];
                        }
                        for (let m = 0; m < optionD4; m++) {
                            if (optionFullPre4.length != 0) {
                                option4 = optionList4[m];
                            } else {
                                option4 = inputOptionValue4[m];
                            }
                            for (let n = 0; n < optionD5; n++) {
                                if (optionFullPre5.length != 0) {
                                    option5 = optionList5[n];
                                } else {
                                    option5 = inputOptionValue5[n];
                                }
                                html = html + `
                                            <tr>
                                                <td class="text-center align-middle width-50">
                                                    <div class="skin skin-flat">
                                                        <input type="checkbox" id="input-1" class="optionListCheckbox" name="optionListCheckbox">
                                                        <label class="sr-only" for="input-1">Checkbox Checked</label>
                                                    </div>
                                                </td>
                                                <td class="text-center option1">`+ option1 +`</td>
                                                <td class="text-center option2">`+ option2 +`</td>
                                                <td class="text-center option3">`+ option3 +`</td>
                                                <td class="text-center option4">`+ option4 +`</td>
                                                <td class="text-center option5">`+ option5 +`</td>
                                                <td class="text-center border-right-blue-grey border-right-lighten-4"><input class="form-control optionList1" type="text" value="" onkeyup="inputNumberFormat(this);"></td>
                                                <td class="text-center border-right-blue-grey border-right-lighten-4"><input class="form-control optionList2" type="text" value="" onkeyup="inputNumberFormat(this);"></td>
                                                <td class="text-center align-middle">
                                                    <button type="button" class="btn btn-sm btn-outline-light" onclick="remove_tr(this)"><i class="feather icon-x"></i></button>
                                                </td>
                                            </tr>`;
                            }
                        }
                    }
                }
            }
            let head = `
                            <tr>
                                <td class="text-center align-middle width-50"><input type="checkbox" id="optionListTotalCheckBox" onclick="selectCheckAll()"></td>
                                <td class="text-center optionListName1">`+ optionName1 +`</td>
                                <td class="text-center optionListName2">`+ optionName2 +`</td>
                                <td class="text-center optionListName3">`+ optionName3 +`</td>
                                <td class="text-center optionListName4">`+ optionName4 +`</td>
                                <td class="text-center optionListName5">`+ optionName5 +`</td>
                            </tr>`;

            document.getElementById("optionTable").innerHTML = head + html;
        }

        function down() {
            if ($("#optionName1 option:selected").text() != '직접입력') {

            } else if ($("#optionName1 option:selected").text() == '직접입력') {

            }
            document.getElementById('inputOptionName').innerText = $("#topOption option:selected").text();
            document.getElementById('optionList2').innerText = $("#optionValueCategory1 option:selected").text();
        }

        function checkDelete() {

            const check1 = document.getElementById('inputCheck');

            if (check1.checked) {
                $("input:checkbox[id='inputCheck']").prop("checked", false);
                document.getElementById('inputOptionName').innerText = '';
                document.getElementById('optionList2').innerText = '';
                document.getElementById('optionList3').innerText = '';
                document.getElementById('optionList4').innerText = '';
            }
        }

        function registerTotal1(target) {
            let list = document.querySelectorAll('.optionList1');
            for (let i = 0; i < list.length; i++) {
                list[i].value = target;
            }
        };
        function registerTotal2(target) {
            let list = document.querySelectorAll('.optionList2');
            for (let i = 0; i < list.length; i++) {
                list[i].value = target;
            }
        };

        function removeCheckedOptionList() {
            $('input[class = optionListCheckbox]:checked').each(function (key, value){
                let checkedBox = value.parentElement.parentElement.parentElement;
                $(checkedBox).remove();
            })
        }

    </script>

    <!-- BEGIN: Theme JS-->
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app-menu.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/switch.js"></script>
    <!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
