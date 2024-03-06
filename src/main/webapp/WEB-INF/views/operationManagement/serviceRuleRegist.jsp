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
  <!-- END: Page CSS-->

  <!-- BEGIN: Custom CSS-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
  <!-- END: Custom CSS-->

</head>

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<%--<!-- BEGIN: Content-->--%>
<div class="app-content content">
  <div class="content-overlay"></div>
  <div class="content-wrapper">
    <div class="content-header">
      <h3 class="content-header-title mb-2">이용약관 등록</h3>
    </div>
    <hr>

    <div class="content-body">

      <section>
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-content">
                <div class="card-body">
                  <!-- bootstrap table -->

                  <div>
                    <h4 >기본정보</h4>

                    <div class="col-md-5">
                      <label>버전정보</label>
                      <input type="search" class="form-control" id="versionInfo">
                      <div class="form-control-position">
                      </div>
                    </div>

                    <div class="col-md-5">
                      <label>설명</label>
                      <input type="search" class="form-control" id="serviceRuleExp">
                      <div class="form-control-position">
                      </div>
                    </div>
                    <div class="form-group position-relative">

                    </div>
                  </div>
                  <div>
                    <label>서비스 이용약관</label>
                    <div class="mb-3">
                      <label for="serviceRule" class="form-label"></label>
                      <textarea class="form-control" id="serviceRule" rows="20"></textarea>
                    </div>

                    <label>개인정보 취급방침</label>
                    <div class="mb-3">
                      <label for="serviceRule" class="form-label"></label>
                      <textarea class="form-control" id="personalRule" rows="20"></textarea>
                    </div>
                </div>
                  <button class="btn btn-blue btn-min-width center" type="button" onclick="location.href='${pageContext.request.contextPath}/operation/serviceRuleManagement.do'">취소</button>
                  <button class="btn btn-outline-secondary btn-min-width center" type="button">임시저장</button>
                  <button class="btn btn-outline-secondary btn-min-width center" type="button">등록</button>
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

<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>

<script type="text/javascript">

</script>


<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>