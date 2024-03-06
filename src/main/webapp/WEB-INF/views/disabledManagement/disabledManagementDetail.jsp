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


<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">상품 상세페이지</h3>
        </div>
        <hr>
        <div class="content-body">
            <!-- 상태 정보 -->
            <section>
                <div class="row">
                    <div class="col-12">
                        <h4 class="text-muted">상품명(상품번호):  ${disabledVO.product_name}(${disabledVO.product_id})</h4>
                    </div>
                    <div class="col-12">
                        <div id="accordionWrap1" role="tablist" aria-multiselectable="true">
                            <div class="card border-blue accordion custom collapse-icon bg-blue bg-lighten-5 mb-4">
                                <div id="heading11" class="card-header" data-toggle="collapse" href="#accordion11" aria-expanded="true" aria-controls="accordion11">
                                    <div class="mb-1">
                                        <c:if test="${disabledVO.sort_type == '기부'}">
                                            <span class="badge bg-warning width-50">
                                                    ${disabledVO.sort_type}
                                            </span>
                                        </c:if>
                                        <c:if test="${disabledVO.sort_type == '폐기'}">
                                            <span class="badge bg-primary width-50">
                                                    ${disabledVO.sort_type}
                                            </span>
                                        </c:if>
                                        <c:if test="${disabledVO.sort_type == '회수'}">
                                            <span class="badge bg-success width-50">
                                                    ${disabledVO.sort_type}
                                            </span>
                                        </c:if>
                                    </div>
                                    <c:if test="${disabledVO.sort_type == '회수'}">
                                        <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                            <i class="feather icon-alert-circle"></i> 배송 관련 문의는 배송 업체로 문의하세요.
                                            <a href="#" class="alert-link ml-2">운송장 번호 조회
                                                <i class="fa fa-angle-right" onclick="fn_openPage11()"></i>
                                            </a>
                                        </div>
                                    </c:if>
                                    <c:if test="${disabledVO.sort_type == '기부'}">
                                        <div class="d-inline-block alert alert-blue bg-lighten-5 mb-0" role="alert">
                                            <i class="feather icon-alert-circle"></i> 기부해주신 물품은 아름다운 가게로 전달되어 소외된 이웃과 사회를 위해 쓰일 예정입니다.
                                        </div>
                                    </c:if>
                                </div>
                                <div id="accordion11" role="tabpanel" data-parent="#accordionWrap1"
                                     aria-labelledby="heading11" class="collapse">
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
                                                                    <span class="text-muted mr-1">부메랑으로 이동중</span>
                                                                    <a href="#" class="card-link">운송장 번호 조회 <i
                                                                            class="fa fa-angle-right"></i></a>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <span class="text-muted">${historyVO.state}</span>
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

            <!-- 회수 물품 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">회수 물품</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <hr class="bg-blue m-0">
                            <div class="table-responsive">
                                <!-- <table class="table align-middle table-striped table-hover"> -->
                                <table class="table align-middle">
                                    <thead class="text-center">
                                    <tr>
                                        <th>카테고리</th>
                                        <th>사진</th>
                                        <th>상품명</th>
                                        <th>상품 수량</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="text-center">${disabledVO.category_name}</td>
                                        <td class="text-center"><img class="media-object img-xl" src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-5.png" alt="Generic placeholder image"></td>
                                        <td class="text-center">${disabledVO.product_name}</td>
                                        <td class="text-center">${disabledVO.product_count}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 배송지 정보 -->

                <c:choose>
                    <c:when test="${disabledVO.sort_type == '회수'}">
                        <section>
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h4 class="card-title blue">배송지 정보</h4>
                                    <hr class="bg-blue mb-0">
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <p>
                                            <i class="feather icon-alert-circle"></i>
                                            회수 받을 배송지를 입력하세요.
                                        </p>
                                        <span class="font-weight-bold mr-2">
                                            배송지
                                        </span>
                                        <span class="mr-1">
                                            우) ${disabledVO.discard_zip}
                                        </span>
                                        ${disabledVO.discard_addr}  ${disabledVO.discard_addr_detail}
                                    </div>
                                </div>
                            </div>
                        </section>
                    </c:when>
                </c:choose>


            <!-- 결제 정보 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">결제 정보</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="row mb-1">
                                <div class="col-xl-3 col-md-12 col-12">
                                    <ul class="list-group">
                                        <li class="list-group-item border-0 p-50 d-flex justify-content-between">
                                            <span class="font-weight-bold">결제완료일</span>
                                            <c:if test="${disabledVO.pay_state == '결제완료'}">
                                            <span>${disabledVO.pay_dt}</span>
                                            </c:if>
                                            <c:if test="${disabledVO.pay_state == '입금대기'}">
                                            <span style="color: red">입금 대기</span>
                                            </c:if>
                                        <li class="list-group-item border-0 p-50 d-flex justify-content-between">
                                            <span class="font-weight-bold">결제수단</span>
                                            <span>${disabledVO.payment_method}</span>
                                        </li>
<%--                                        <li class="list-group-item border-0 p-50 d-flex justify-content-between">--%>
<%--                                            <span class="font-weight-bold">현금영수증</span>--%>
<%--                                            <span>소득공제용 ( ${disabledVO.recovery_receipt_number} )</span>--%>
<%--                                        </li>--%>
                                    </ul>
                                </div>
                                <div class="col-xl-3 col-md-12 col-12">
                                    <ul class="list-group">

                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-6 col-md-12 col-12">
                                    <div class="card bg-blue bg-lighten-4">
                                        <div class="card-content">
                                            <c:choose>
                                                <c:when test="${disabledVO.sort_type == '기부'}">
                                                    <div class="card-body">
                                                        <ul class="list-group cost-list">
                                                            <li class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                                                <span class="cost-title font-weight-bold blue">총 결제금액</span>
                                                                <span class="cost-value font-weight-bold blue">3,000원</span>
                                                            </li>
                                                            <li class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                                                <span class="cost-title blue">반품 수거비용</span>
                                                                <span class="cost-value blue">3,000원</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </c:when>
                                                <c:when test="${disabledVO.sort_type == '폐기'}">
                                                    <div class="card-body">
                                                        <ul class="list-group cost-list">
                                                            <li class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                                                <span class="cost-title font-weight-bold blue">총 결제금액</span>
                                                                <span class="cost-value font-weight-bold blue">5,000원</span>
                                                            </li>
                                                            <li class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                                                <span class="cost-title blue">반품 수거비용</span>
                                                                <span class="cost-value blue">3,000원</span>
                                                            </li>
                                                            <li class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                                                <span class="cost-title blue">폐기 비용</span>
                                                                <span class="cost-value blue">2,000원</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </c:when>
                                                <c:when test="${disabledVO.sort_type == '회수'}">
                                                    <div class="card-body">
                                                        <ul class="list-group cost-list">
                                                            <li class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                                                <span class="cost-title font-weight-bold blue">총 결제금액</span>
                                                                <span class="cost-value font-weight-bold blue">3,000원</span>
                                                            <li class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                                                <span class="cost-title blue">상품 회수비용(물류처리대행비)</span>
                                                                <span class="cost-value blue">3,000원</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </c:when>
                                            </c:choose>
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
<%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/vendors.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/icheck/icheck.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<%--<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>--%>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/checkbox-radio.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
<!-- END: Page JS-->






<script>
    function fn_openPage11() {
        if (document.getElementById('accordion11').style.display === 'block') {
            document.getElementById('accordion11').style.display = 'none';
        } else {
            document.getElementById('accordion11').style.display = 'block';
        }
    }

</script>



</body>
<!-- END: Body-->

</html>