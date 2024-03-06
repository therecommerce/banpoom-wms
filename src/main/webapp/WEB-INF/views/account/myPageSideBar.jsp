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
                        <a id="reloadAlarm" class="nav-link nav-link-label" href="#" data-toggle="dropdown" onclick="changeReadFlag();"><i class="ficon feather icon-bell" style="color: #FFFFFF; margin-right: 15px"></i>
                            <span class="badge badge-pill badge-danger badge-up" id="alarmCount"></span><span class="ml-n1" style="color: #FFFFFF">알림</span>
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
                        <a class="nav-link" href="#" style="color: #FFFFFF">
                            <i class="ficon feather icon-user"></i>마이페이지
                        </a>
                    </li>
                    <li class="nav-item d-none d-md-block" id="user_info" style="color: #FFFFFF; margin-top: 2px; margin-top: 2px">

                    </li>
                    <li class="nav-item d-none d-md-block">
                        <button class="nav-link btn btn-sm mr-1 mt-1 white" onclick="location.href='${pageContext.request.contextPath}/logout.do'" type="button" style="background-color: #FFB300">로그아웃</button>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<!-- END: Header-->

<!-- BEGIN: Main Menu-->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" style="background-color: #FFFFFF" data-scroll-to-active="true">
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class=" nav-item" id="active0">
                <a class="menu-item" href="#" data-i18n="">
                <span class="menu-title" data-i18n="마이페이지"><h4>마이페이지</h4></span>
                </a>
            </li>
            <hr>

            <li class=" nav-item" id="active1"><a href="${pageContext.request.contextPath}/home.do">
                <i class="ficon feather icon-server"></i><span class="menu-title" data-i18n="홈" style="font-size: 17px">홈</span></a>
            </li>
            <li class="nav-item"><a href=""><i class="feather icon-shopping-cart"></i><span class="menu-title" data-i18n="나의 계정 설정" style="font-size: 17px">나의 계정 설정</span></a>
                <ul class="menu-content">
                    <li id="active2">
                        <a class="menu-item" href="${pageContext.request.contextPath}/editToLogin.do" data-i18n="내 정보">내 정보</a>
                    </li>
                    <li id="active3">
                        <a class="menu-item" href="${pageContext.request.contextPath}/alarm.do" data-i18n="알림 설정">알림 설정</a>
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
        let test = url.split('/')

        switch (test[test.length - 1]) {
            // case 'userGrade.do':
            //     $('#active1').addClass('active');
            //     break;
            case 'editToLogin.do':
            case 'userInfoEdit.do':
            case 'userInfo.do':
                $('#active2').addClass('active');
                break;
            case 'alarm.do':
                $('#active3').addClass('active');
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
                        `<a class="nav-link" href="#" style="color: #FFFFFF"> ` +result.account_name+`님 &nbsp; </a>`
                    )
                }
            }
        });
    }
    // $(document).ready(function() {
    //     $('li').click(function () {
    //         $('li').addClass('active');
    //     })

        // $('ul.navigation navigation-main li').click(function () {
        //     alert("클릭 됨!");
        //     $("text-center").addClass('active');
        // });
    // });

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

</script>
</body>
<!-- END: Body-->

</html>
