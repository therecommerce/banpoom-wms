<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>반품 구조대</title>
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/forms/icheck/icheck.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/forms/icheck/custom.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/components.css">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/core/menu/menu-types/vertical-menu-modern.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/login-register.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 1-column  bg-blue bg-lighten-2 blank-page blank-page" data-open="click"
      data-menu="vertical-menu" data-col="1-column">
<!-- BEGIN: Content-->
<div class="app-content content" style="background-color: #FFFFFF">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
            <section class="row flexbox-container">
                <div class="col-12 d-flex align-items-center justify-content-center">
                    <div class="col-lg-4 col-md-8 col-10 box-shadow-2 p-0">
                        <div class="card border-grey border-lighten-3 m-0">
                            <div class="card-header border-0">
                                <div class="card-title text-center">
                                    <div class="p-1">
                                        <h3 class="font-large-1 text-bold-200" style="color: #000000; font-weight: bold">반품구조대<span class="font-large-1" style="color: #0070C0; font-weight: bold">&nbsp;관리자</span></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="card-content">
                                <div class="card-body">
                                    <form class="form-horizontal form-simple" name="parameterVO" method="post" id="parameterVO" novalidate>
                                        <fieldset class="form-group position-relative has-icon-left mb-0">
                                            <input type="text" class="form-control form-control-lg" id="account_id" name="account_id" placeholder="아이디를 입력하세요" required data-validation-required-message="아이디를 입력하세요" onkeyup="enterKey();" value="${account_id}">
                                            <div id="id_error" class="text-danger"></div>
                                            <div class="form-control-position">
                                                <i class="feather icon-user"></i>
                                            </div>
                                            <div class="help-block"></div>
                                        </fieldset>
                                        <fieldset class="form-group position-relative has-icon-left">
                                            <input type="password" class="form-control form-control-lg" id="account_pwd" name="account_pwd" placeholder="비밀번호를 입력하세요" required data-validation-required-message="비밀번호를 입력하세요" onkeyup="enterKey();" value="">
                                            <div id="password_error" class="text-danger"></div>
                                            <div class="form-control-position">
                                                <i class="fa fa-key"></i>
                                            </div>
                                            <div class="help-block"></div>
                                        </fieldset>
                                        <div class="form-group row">
                                            <div class="col-sm-12 col-12 text-center text-sm-left">
                                                <fieldset>
                                                    <input type="checkbox" id="remember-me" class="chk-remember" >
                                                    <label for="remember-me" onchange="getCookie(document.getElementById('remember-me').value);"> 아이디 저장</label>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-lg btn-block" onclick="javascript:fn_login();" id="loginbtn" style="background-color: #E14400; color: #FFFFFF"><i class="feather icon-unlock" style="color: #FFFFFF"></i> 로그인</button>
                                    </form>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="">
                                    <p class="float-sm-right text-center m-0" style="color: #000000; font-weight: bold; text-decoration: underline"
                                       data-toggle="tooltip" data-placement="bottom" data-original-title="서비스 운영자에게 문의하세요 jane@therecommerce.kr">비밀번호 분실문의</p>
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

<!-- BEGIN: Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/icheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app-menu.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/form-login-register.js"></script>
<!-- END: Page JS-->

<!-- BEGIN: Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/vendors.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/mobile-helper.js"></script>

<script type="text/javascript">
    let cookieBox = document.cookie.split(";");
    let regexAcc = /account_id=\[A-Za-z0-9]/g;
    let remeberName = "remember";
    let saveID;

    $(document).ready(function() {
        // document.getElementById('account_id').value = sessionStorage.getItem("account_id");
        // document.getElementById('account_pwd').value = sessionStorage.getItem("account_pwd");

        let userInputId = getCookie("wms-id");
        let remember = getCookie("wms-remember");

        if(remember === 'Y') {
            $("#remember-me").prop("checked", true);
        } else {
            $("#remember-me").prop("checked", false);
        }

        $("#account_id").val(userInputId);

        $('#loginbtn').click(function() {
            if($("#remember-me").is(':checked')){
                let userInputId = $("#account_id").val();

                setCookie("wms-id", userInputId, 7);
                setCookie("wms-remember", "Y", 7);
            } else {
                deleteCookie("wms-id");
                deleteCookie("wms-remember");
                deleteCookie("wms-id");
                deleteCookie("wms-remember");
            }
            document.form.submit();
        });

        // fn_login();
    });

    function setCookie(name, value, expire) {
        let date = new Date();
        date.setTime(date.getTime() + expire * 24 * 60 * 60 * 1000);
        document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
    }

    function deleteCookie(name) {
        setCookie(name, '', 0);
    }

    function getCookie(name) {
            let cookieValue = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
            return cookieValue? cookieValue[2] : null;
    }
</script>

<script type="text/javascript">
    function enterKey() {
        if (window.event.keyCode == 13) {
            fn_login();
        }
    }

    function fn_login() {
        if(($("#account_id").val() === null || $("#account_id").val() === "")) {
            $("#id_error").text("필수항목을 입력하세요.");
            $("#password_error").text("");
            return;
        } else if ($("#account_pwd").val() === null || $("#account_pwd").val() === "") {
            $("#id_error").text("");
            $("#password_error").text("필수항목을 입력하세요.");
            return;
        } else {
            $("#id_error").text("");
            $("#password_error").text("");
        }

        let params = $("form[name=parameterVO]").serialize();
        let account_id = document.getElementById("account_id").value;

        $.ajax({
            url : "${pageContext.request.contextPath}/checkLogin.json",
            type : "POST",
            data : params,
            success : function(result) {
                if (result.resultCode === "success") {
                    location.href = "${pageContext.request.contextPath}/home.do";
                } else if (result.message == "아이디 또는 비밀번호를 다시 확인해주세요."){
                    $("#password_error").text(result.message);
                } else {
                    alert(result.message);
                }
            }
        });

        let cookie = getCookie("account_id")
        if(account_id !== cookie) {
            deleteCookie("account_id");
            deleteCookie("account_id");
            setCookie("account_id", document.getElementById("account_id").value, 7);
        }
    }

</script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/icheck/icheck.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<%--<script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app-menu.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app.js"></script>--%>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/form-login-register.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
