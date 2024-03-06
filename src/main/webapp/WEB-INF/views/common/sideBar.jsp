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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/ui/prism.min.css">
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
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Header-->
<nav class="header-navbar navbar-expand-md navbar navbar-with-menu fixed-top navbar-semi-dark navbar-shadow">
    <div class="navbar-wrapper">
        <div class="navbar-header" style="background-color: #E14400">
            <ul class="nav navbar-nav flex-row">
                <li class="nav-item mobile-menu d-md-none mr-auto"><a
                        class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i
                        class="feather icon-menu font-large-1"></i></a></li>
                <li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/home.do">
                    <h2 class="brand-text" style="font-size: 19px">반품구조대 관리자</h2>
                </a></li>
                <li class="nav-item d-md-none"><a class="nav-link open-navbar-container" data-toggle="collapse"
                                                  data-target="#navbar-mobile"><i class="fa fa-ellipsis-v"></i></a></li>
            </ul>
        </div>
        <div class="navbar-container content" style="background-color: #E14400">
            <div class="collapse navbar-collapse" id="navbar-mobile">
                <ul class="nav navbar-nav mr-auto float-left">
<%--                    <li class="nav-item d-none d-md-block"><a class="nav-link nav-menu-main menu-toggle hidden-xs"--%>
<%--                                                              href="#"><i class="feather icon-menu"></i></a></li>--%>
                </ul>
                <ul class="nav navbar-nav float-right">
                    <li class="dropdown dropdown-notification nav-item">
                        <a id="reloadAlarm" class="nav-link nav-link-label" href="#" data-toggle="dropdown" onclick="changeReadFlag();">
                            <i class="ficon feather icon-bell" style="color: #FFFFFF; margin-right: 15px"></i>
                            <span class="badge badge-pill badge-danger badge-up" id="alarmCount"></span>
                            <span class="ml-n1" style="color: #FFFFFF">알림</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                            <li class="dropdown-menu-header">
                                <h6 class="dropdown-header m-0">
                                        <span class="grey darken-2">받은알림
                                            <a href="${pageContext.request.contextPath}/alarm.do"><i class="feather icon-settings ml-50"></i></a>
                                        </span>
                                    <div class="float-right m-0">
                                        <ul class="list-inline mb-0">
                                            <li class="border-right-blue-grey border-right-lighten-4 pr-50">
                                                <a onclick="deleteAlarms();">전체 지우기</a>
                                            </li>
                                            <li><a onclick="javascript:showAlarm(); openAlarmPopup(); alarmCount();"><i class="feather icon-rotate-cw"></i></a>
                                        </ul>
                                    </div>
                                </h6>
                            </li>
                            <div class="text-center py-4" id="alarmNotExist">

                            </div>

                            <li class="scrollable-container media-list" id="alarmExist">

                            </li>
                            <!-- <li class="dropdown-menu-footer"><a class="dropdown-item text-muted text-center"
                                    href="javascript:void(0)">모든 알림 읽기</a></li> -->
                        </ul>
                    </li>
                    <li class="nav-item d-none d-md-block">
                        <a class="nav-link" href="${pageContext.request.contextPath}/myPage.do" style="color: #FFFFFF">
                            <i class="ficon feather icon-user"></i>마이페이지
                        </a>
                    </li>
                    <li class="nav-item d-none d-md-block" id="user_info" style="color: #FFFFFF; margin-top: 2px">
                    </li>
                    <li class="nav-item d-none d-md-block">
                        <button class="nav-link btn btn-sm  mr-1 mt-1 white" onclick="location.href='${pageContext.request.contextPath}/logout.do'" type="button" style="background-color: #FFB300">로그아웃</button>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<!-- END: Header-->

<!-- BEGIN: Main Menu-->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true" style="background-color: #FFFFFF">
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class=" nav-item" id="active1">
                <a class=" text-left" href="${pageContext.request.contextPath}/home.do">
                    <span class="menu-title" data-i18n="홈"><b>홈</b></span>
                </a>
            </li>
            <li class="nav-item" id="active40"><a href="#"><span class="menu-title" data-i18n="위탁 상품 관리"><h5>위탁 상품 관리</h5></span></a>
                <ul class="menu-content">
                    <li id="active2">
                        <a class="menu-item" href="${pageContext.request.contextPath}/consignment/inspection.do" data-i18n="입고/검수 관리">입고/검수 관리</a>
                    </li>
                    <li id="active3">
                        <a class="menu-item" href="${pageContext.request.contextPath}/consignment/productSale.do" data-i18n="상품/판매 관리">상품/판매 관리</a>
                    </li>
                    <li id="active4">
                        <a class="menu-item" href="${pageContext.request.contextPath}/consignment/orderDelivery.do" data-i18n="주문/배송 관리">주문/배송 관리</a>
                    </li>
                    <li id="active5">
                        <a class="menu-item" href="${pageContext.request.contextPath}/consignment/returnDelivery.do" data-i18n="반품 관리">반품 관리</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item" id="active41"><a href="#"><span class="menu-title" data-i18n="반품수거보관 상품 관리"><h5>반품수거보관 상품 관리</h5></span></a>
                <ul class="menu-content">
                    <li id="active6">
                        <a class="menu-item" href="${pageContext.request.contextPath}/keeping/keepProduct.do" data-i18n="반품수거보관 목록">보관 상품 관리</a>
                    </li>
                    <li id="active7">
                        <a class="menu-item" href="${pageContext.request.contextPath}/keeping/delivery.do" data-i18n="배송 관리">배송 관리</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item" id="active42"><a href="#"><span class="menu-title" data-i18n="셀러상품 관리(직접판매)"><h5>셀러상품 관리(직접판매)</h5></span></a>
                <ul class="menu-content">
                    <li id="active8">
                        <a class="menu-item" href="${pageContext.request.contextPath}/direct/productManagement.do" data-i18n="상품/판매 관리">상품/판매 관리</a>
                    </li>
                    <li id="active9">
                        <a class="menu-item" href="${pageContext.request.contextPath}/direct/orderDeliveryManagement.do" data-i18n="주문/배송 관리">주문/배송 관리</a>
                    </li>
                    <li id="active10">
                        <a class="menu-item" href="${pageContext.request.contextPath}/direct/returnManagement.do" data-i18n="반품 관리">반품 관리</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item" id="active11">
                <a class=" text-left" href="${pageContext.request.contextPath}/disabledManagement.do">
                    <span class="menu-title" data-i18n="기부/폐기/회수 관리"><h5>기부/폐기/회수 관리</h5></span>
                </a>
            </li>

            <li class="nav-item" id="active43"><a href="#"><span class="menu-title" data-i18n="정산관리"><h5>정산관리</h5></span></a>
                <ul>
                    <li id="active12">
                        <a class="menu-item" href="${pageContext.request.contextPath}/consignCalculate.do" data-i18n="위탁판매상품 정산관리">위탁판매상품 정산관리</a>
                    </li>
                    <li id="active12-1">
                        <a class="menu-item" href="${pageContext.request.contextPath}/returnCalculate.do" data-i18n="반품수거/보관상품 정산관리">반품수거/보관상품 정산관리</a>
                    </li>
                </ul>
            </li>

            <li class="nav-item" id="active44"><a href="#"><span class="menu-title" data-i18n="회원관리"><h5>회원관리</h5></span></a>
                <ul class="menu-content">
                    <li id="active13">
                        <a class="menu-item" href="${pageContext.request.contextPath}/sellerManagement.do" data-i18n="셀러 회원관리">셀러 회원관리</a>
                    </li>
                    <li id="active14">
                        <a class="menu-item" href="${pageContext.request.contextPath}/userManagement.do" data-i18n="일반 회원관리">일반 회원관리</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item" id="active45"><a href="#"><span class="menu-title" data-i18n="프로모션 관리"><h5>프로모션 관리</h5></span></a>
                <ul class="menu-content">
                    <li id="active15">
                        <a class="menu-item" href="${pageContext.request.contextPath}/promotion/coupon.do" data-i18n="쿠폰관리">쿠폰관리</a>
                    </li>
                    <li id="active16">
                        <a class="menu-item" href="${pageContext.request.contextPath}/promotion/pointManagement.do" data-i18n="포인트 설정 관리">포인트 설정 관리</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item" id="active46"><a href="#"><span class="menu-title" data-i18n="고객 관리"><h5>고객 관리</h5></span></a>
                <ul class="menu-content">
                    <li id="active17">
                        <a class="menu-item" href="${pageContext.request.contextPath}/customer/manOnManQnaSeller.do" data-i18n="1:1 문의(셀러)">1:1 문의(셀러)</a>
                    </li>
                    <li id="active18">
                        <a class="menu-item" href="${pageContext.request.contextPath}/customer/qnaManagement.do" data-i18n="상품문의(앱)">상품문의(앱)</a>
                    </li>
                    <li id="active39">
                        <a class="menu-item" href="${pageContext.request.contextPath}/customer/naverQnaManagement.do" data-i18n="상품문의(네이버)">상품문의(네이버)</a>
                    </li>
                    <li id="active19">
                        <a class="menu-item" href="${pageContext.request.contextPath}/customer/manOnManQnaUser.do" data-i18n="고객센타문의(앱)">고객센타문의(앱)</a>
                    </li>
                    <li id="active20">
                        <a class="menu-item" href="${pageContext.request.contextPath}/customer/startSellerQna.do" data-i18n="판매자 입점문의(앱)">판매자 입점문의(앱)</a>
                    </li>
                    <li id="active21">
                        <a class="menu-item" href="${pageContext.request.contextPath}/customer/reviewManagement.do" data-i18n="리뷰 관리">리뷰 관리</a>
                    </li>
                    <li id="active22">
                        <a class="menu-item" href="${pageContext.request.contextPath}/customer/reportManagement.do" data-i18n="신고내용 관리">신고내용 관리</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item" id="active47"><a href="#"><span class="menu-title" data-i18n="운영 관리"><h5>운영 관리</h5></span></a>
                <ul class="menu-content">
                    <li id="active23">
                        <a class="menu-item" href="${pageContext.request.contextPath}/operation/noticeManagement.do" data-i18n="공지등록 관리">공지등록 관리</a>
                    </li>
                    <li id="active24">
                        <a class="menu-item" href="#" data-i18n="카테고리 설정">카테고리 설정</a>
                    </li>
                    <li id="active25">
                        <a class="menu-item" href="#" data-i18n="수수료 설정 관리">수수료 설정 관리</a>
                    </li>
                    <li id="active26">
                        <a class="menu-item" href="${pageContext.request.contextPath}/operation/serviceRuleManagement.do" data-i18n="이용약관 관리">이용약관 관리</a>
                    </li>
                    <li id="active27">
                        <a class="menu-item" href="${pageContext.request.contextPath}/operation/managerManagement.do" data-i18n="매니저 권한 관리">매니저 권한 관리</a>
                    </li>
                    <li id="active28">
                        <a class="menu-item" href="#" data-i18n="회원등급 설정">회원등급 설정</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item" id="active48"><a href="#"><span class="menu-title" data-i18n="WMS APP 관리"><h5>WMS APP 관리</h5></span></a>
                <ul class="menu-content">
                    <li id="active29">
                        <a class="menu-item" href="${pageContext.request.contextPath}/wmsappadmin/incomshoot.do" data-i18n="입고영상/제품촬영">입고영상/제품촬영</a>
                    </li>
                    <li id="active30">
                        <a class="menu-item" href="${pageContext.request.contextPath}/wmsappadmin/grading.do" data-i18n="등급판정">등급판정</a>
                    </li>
                    <li id="active31">
                        <a class="menu-item" href="${pageContext.request.contextPath}/wmsappadmin/shootmanage.do" data-i18n="촬영정보관리">촬영정보관리</a>
                    </li>
                    <li id="active32">
                        <a class="menu-item" href="${pageContext.request.contextPath}/wmsappadmin/rackproduct.do" data-i18n="보관정보관리">보관정보관리</a>
                    </li>

                </ul>
            </li>
            <li class="nav-item" id="active49"><a href="#"><span class="menu-title" data-i18n="재고 관리"><h5>재고 관리</h5></span></a>
                <ul class="menu-content">
                    <li id="active33">
                        <a class="menu-item" href="${pageContext.request.contextPath}/inventory/location.do" data-i18n="로케이션관리">로케이션관리</a>
                    </li>
                    <li id="active34">
                        <a class="menu-item" href="${pageContext.request.contextPath}/inventory/inboundshipping.do" data-i18n="입고관리">입고관리</a>
                    </li>
                    <li id="active35">
                        <a class="menu-item" href="${pageContext.request.contextPath}/inventory/outboundshipping.do" data-i18n="출고관리">출고관리</a>
                    </li>
                    <li id="active36">
                        <a class="menu-item" href="${pageContext.request.contextPath}/inventory/stockmanage.do" data-i18n="재고관리">재고관리</a>
                    </li>
                    <li id="active37">
                        <a class="menu-item" href="${pageContext.request.contextPath}/inventory/releaseinspection.do" data-i18n="출고검수">출고검수</a>
                    </li>
                    <li id="active38">
                        <a class="menu-item" href="${pageContext.request.contextPath}/inventory/deliverymanage.do" data-i18n="배송출고관리">배송출고관리</a>
                    </li>

                </ul>
            </li>
        </ul>
    </div>
</div>

<%--<div class="app-content content">--%>
<%--    <div class="content-overlay"></div>--%>
<%--<div id="contentArea"></div>--%>
<%--</div>--%>

<div class="sidenav-overlay"></div>
<%--<div class="drag-target"></div>--%>


<!-- BEGIN: Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>--%>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app-menu.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

<!-- BEGIN: Page JS-->
<!-- END: Page JS-->

<script type="text/javascript">

    $(document).ready(function() {
        showActive();
        getUserName();
        showAlarm();
        alarmCount();
    });

    function showActive(){
        let url = window.location.href;
        let test = [];
        let flag = false;
        if(url.includes('true')){
            flag= true;
        }
        if(url.includes('?')){
            test = url.split('?')[0].split('/')
        }else {
            test = url.split('/')
        }


        switch (test[test.length - 1]) {
            case 'home.do':
                $('#active1').addClass('active');
                break;
            case 'inspection.do':
                $('#active2').addClass('active');
                $('#active40').addClass('has sub hover open');
                break;
            case 'consignmentDetail.do':
            case 'consignmentDetailEdit.do':
                if(flag) {
                    $('#active3').addClass('active');
                } else{
                    $('#active2').addClass('active');
                }
                break;
            case 'productSale.do':
            case 'productSaleDetail.do':
                $('#active3').addClass('active');
                $('#active40').addClass('has sub hover open');
                break;
            case 'orderDelivery.do':
                $('#active4').addClass('active');
                $('#active40').addClass('has sub hover open');
                break;
            case 'returnDelivery.do':
                $('#active5').addClass('active');
                $('#active40').addClass('has sub hover open');
                break;
            case 'keepProduct.do':
            case 'keepProductDetail.do':
            case 'keepProductDetailEdit.do':
                $('#active6').addClass('active');
                $('#active41').addClass('has sub hover open');
                break;
            case 'delivery.do':
                $('#active7').addClass('active');
                $('#active41').addClass('has sub hover open');
                break;
            case 'productManagement.do':
                $('#active8').addClass('active');
                $('#active42').addClass('has sub hover open');
                break;
            case 'productManagementEdit.do':
                $('#active8').addClass('active');
                $('#active42').addClass('has sub hover open');
                break;
            case 'orderDeliveryManagement.do':
                $('#active9').addClass('active');
                $('#active42').addClass('has sub hover open');
                break;
            case 'returnManagement.do':
                $('#active10').addClass('active');
                $('#active42').addClass('has sub hover open');
                break;
            case 'disabledManagement.do':
            case 'disabledManagementDetail.do' :
                $('#active11').addClass('active');
                break;
            case 'consignCalculate.do':
            case 'calculateDetail.do':
            case 'noticeRegister.do':
                $('#active12').addClass('active');
                $('#active43').addClass('has sub hover open');
                break;
            case 'returnCalculate.do':
            case 'returnCalDetail.do':
                $('#active12-1').addClass('active');
                $('#active43').addClass('has sub hover open');
                break;
            case 'sellerManagement.do':
            case 'sellerManagementEdit.do':
                $('#active13').addClass('active');
                $('#active44').addClass('has sub hover open');
                break;
            case 'userManagement.do':
            case 'userManagementEdit.do':
                $('#active14').addClass('active');
                $('#active44').addClass('has sub hover open');
                break;
            case 'coupon.do':
            case 'couponDetail.do':
            case 'couponRegister.do':
            case 'couponDetailEdit.do':
                $('#active15').addClass('active');
                $('#active45').addClass('has sub hover open');
                break;
            case 'pointManagement.do':
                $('#active16').addClass('active');
                $('#active45').addClass('has sub hover open');
                break;
            case 'manOnManQnaSeller.do':
            case 'manOnManQnaSellerDetail.do':
                $('#active17').addClass('active');
                $('#active46').addClass('has sub hover open');
                break;
            case 'qnaManagement.do':
            case 'qnaManagementDetail.do':
                $('#active18').addClass('active');
                $('#active46').addClass('has sub hover open');
                break;
            case 'naverQnaManagement.do':
            case 'naverQnaManagementDetail.do':
                $('#active39').addClass('active');
                $('#active46').addClass('has sub hover open');
                break;
            case 'manOnManQnaUser.do':
            case 'manOnManQnaUserDetail.do':
                $('#active19').addClass('active');
                $('#active46').addClass('has sub hover open');
                break;
            case 'startSellerQna.do':
            case 'startSellerQnaDetail.do':
                $('#active20').addClass('active');
                $('#active46').addClass('has sub hover open');
                break;
            case 'reviewManagement.do':
                $('#active21').addClass('active');
                $('#active46').addClass('has sub hover open');
                break;
            case 'reportManagement.do':
                $('#active22').addClass('active');
                $('#active46').addClass('has sub hover open');
                break;
            case 'noticeManagement.do':
            case 'noticeDetail.do':
                $('#active23').addClass('active');
                $('#active47').addClass('has sub hover open');
                break;
            case 'managerManagement.do':
            case 'managerDetail.do':
            case 'managerRegister.do':
            case 'managerUpdateAccount.do' :
                $('#active27').addClass('active');
                $('#active47').addClass('has sub hover open');
                break;
            case 'incomshoot.do' :
                $('#active29').addClass('active');
                $('#active48').addClass('has sub hover open');
                break;
            case 'grading.do' :
                $('#active30').addClass('active');
                $('#active48').addClass('has sub hover open');
                break;
            case 'shootmanage.do':
                $('#active31').addClass('active');
                $('#active48').addClass('has sub hover open');
                break;
            case 'rackproduct.do':
                $('#active32').addClass('active');
                $('#active48').addClass('has sub hover open');
                break;
            case 'location.do':
                $('#active33').addClass('active');
                $('#active49').addClass('has sub hover open');
                break;
            case 'inboundshipping.do':
                $('#active34').addClass('active');
                $('#active49').addClass('has sub hover open');
                break;
            case 'outboundshipping.do':
                $('#active35').addClass('active');
                $('#active49').addClass('has sub hover open');
                break;
            case 'stockmanage.do':
                $('#active36').addClass('active');
                $('#active49').addClass('has sub hover open');
                break;
            case 'releaseinspection.do':
                $('#active37').addClass('active');
                $('#active49').addClass('has sub hover open');
                break;
            case 'deliverymanage.do':
                $('#active38').addClass('active');
                $('#active49').addClass('has sub hover open');
                break;
            case 'serviceRuleManagement.do':
            case 'serviceRuleRegist.do':
                $('#active26').addClass('active');
                break;
        }
    }

    function getUserName(){
        $.ajax({
            url : "${pageContext.request.contextPath}/sideBar.json",
            type : "POST",
            success : function(result) {
                if (result.account_name !== null && result.account_name !== '') {
                    $('#user_info').html(
                        `<a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/myPage.do">` +result.account_name+`님 &nbsp; </a>`
                    )
                }
            }
        });
    }

    function openAlarmPopup() {
        setTimeout(function () {
            $('#reloadAlarm').get(0).click();
        }, 500);
    }

    function showAlarm() {
        var htmlString = '';

        $.ajax({
            url : "${pageContext.request.contextPath}/showAlarm.json",
            type : "POST",
            success : function(result) {
                if (result.alarmList.length != 0) {
                    for (var i=0; i<result.alarmList.length; i++) {
                        htmlString += `<div class="media" id="` + result.alarmList[i].noti_no + `">
                                        <div class="media-body">
                                            <a class="float-right" onclick="deleteOneAlarm('`+ result.alarmList[i].noti_no + `');">x</a>
                                            <a onclick="movePage('`+ result.alarmList[i].title +`');">
                                            <h6 class="media-heading">'` + result.alarmList[i].title + `'</h6>
                                            <p class="notification-text font-small-3 text-muted">
                                                '` + result.alarmList[i].content + `'
                                            </p>
                                            <small>
                                                <time class="media-meta text-muted">'` + result.alarmList[i].diffDate + `'</time>
                                            </small>
                                            </a>
                                        </div>
                                    </div>`

                        document.getElementById("alarmNotExist").innerHTML = '';
                        document.getElementById("alarmNotExist").style.display = 'none';
                        document.getElementById("alarmExist").innerHTML = htmlString;
                    }
                } else {
                    htmlString = `<h3 class="avatar bg-blue-grey bg-lighten-4"><span
                                        class="ficon feather icon-bell"></span></h3>
                                <p class="text-muted">받은 알림이 없습니다.</p>`

                    document.getElementById("alarmExist").innerHTML = '';
                    document.getElementById("alarmExist").style.display = 'none';
                    document.getElementById("alarmNotExist").innerHTML = htmlString;
                }
            }
        });
    }

    function changeReadFlag() {
        $.ajax({
            url : "${pageContext.request.contextPath}/changeReadFlag.json",
            type : "POST",
            success : function(result) {
                if(result.resultCode == "success") {
                    alarmCount();
                } else {
                    alert("오류 발생");
                }
            }
        });
    }

    function deleteAlarms() {

        $.ajax({
            url : "${pageContext.request.contextPath}/changeAlarmFlag.json",
            type : "POST",
            success : function(result) {
                if(result.resultCode == "success") {
                    alarmCount();
                    showAlarm();
                    openAlarmPopup();
                } else {
                    alert("오류 발생");
                }
            }
        });
    }

    function deleteOneAlarm(noti_no) {

        var params = {
            "noti_no": noti_no
        }

        $.ajax({
            url : "${pageContext.request.contextPath}/deleteOneAlarm.json",
            type : "POST",
            data : params,
            success : function(result) {
                if(result.resultCode == "success") {
                    alarmCount();
                    showAlarm();
                    openAlarmPopup();
                } else {
                    alert("오류 발생");
                }
            }
        });
    }

    function alarmCount() {

        $.ajax({
            url : "${pageContext.request.contextPath}/AlarmCount.json",
            type : "POST",
            success : function(result) {
                if (result.AlarmCount > 0) {
                    document.getElementById("alarmCount").innerHTML = result.AlarmCount;
                } else {
                    document.getElementById("alarmCount").innerHTML = '';
                }
            }
        });
    }

    function inputNumberFormat(obj) {
        obj.value = comma(uncomma(obj.value));
    }

    function comma(str) {
        str = String(str);
        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    }

    function uncomma(str) {
        str = String(str);
        return str.replace(/[^\d]+/g, '');
    }

</script>
</body>
<!-- END: Body-->

</html>
