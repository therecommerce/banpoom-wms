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
            <h3 class="content-header-title mb-2">홈</h3>
        </div>
        <hr>
        <div class="content-body">
            <section>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4" onclick="location.href='${pageContext.request.contextPath}/consignment/productSale.do'">
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue">반품구조대 위탁 상품</h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="card-text">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">판매중</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-6">
                                                    <dt class="float-right">${countVO.consignmentSaleCount}건</dt>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4" onclick="location.href='${pageContext.request.contextPath}/direct/productManagement.do'">
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue">반품수거 보관 상품</h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="card-text">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">판매중</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-6">
                                                    <dt class="float-right">${countVO.directSaleCount}건</dt>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" onclick="location.href='${pageContext.request.contextPath}/consignment/returnDelivery.do'">
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue">클레임 현황</h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="card-text">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">반품 요청</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-6">
                                                        <dt class="float-right">${countVO.returnRequestCount}건</dt>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="card height-350">
                                <div class="card-header pb-0">
                                 <h4 class="card-title blue"><a class="card-link" onclick="location.href='${pageContext.request.contextPath}/consignment/inspection.do'" >위탁상품 입고/검수 현황<i class="fa fa-angle-right"></i></a></h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="card-text">
                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/consignment/inspection.do?state=1'">
                                                <div class="col-md-8">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">픽업 요청</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-4">
                                                    <dt class="float-right">${countVO.pickupCount}건</dt>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/consignment/inspection.do?state=2'">
                                                <div class="col-md-8">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">반품구조대로 이동중</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-4">
                                                    <dt class="float-right">${countVO.moveCount}건</dt>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/consignment/inspection.do?state=3'">
                                                <div class="col-md-8">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">반품구조대 도착/입고</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-4">
                                                    <dt class="float-right">${countVO.arrivalCount}건</dt>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/consignment/inspection.do?state=4'">
                                                <div class="col-md-8">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">최종 검수대기</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-4">
                                                    <dt class="float-right">${countVO.readyCount}건</dt>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/consignment/inspection.do?state=5'">
                                                <div class="col-md-8">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">검수 완료</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-4">
                                                    <dt class="float-right">${countVO.completeCount}건</dt>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue">배송 정보</h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="card-text">
                                            <div class="row" style="display: flex; justify-content: center; gap: 300px; margin-bottom: 20px">
                                                <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" onclick="location.href='${pageContext.request.contextPath}/consignment/orderDelivery.do'">위탁상품</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary btn-min-width" onclick="location.href='${pageContext.request.contextPath}/keeping/delivery.do'">반품수거보관 상품</button>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <dl class="row">
                                                        <dt class="col-sm-6">결제완료</dt>
                                                        <dt class="float-right">${deliveryCountVO.paymentCompleteCount}건</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-6">
                                                    <dl class="row">
                                                        <dt class="col-sm-6">배송요청</dt>
                                                        <dt class="float-right">${deliveryCountVO.deliveryRequestCount}건</dt>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue"><a class="card-link" onclick="location.href='${pageContext.request.contextPath}/disabledManagement.do'">기부/폐기/회수 현황<i class="fa fa-angle-right"></i></a></h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="card-text">
                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/disabledManagement.do?state=1'">
                                                <div class="col-md-8">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">기부</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-4">
                                                    <dt class="float-right">${countVO.donateCount}건</dt>
                                                </div>
                                            </div>
                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/disabledManagement.do?state=2'">
                                                <div class="col-md-8">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">폐기</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-4">
                                                    <dt class="float-right">${countVO.discardCount}건</dt>
                                                </div>
                                            </div>
                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/disabledManagement.do?state=3'">
                                                <div class="col-md-8">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">회수</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-4">
                                                    <dt class="float-right">${countVO.recoveryCount}건</dt>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card height-350">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue">고객 문의/리뷰/신고 현황</h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="row" onclick="location.href='${pageContext.request.contextPath}/customer/qna.do?state=false'">
                                            <div class="col-md-8">
                                                <dl class="row">
                                                    <dt class="col-sm-12">Q&A 미답변 문의</dt>
                                                </dl>
                                            </div>
                                            <div class="col-md-4">
                                                <dt class="float-right">${countVO.qnaUnAnswerCount}건</dt>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row" onclick="location.href='${pageContext.request.contextPath}/customer/sellerInquiry.do?state=false'">
                                            <div class="col-md-8">
                                                <dl class="row">
                                                    <dt class="col-sm-12">1:1 문의(셀러) 미답변</dt>
                                                </dl>
                                            </div>
                                            <div class="col-md-4">
                                                <dt class="float-right">${countVO.oneToOneSellerCount}건</dt>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row" onclick="location.href='${pageContext.request.contextPath}/customer/userInquiry.do?state=false'">
                                            <div class="col-md-8">
                                                <dl class="row">
                                                    <dt class="col-sm-12">1:1 문의(일반회원) 미답변</dt>
                                                </dl>
                                            </div>
                                            <div class="col-md-4">
                                                <dt class="float-right">${countVO.oneToOneUserCount}건</dt>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row" onclick="location.href='${pageContext.request.contextPath}/customer/report.do?state=1'">
                                            <div class="col-md-8">
                                                <dl class="row">
                                                    <dt class="col-sm-12">신고내역 (최근 1개월)</dt>
                                                </dl>
                                            </div>
                                            <div class="col-md-4">
                                                <dt class="float-right">${countVO.reportCount}건</dt>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row" onclick="location.href='${pageContext.request.contextPath}/customer/review.do?state=1'">
                                            <div class="col-md-8">
                                                <dl class="row">
                                                    <dt class="col-sm-12">고객 리뷰수 (최근 1개월)</dt>
                                                </dl>
                                            </div>
                                            <div class="col-md-4">
                                                <dt class="float-right">${countVO.reviewCount}건</dt>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card height-300">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue">서비스 현황</h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="card-text">
                                            <div class="row height-200" style="margin-top: 20px">

                                                <div class="col-md-4">
                                                    <div class="card">
                                                        <div class="card-content">
                                                            <div class="media align-items-stretch">
                                                                <div class="p-2 text-center bg-primary bg-darken-2">
                                                                    <i class="icon-user font-large-2 white"></i>
                                                                </div>
                                                                <div class="p-2 bg-gradient-x-primary white media-body">
                                                                    <h5>앱 다운로드 수</h5>
                                                                    <h5>xxxx</h5>
                                                                    <h5 class="text-bold-400 mb-0"><i class="feather icon-arrow-up"></i>2.30%</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="card">
                                                        <div class="card-content">
                                                            <div class="media align-items-stretch">
                                                                <div class="p-2 text-center bg-danger bg-darken-2">
                                                                    <i class="icon-user font-large-2 white"></i>
                                                                </div>
                                                                <div class="p-2 bg-gradient-x-danger white media-body">
                                                                    <h5>셀러회원 가입자</h5>
                                                                    <h5>${countVO.sellerCount}명</h5>
                                                                    <c:if test="${countVO.sellerCount - countVO.dayBeforeSellerCount > '0'}">
                                                                        <h5 class="text-bold-400 mb-0"><i class="feather icon-arrow-up"></i>${countVO.sellerCount - countVO.dayBeforeSellerCount}명</h5>
                                                                    </c:if>
                                                                    <c:if test="${countVO.sellerCount - countVO.dayBeforeSellerCount == '0'}">
                                                                        <h5 class="text-bold-400 mb-0">전일대비 <i class="">-</i>&nbsp;&nbsp;${countVO.sellerCount - countVO.dayBeforeSellerCount}명</h5>
                                                                    </c:if>
                                                                    <c:if test="${countVO.sellerCount - countVO.dayBeforeSellerCount < '0'}">
                                                                        <h5 class="text-bold-400 mb-0"><i class="feather icon-arrow-down"></i>${countVO.sellerCount - countVO.dayBeforeSellerCount}명</h5>
                                                                    </c:if>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="card">
                                                        <div class="card-content">
                                                            <div class="media align-items-stretch">
                                                                <div class="p-2 text-center bg-success bg-darken-2">
                                                                    <i class="icon-user font-large-2 white"></i>
                                                                </div>
                                                                <div class="p-2 bg-gradient-x-success white media-body">
                                                                    <h5>일반회원 가입자</h5>
                                                                    <h5>${countVO.userCount}명</h5>
                                                                    <c:if test="${countVO.userCount - countVO.dayBeforeUserCount > '0'}">
                                                                        <h5 class="text-bold-400 mb-0"><i class="feather icon-arrow-up"></i>${countVO.userCount - countVO.dayBeforeUserCount}명</h5>
                                                                    </c:if>
                                                                    <c:if test="${countVO.userCount - countVO.dayBeforeUserCount == '0'}">
                                                                        <h5 class="text-bold-400 mb-0">전일대비 <i class="">-</i>&nbsp;&nbsp;${countVO.userCount - countVO.dayBeforeUserCount}명</h5>
                                                                    </c:if>
                                                                    <c:if test="${countVO.userCount - countVO.dayBeforeUserCount < '0'}">
                                                                        <h5 class="text-bold-400 mb-0"><i class="feather icon-arrow-down"></i>${countVO.userCount - countVO.dayBeforeUserCount}명</h5>
                                                                    </c:if>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

<%--                                                <div class="col-md-4">--%>
<%--                                                    <div class="text-center">--%>
<%--                                                        <p>앱 다운로드 수</p>--%>
<%--                                                        <h3>xxxx</h3>--%>
<%--                                                        <p class="text-muted">전일 대비<span class="danger"><i class="feather icon-arrow-down"></i> 2.30%</span></p>--%>
<%--                                                    <canvas width="214" height="30" style="display: inline-block; width: 214px; height: 30px; vertical-align: top;"></canvas>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="col-md-4">--%>
<%--                                                    <div class="text-center">--%>
<%--                                                        <p>셀러회원 가입자</p>--%>
<%--                                                        <h3>${countVO.sellerCount}</h3>--%>
<%--                                                        <p class="text-muted">전일 대비<span class="danger"><i class="feather icon-arrow-up"></i> ${countVO.sellerCount - countVO.dayBeforeSellerCount}명</span></p>--%>
<%--                                                        <canvas width="214" height="30" style="display: inline-block; width: 214px; height: 30px; vertical-align: top;"></canvas>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="col-md-4">--%>
<%--                                                    <div class="text-center">--%>
<%--                                                        <p>일반회원 가입자</p>--%>
<%--                                                        <h3>${countVO.userCount}</h3>--%>
<%--                                                        <p class="text-muted">전일 대비<span class="danger"><i class="feather icon-arrow-up"></i> ${countVO.userCount - countVO.dayBeforeUserCount}명</span></p>--%>
<%--                                                        <canvas width="214" height="30" style="display: inline-block; width: 214px; height: 30px; vertical-align: top;"></canvas>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue"><a class="card-link">회원관리<i class="fa fa-angle-right"></i></a></h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="card-text">

                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/sellerManagement.do'">
                                                <div class="col-md-6">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">사업자 승인대기 요청</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-6">
                                                    <dt class="float-right">${countVO.business_wait}건</dt>
                                                </div>
                                            </div>

                                            <div class="row" onclick="location.href='${pageContext.request.contextPath}/customer/review.do?state=1'">
                                                <div class="col-md-8">
                                                    <dl class="row">
                                                        <dt class="col-sm-12">입점 문의</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-4">
                                                    <dt class="float-right">${countVO.reviewCount}건</dt>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue"><a class="card-link">정산 현황<i class="fa fa-angle-right"></i></a></h4>
                                    <hr class="bg-white mb-0">
                                    <div class="heading-elements">
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="card-text">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <dl class="row">
                                                        <dt class="col-sm-6">오늘 정산 금액</dt>
                                                        <dt class="float-right">xx원</dt>
                                                    </dl>
                                                </div>
                                                <div class="col-md-6">
                                                    <dl class="row">
                                                        <dt class="col-sm-6">내일 정산 금액</dt>
                                                        <dt class="float-right">xx원</dt>
                                                    </dl>
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
