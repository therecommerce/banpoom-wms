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
            <h3 class="content-header-title mb-2">상품 상세 정보</h3>
        </div>
        <hr>
        <div class="content-body">
            <!-- 상태 정보 -->
            <section>
                <div class="row">
                    <div class="col-12">
                        <div class="content-header row">
                            <div class="content-header-left col-md-6 col-12">
                                <span class="text-muted"><h4 class="text-uppercase mb-1">
                                    ${consignmentVO.product_name}(${consignmentVO.product_id})
                                </h4></span>
                            </div>
                            <div class="content-header-right col-md-6 col-12">
                                <div class="float-md-right">
                                    <c:if test="${consignmentVO.product_state == '최종 검수 대기' || consignmentVO.product_state == '보관중' }">
                                    <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" onclick="location.href='keepProductDetailEdit.do?product_id=${consignmentVO.product_id}'">수정</button>
                                    </c:if>
                                    <c:if test="${consignmentVO.product_state == '최종 검수 대기'}">
                                    <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" data-toggle="modal"data-target="#modalInspectionComplete">검수확정</button>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div id="accordionWrap1" role="tablist" aria-multiselectable="true">
                            <div class="card border-blue accordion custom collapse-icon bg-blue bg-lighten-5">
                                <div id="heading11" class="card-header" aria-expanded="true" aria-controls="accordion11">
                                <c:choose>
                                    <c:when test="${consignmentVO.product_state == '픽업요청'}">
                                        <div class="mb-1">
                                            <span class="badge bg-success bg-lighten-2" style="width: 100px; height: 30px; font-size: 16px">픽업요청</span>
                                            <div class="heading-elements">
                                                <a onclick="fn_openPage11()" class="card-link">V </a>
                                            </div>
                                        </div>
                                        <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                            <i class="feather icon-alert-circle"></i> 반품수거 보관 상품이 등록되었습니다.
                                        </div>
                                    </c:when>
                                    <c:when test="${consignmentVO.product_state == '반품구조대로 이동 중'}">
                                        <div class="mb-1">
                                            <span class="badge bg-warning" style="width: 100px; height: 30px; font-size: 16px">반품구조대으로 이동중</span>
                                            <div class="heading-elements">
                                                <a onclick="fn_openPage11()" class="card-link">V </a>
                                            </div>
<%--                                            <span class="ml-50">판매 등록일 ${productListVO.product_selling_dt} (${productListVO.diffDate}일 경과)</span>--%>
<%--                                            <div class="heading-elements">--%>
<%--                                                <button type="button" class="btn btn-outline-blue btn-min-width"--%>
<%--                                                        data-toggle="modal" data-target="#modal-1">운송장번호 수정</button>--%>
<%--                                                <a onclick="fn_openPage11()" class="card-link">+ </a>--%>
<%--                                            </div>--%>
                                        </div>
                                        <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                            <i class="feather icon-alert-circle"></i> 배송 정보를 배송사에 전달하였습니다. 배송 관련 문의는 배송 업체로
                                            문의하세요.
                                            <a href="#" class="alert-link ml-2">운송장 번호 조회 <i class="fa fa-angle-right"></i></a>
                                        </div>
                                    </c:when>
                                    <c:when test="${consignmentVO.product_state == '도착/입고'}">
                                        <div class="mb-1">
                                            <span class="badge bg-light-success" style="width: 100px; height: 30px; font-size: 16px; color: green;">도착/입고</span>
                                            <div class="heading-elements">
                                                <a onclick="fn_openPage11()" class="card-link">V </a>
                                            </div>
                                        </div>
                                        <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                            <i class="feather icon-alert-circle"></i> 반품구조대로 도착/입고 되었습니다. 앱으로 검수를 진행해주세요.
                                        </div>
                                    </c:when>
                                    <c:when test="${consignmentVO.product_state == '최종 검수 대기'}">
                                        <div class="mb-1">
                                            <span class="badge bg-blue" style="width: 100px; height: 30px; font-size: 16px">최종 검수 대기</span>
                                            <div class="heading-elements">
                                                <a onclick="fn_openPage11()" class="card-link">V </a>
                                            </div>
                                        </div>
                                        <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                            <i class="feather icon-alert-circle"></i> 최종 검수 확정해 주세요.
                                        </div>
                                    </c:when>
                                    <c:when test="${consignmentVO.product_state == '검수완료'}">
                                        <div class="mb-1">
                                            <span class="badge bg-danger" style="width: 100px; height: 30px; font-size: 16px">검수완료</span>
                                            <div class="heading-elements">
                                                <a onclick="fn_openPage11()" class="card-link">V </a>
                                            </div>
                                        </div>
                                        <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                        </div>
                                    </c:when>
                                    <c:when test="${consignmentVO.product_state == '보관중'}">
                                        <div class="mb-1">
                                            <span class="badge bg-purple" style="width: 100px; height: 30px; font-size: 16px">보관중</span>
                                            <div class="float-right" style="margin-right: 30px;">
                                                <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" data-toggle="modal"data-target="#collectModal">회수</button>
                                                <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" data-toggle="modal"data-target="#donateModal">기부</button>
                                                <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" data-toggle="modal"data-target="#discardModal">폐기</button>
                                            </div>
                                            <div class="heading-elements">
                                                <a onclick="fn_openPage11()" class="card-link">V </a>
                                            </div>
                                        </div>
                                        <div class="mb-1">
                                            <span class="ml-50">보관 등록일 ${consignmentVO.storage_dt} (${consignmentVO.diffDate_storage_dt}일 경과)</span>
                                            <div class="heading-elements">
                                                <a onclick="fn_openPage11()" class="card-link">V </a>
                                            </div>
                                        </div>
                                        <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                            <i class="feather icon-alert-circle"></i> 반품구조대에서 안전하게 보관중입니다.
                                        </div>
                                    </c:when>

                                </c:choose>
                                </div>
                                <div id="accordion11" role="tabpanel" data-parent="#accordionWrap1"
                                     aria-labelledby="heading11" class="collapse" style="display: none">
                                    <hr class="bg-blue mx-2">
                                    <div class="card-content">
                                        <div class="card-body">
                                            <div class="widget-timeline">
                                                <ul>
                                                    <c:forEach items="${historyVOList}" var="historyVO" varStatus="i">
                                                        <li class="<c:choose><c:when test="${i.last}">timeline-items timeline-icon-blue</c:when><c:otherwise>timeline-items timeline-icon-outline-secondary</c:otherwise></c:choose>">
                                                        <span class="timeline-title mr-1">${historyVO.reg_dt}</span>

                                                        <c:choose>
                                                            <c:when test="${historyVO.state =='반품구조대로 이동 중'}">
                                                            <span class="text-muted mr-1">반품구조대로 이동중</span>
                                                            <a href="#" class="card-link">운송장 번호 조회 <i
                                                                    class="fa fa-angle-right"></i></a>
                                                            </c:when>
                                                            <c:otherwise>
                                                            <span class="text-muted">${historyVO.state == '보관중' ? '보관중 (검수 완료)' : historyVO.state}</span>
                                                            </c:otherwise>
                                                        </c:choose>
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

            <section>
                <div id="accordionWrap15" role="tablist" aria-multiselectable="true">

                    <div class="card">
                        <div class="card-header pb-0">
                            <h4 class="card-title blue">셀러 정보</h4>
                            <hr class="bg-blue mb-0">
                            <div class="heading-elements">
                                <a class="card-link" href="${pageContext.request.contextPath}/sellerManagementEdit.do?account_id=${consignmentVO.account_id}">회원 정보 <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                <div class="card-text">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">상호명</dt>
                                                <dd class="col-sm-9">${consignmentVO.company_name}</dd>
                                            </dl>
                                        </div>
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">스토어명</dt>
                                                <dd class="col-sm-9">${consignmentVO.store_name}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">담당자명</dt>
                                                <dd class="col-sm-9">${consignmentVO.seller_name}</dd>
                                            </dl>
                                        </div>
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-3">연락처</dt>
                                                <dd class="col-sm-9">${consignmentVO.company_phone}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- 부메랑 검수 정보 -->
            <c:choose>
                <c:when test="${consignmentVO.product_state == '최종 검수 대기' || consignmentVO.product_state == '검수완료' || consignmentVO.product_state == '보관중' || consignmentVO.selling == true}">
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
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">검수등급</dt>
                                                <dd class="col-sm-10">${consignmentVO.product_grade}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">평가의견</dt>
                                                    <dd class="col-sm-10">${consignmentVO.inspection_opinion}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </c:when>
            </c:choose>

            <!-- 반품 등록 신청서 -->
            <section>
                <div id="accordionWrap12" role="tablist" aria-multiselectable="true">
                    <div class="card accordion collapse-icon accordion-icon-rotate">
                        <div class="card-header pb-0">
                            <h4 class="card-title blue">반품신청 정보</h4>
                            <hr class="bg-blue mb-0">
                            <div class="heading-elements">
                                <a class="card-link" >최초 반품 등록 시 입력한 정보를 표시합니다. </a>
                                <a class="card-link" onclick="fn_openPage13()">V</a>
                            </div>
                        </div>
                        <div id="accordion13" role="tabpanel" data-parent="#accordionWrap12"
                             aria-labelledby="heading11" class="collapse" style="display: block">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="card-text">
                                        <dl class="row">
                                            <dt class="col-sm-3">위탁유형</dt>
                                            <dd class="col-sm-9">${consignmentVO.sell_type}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3">카테고리</dt>
                                            <dd class="col-sm-9">
                                                ${consignmentVO.category_name}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3">상품명</dt>
                                            <dd class="col-sm-9">${consignmentVO.product_name}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3">판매상품 페이지 주소</dt>
                                            <dd class="col-sm-9">${consignmentVO.seller_url}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3">반품(위탁) 사유</dt>
                                            <dd class="col-sm-9">${consignmentVO.return_reason}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3">원 운송장번호</dt>
                                            <dd class="col-sm-9">${consignmentVO.delivery_company1} ${consignmentVO.delivery_number}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3 text-truncate">상품 가격</dt>
                                            <dd class="col-sm-9">${consignmentVO.product_price}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3 text-truncate">메시지</dt>
                                            <dd class="col-sm-9">${consignmentVO.return_request_message}</dd>
                                        </dl>
                                        <hr>
                                        <dl class="row">
                                            <dt class="col-sm-3 text-truncate">발송방법</dt>
                                            <dd class="col-sm-9">${consignmentVO.delivery_option}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3 text-truncate">운송장번호</dt>
                                            <dd class="col-sm-9">${consignmentVO.tracking_no}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3 text-truncate">픽업주소</dt>
                                            <dd class="col-sm-9">${consignmentVO.pickup_zipcode}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3 text-truncate"></dt>
                                            <dd class="col-sm-9">${consignmentVO.pickup_address1} ${consignmentVO.pickup_address2}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3 text-truncate">구매자</dt>
                                            <dd class="col-sm-9">
                                                <p>${consignmentVO.purchaser_name}</p>
                                            </dd>
                                        </dl>
<%--                                        <dl class="row">--%>
<%--                                            <dt class="col-sm-3 text-truncate">연락처</dt>--%>
<%--                                            <dd class="col-sm-9">${consignmentVO.purchaser_phone}</dd>--%>
<%--                                        </dl>--%>
<%--                                        <dl class="row">--%>
<%--                                            <dt class="col-sm-3 text-truncate"><button type="button" class="btn btn-sm btn-outline-blue btn-min-width" onclick="fn_saveSearch();">목록으로</button></dt>--%>
<%--                                            <dd class="col-sm-9"></dd>--%>
<%--                                        </dl>--%>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-3">연락처</dt>
                                                    <dd class="col-sm-9">${consignmentVO.purchaser_phone}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-3"></dt>
                                                    <dd class="col-sm-9"><button type="button" class="btn btn-sm btn-outline-blue btn-min-width" style="width: 150px; height: 30px; font-size: 15px" onclick="fn_saveSearch();">목록으로</button></dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div class="modal fade text-left" id="modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel1">판매 가격 변경</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <span class="update-profit text-bold-600">할인율</span>
                                        <div class="d-flex align-items-center">
                                            <c:choose>
                                                 <c:when test="${consignmentVO.product_grade == 'A'}">
                                                        <button name="percent" class="badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1" value="50" onclick="javascript:clickPercent(50, ${consignmentVO.product_price}); return false;" value="50">50%</button>
                                                        <button name="percent" class="badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1" value="55" onclick="javascript:clickPercent(55, ${consignmentVO.product_price}); return false;" value="55">55%</button>
                                                        <button id="btnPercent" name="percent" class="badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1" value="60" onclick="javascript:clickPercent(60, ${consignmentVO.product_price}); return false;" value="60">60%(권장)</button>
                                                 </c:when>
                                                     <c:when test="${consignmentVO.product_grade == 'B'}">
                                                        <button name="percent" class="badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1" value="35" onclick="javascript:clickPercent(35, ${consignmentVO.product_price}); return false;">35%</button>
                                                        <button name="percent" class="badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1" value="40" onclick="javascript:clickPercent(40, ${consignmentVO.product_price}); return false;">40%</button>
                                                        <button id="btnPercent" name="percent" class="badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1" value="45" onclick="javascript:clickPercent(45, ${consignmentVO.product_price}); return false;">45%(권장)</button>
                                                </c:when>
                                                <c:when test="${consignmentVO.product_grade == 'C'}">
                                                        <button name="percent" class="badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1" value="25" onclick="javascript:clickPercent(25, ${consignmentVO.product_price}); return false;">25%</button>
                                                        <button name="percent" class="badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1" value="30" onclick="javascript:clickPercent(30, ${consignmentVO.product_price}); return false;">30%</button>
                                                        <button id="btnPercent" name="percent" class="badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1" value="35" onclick="javascript:clickPercent(35, ${consignmentVO.product_price}); return false;">35%(권장)</button>
                                                </c:when>
                                            </c:choose>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card bg-blue bg-lighten-4">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <span
                                                class="update-profit text-bold-600">판매가격
                                            <button type="button" class="btn btn-icon btn-pure p-0" data-toggle="tooltip" data-placement="right" title="" data-original-title="툴팁 선택 시 판매 가격 정보 툴팁 호출">
                                                <i class="feather icon-help-circle"></i>
                                            </button>
                                        </span>
                                        <div class="d-flex align-items-center">
                                            <div class="text-right">
                                                <p class="mb-25 text-bold-600" id="product_vprice" name="product_vprice">${consignmentVO.product_vprice}</p>
                                                <small class="font-small-3">(상품 가격 ${consignmentVO.product_price})</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:fn_updateVprice();">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-left" id="modal3" tabindex="-1"
             role="dialog" aria-labelledby="myModalLabel2"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel2">가격 변동 내역</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <div style="width:100%; height:250px; overflow:auto">
                            <table class="table align-middle table-striped table-hover">
                                <thead class="bg-blue bg-lighten-5 text-center">
                                <tr>
                                    <th>변경일</th>
                                    <th>자동/사용자 설정</th>
                                    <th>금액(할인율)</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${changePriceVOList}" var="changePriceVO">
                                    <tr>
                                        <td class="text-center">${changePriceVO.change_dt}</td>
                                        <td class="text-center">${changePriceVO.change_type}</td>
                                        <td class="text-center">${changePriceVO.change_price}(${changePriceVO.change_percent}%할인)</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <c:if test="${changePriceVOList.size() == 0}">
                                가격 변동 내역이 없습니다.
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-center" id="modalInspectionComplete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h3 class="modal-title" id="modal-add-title"> 확인 </h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>
                            검수 확정하시겠습니까?<br>
                            확정된 검수 정보는 셀러에게 발송됩니다.
                        </p>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" aria-label="Close"> 취소 </button>
                        <a type="button" class="btn btn-blue btn-min-width" onclick="inspectionComplete()"> 확인 </a>
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
                                            <dt class="col-sm-3">검수자</dt>
                                            <dd class="col-sm-9">${consignmentVO.inspector_name}</dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3">검수의견</dt>
                                            <dd class="col-sm-9">${consignmentVO.inspection_opinion}</dd>
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
                                                <div class="col-md-6">
                                                    <img src="${pageContext.request.contextPath}/file/down/image/${inspectionFile.file_id}" style="width: 350px;height: 350px;" onclick="window.open(this.src)" download="${pageContext.request.contextPath}/file/down/${inspectionFile.file_id}">
                                                </div>
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

        <div class="modal fade text-left" id="discardModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <p>해당 상품을 폐기처리 하시겠습니까?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-blue" data-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/discardReturnBasic.do?product_id=${consignmentVO.product_id}'">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-left" id="collectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <p>해당 상품을 회수처리 하시겠습니까?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-blue" data-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/recoveryReturnBasic.do?product_id=${consignmentVO.product_id}'">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-left" id="donateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <p>해당 상품을 기부처리 하시겠습니까?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-blue" data-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/donateReturnBasic.do?product_id=${consignmentVO.product_id}'">확인</button>
                    </div>
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

                function fn_saveSearch() {
                    window.history.back();
                }

                let percent = 0;

                 $(document).ready(function () {
                     // $('#modal2').on('hidden.bs.modal', function () {
                     //     document.getElementById('accordion11').style.display ='none';
                     // });

                    <%--clickPercent($('#btnPercent').val(), ${consignmentVO.product_price});--%>
                 });

                function fn_updateVprice() {
                    let params = {
                        'product_vprice': document.getElementById('product_vprice').innerText,
                        'product_id': '${consignmentVO.product_id}'
                    }

                    $.ajax({
                        url : "${pageContext.request.contextPath}/consignment/changPrice.json",
                        type : "POST",
                        data: params,
                        success : function(result) {
                            if(result.resultCode == "success") {
                                alert(result.message)
                                setTimeout(function () {
                                    location.reload();
                                }, 1000);
                                return false;
                            } else if (result.resultCode == "fail") {
                                alert(result.message);
                            } else {
                                alert(result.message);
                            }
                        }
                    });
                }

                function tenDollar(no) {

                    if (no == 0) {
                        var tenDollaruseFlag = '0'
                    } else if (no == 1) {
                        var tenDollaruseFlag = '1'
                    }

                    let param = {
                        'tenDollaruseFlag': tenDollaruseFlag,
                        'product_id': document.getElementById('product_id').value
                    }

                    $.ajax({
                        url : "${pageContext.request.contextPath}/tenDollarUseFlag.json",
                        type : "POST",
                        data: param,
                        success : function(result) {
                            if (result.resultCode == "success") {
                                alert(result.message);
                                location.reload();
                            } else {
                                alert(result.message);
                            }
                        }
                    });
                }

                function fn_saveTracking() {
                    var params = $("form[name=parameterVO]").serialize();

                    $.ajax({
                        url : "${pageContext.request.contextPath}/updateTrackingNum.json",
                        type : "POST",
                        data: params,
                        success : function(result) {
                            if (result.resultCode == "success") {
                                alert(result.message)
                                    setTimeout(function () {
                                        fn_chkPage(side_MENU.commissionSaleList);
                                    }, 1000);
                                } else if (result.resultCode == "fail") {
                                    alert(result.message);
                                } else {
                                    alert(result.message);
                                }
                            }
                    });
                }


                function updateProductStatus(product_status) {
                    var params = {
                        'product_state': product_status,
                        'product_id_list': '${consignmentVO.product_id}'
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

                function clickPercent(idx, price) {
                    $('button[name=percent]').each(function(){
                        if($(this).val() == idx){
                            $(this).removeClass('badge bg-blue round badge-min-width mr-1');
                            $(this).removeClass('badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1');
                            $(this).addClass('badge bg-blue round badge-min-width mr-1');
                            // $(this).attr('class', 'badge bg-blue round badge-min-width mr-1')
                        } else {
                            $(this).removeClass('badge bg-blue round badge-min-width mr-1');
                            $(this).removeClass('badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1');
                            $(this).addClass('badge bg-blue-grey bg-lighten-2 round badge-min-width mr-1');
                            // $(this).attr('class', 'bg-blue-grey bg-lighten-2 round badge-min-width mr-1')
                        }
                    });
                    percent = idx;
                    let newPrice = price * (idx/100);
                    $('#salePrice').val(price);
                    document.getElementById('product_vprice').innerText = newPrice;
                }

                function fn_openPage11() {
                    if (document.getElementById('accordion11').style.display === 'block') {
                        document.getElementById('accordion11').style.display = 'none';
                    } else {
                        document.getElementById('accordion11').style.display = 'block';
                    }
                }

                function fn_openPage12() {
                    if (document.getElementById('accordion12').style.display === 'block') {
                        document.getElementById('accordion12').style.display = 'none';
                    } else {
                        document.getElementById('accordion12').style.display = 'block';
                    }
                }

                function fn_openPage13() {
                    if (document.getElementById('accordion13').style.display === 'block') {
                        document.getElementById('accordion13').style.display = 'none';
                    } else {
                        document.getElementById('accordion13').style.display = 'block';
                    }
                }

                function fn_openPage14() {
                    if (document.getElementById('accordion14').style.display === 'block') {
                        document.getElementById('accordion14').style.display = 'none';
                    } else {
                        document.getElementById('accordion14').style.display = 'block';
                    }
                }

                function inspectionComplete() {
                    var params = {
                        "product_id": '${consignmentVO.product_id}'
                    }

                    $.ajax({
                        url : "${pageContext.request.contextPath}/keeping/inspectionComplete.json",
                        type : "POST",
                        data: params,
                        success : function(result) {
                            if (result.resultCode == "success") {
                                alert(result.message)
                                move('keepProduct.do', '');
                            } else if (result.resultCode == "fail") {
                                alert(result.message);
                            } else {
                                alert(result.message);
                            }
                        }
                    });
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
