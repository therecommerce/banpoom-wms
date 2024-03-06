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

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-6 col-12">
                <h3 class="content-header-title mb-50">주문/배송 관리</h3>
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
                                    <p class="sub-heading">결제완료</p>
                                    <a href="#" onclick="searchStatus('결제완료');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${deliveryCountVO.paymentCompleteCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">배송요청</p>
                                    <a href="#" onclick="searchStatus('배송요청');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${deliveryCountVO.deliveryRequestCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">배송준비중</p>
                                    <a href="#" onclick="searchStatus('배송준비중');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${deliveryCountVO.deliveryPrepareCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">배송중</p>
                                    <a href="#" onclick="searchStatus('배송중');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${deliveryCountVO.onDeliveryCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">배송완료</p>
                                    <a href="#" onclick="searchStatus('배송완료');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${deliveryCountVO.deliveryCompleteCount}</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-6 col-6">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body height-80">
                                    <p class="sub-heading">취소</p>
                                    <a href="#" onclick="searchStatus('취소');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${deliveryCountVO.deliveryCancelCount}</span></a>
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
                                               for="searchProduct">상세검색</label>
                                        <div class="col-md-5 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <label class="sr-only" for="searchValue">상품명</label>
                                                    <select id="searchProduct" name="interested"
                                                            class="form-control">
                                                        <option value="주문번호" selected="">주문번호</option>
                                                        <option value="수령인" >수령인</option>
                                                        <option value="구매자">구매자</option>
                                                        <option value="셀러명">셀러명</option>
                                                    </select>

                                                </div>
                                                <div class="form-group col-md-6 border-bottom-0">
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
                                                       name="selectOne1" id="checkSearch6" value="결제완료">
                                                <label class="custom-control-label" for="checkSearch6">결제완료</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch1" value="배송 요청">
                                                <label class="custom-control-label" for="checkSearch1">배송 요청</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch2" value="배송준비중">
                                                <label class="custom-control-label" for="checkSearch2">배송준비중</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch3" value="배송중">
                                                <label class="custom-control-label" for="checkSearch3">배송중</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch4" value="배송완료">
                                                <label class="custom-control-label" for="checkSearch4" >배송완료</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       name="selectOne1" id="checkSearch5" value="취소">
                                                <label class="custom-control-label" for="checkSearch5">취소</label>
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
                                                                <input type='text' id="start_dt" name="11"
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
                                                                <input type='text' id="end_dt" name="12"
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
                                            data-toggle="modal" data-target="#modal-1">주문확인</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-2">발송처리</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-3">취소요청(품절)</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width"
                                            data-toggle="modal" data-target="#modal-4">배송정보 입력</button>
                                </div>
<%--                                <div class="col-md-6">--%문
<%--                                    <button type="button" class="btn btn-outline-red btn-min-width float-right" data-toggle="modal" data-target="#modal_decide_cancel">구매확정 철회</button>--%>
<%--                                    <button type="button" class="btn btn-outline-blue btn-min-width float-right" data-toggle="modal" data-target="#modal_decide">구매확정</button>--%>
<%--                                </div>--%>
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-outline-blue btn-min-width float-right">다운로드</button>
                                </div>
                            </div>
                            <hr class="my-2">
                            <!-- datatable started -->
                            <div id="app-invoice-wrapper" class="">
                                <table id="user_data_table" class="table table-striped table-hover">
                                    <thead class="text-center">
                                    <tr>
                                        <th><input type="checkbox" id="selectAll" name="selectAll" /></th>
                                        <th>주문번호</th>
                                        <th>셀러명</th>
                                        <th>상품명(옵션)수량</th>
                                        <th>배송정보</th>
                                        <th>주문/배송 상태</th>
                                        <th>구매자</th>
                                        <th>구매자 연락처</th>
                                        <th>수령인</th>
                                        <th>주소</th>
                                        <th>주문일</th>
                                        <th>구매확정일</th>
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
                        <h4 class="modal-title" id="myModalLabel20">주문확인</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <h5 class="my-4">주문확인 처리하시겠습니까?</h5>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus('배송준비중');">확인</button>
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
                        <h4 class="modal-title" id="myModalLabel20">발송처리</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center my-2">
                            <h5>발송처리 하시겠습니까?</h5>
                            <p>발송처리 후 운송장 번호는 변경할 수 있습니다.</p>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus('배송중');">확인</button>
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
                        <h4 class="modal-title" id="myModalLabel20">취소요청(품절)</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center my-2">
                            <h5>주문을 취소하시겠습니까?</h5>
                            <p>확인을 누르면 구매자에게 메시지가 전송됩니다.</p>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus('취소');">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal-4 -->
        <div class="modal fade text-left" id="modal-4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
             aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel20">배송정보 입력</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <h5>3개 물품이 선택됨</h5>
                        <table class="table align-middle">
                            <thead class="text-center bg-blue-grey bg-lighten-5">
                            <tr>
                                <th>주문번호</th>
                                <th>배송정보</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="text-center">
                                <td><a href="#">221221-234</a></td>
                                <td>
                                    <div class="row">
                                        <div class="form-group col-md-4 border-bottom-0 mb-0">
                                            <label class="sr-only" for="projectinput1">택배사 선택</label>
                                            <select id="projectinput1" name="interested" class="form-control">
                                                <option value="none" selected="" disabled="">택배사 선택
                                                </option>
                                                <option value="a">a</option>
                                                <option value="b">b</option>
                                                <option value="c">c</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-8 border-bottom-0 mb-0">
                                            <input type="text" id="userinput1" class="form-control"
                                                   placeholder="택배사 선택" name="">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td><a href="#">221221-234</a></td>
                                <td>
                                    <div class="row">
                                        <div class="form-group col-md-4 border-bottom-0 mb-0">
                                            <label class="sr-only" for="projectinput1">택배사 선택</label>
                                            <select id="projectinput1" name="interested" class="form-control">
                                                <option value="none" selected="" disabled="">택배사 선택
                                                </option>
                                                <option value="a">a</option>
                                                <option value="b">b</option>
                                                <option value="c">c</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-8 border-bottom-0 mb-0">
                                            <input type="text" id="userinput1" class="form-control"
                                                   placeholder="택배사 선택" name="">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td><a href="#">221221-234</a></td>
                                <td>
                                    <div class="row">
                                        <div class="form-group col-md-4 border-bottom-0 mb-0">
                                            <label class="sr-only" for="projectinput1">택배사 선택</label>
                                            <select id="projectinput1" name="interested" class="form-control">
                                                <option value="none" selected="" disabled="">택배사 선택
                                                </option>
                                                <option value="a">a</option>
                                                <option value="b">b</option>
                                                <option value="c">c</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-8 border-bottom-0 mb-0">
                                            <input type="text" id="userinput1" class="form-control"
                                                   placeholder="택배사 선택" value="39912041231" name="">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width">저장</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 구매확정 모달 : 시작 -->
<div class="modal fade text-left" id="modal_decide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="decideTitle">구매확정</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center my-2">
                    <h5>구매확정 하시겠습니까?</h5>
                    <p>구매확정 </p>
                </div>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="orderDecide()">확인</button>
            </div>
        </div>
    </div>
</div>
<!-- 구매확정 모달 : 끝 -->

<!-- 확정취소 모달 : 시작 -->
<div class="modal fade text-left" id="modal_decide_cancel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="cancelDecide">확정취소</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center my-2">
                    <h5>구매확정 취소 하시겠습니까?</h5>
                    <p>구매확정 취소 </p>
                </div>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="orderDecideCancel()">확인</button>
            </div>
        </div>
    </div>
</div>
<!-- 확정취소 모달 : 끝 -->

        <jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

        <!-- BEGIN: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>

        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.checkboxes.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
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
                        let total = $("input[name=selectOne1]").length;
                        let checked = $("input[name=selectOne1]:checked").length;

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
                let columnFields = ["checkbox", "delivery_no", "account_name", "product_name", "delivery_info", "order_delivery_state", "order_send_name", "order_send_phone", "order_rcv_name", "order_rcv_addr2", "order_delivery_dt","start_dt","end_dt"];
                let columWidths = [ 20, 20, 20, 60, 120, 50, 60, 60, 60, 60, 30, 0, 0];
                // var columWidths = [];

                init_datatable("${pageContext.request.contextPath}/direct/orderDeliveryManagement.json", columnFields, columWidths, fn_tbl_render);
            });


            function fn_tbl_render(data, type, full, meta) {

                var title = null;
                if (meta.col == 0) {
                    return '<input type="checkbox" id="selectOne" name="selectOne" value="' + full.delivery_no + '" />';
                } else if (meta.col == 1) {
                    return `<a onclick="'+${pageContext.request.contextPath}/+'" >` + full.delivery_no + `</a>`;
                }
                else if (meta.col == 2) {
                    return full.account_name + '(' + full.account_id + ')'
                } else if(meta.col == 3) {
                    if (full.product_option1 == '' || full.product_option1 == null) {
                        return '<td>' + full.product_name + '(-)' + '/ ' + full.product_count + '개' + '</td>'
                    } else if (full.product_option1 != '' && full.product_option1 != null) {
                        return '<td>' + full.product_name + '(' + full.product_option1 + ')' + '/ ' + full.product_count + '개' + '</td>'
                    }
                } else if (meta.col == 4) {
                    return `
                     <div class="input-group"><input type="text" class="form-control" placeholder="배송정보 추후 진행" aria-describedby="button-addon2" disabled>
                    <div class="input-group-append" id="button-addon2">
                        <button class="btn bg-blue-grey bg-lighten-3" type="button">
                            <i class="feather icon-search"></i>
                        </button>
                    </div>
                </div>`;
                } else if(meta.col == 5) {
                    switch (full.order_delivery_state) {
                        case null :
                            return "";
                            break;
                        case '배송중':
                            return '<span class="badge bg-purple bg-lighten-2 width-100 d-inline-block">' + full.order_delivery_state + '</span>'
                            break;
                        case '배송요청':
                            return '<span class="badge bg-blue-grey bg-lighten-2 width-100 d-inline-block">' + full.order_delivery_state + '</span>'
                            break;
                        case '배송준비중':
                            return '<span class="badge bg-amber bg-lighten-2 width-100 d-inline-block">' + full.order_delivery_state + '</span>'
                            break;
                        case '배송완료':
                            return '<span class="badge bg-blue bg-lighten-2 width-100 d-inline-block">' + full.order_delivery_state + '</span>'
                            break;
                        case '취소':
                            return '<span class="badge bg-info bg-lighten-2 width-100 d-inline-block">' + full.order_delivery_state + '</span>'
                            break;
                        case '결제완료':
                            return '<span class="badge bg-black bg-lighten-2 width-100 d-inline-block">' + full.order_delivery_state + '</span>'
                            break;
                        default:
                            return '<span>' + full.order_delivery_state + '</span>'
                            break;
                    }
                }
                else {
                    if(data != null) {
                        return data;
                    } else{
                        return "";
                    }
                }
            }

            function fn_search() {
                let table = $('#user_data_table').DataTable();

                let numCols = table.columns().nodes().length;
                for(let i=0; i<numCols; i++) { table.column(i).search(''); }


                let search = null;
                $(".search_tag").each(function() {
                    let val = $(this).val();
                    let idx = $(this).attr('name');

                    if(search == null)
                        search = table.column(idx).search(val);
                    else
                        search = search.column(idx).search(val);
                });

                let searchName =$('#searchProduct').val();
                let searchValue = $('#searchValue').val();
                let val = searchValue;
                let idx = '';
                switch (searchName){
                    case "수령인" :
                        idx = 8;
                        break;
                    case "구매자" :
                        idx = 6;
                        break;
                    case "주문번호" :
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

                let statusArray= [];
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
                    search = table.column(5).search(statusArray);
                else
                    search = search.column(5).search(statusArray);

                if(search != null)
                    search.draw();
            }

            function changeStatus(state) {

                let chk_val = [];

                $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                    if ($(this).is(":checked") == true) {
                        chk_val.push(iVal.value);
                    }
                })
                if(chk_val.length ==0){
                    alert('선택된 항목이 없습니다. 다시 확인해주세요.');
                    return;
                }
                let params = {
                    'product_state': state,
                    'delivery_no_list': chk_val,
                    'delivery_type' : '주문'
                }

                $.ajax({
                    url : "${pageContext.request.contextPath}/direct/orderDeliveryStatus.json",
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
                })
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
                $("#end_dt").val('')

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


            function searchStatus(type) {
                fn_reset();
                $('#selectAll1').prop("checked", false);
                switch (type) {
                    case "결제완료" :
                        $('#checkSearch6').prop("checked", true);
                        break;
                    case "배송요청" :
                        $('#checkSearch1').prop("checked", true);
                        break;
                    case "배송준비중" :
                        $('#checkSearch2').prop("checked", true);
                        break;
                    case "배송중" :
                        $('#checkSearch3').prop("checked", true);
                        break;
                    case "배송완료" :
                        $('#checkSearch4').prop("checked", true);
                        break;
                    case "취소" :
                        $('#checkSearch5').prop("checked", true);
                        break;
                }
                fn_search();
            }

            // function checkedCount() {
            //     let totalCount = $("input:checkbox[name='reviewList']").length;
            //     let count = $("input:checkbox[name='reviewList']:checked").length;
            //
            //     $("#checkedCount").html('( ' + count);
            //     $("#checkedTotalCount").html(' / ' + totalCount + ' )');
            // } // 체크박스 갯수 카운트 함수

            function orderDecide(order_request_id) {
                let chk_val = [];

                $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                    if ($(this).is(":checked") == true) {
                        chk_val.push(iVal.value);
                    }
                });
                if (order_request_id) {
                    chk_val.push(order_request_id)
                }

                let params = {
                    'order_request_list': chk_val,
                }

                if (chk_val == null || chk_val == '') {
                    alert("선택된 주문이 없습니다.");
                    return null;

                } else {
                    $.ajax({
                        url : "${pageContext.request.contextPath}/direct/orderDecide.json",
                        type : "POST",
                        data : JSON.stringify(params),
                        contentType : "application/json;",
                        success : function(result) {
                            if (result.resultCode == "success") {
                                alert(result.message);
                                fn_search();

                            } else{
                                alert(result.message);
                            }
                        }
                    })
                }

            }

            function orderDecideCancel(order_request_id) {
                let chk_val = [];

                $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                    if ($(this).is(":checked") == true) {
                        chk_val.push(iVal.value);
                    }
                });
                if (order_request_id) {
                    chk_val.push(order_request_id)
                }

                let params = {
                    'order_request_list': chk_val,
                }

                if (chk_val == null || chk_val == '') {
                    alert("선택된 주문이 없습니다.");
                    return null;
                } else {
                    $.ajax({
                        url : "${pageContext.request.contextPath}/direct/orderDecideCancel.json",
                        type : "POST",
                        data : JSON.stringify(params),
                        contentType : "application/json;",
                        success : function(result) {
                            if (result.resultCode == "success") {
                                alert(result.message);
                                fn_search();

                            } else {
                                alert(result.message);
                            }
                        }
                    })
                }

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
        <!-- END: Page Vendor JS-->

<%--        <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>--%>

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
