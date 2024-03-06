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
                <h3 class="content-header-title mb-50">배송 관리</h3>
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
                                                        <option value="상품명">상품명</option>
                                                        <option value="셀러명">셀러명</option>
                                                        <option value="구매자">구매자</option>
                                                        <option value="수령인">수령인</option>
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
                                                       name="selectOne1" id="checkSearch1" value="배송요청">
                                                <label class="custom-control-label" for="checkSearch1">배송요청</label>
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
                                                                <input type='text' id="start_dt" name="14"
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
                                                                <input type='text' id="end_dt" name="15"
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
                    <div id="excelList" hidden="hidden">
                    </div>
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
                                            onclick="sendPostInfo();">발송처리</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            onclick="trackingPrint()">송장출력</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                            data-toggle="modal" data-target="#modal-3">취소요청(품절)</button>
<%--                                    <button type="button" class="btn btn-outline-blue btn-min-width"--%>
<%--                                            data-toggle="modal" data-target="#modal-4">배송정보 입력</button>--%>
                                </div>
                                <div class="col-md-6">
                                    <label class="btn btn-outline-blue btn-min-width float-right" for="excelUpload">파일 업로드</label>
                                    <input type="file" id="excelUpload" hidden onchange="readExcel();">
                                    <button type="button" class="btn btn-outline-blue btn-min-width float-right" style="margin-right: 20px" onclick="registerExcelList()">업로드 적용</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width float-right" style="margin-right: 20px"
                                            onclick="location.href='${pageContext.request.contextPath}/resources/excelTemplate/어드민_반품수거보관주문업로드.xlsx'";>업로드 양식</button>
                                </div>
                                <div class="col-md-12">
                                    <button type="button" class="btn btn-outline-red btn-min-width float-right" data-toggle="modal" data-target="#modal_decide_cancel">구매확정 철회</button>
                                    <button type="button" class="btn btn-outline-blue btn-min-width float-right" data-toggle="modal" data-target="#modal_decide">구매확정</button>
                                </div>
                                <div class="col-md-12">
                                    <button type="button" class="btn btn-outline-blue btn-min-width float-right" onclick="exportExcel();">다운로드</button>
                                </div>
                            </div>
                            <hr class="my-2">
                            <!-- datatable started -->
                            <div class="table-responsive">
                                <table id="user_data_table" class="table table-striped table-hover">
                                    <thead class="text-center">
                                    <tr>
                                        <th><input type="checkbox" id="selectAll" name="selectAll" /></th>
                                        <th>배송번호</th>
                                        <th>셀러명</th>
                                        <th>판매처</th>
                                        <th>주문번호</th>
                                        <th>상품번호</th>
                                        <th>상품명(옵션)수량</th>
                                        <th>배송정보</th>
                                        <th>주문/배송상태</th>
                                        <th>구매자</th>
                                        <th>구매자 연락처</th>
                                        <th>수령인</th>
                                        <th>주소</th>
                                        <th>주문일</th>
                                    </tr>
                                    </thead>
                                </table>
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
                        <h4 class="modal-title" id="myModalLabel20">출고요청 확인</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <h5 class="my-4">출고 요청 확인처리하시겠습니까?</h5>
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

<!-- 트래킹 모달 : 끝 -->
<div class="modal fade text-left" id="modal-5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel200">배송 정보</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center" id="trackingContent">
                <div class="modal-body">
                    <div class="text-center my-2">
                        <h5>운송장 번호</h5>
                        <p id="trackingInfo"></p>
                    </div>
                    <div class="row justify-content-md-center">
                        <div class="col-lg-2 col-md-6 col-6">
                            <div class="float-left pl-2">
                                <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
                                    <span class="feather"></span>
                                </div>
                                <span class="blue-grey darken-1 block">배송요청</span>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-6">
                            <div class="float-left pl-2">
                                <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
                                    <span class="feather"></span>
                                </div>
                                <span class="blue-grey darken-1 block">상품 이동중</span>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-6">
                            <div class="float-left pl-2">
                                <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
                                    <span class="feather"></span>
                                </div>
                                <span class="blue-grey darken-1 block">배달지</span>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-6">
                            <div class="float-left pl-2">
                                <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
                                    <span class="feather"></span>
                                </div>
                                <span class="blue-grey darken-1 block">배달중</span>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-6">
                            <div class="float-left pl-2">
                                <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
                                    <span class="feather"></span>
                                </div>
                                <span class="blue-grey darken-1 block">배송완료</span>
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table align-middle">
                    <thead class="text-center bg-blue-grey bg-lighten-5">
                    <tr>
                        <th>처리 일시</th>
                        <th>배송 단계</th>
                        <th>처리 장소</th>
                    </tr>
                    </thead>
                    <tbody id="trackingTable">
                    </tbody>
                </table>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>
<!-- 트래킹 모달 : 끝 -->


<!-- 로딩 모달 : 시작 -->
<div class="modal fade text-left" id="modal-loading" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="d-flex align-items-center">
                <strong>Loading...</strong>
                <div class="spinner-border ms-auto" role="status" aria-hidden="true"></div>
            </div>
        </div>
    </div>
</div>
<!-- 로딩 모달 : 끝 -->

        <jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

        <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.14.3/xlsx.full.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.8/FileSaver.min.js"></script>

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

            $(document).ready(function() {
                var columnFields = ["checkbox", "delivery_no1", "account_name", "smartstore_name","smartstore_order_no", "product_id", "product_name", "delivery_info", "order_delivery_state", "order_send_name", "order_send_phone", "order_rcv_name", "order_rcv_addr2", "order_request_dt","start_dt","end_dt", "tracking_number_registe_flag", "order_rcv_addr1"];
                var columWidths = [ 20, 20, 10, 10,10,20, 60, 120, 60, 60, 60, 60, 60, 60, 0, 0, 0, 0];
                // var columWidths = [];

                init_datatable("${pageContext.request.contextPath}/keeping/keepingDeliveryManagement.json", columnFields, columWidths, fn_tbl_render);
            });


            function fn_tbl_render(data, type, full, meta) {

                var title = null;

                if (full.smartstore_order_no == undefined) {
                    full.smartstore_order_no = '-';
                }
                if (full.order_delivery_company == undefined) {
                    full.order_delivery_company = '';
                }
                if (full.smartstore_name == undefined) {
                    full.smartstore_name = '-';
                }
                if (full.tracking_number == undefined) {
                    full.tracking_number = '';
                }

                if (meta.col == 0) {
                    return '<input type="checkbox" id="selectOne" name="selectOne" value="' + full.delivery_no1 + '" />';
                } else if (meta.col == 2) {
                    return full.account_name + '(' + full.account_id + ')'
                } else if(meta.col == 5) {
                    return full.product_id;
                } else if (meta.col == 6) {
                    if (full.product_option1 == '' || full.product_option1 == null) {
                        return '<td>' + full.product_name + '(-)' + '/ ' + full.order_product_count + '개' + '</td>'
                    } else if (full.product_option1 != '' && full.product_option1 != null) {
                        return '<td>' + full.product_name + '(' + full.product_option1 + ')' + '/ ' + full.order_product_count + '개' + '</td>'
                    }
                } else if(meta.col == 7) {
                    if (full.tracking_number_registe_flag == 1) {
                        return `
                        <div class="row width-400">
                            <div class="col-md-4" style="margin: 0; padding: 0;">
                                <input id="diabledInput1" class="form-control companyInfo deliveryInfo" value="`+full.order_delivery_company+`" disabled>
                            </div>
                            <div class="col-md-5" style="margin: 0; padding: 0;">
                                <input id="diabledInput2" type="text" class="form-control deliveryInfo" placeholder="송장번호" aria-describedby="button-addon2" value="` + full.tracking_number + `" disabled>
                            </div>
                                <a class="btn bg-blue-white bg-lighten-3" data-toggle="modal" data-target="#modal-5" onclick="setTrackingInfo('` +full.order_delivery_company + `', '` + full.tracking_number + `')"><i class="feather icon-search"></i></a>
                        </div>
                        ` + ``
                    } else if(full.tracking_number_registe_flag == 0) {
                        return `
                        <div class="row width-400">
                            <div class="col-md-4" style="margin: 0; padding: 0;">
                                <select class="form-control companyInfo deliveryInfo" placeholder="택배사" id="deliveryCompany`+ full.delivery_no1 + `" name="deliveryCompany" value="`+full.order_delivery_company+`">
                                    <option value="" `+ (full.order_delivery_company == undefined || full.order_delivery_company == null ? 'selected' : '') +`></option>
                                    <option value="한진택배" `+ (full.order_delivery_company == "한진택배" ? 'selected' : '') +`>한진택배</option>
                                    <option value="CJ대한통운" `+ (full.order_delivery_company == "CJ대한통운" ? 'selected' : '') +`>CJ대한통운</option>
                                    <option value="우체국" `+ (full.order_delivery_company == "우체국" ? 'selected' : '') +`>우체국</option>
                                    <option value="롯데택배" `+ (full.order_delivery_company == "롯데택배" ? 'selected' : '') +`>롯데택배</option>
                                    <option value="로젠택배" `+ (full.order_delivery_company == "로젠택배" ? 'selected' : '') +`>로젠택배</option>
                                    <option value="일양택배" `+ (full.order_delivery_company == "일양택배" ? 'selected' : '') +`>일양택배</option>
                                    <option value="경동택배" `+ (full.order_delivery_company == "경동택배" ? 'selected' : '') +`>경동택배</option>
                                </select>
                            </div>
                            <div class="col-md-5" style="margin: 0; padding: 0;">
                                <input type="text" class="form-control deliveryInfo" placeholder="송장번호" aria-describedby="button-addon2" name="deliveryNumber" id="deliveryNumber`+ full.delivery_no1 + `" value="` + full.tracking_number + `">
                            </div>
                                <a class="btn bg-blue-white bg-lighten-3" data-toggle="modal" data-target="#modal-5" onclick="setTrackingInfo('` +full.order_delivery_company + `', '` + full.tracking_number + `')"><i class="feather icon-search"></i></a>
                            </div>
                        </div>`
                    }
                } else if (meta.col == 8) {
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
                        default:
                            return '<span>' + full.order_delivery_state + '</span>'
                            break;
                    }
                } else if (meta.col == 12) {
                    return full.order_rcv_addr1 + '' + full.order_rcv_addr2;
                } else {
                    if(data != null) {
                        return data;
                    } else {
                        return "";
                    }
                }
            }

            function fn_search() {
                var table = $('#user_data_table').DataTable();
                var numCols = table.columns().nodes().length;

                for(var i=0; i<numCols; i++) {
                    table.column(i).search('');
                }

                var search = null;

                $(".search_tag").each(function() {
                    var val = $(this).val();
                    var idx = $(this).attr('name');

                    if(search == null) {
                        search = table.column(idx).search(val);
                    } else {
                        search = search.column(idx).search(val);
                    }
                });

                var searchName =$('#searchProduct').val();
                var searchValue = $('#searchValue').val();
                var val = searchValue;
                var idx = '';

                switch (searchName){
                    case "상품명" :
                        idx = 6;
                        break;
                    case "주문번호" :
                        idx = 1;
                        break;
                    case "구매자" :
                        idx = 9;
                        break;
                    case "셀러명" :
                        idx = 2;
                        break;
                    case "수령인" :
                        idx = 11;
                        break;
                }
                if(search == null) {
                    search = table.column(idx).search(val);
                } else {
                    search = search.column(idx).search(val);
                }

                var statusArray= [];

                if ($("#selectAll1").is(":checked")) {
                    statusArray = '';
                } else {
                    $("input[name=selectOne1]").each(function() {
                        if(this.checked) {
                            statusArray.push($(this).val());
                        }
                    });
                }
                if(search == null) {
                    search = table.column(8).search(statusArray);
                } else {
                    search = search.column(8).search(statusArray);
                }

                if(search != null) {
                    search.draw();
                }
            }

            function changeStatus(state) {

                let chk_val = [];
                let isTrue = true;

                $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                    if ($(this).is(":checked") == true) {
                        chk_val.push(iVal.value);

                        let tdArr = [];
                        let stateArr = [];
                        let checkBtn = $(this);
                        let tr = checkBtn.closest('tr');
                        let td = tr.children('td');

                        td.each(function (i) {
                            if (i == 0) {
                                tdArr.push($(this).find('input[type="checkbox"]').attr('value'));
                            }else if (i == 8) {
                                stateArr.push(td.eq(i).text());
                            }
                        });

                        if (state == '배송준비중') {
                            if (stateArr.indexOf('결제완료') === -1) {
                                alert("결제완료 상태만 주문확인처리 가능합니다.");
                                isTrue = false;
                                return false;
                            }
                        }
                    }
                })

                if(chk_val.length ==0){
                    alert('선택된 항목이 없습니다. 다시 확인해주세요.');
                    return;
                }


                var params = {
                    'product_state': state,
                    'delivery_no_list': chk_val,
                    'delivery_type' : '주문'
                }

                if (isTrue) {
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


            function setTrackingInfo(company, trackingNumber){
                var trackingCompany = '';
                switch (company){
                case "롯데택배":
                case "'롯데'":
                    trackingCompany = 'LT';
                    break;    // 롯데
                case "CJ대한통운":
                    trackingCompany = 'CJ';
                    break;    // CJ
                case "한진택배":
                case "한진":
                    trackingCompany = 'HJ';
                    break; // 한진
                case "우체국택배":
                case "우체국":
                    trackingCompany = 'EP';
                    break;    // 우체국
                }

                $('#trackingInfo').html('<b>'+company +' '+ trackingNumber+'</b>');
                $('#trackingTable').html('');

                $.ajax({
                url : "https://therecommerce.kr/crawling?code="+trackingNumber+"&company="+trackingCompany,
                // crossDomain: true,
                type : "GET",
                success : function(result) {
                    if(result != null && result != undefined && result != ''){
                    for(let i=0; i<result.progress.length; i++) {
                        $('#trackingTable').append(`<tr><td>`+result.progress[i].date +` `+ result.progress[i].time +`</td><td>`+result.progress[i].info+`</td><td>`+ result.progress[i].location +`</td></tr>`);
                    }
                    }
                }
                })
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

            function readExcel() {
                let input = event.target;
                let reader = new FileReader();

                reader.onload = function () {
                    let data = reader.result;
                    let workBook = XLSX.read(data, { type: 'binary', cellDates: true, dateNF: 'yyyy-mm-dd'});

                    workBook.SheetNames.forEach(function (sheetName) {
                        let rows = XLSX.utils.sheet_to_json(workBook.Sheets[sheetName], {defval:"", raw : false});
                        let firstLine = 0;  //첫줄 설정(엑셀 파일 기준)

                        for (let i = firstLine; i < rows.length; i++) {
                            let str = Object.values(rows[i]);
                            let htmlData = '';

                            htmlData += '<tr id="excelRow'+ i +'" class="excelCount"><td><input type="checkbox" id="excelList'+ i +'" name="" /></td>'
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="sellerName'+ i +'" value="'+ str[0] +'"></td>'    // 셀러명
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="sellType'+ i +'" value="'+ str[1] +'"></td>'    // 위탁유형
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="sellLocation'+ i +'" value="'+ str[2] +'"></td>'    // 판매처
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="orderNumber'+ i +'" value="'+ str[3] +'"></td>'    // 스마트 스토어 주문번호
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="productCode'+ i +'" value="'+ str[4] +'"></td>'    // 상품코드(아이디)
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="productName'+ i +'" value="'+ str[5] +'"></td>'    // 상품명
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="productOption'+ i +'" value="'+ str[6] +'"></td>'    // 상품옵션
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="productPrice'+ i +'" value="'+ str[7] +'"></td>'    // 상품단가
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="productCount'+ i +'" value="'+ str[8] +'"></td>'    // 상품수량
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="purchaseName'+ i +'" value="'+ str[9] +'"></td>'    // 구매자
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="purchasePhone'+ i +'" value="'+ str[10] +'"></td>'    // 구매자연락처
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="payDay'+ i +'" value="'+ str[11] +'"></td>'    // 결제완료일
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="payMethod'+ i +'" value="'+ str[12] +'"></td>'    // 결제수단
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="deliveryPrice'+ i +'" value="'+ str[13] +'"></td>'    // 배송비
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="rcvName'+ i +'" value="'+ str[14] +'"></td>'    // 수하인
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="rcvPhone1'+ i +'" value="'+ str[15] +'"></td>'    // 수하인전화1
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="rcvPhone2'+ i +'" value="'+ str[16] +'"></td>'    // 수하안전화2
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="zipcode'+ i +'" value="'+ str[17] +'"></td>'    // 우편번호
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="rcvAddr1'+ i +'" value="'+ str[18] +'"></td>'    // 수하인주소1
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="rcvAddr2'+ i +'" value="'+ str[19] +'"></td>'    // 수하인주소2
                            htmlData += '<td><input type="text" class="form-control-plaintext" readonly id="deliverMessage'+ i +'" value="'+ str[20] +'"></td>'    // 배송메세지

                            $('#excelList').append(htmlData);
                        }
                    })
                };
                reader.readAsBinaryString(input.files[0]);
            }

            function registerExcelList() {
                let rowCount = document.getElementsByClassName("excelCount").length;
                let formData = new FormData();

                if (rowCount == 0) {
                    alert("빈 엑셀")
                } else {
                    for (let j = 1; j < rowCount + 1; j++) {

                        if (document.getElementById("sellType" + j).value == '반품보관' || document.getElementById("sellType" + j).value == '반품위탁' || document.getElementById("sellType" + j).value == '위탁판매' || document.getElementById("sellType" + j).value == '재고위탁') {
                        formData.append("account_id", document.getElementById("sellerName" + j).value); // 셀러명
                        formData.append("sell_type", document.getElementById("sellType" + j).value);    // 위탁유형
                        formData.append("sellsite", document.getElementById("sellLocation" + j).value);       //판매처
                        formData.append("smartstore_order_no", document.getElementById("orderNumber" + j).value);       //주문번호
                        formData.append("product_id", document.getElementById("productCode" + j).value);    // 상품번호
                        formData.append("product_name", document.getElementById("productName" + j).value);  // 상품명
                        formData.append("productOption", document.getElementById("productOption" + j).value);  // 상품옵션
                        formData.append("product_price", (Number)(document.getElementById("productPrice"+ j).value)); // 상품가격
                        formData.append("order_product_count", document.getElementById("productCount"+ j).value);       // 주문 상품 개수
                        formData.append("purchaseName", document.getElementById("purchaseName"+ j).value);  // 구매자 이름
                        formData.append("purchasePhone", document.getElementById("purchasePhone"+ j).value);    // 구매자 핸드폰
                        formData.append("payDay", document.getElementById("payDay"+ j).value);      // 결제완료일
                        formData.append("payMethod", document.getElementById("payMethod"+ j).value);      // 결제수단
                        formData.append("deliveryPrice", document.getElementById("deliveryPrice"+ j).value);      // 배송비
                        formData.append("rcvName", document.getElementById("rcvName"+ j).value);    // 수하인
                        formData.append("rcvPhone1", document.getElementById("rcvPhone1"+ j).value);    // 수하인 폰1
                        formData.append("rcvPhone2", document.getElementById("rcvPhone2"+ j).value);    // 수하인 폰2
                        formData.append("zipcode", document.getElementById("zipcode"+ j).value);    // 우편번호
                        formData.append("rcvAddr1", document.getElementById("rcvAddr1"+ j).value);  // 수령주소1
                        formData.append("rcvAddr2", document.getElementById("rcvAddr2"+ j).value);  // 수령주소2
                        formData.append("deliverMessage", document.getElementById("deliverMessage"+ j).value);  // 배송 메세지

                            console.log("start")
                            console.log(document.getElementById("rcvAddr1"+ j).value);
                            console.log(document.getElementById("rcvAddr2"+ j).value);

                            $.ajax({
                                url : "${pageContext.request.contextPath}/consignment/uploadExcelReturnDelivery.json",
                                type : "POST",
                                enctype:'multipart/form-data',
                                data: formData,
                                contentType: false,
                                processData: false,
                                success : function(result) {
                                    if (result.resultCode == "success") {
                                        alert(result.message);
                                        formData = new FormData();
                                        location.reload();
                                    } else {
                                        alert(result.message);
                                        formData = new FormData();
                                        location.reload();
                                    }
                                }
                            })
                            formData = new FormData();
                        } else {
                            alert("위탁유형 확인해주세요");
                            return;
                        }
                    }
                    fn_search();
                }
            }

            function sendPostInfo () {

                let chk_val = [];
                let hasChecked = true;
                let disabledChecked = true;
                let tdArr = [];
                let stateArr = [];
                let delivery_list = [];

                $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                    if ($(this).is(":checked") == true) {
                        chk_val.push(iVal.value);

                        let checkBtn = $(this);
                        let tr = checkBtn.closest('tr');
                        let td = tr.children('td');

                        td.each(function (i) {
                            if (i == 0) {
                                tdArr.push($(this).find('input[type="checkbox"]').attr('value'));
                            } else if (i == 8) {
                                stateArr.push(td.eq(i).text());
                            }
                        });

                        let disabledInputs = td.eq(7).find('input');
                        disabledInputs.each(function () {
                            if ($(this).prop("disabled")) {
                                disabledChecked = false;
                                return;
                            }
                        });

                        delivery_list.push({
                            order_delivery_company: $("#deliveryCompany"+iVal.value).val(),
                            tracking_number: $("#deliveryNumber"+iVal.value).val(),
                            delivery_no: iVal.value
                        })

                    }
                });

                if (!hasChecked && chk_val.length == 0) {
                    alert('선택된 항목이 없습니다. 다시 확인해주세요.');
                    hasChecked = false;
                    return;
                }

                if (!disabledChecked) {
                    alert("운송장번호 미등록 상태에서만 발송처리 가능합니다.");
                    return;
                }


                if (!stateArr.includes('배송준비중')) {
                    alert("배송준비중 상태만 발송처리 가능합니다.");
                    hasChecked = false;
                    return;
                }

                let params = {
                    'delivery_no_list': tdArr
                }

                if (hasChecked) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/consignment/selectTrackingNumberFlag.json",
                        type: "POST",
                        data: JSON.stringify(params),
                        contentType: "application/json;",
                        success: function (result) {
                            if (result.resultCode == "success") {
                                var trackingNumberFlagList = [];

                                if (result.selectTrackingNumberFlag) {
                                    result.selectTrackingNumberFlag.forEach(function (item) {
                                        trackingNumberFlagList.push(item.tracking_number_registe_flag);
                                    });
                                }

                                if (trackingNumberFlagList.includes(true)) {
                                    alert("송장번호가 등록된 항목은 발송처리 할 수 없습니다.");
                                    return;
                                } else {
                                    $.ajax({
                                        url: "${pageContext.request.contextPath}/consignment/updateTrackingNumberFlag.json",
                                        type: "POST",
                                        data: JSON.stringify(params),
                                        async : false,
                                        contentType: "application/json;",
                                        success: function (result) {
                                            if (result.resultCode == "success") {
                                                $.ajax({
                                                    url: "https://therecommerce.kr/naver/order/dispatch",
                                                    type: "POST",
                                                    data: JSON.stringify(params.delivery_no_list),
                                                    contentType: "application/json;",
                                                    success: function (result) {
                                                        alert("발송처리 성공");
                                                    }
                                                });

                                                fn_search();
                                            } else {
                                                alert(result.message);
                                                return;
                                            }
                                        }
                                    });
                                }
                            } else {
                                alert(result.message);
                                return false;
                            }
                        }
                    });
                }
            }

            function trackingPrint() {
                let chk_val = [];
                let hasChecked = true;
                let disabledChecked = true;
                let tdArr = [];
                let stateArr = [];

                $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                    if ($(this).is(":checked") == true) {
                        chk_val.push(iVal.value);

                        let checkBtn = $(this);
                        let tr = checkBtn.closest('tr');
                        let td = tr.children('td');

                        td.each(function (i) {
                            if (i == 0) {
                                tdArr.push($(this).find('input[type="checkbox"]').attr('value'));
                            } else if (i == 8) {
                                stateArr.push(td.eq(i).text());
                            }
                        });
                    }
                })

                if (!hasChecked && chk_val.length == 0) {
                    alert('선택된 항목이 없습니다. 다시 확인해주세요.');
                    return;
                }

                if (!disabledChecked) {
                    alert("배송준비중의 항목만 송장 출력 가능합니다.");
                    return;
                }

                if (!stateArr.includes('배송준비중')) {
                    alert("배송준비중 상태만 송장출력처리 가능합니다.");
                    hasChecked = false;
                    return;
                }

                let params = {
                    'delivery_no_list': tdArr
                }

                let regTrackingParams = {
                    'delivery_no_list': tdArr
                }

                $.ajax({
                    url: "${pageContext.request.contextPath}/consignment/selectTrackingNumberFlag.json",
                    type: "POST",
                    data: JSON.stringify(params),
                    contentType: "application/json;",
                    success: function (result) {
                        if (result.resultCode == "success") {
                            var trackingNumberFlagList = [];
                            var reg_delivery_no_list = [];

                            if (result.selectTrackingNumberFlag) {
                                result.selectTrackingNumberFlag.forEach(function (item) {
                                    trackingNumberFlagList.push(item.tracking_number_registe_flag);
                                    if(!item.tracking_number_registe_flag){
                                        reg_delivery_no_list.push(item.delivery_no1);
                                    }
                                });
                            }
                            regTrackingParams.delivery_no_list = reg_delivery_no_list;

                            if (reg_delivery_no_list.length != 0)  {
                                if (result.resultCode == "success") {
                                    $.ajax({
                                        url: "${pageContext.request.contextPath}/consignment/selectDeliveryInfo.json",
                                        type: "POST",
                                        data: JSON.stringify(regTrackingParams),
                                        contentType: "application/json;",
                                        async: false,
                                        success: function (result) {
                                            if (result.resultCode == "success") {
                                                let deliveryInfoList = result.deliveryInfo;
                                                let reParams = {
                                                    "delivery_list": []
                                                }

                                                deliveryInfoList.forEach(item => {
                                                    $.ajax({
                                                        url : "https://therecommerce.kr/trackingPrint/voomerang/hanjin/print-wbl",
                                                        type : "POST",
                                                        data : JSON.stringify(item),
                                                        contentType : "application/json;",
                                                        async: false,
                                                        success : function(result) {
                                                            if(result != null && result != undefined && result != ''){
                                                                reParams.delivery_list.push({
                                                                    order_delivery_company: '한진택배',
                                                                    tracking_number: result.body.model.tracking_number,
                                                                    delivery_no: item.delivery_no
                                                                })
                                                            }
                                                        }
                                                    })
                                                });
                                                $.ajax({
                                                    url : "${pageContext.request.contextPath}/consignment/updatePostInfoPrint.json",
                                                    type : "POST",
                                                    data : JSON.stringify(reParams),
                                                    contentType : "application/json;",
                                                    async: false,
                                                    success : function(result) {
                                                        if (result.resultCode == "success") {
                                                            $.ajax({
                                                                url : "${pageContext.request.contextPath}/consignment/transToHanjin.json",
                                                                type : "POST",
                                                                data : JSON.stringify(regTrackingParams),
                                                                contentType : "application/json;",
                                                                async: false,
                                                                success : function(result) {
                                                                    if (result.resultCode == "success") {
                                                                        alert("발번완료");
                                                                        $.ajax({
                                                                            url: "https://therecommerce.kr/naver/order/dispatch",
                                                                            type: "POST",
                                                                            data: JSON.stringify(regTrackingParams.delivery_no_list),
                                                                            contentType: "application/json;",
                                                                            success: function (result) {
                                                                                fn_search();
                                                                            }
                                                                        });
                                                                    } else {
                                                                        $("#modal-loading").modal("hide");
                                                                    }
                                                                }
                                                            });
                                                        } else {
                                                            $("#modal-loading").modal("hide");
                                                        }
                                                    }
                                                });
                                                $("#modal-loading").modal("hide");
                                            }
                                        }
                                    });
                                } else {
                                    alert(result.message);
                                }
                            }

                            $.ajax({
                                url: "${pageContext.request.contextPath}/consignment/selectTrackingNumber.json",
                                type: "POST",
                                data: JSON.stringify(params),
                                contentType: "application/json;",
                                async: false,
                                success: function (result) {
                                    if (result.resultCode == "success") {

                                        var trackingNumberList = [];
                                        result.trackingNumber.forEach(function (item) {
                                            trackingNumberList.push(item.tracking_number);
                                        })
                                        let reParams = {
                                            'tracking_number_list': trackingNumberList
                                        }

                                        $.ajax({
                                            url: "${pageContext.request.contextPath}/consignment/trackingPrint.json",
                                            type: "POST",
                                            data: JSON.stringify(reParams),
                                            contentType: "application/json;",
                                            async: false,
                                            success: function (result) {
                                                if (result.resultCode == "success") {

                                                    for (i = 0; i < result.content.length; i++) {

                                                        let printWindow = window.open("/temp" + [i], 'print');
                                                        printWindow.document.write(result.content[i].trackingprint_content);

                                                        fn_search();
                                                    }
                                                } else {
                                                    alert(result.message);
                                                }
                                            }
                                        });
                                    } else {
                                        alert(result.message);
                                    }
                                }
                            });

                        } else {
                            alert(result.message);
                            return false;
                        }
                    }
                });
            }

            function orderDecide() {
                let chk_val = [];

                $("input:checkbox[name=selectOne]").each(function (i, iVal) {
                    if ($(this).is(":checked") == true) {
                        chk_val.push(iVal.value);
                    }
                });

                let params = {
                    'order_request_list': chk_val
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
                    console.log(params)
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

            const excelDownload = document.querySelector('#excelDownload');

            document.addEventListener('DOMContentLoaded', ()=>{
                excelDownload.addEventListener('click', exportExcel);
            });

            function exportExcel(){
                // workbook 생성
                var wb = XLSX.utils.book_new();
                // 시트 생성
                var newWorksheet = excelHandler.getWorksheet();
                // 생성된 워크시트에 이름 만들기
                XLSX.utils.book_append_sheet(wb, newWorksheet, excelHandler.getSheetName());
                // 엑셀파일 생성
                var wbout = XLSX.write(wb, {bookType:'xlsx',  type: 'binary'});
                // 엑셀파일 내보내기
                saveAs(new Blob([stringToUint8ArrayBuffer(wbout)],{type:"application/octet-stream"}), excelHandler.getExcelFileName());
            }

            var excelHandler = {
                getExcelFileName : function(){
                    return 'keepingDelivery table.xlsx';  // 파일명
                },
                getSheetName : function(){
                    return 'keepingDelivery table sheet';  // 시트명
                },
                getExcelData : function(){
                    // return document.getElementById('user_data_table'); // 테이블 id

                    var table = document.getElementById('user_data_table');
                    var clonedTable = table.cloneNode(true);
                    var rows = clonedTable.getElementsByTagName('tr');

                    for (var i = 0; i < rows.length; i++) {
                        var cells = rows[i].getElementsByTagName('td');

                        if (cells.length > 14) {
                            rows[i].removeChild(cells[14]);  // 상세보기 삭제
                        }
                    }

                    return clonedTable;
                },
                getWorksheet : function(){
                    // return XLSX.utils.table_to_sheet(this.getExcelData());

                    var worksheet = XLSX.utils.table_to_sheet(this.getExcelData());

                    var range = XLSX.utils.decode_range(worksheet['!ref']);
                    for (var row = range.s.r; row <= range.e.r; row++) {
                        var cellIndex = XLSX.utils.encode_cell({ r: row, c: 4 });
                        worksheet[cellIndex].z = '@'; // 셀 형식을 텍스트(@)로 설정
                    }

                    return worksheet;
                }
            }

            function stringToUint8ArrayBuffer(s) {
                var buf = new ArrayBuffer(s.length);
                var view = new Uint8Array(buf);
                for (var i=0; i<s.length; i++) view[i] = s.charCodeAt(i) & 0xFF;
                return buf;
            }


        </script>

        <!-- BEGIN: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
        <!-- END: Page Vendor JS-->

        <!-- BEGIN: Page JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>
        <!-- END: Page JS-->

        <!-- 엑셀 -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.15.5/xlsx.full.min.js"></script>

</body>
<!-- END: Body-->

</html>
