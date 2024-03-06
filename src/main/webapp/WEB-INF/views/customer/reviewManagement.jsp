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
    <title>반품구조대 - Admin - 리뷰 </title>
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

    <style>
        input[type="checkbox"]{
            width: 15px;
            height: 15px;
        }
    </style>
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu" data-col="2-columns">

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">리뷰관리</h3>
        </div>
        <hr>
        <div class="content-body">
            <!-- Filter -->
            <section>
                <div class="border border-light rounded p-2 mb-2">
                    <form class="form form-horizontal form-bordered">
                        <div class="form-body">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-3">
<%--                                        <div class="form-group row">--%>
                                        <label class="col-md-2 label-control text-left" for="selectProductType">상품유형</label>
                                            <div class="col-md-10 border-left-0">
                                                <div class="form-group col-md-12 border-bottom-0">
                                                    <label class="sr-only" for="selectProductType">상품명</label>
                                                    <select id="selectProductType" name="1" class="search_tag form-control">
                                                        <option selected value="">전체</option>
                                                        <option value="위탁판매">위탁판매</option>
                                                        <option value="직접판매">직접판매</option>
                                                    </select>
                                                </div>
                                            </div>
<%--                                        </div>--%>
                                    </div>
                                    <div class="col-md-3">
<%--                                        <div class="form-group row">--%>
                                            <label class="col-md-2 label-control text-left" for="selectReviewType">리뷰유형</label>
                                            <div class="col-md-10 border-left-0">
                                                <div class="form-group col-md-12 border-bottom-0">
                                                    <label class="sr-only" for="selectReviewType">상품명</label>
                                                    <select id="selectReviewType" name="3" class="search_tag form-control">
                                                        <option selected value="">전체</option>
                                                        <option value="일반리뷰">일반리뷰</option>
                                                        <option value="포토리뷰">포토리뷰</option>
                                                    </select>
                                                </div>
                                            </div>
<%--                                        </div>--%>
                                    </div>
                                    <div class="col-md-3">
<%--                                        <div class="form-group row">--%>
                                            <label class="col-md-2 label-control text-left">평점</label>
                                            <div class="col-md-10 border-left-0">
                                                <div class="form-group col-md-12 border-bottom-0">
                                                    <label class="sr-only" for="selectReviewScore">상품명</label>
                                                    <select id="selectReviewScore" name="4" class="search_tag form-control">
                                                        <option selected value="">전체</option>
                                                        <option value="5">5개</option>
                                                        <option value="4">4개</option>
                                                        <option value="3">3개</option>
                                                        <option value="2">2개</option>
                                                        <option value="1">1개</option>
                                                    </select>
                                                </div>
                                            </div>
<%--                                        </div>--%>
                                    </div>
                                    <div class="col-md-3">
<%--                                        <div class="form-group row">--%>
                                            <label class="col-md-2 label-control text-left" for="selectSearchCategory">상세검색</label>
                                            <div class="col-md-10 border-left-0">
                                                <div class="row">
                                                    <div class="form-group col-md-4 border-bottom-0">
                                                        <select id="selectSearchCategory" name="interested"
                                                                class="form-control">
                                                            <option value="상품명" selected="">상품명</option>
                                                            <option value="상품번호" >상품번호</option>
                                                            <option value="작성자">작성자</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-8 border-bottom-0" >
                                                        <input type="text" id="searchValue" class="form-control" placeholder="" name="">
                                                    </div>
                                                </div>
                                            </div>
<%--                                        </div>--%>
                                    </div>
                                </div>

                                <div class="row" style="margin-top: 20px">
                                    <div class="col-md-12">
<%--                                        <div class="form-group row">--%>
                                        <label class="col-md-1 label-control text-left">리뷰작성일</label>
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
                                                        <div class="d-flex align-items-center justify-content-start">
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
<%--                                    </div>--%>
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
            <!-- /Filter -->

            <!-- Datatable -->
            <section class="users-list-wrapper">
                <div class="users-list-table">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 form-group row" style="height: 74px">
                                        <div class="d-inline-block custom-control custom-checkbox mr-1">
                                            <button type="button" class="btn btn-outline-blue btn-min-width mr-1" data-toggle="modal" data-target="#bestReviewModal1" onclick="checkedCount()">
                                                베스트 리뷰 선정
                                            </button>
                                            <button type="button" class="btn btn-outline-blue btn-min-width mr-1" data-toggle="modal" data-target="#deleteReviewModal1">
                                                삭제
                                            </button>
                                        </div>
                                        <div class="d-inline-block custom-control custom-checkbox mr-1" style="margin-left: 40px; margin-top: 10px">
                                            <input type="radio" class="custom-control-input" name="selectAll1"  id="reportReview" value="report_content" onclick="fn_search()">
                                            <label class="custom-control-label" for="reportReview">신고 리뷰</label>
                                        </div>
                                        <div class="d-inline-block custom-control custom-checkbox mr-1" style="margin-top: 10px">
                                            <input type="radio" class="custom-control-input" name="selectAll1"  id="bestReview" value="best" onclick="fn_search()">
                                            <label class="custom-control-label" for="bestReview">베스트 리뷰</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table id="user_data_table" class="table table-striped table-hover">
                                        <thead class="text-center">
                                            <tr>
                                                <th><input type="checkbox" id="reviewListCheckboxTotal" class="listCheckBox"></th>
                                                <th>상품유형</th>
                                                <th>상품명(상품번호)</th>
                                                <th>리뷰유형</th>
                                                <th>평점</th>
                                                <th>리뷰내용</th>
                                                <th>주문번호</th>
                                                <th>공감수</th>
                                                <th>작성자</th>
                                                <th>작성일자</th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /Datatable -->
        </div>
    </div>
</div>
<!-- END: Content-->

<!-- 베스트리뷰 선정 : 시작 -->
<div class="modal fade text-center" id="bestReviewModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h3 class="modal-title"> 확인 </h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    해당 리뷰를 이달의 베스트리뷰로 선정하시겠습니까?<br>
                    <div>
                        <span id="checkedCount"></span>
                        <span id="checkedTotalCount"></span>
                    </div>
                </p>
            </div>
            <div class="modal-footer justify-content-center" data-dismiss="modal">
                <button type="button" class="btn btn-light btn-min-width" aria-hidden="true">취소</button>
                <a type="button" class="btn btn-blue btn-min-width" id="bestReviewModalClose1" onclick="updateBestReviewChecked()">확인</a>
            </div>
        </div>
    </div>
</div>
<!-- 베스트리뷰 선정 : 끝 -->

<!-- 리뷰삭제 선정 : 시작 -->
<div class="modal fade text-center" id="deleteReviewModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h3 class="modal-title"> 확인 </h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    해당리뷰를 삭제하시겠습니까?
                </p>
            </div>
            <div class="modal-footer justify-content-center" data-dismiss="modal">
                <button type="button" class="btn btn-light btn-min-width" aria-hidden="true">취소</button>
                <a type="button" class="btn btn-blue btn-min-width" id="deleteReviewModalClose1" onclick="deleteReviewChecked()">확인</a>
            </div>
        </div>
    </div>
</div>
<!-- 리뷰삭제 선정 : 끝 -->


<!-- 답변등록 모달 : 시작 -->
<div class="modal fade text-left" id="answerReviewModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel1">리뷰 상세보기</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- 문의 -->
                <div class="d-flex align-items-center justify-content-end mb-50">
                    <button class="font-weight-bold mt-25" id="modalBestBtn" style="margin-right: 20px;" style="cursor:pointer" onclick="updateBestReviewChecked(document.getElementById('modal_review_no').value)">베스트리뷰 선정</button>
                    <button class="font-weight-bold mt-25" id="modalDeleteBtn" onclick="deleteReviewChecked(document.getElementById('modal_review_no').value)">삭제하기</button>
                </div>
                <h4 class="card-title bg-blue bg-lighten-5 border-top p-2 mb-0">
                    <input type="hidden" id="modal_review_no" value=""/>
                    <div>
                        <span id="modalReviewBadge"></span>
                        <span id="reportType2"></span>
                    </div>
                    <span id="modalReviewNo"></span>
                    <span>  (리뷰 번호) </span>
                </h4>
                <!-- 문의정보 -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 col-lg-8 col-xl-8">
                            <p class="mb-50"><strong>상품명(상품번호)</strong>:
                                <span id="modal_product_name" ></span>
                                <span id="modal_product_id"></span>
                            </p>
                            <p class="mb-0"><strong>주문번호</strong>:
                                <span id="modal_review_type"></span>
                                <span id="modal_order_request_id"></span>
                            </p>
                        </div>
                        <div class="col-md-12 col-lg-4 col-xl-4">
                            <div class="float-right text-right">
                                <div class="d-flex align-items-center justify-content-end mb-50">
                                    <span id="modal_review_score_img" class="font-weight-bold mt-25"></span>
                                    <span id="modal_review_score" class="font-weight-bold mt-25" style="margin-right: 20px;">점수</span>
                                    <span id="modal_review_like_img" >   </span>
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
                    <p id="modal_review_content">
                    </p>
                </div>
                <!-- 첨부파일 -->
                <div class="card-body border-top">
<%--                    <label class="sidebar-label">첨부 파일</label>--%>
<%--                        <ul class="list-unstyled list-inline mb-0">--%>
<%--                            <li class="cursor-pointer pb-25">--%>
<%--                                <img src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-1.png" alt="Generic placeholder image" style="width: 64px;height: 64px;">--%>
<%--                            </li>--%>
<%--                            <li class="cursor-pointer">--%>
<%--                                <img src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-2.png" alt="Generic placeholder image" style="width: 64px;height: 64px;">--%>
<%--                            </li>--%>
<%--                        </ul>--%>
                    <%-- 이미지 : 시작--%>
                    <div class="card-body border-top">
                        <label class="sidebar-label">첨부 파일</label>
                        <ul class="list-unstyled list-inline mb-0">
                            <c:forEach items="${qnaVO.file_id_list_answer}" var="fileIdAnswer">
                                <li class="cursor-pointer pb-25">
                                    <img src="${pageContext.request.contextPath}/file/down/image/${fileIdAnswer}" alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <%-- 이미지 : 끝 --%>

                    <div class="text-right">
<%--                        <!-- Button trigger modal : 신고하기 -->--%>
<%--                        <button type="button" class="btn btn-sm btn-danger btn-min-width" id="btnShowReportModal"--%>
<%--                                data-toggle="modal" data-target="#reportModal">신고하기</button>--%>
<%--                        <!-- Button trigger modal : 신고하기  -->--%>

                        <!-- Modal :신고하기 -->
                        <div class="modal fade text-left" id="reportModal" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel22" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header bg-blue-grey bg-lighten-5">
                                        <h3 class="modal-title" id="myModalLabel22">신고하기</h3>
                                        <button type="button" class="close" onclick="" aria-label="Close" id="btnReport">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form>
                                        <div class="modal-body">
                                            <p><span class="danger">!</span> 신고해주신 내용은 관리자 검토 후 내부 정책에
                                                의해 조치됩니다.</p>
                                            <div class="custom-control custom-radio mb-50">
                                                <input type="radio" class="custom-control-input"
                                                       name="reportType" id="reportRadio1" value="욕설/비방" checked>
                                                <label class="custom-control-label"
                                                       for="reportRadio1">욕설/비방</label>
                                            </div>
                                            <div class="custom-control custom-radio mb-50">
                                                <input type="radio" class="custom-control-input"
                                                       name="reportType" id="reportRadio2" value="허위사실유포">
                                                <label class="custom-control-label"
                                                       for="reportRadio2">허위사실유포</label>
                                            </div>
                                            <div class="custom-control custom-radio mb-50">
                                                <input type="radio" class="custom-control-input"
                                                       name="reportType" id="reportRadio3" value="광고/홍보글">
                                                <label class="custom-control-label"
                                                       for="reportRadio3">광고/홍보글</label>
                                            </div>
                                            <div class="custom-control custom-radio mb-50">
                                                <input type="radio" class="custom-control-input"
                                                       name="reportType" id="reportRadio4" value="음란/선정성">
                                                <label class="custom-control-label"
                                                       for="reportRadio4">음란/선정성</label>
                                            </div>
                                            <div class="custom-control custom-radio mb-50">
                                                <input type="radio" class="custom-control-input"
                                                       name="reportType" id="reportRadio5" value="기타">
                                                <label class="custom-control-label"
                                                       for="reportRadio5">기타</label>
                                            </div>
                                            <textarea class="form-control" id="reportContents" rows="2"
                                                      placeholder="신고내용을 입력하세요.&#13;&#10;(욕설, 비속어, 비방, 허위사실 유포 등)"></textarea>
                                        </div>
                                        <div class="modal-footer justify-content-center">
                                            <input type="reset" class="btn btn-light btn-min-width" value="취소">
                                            <input type="button" class="btn btn-blue btn-min-width" value="신고">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 문의답변 -->
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-1">
                        <div class="d-flex align-items-center">
                            <label class="card-title mb-0" for="placeTextarea">
                                <strong>답변</strong>
                            </label>
                        </div>
                        <div class="align-self-center" id="reportDate">
                        </div>
                    </div>
                    <div class="form-group">
                  <textarea class="form-control" id="review_answer" rows="6" placeholder="답변을 입력하세요"></textarea>
                    </div>
                    <div class="text-right">
                        <button type="button" class="btn btn-sm btn-blue btn-min-width" id="reviewRegist" onclick="updateReviewAnswer(document.getElementById('modal_review_no'))">등록</button>
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" onclick="">닫기</button>
            </div>
        </div>
    </div>
</div>
<!-- 답변등록 모달 : 끝 -->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
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
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/charts/apexcharts/apexcharts.min.js"></script>
<!-- END: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        changeDateTime();
        var columnFields = [ "checkbox", "sell_type", "product_name", "review_type", "review_score", "review_content", "order_request_id", "review_like","review_account_id","review_reg_dt", "button", "review_no", "start_dt", "end_dt", "review_best", "report_content", "is_keeping"];
        var columWidths = [ 5, 10, 20, 10, 30, 10, 30, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0];

        init_datatable("${pageContext.request.contextPath}/customer/review.json", columnFields, columWidths, fn_tbl_render);
        fn_search();
    });

    function fn_tbl_render(data, type, full, meta) {
        if (meta.col == 0) {
            return '<input type="checkbox" id="selectOne" class="listCheckbox" name="reviewList" value="' + full.review_no + '" />';
        } else if(meta.col == 2) {
            if (full.is_keeping == 1) {
                return '<span class="mb-0">' + full.product_name + '</span><a target="_blank" href="${pageContext.request.contextPath}/keeping/keepProductDetail.do?product_id=' + full.product_id + '"' + '>' + '(' + full.product_id + ')</a>';
            } else if (full.is_keeping == 0 && full.sell_type == '위탁판매') {
                return '<span class="mb-0">' + full.product_name + '</span><a target="_blank" href="${pageContext.request.contextPath}/consignment/consignmentDetail.do?product_id=' + full.product_id + '"' + '>' + '(' + full.product_id + ')</a>';
            } else if (full.is_keeping == 0 && full.sell_type == '직접판매') {
                return '<span class="mb-0">' + full.product_name + '</span><a target="_blank" href="${pageContext.request.contextPath}/direct/productManagementEdit.do?product_id=' + full.product_id + '"' + '>' + '(' + full.product_id + ')</a>';
            } else {
                return '-----'
            }
        } else if (meta.col == 4 ){
            var htmlString = '';

            for(var i = 0 ; i < 5 ; i++) {
                if( i <= parseInt(full.review_score)-1){
                    htmlString += '<img src="${pageContext.request.contextPath}/resources/app-assets/images/raty/star-on.png"/>';
                } else {
                    htmlString += '<img src="${pageContext.request.contextPath}/resources/app-assets/images/raty/star-off.png"/>';
                }
            }
            return  htmlString;
        } else if(meta.col === 5) {
            if(full.review_best == 1) {
                return '<span class="badge bg-blue bg-lighten-2 width-60 d-inline-block">BEST</span> &nbsp ' + full.review_content;
            }
            if(full.review_best == 0 && full.report_content != null) {
                return '<span class="badge bg-danger bg-lighten-2 width-60 d-inline-block">신고</span> &nbsp ' + full.review_content;
            }
            else {
                return '<span class="dataTableLine">' +full.review_content;
            }
        } else if (meta.col === 10) {
            if(true) {
                return `<button type="button" class="btn btn-sm btn-outline-grey-blue" data-toggle="modal" data-target="#answerReviewModal" onclick="selectReviewModal(` + full.review_no + `)">답변등록</button>`;
            } else {
                return `<button type="button" class="btn btn-sm btn-outline-grey-blue" data-toggle="modal" data-target="#answerReviewModal" onclick="selectReviewModal(` +full.review_no+`)">답변등록</button>`;
            }
        }
        return data;
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

    <!-- 체크박스 jQuery : 시작 -->
    $("#reviewListCheckboxTotal").click(function () {
        $('input:checkbox[name="reviewList"]').each(function () {
            if ($("#reviewListCheckboxTotal").is(":checked")) {
                $("input[name=reviewList]").prop("checked", true);
            }
            else {
                $("input[name=reviewList]").prop("checked", false);
            }

        });
    });
    $(document).on('click','.listCheckbox',function() {
        if($('input[class = listCheckbox]:checked').length == $('.listCheckbox').length) {
            $('#reviewListCheckboxTotal').prop('checked',true);
        } else {
            $('#reviewListCheckboxTotal').prop('checked',false);
        }
    });
    <!-- 체크박스 jQuery : 끝 -->

    <!-- 검색 : 시작 -->
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

        let statusArray= [];
        if ($("#selectAll1").is(":checked")){
            statusArray = '';
        } else {
            $("input[name=selectAll1]").each(function() {
                if(this.checked) {
                    statusArray.push($(this).val());
                }
            });
        }

        if(statusArray == 'best') {
            search = table.column(14).search(statusArray);
        } else if (statusArray == 'report_content') {
            search = search.column(15).search(statusArray);
        }


        let searchCategory = $('#selectSearchCategory').val();
        let searchValue = $('#searchValue').val();

        let idx = '';
        switch (searchCategory){
            case "상품명" :
                idx = 2;
                break;
            case "상품번호" :
                idx = 1;
                break;
            case "작성자" :
                idx = 8;
                break;
        }
        if(search == null) {
            search = table.column(idx).search(searchValue);
        }
        else {
            search = search.column(idx).search(searchValue);
        }

        if(search != null) {
            search.draw();
        }
    }
    <!-- 검색 : 끝 -->

    <!-- 답변등록바인딩 : 시작 -->
    function selectReviewModal(reviewNo) {
        var review_no = reviewNo;
        $.ajax({
            url : "${pageContext.request.contextPath}/customer/selectReviewModal.json",
            type : "POST",
            data : JSON.stringify(review_no),
            contentType : "application/json",
            success : function(result) {
                if (result.resultCode === "success") {
                    $('#modal_review_no').val(result.data.review_no);
                    $('#modalReviewNo').text(result.data.review_no);
                    $('#modal_product_name').text(result.data.product_name);
                    $('#modal_product_id').text( '('+result.data.product_id+')');
                    $('#modal_order_request_id').text(result.data.order_request_id);
                    $('#modal_review_content').text(result.data.review_content);
                    if(result.data.report_content != null && result.data.report_content != '') {
                        $('#review_answer').html("이 리뷰는 신고된 리뷰입니다.\n신고 타입 :"+result.data.report_type1 +"\n신고 내용 :"+result.data.report_content );
                        $("#review_answer").attr("disabled", true);
                        $("#reviewRegist").hide();
                        $("#btnReport").hide();
                        $("#btnShowReportModal").hide();
                    }
                    else{
                        if(result.data.review_answer != null && result.data.review_answer != '') {
                            $("#reviewRegist").hide();
                            $("#btnReport").hide();
                            $("#btnShowReportModal").hide();
                            $("#review_answer").attr("disabled", true);
                            $('#review_answer').text(result.data.review_answer);
                        } else{
                            $("#reviewRegist").show();
                            $("#btnReport").show();
                            $("#btnShowReportModal").show();
                            $("#review_answer").attr("disabled", false);
                            $('#review_answer').text('');
                        }
                    }
                    var htmlString = '';
                    let htmlStringLike = '<img src="${pageContext.request.contextPath}/resources/app-assets/images/raty/like-2.png"/>';
                    for(var i = 0 ; i < 5 ; i++) {
                        if( i <= parseInt(result.data.review_score)-1){
                            htmlString += '<img src="${pageContext.request.contextPath}/resources/app-assets/images/raty/star-on.png"/>';
                        } else {
                            htmlString += '<img src="${pageContext.request.contextPath}/resources/app-assets/images/raty/star-off.png"/>';
                        }
                    }
                    $('#modal_review_score_img').html(htmlString);
                    $('#modal_review_score').text(" "+parseInt(result.data.review_score));
                    $('#modal_review_like_img').html(htmlStringLike);
                    $('#modal_review_like').text(" " + parseInt(result.data.review_like));

                    if(result.data.review_best == true) {
                        $("#modalReviewBadge").html('<span class="badge bg-blue bg-lighten-2 width-60 d-inline-block">BEST</span> &nbsp ' + result.data.review_account_id + '(' + result.data.review_best_reg_dt + ')');
                    } else if(result.data.review_best == false && result.data.report_content != null) {
                        $("#modalReviewBadge").html('<span class="badge bg-danger bg-lighten-2 width-60 d-inline-block">신고</span> &nbsp ' + result.data.report_type2);
                    } else {
                        $("#modalReviewBadge").html('<span class=""></span> &nbsp ');
                    }   // 신고리뷰, 베스트리뷰, 평범 리뷰 뱃지

                    if(result.data.review_best == false && result.data.report_content != null) {
                        $("#modalBestBtn").attr("disabled", true);
                        $("#modalDeleteBtn").attr("disabled", false);
                    } else if(result.data.review_best == true ) {
                        $("#modalBestBtn").attr("disabled", true);
                        $("#modalDeleteBtn").attr("disabled", true);
                    }
                    else {
                        $("#modalBestBtn").attr("disabled", false);
                        $("#modalDeleteBtn").attr("disabled", false);
                    }

                }
            }
        })
    }
    <!-- 답변등록바인딩 : 끝 -->

    <!-- 베스트리뷰선정 함수 : 시작 -->
    <%--function updateBestReview(review_no) {--%>
    <%--    $.ajax({--%>
    <%--        url : "${pageContext.request.contextPath}/customer/updateBestReview.json",--%>
    <%--        type : "POST",--%>
    <%--        data : review_no,--%>
    <%--        contentType : "application/json",--%>
    <%--        success : function(result) {--%>
    <%--            if (result.resultCode === "success") {--%>
    <%--                alert(result.message);--%>
    <%--                location.reload();--%>
    <%--            } else {--%>
    <%--            }--%>
    <%--        }--%>
    <%--    })--%>
    <%--}--%>
    <!-- 베스트리뷰선정 함수 : 끝 -->

    <%--<!-- 리뷰삭제 함수 : 시작 -->--%>
    <%--function deleteReview(review_no) {--%>
    <%--    $.ajax({--%>
    <%--        url : "${pageContext.request.contextPath}/customer/deleteReview.json",--%>
    <%--        type : "POST",--%>
    <%--        data : review_no,--%>
    <%--        contentType : "application/json",--%>
    <%--        success : function(result) {--%>
    <%--            if (result.resultCode === "success") {--%>
    <%--                alert(result.message);--%>
    <%--                location.reload();--%>
    <%--            } else {--%>
    <%--            }--%>
    <%--        }--%>
    <%--    })--%>
    <%--}--%>
    <%--<!-- 리뷰삭제 함수 : 끝 -->--%>

    function fn_reset() {
      $("button[name=btnDate]").each(function() {
        $(this).css("background-color","white");
      });


        $('input:radio[name="selectAll1"]').each(function() {
            this.checked = false;
        });
      $('#selectProductType').val('');
      $('#selectReviewType').val('');
      $('#selectReviewScore').val('');
      $('#projectinput1').val('9999');
      $('#searchValue').val('');
      $("#start_dt").pickadate('picker').set('select', null);
      $("#end_dt").pickadate('picker').set('select', null);
    }   // 초기화

    <!-- 리뷰답변 함수 : 시작 -->
    function updateReviewAnswer(review_no) {
        let params = {
            "review_no" : review_no.value,
            "review_answer" : document.getElementById('review_answer').value
        }

        if(params.review_answer == null || params.review_answer == '') {
            alert("답변에 등록된 데이터가 없습니다. 다시 확인해주세요.");
            return;
        } else {
            $.ajax({
                url : "${pageContext.request.contextPath}/customer/updateReviewAnswer.json",
                type : "POST",
                data : JSON.stringify(params),
                contentType : "application/json",
                success : function(result) {
                    if (result.resultCode === "success") {
                        alert(result.message);
                        location.reload();
                    } else {
                    }
                }
            })
        }
    }
    <!-- 리뷰답변 함수 : 끝 -->


    function updateBestReviewChecked(review_no) {
        let chk_val = [];

        $("input:checkbox[name=reviewList]").each(function (i, iVal) {
            if ($(this).is(":checked") == true) {
                chk_val.push(iVal.value);
            }
        });
        if (review_no) {
            chk_val.push(review_no)
        }

        let params = {
            'review_no_list': chk_val,
        }

        if (chk_val == null || chk_val == '') {
            alert("선택된 리뷰가 없습니다.");
            return;
        } else {
            $.ajax({
                url: "${pageContext.request.contextPath}/customer/updateBestReview.json",
                type : "POST",
                data : JSON.stringify(params),
                contentType : "application/json;",
                success : function(result) {
                    if (result.resultCode == "success") {
                        alert(result.message);
                        location.reload();
                    } else if (result.resultCode == "fail") {
                        alert(result.message);
                    } else{
                        alert(result.message);
                    }
                }
            });
        }
    }

    function deleteReviewChecked(review_no) {
        let chk_val = [];

        $("input:checkbox[name=reviewList]").each(function (i, iVal) {
            if ($(this).is(":checked") == true) {
                chk_val.push(iVal.value);
            }
        });

        if (review_no) {
            chk_val.push(review_no)
        }

        let params = {
            'review_no_list': chk_val,
        }

        if (chk_val == null || chk_val == '') {
            alert("선택된 리뷰가 없습니다.");
            return;
        } else {
            $.ajax({
                url: "${pageContext.request.contextPath}/customer/deleteReview.json",
                type : "POST",
                data : JSON.stringify(params),
                contentType : "application/json;",
                success : function(result) {
                    if (result.resultCode == "success") {
                        alert(result.message);
                        location.reload();
                    } else if (result.resultCode == "fail") {
                        alert(result.message);
                    } else{
                        alert(result.message);
                    }
                }
            });
        }
    }

    function checkedCount() {
        let totalCount = $("input:checkbox[name='reviewList']").length;
        let count = $("input:checkbox[name='reviewList']:checked").length;

        $("#checkedCount").html('( ' + count);
        $("#checkedTotalCount").html(' / ' + totalCount + ' )');
    } // 체크박스 갯수 카운트 함수

</script>

<!-- BEGIN: Theme JS-->
<%--    <script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app-menu.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app.js"></script>--%>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/cards/card-statistics.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/extensions/rating.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
