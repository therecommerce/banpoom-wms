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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/validation/form-validation.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/login-register.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
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

<!-- BEGIN: Content-->
<div class="app-content content">
<div class="content-overlay"></div>
<div class="content-wrapper">
    <div class="content-header">
        <h3 class="content-header-title mb-2">회원 정보 수정</h3>
    </div>
    <hr>

    <div class="content-body">
        <!-- 회원 정보 수정-->
        <section class="row flexbox-container mt-5">
            <div class="col-12 d-flex align-items-center justify-content-center">
                <div class="col-lg-4 col-md-8 col-10 p-0">
                    <div class="card border-grey border-lighten-3 m-0">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="text-center mb-4">
                                    <h4 class="card-title font-medium-3 mt-1">개인정보보호를 위해 다시 로그인해주세요.</h4>
                                </div>
                                <form:form class="form-horizontal form-simple" id="parameterVO" commandName="parameterVO" name="parameterVO" action="" method="post">
                                    <div class="form-body">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label for="account_id">아이디</label>
                                                <input type="text" class="form-control form-control-lg"
                                                       id="account_id" name="account_id" placeholder="아이디를 입력하세요" required=""
                                                       data-validation-required-message="아이디를 입력하세요" onkeyup="enterKey();">
                                                <div class="help-block"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="controls">
                                                <label for="account_pwd">비밀번호</label>
                                                <input type="password" class="form-control form-control-lg"
                                                       id="account_pwd" name="account_pwd" placeholder="비밀번호를 입력하세요" required=""
                                                       data-validation-required-message="비밀번호를 입력하세요" onkeyup="enterKey();"
                                                       aria-invalid="false">
                                                <div class="help-block"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions center">
                                        <button type="button" class="btn btn-blue btn-lg btn-block" onclick="javascript:fn_login();" onkeyup="enterKey();">로그인</button>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--/ 회원 정보 수정-->
    </div>
</div>
</div>
<!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
    <jsp:include page="/WEB-INF/views/account/myPageSideBar.jsp" flush="false" />



<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/icheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"></script>
<!-- END: Page Vendor JS-->



<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/form-login-register.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/mobile-helper.js"></script>
<!-- END: Page JS-->

<script type="text/javascript">

    function fn_login() {

        var params = $("form[name=parameterVO]").serialize();

        if ($("#account_id").val() == "" || $("#account_pwd").val() == "") {
            alert("아이디 또는 비밀번호를 입력하시기 바랍니다.");
            return;
        }

        $.ajax({
            url : "${pageContext.request.contextPath}/checkEditLogin.json",
            type : "POST",
            data : params,
            success : function(result) {
                if (result.resultCode == "success") {
                    move('userInfo.do', '');
                    <%--location.href = "${pageContext.request.contextPath}/userInfoEdit.do";--%>
                    // fn_chkPage(side_MENU.userInfoEdit, params)
                } else if (result.resultCode == "fail") {
                    alert(result.message);
                }
            }
        });
    }

    function enterKey() {
        if (window.event.keyCode == 13) {
            fn_login();
        }
    }

</script>

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/icheck/icheck.min.js"></script>
<!-- END: Page Vendor JS-->



<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/form-login-register.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
