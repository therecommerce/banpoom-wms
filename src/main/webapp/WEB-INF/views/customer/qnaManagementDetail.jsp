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
    <title>반품구조대 - Admin</title>
    <link rel="apple-touch-icon" href="../../../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/favicon.ico">
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
    <!--
     END: Theme CSS-->

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

<!-- BEGIN: Content-->
<div class="app-content content" id="contentArea">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">Q&A 문의</h3>
        </div>
        <hr>

        <div class="content-body">
            <section>
                <div class="card">
                    <div class="card-content">
                        <!-- Q -->
                        <div class="card-body">
                            <span class="danger font-weight-bold mr-2">Q${qnaVO.product_qna_no}</span>
                            <c:if test="${qnaVO.product_qna_state == '미답변'}">
                                <span class="badge bg-light-blue-grey width-100 text-muted" style="margin-left: 95%">미답변</span>
                            </c:if>
                            <c:if test="${qnaVO.product_qna_state == '답변완료'}">
                                <span class="badge bg-light-blue width-100" style="color: blue; margin-left: 95%">답변완료</span>
                            </c:if>
                            <div class="card-header bg-blue bg-lighten-5 border-top" style="margin-top: 20px">
                                <div class="row">
                                    <div class="col-md-12 col-lg-7 col-xl-4 mb-50">
                                        <div class="d-flex align-items-center">
                                            <span class="font-weight-bold mr-2">상품명(상품번호):&nbsp; ${qnaVO.product_name}(${qnaVO.product_id})</span>
                                            <input type="hidden" name="product_qna_no" id="product_qna_no" value="${qnaVO.product_qna_no}">
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-5 col-xl-8 d-flex justify-content-end">
                                        <span>문의유형(주문번호): ${qnaVO.product_qna_type1}(
                                            <c:if test="${qnaVO.order_request_id == null || qnaVO.order_request_id == ''}">
                                                -
                                            </c:if>
                                            <c:if test="${qnaVO.order_request_id != null && qnaVO.order_request_id != ''}">
                                                ${qnaVO.order_request_id}
                                            </c:if>
                                            )</span>
                                    </div>
                                    <%--                                    <div class="col-md-12 col-lg-5 col-xl-8 d-flex justify-content-end">--%>
                                    <span style="margin-left: 89%">등록일: ${qnaVO.product_qna_reg_dt}&nbsp;&nbsp; 작성자: ${qnaVO.product_qna_name}</span>
                                    <%--                                    </div>--%>
                                </div>
                            </div>
                            <div class="card-body">
                                <p class="text-bold-500">
                                    ${qnaVO.product_qna_content}
                                </p>
                                <p>
                                <div class="card-body border-top">
                                    <label class="sidebar-label">첨부 파일</label>
                                    <ul class="list-unstyled list-inline mb-0">
                                        <c:forEach items="${qnaVO.file_id_list_question}" var="fileIdQuestion">
                                            <li class="cursor-pointer pb-25">
                                                <img src="${pageContext.request.contextPath}/file/down/image/${fileIdQuestion}" alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                                </p>
                            </div>
                        </div>
                        <c:choose>
                            <c:when test="${qnaVO.product_qna_state == '미답변'}">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label class="card-title" for="product_qna_answer">
                                            <strong>문의답변</strong>
                                        </label>
                                        <textarea class="form-control" id="product_qna_answer" rows="6" placeholder="답변을 입력하세요"></textarea>
                                    </div>
                                    <input type="file" class="form-control-file" id="basicInputFile" multiple="multiple" onchange="addImageFile(this, 5)">
                                    <ul class="list-inline" id="image_list">
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted text-center">
                                        <button type="button" class="btn btn-light btn-min-width mr-1" onclick="javascript:move('qnaManagement.do', '');">취소</button>
                                        <button type="submit" class="btn btn-blue btn-min-width" onclick="insertQnaAnswer()">등록</button>
                                    </div>
                                </div>
                            </c:when>
                            <c:when test="${ qnaVO.product_qna_answer != '미답변'}">
                                <!-- A -->
                                <div class="card-body">
                                    <div class="card-header bg-lighten-5 border-top">
                                        <div class="row">
                                            <div class="col-md-12 col-lg-7 col-xl-4 mb-50">
                                                <div class="d-flex align-items-center">
                                                    <span class="danger font-weight-bold mr-2">Q</span>
                                                    <span class="font-weight-bold">${qnaVO.product_qna_type1}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row py-2">
                                        <div class="col-12 d-flex bg-blue bg-lighten-5 justify-content-end" style="height: 100px">
                                            <div class="d-flex align-items-center justify-content-end justify-content-xs-start">
                                                <div class="issue-date pr-2">
                                                    <span class="font-weight-bold no-wrap">작성일</span>
                                                    <span>${qnaVO.product_answer_dt}</span>
                                                </div>
                                                <div class="due-date">
                                                    <span class="font-weight-bold no-wrap">작성자</span>
                                                    <span>${qnaVO.product_qna_answerer}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="m-0">
                                    <div class="card-body">
                                            <%--                                        <p>안녕하세요 ${qnaVO.product_qna_name} 고객님</p>--%>
                                            <%--                                        <p>반품을 구해줘! 부메랑 운영자 ${qnaVO.product_qna_answerer}입니다.</p>--%>
                                            ${qnaVO.product_qna_answer}
                                    </div>

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

                                </div>
                            </c:when>
                        </c:choose>

                        <%--                        <div class="card-body border-top">--%>
                        <%--                            <label class="sidebar-label">첨부 파일</label>--%>
                        <%--                            <ul class="list-unstyled list-inline mb-0">--%>
                        <%--                                <c:forEach items="${qnaVO.file_id_list}" var="fileidList">--%>
                        <%--                                    <li class="cursor-pointer pb-25">--%>
                        <%--                                        <img src="${pageContext.request.contextPath}/file/down/image/${fileidList}" alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >--%>
                        <%--                                    </li>--%>
                        <%--                                </c:forEach>--%>
                        <%--                            </ul>--%>
                        <%--                        </div>--%>


                        <!-- Next/Prev -->
                        <div class="card-body">
                            <div class="list-group list-group list-group-flush">
                                <c:choose>
                                    <c:when test="${qnaVO.next_product_qna_no == '' || qnaVO.next_product_qna_no == null}">
                                        <a class="list-group-item list-group-item-action border-top">
                                            <div class="d-flex align-items-center">
                                                <span class="mr-1">
                                                    <i class="feather icon-chevron-up font-large-1"></i>
                                                </span>
                                                <span class="mr-5">다음글</span>
                                                <span>다음글이 없습니다.</span>
                                            </div>
                                        </a>
                                    </c:when>
                                    <c:when test="${qnaVO.next_product_qna_no != '' && qnaVO.next_product_qna_no != null}">
                                        <a onclick="location.href='${pageContext.request.contextPath}/customer/qnaManagementDetail.do?product_qna_no='+${qnaVO.next_product_qna_no};" class="list-group-item list-group-item-action border-top">
                                            <div class="d-flex align-items-center">
                                            <span class="mr-1">
                                                <i class="feather icon-chevron-up font-large-1"></i>
                                            </span>
                                                <span class="mr-5">다음글</span>
                                                <span id="next_title">${qnaVO.next_product_qna_content}</span>
                                                <c:if test="${qnaVO.next_product_qna_state == '미답변'}">
                                                    <div style="margin-left: auto;">
                                                        <span class="badge bg-light-blue-grey width-100 text-muted">미답변</span>
                                                    </div>
                                                </c:if>
                                                <c:if test="${qnaVO.next_product_qna_state == '답변완료'}">
                                                    <div style="margin-left: auto;">
                                                        <span class="badge bg-light-blue width-100" style="color: blue">답변완료</span>
                                                    </div>
                                                </c:if>
                                            </div>
                                        </a>
                                    </c:when>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${qnaVO.previous_product_qna_no == '' || qnaVO.previous_product_qna_no == null}">
                                        <a class="list-group-item list-group-item-action border-top">
                                            <div class="d-flex align-items-center">
                                                <span class="mr-1">
                                                    <i class="feather icon-chevron-down font-large-1"></i>
                                                </span>
                                                <span class="mr-5">이전글</span>
                                                <span>이전글이 없습니다.</span>
                                            </div>
                                        </a>
                                    </c:when>
                                    <c:when test="${qnaVO.previous_product_qna_no != '' && qnaVO.previous_product_qna_no != null}">
                                        <a onclick="location.href='${pageContext.request.contextPath}/customer/qnaManagementDetail.do?product_qna_no='+${qnaVO.previous_product_qna_no};" class="list-group-item list-group-item-action border-top">
                                            <div class="d-flex align-items-center">
                                            <span class="mr-1">
                                                <i class="feather icon-chevron-down font-large-1"></i>
                                            </span>
                                                <span class="mr-5">이전글</span>
                                                <span id="previous_title">${qnaVO.previous_product_qna_content}</span>
                                                <c:if test="${qnaVO.previous_product_qna_state == '미답변'}">
                                                    <div style="margin-left: auto;">
                                                        <span class="badge bg-light-blue-grey width-100 text-muted">미답변</span>
                                                    </div>
                                                </c:if>
                                                <c:if test="${qnaVO.previous_product_qna_state == '답변완료'}">
                                                    <div style="margin-left: auto;">
                                                        <span class="badge bg-light-blue width-100" style="color: blue">답변완료</span>
                                                    </div>
                                                </c:if>
                                            </div>
                                        </a>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted text-center">
                        <button type="submit" class="btn btn-blue btn-lg btn-min-width" onclick="javascript:move('qnaManagement.do', '');">목록</button>
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
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/charts/apexcharts/apexcharts.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<!-- END: Page JS-->

<script>
    var fileNo = 0;
    var filesArr = new Array();

    <%--function updateQnaDetailAnswer(){--%>
    <%--    let answer = document.getElementById("product_qna_answer").value;--%>
    <%--    if(answer == null || answer == '') {--%>
    <%--        alert("답변에 등록된 데이터가 없습니다. 다시 확인해주세요.");--%>
    <%--        return;--%>
    <%--    }--%>
    <%--    let params = {--%>
    <%--        'product_qna_no': document.getElementById('product_qna_no').value,--%>
    <%--        'product_qna_answer' : answer--%>
    <%--    }--%>
    <%--    $.ajax({--%>
    <%--        url : "${pageContext.request.contextPath}/customer/updateQnaDetailAnswer.json",--%>
    <%--        type : "POST",--%>
    <%--        data : JSON.stringify(params),--%>
    <%--        contentType : "application/json",--%>
    <%--        success : function(result) {--%>
    <%--            if (result.resultCode === "success") {--%>
    <%--                alert(result.message);--%>
    <%--                location.href = "${pageContext.request.contextPath}/customer/qna.do";--%>
    <%--            } else {--%>
    <%--                alert("등록에 실패하였습니다.");--%>
    <%--            }--%>
    <%--        }--%>
    <%--    });--%>
    <%--}--%>

    function insertQnaAnswer() {
        const formData = new FormData();
        let answer = document.getElementById('product_qna_answer').value;
        let qnaNo = document.getElementById("product_qna_no").value;

        if(answer == null || answer == '') {
            alert("답변에 등록된 데이터가 없습니다. 다시 확인해주세요.");
            return;
        }

        let files = new Array();
        filesArr.forEach(function(imageFile) {
            if(!imageFile.is_delete) {
                formData.append("files",imageFile);
            }
        })

        formData.append("product_qna_answer", answer);
        formData.append("product_qna_no", qnaNo );

        $.ajax({
            url : "${pageContext.request.contextPath}/customer/insertQnaAnswer.json",
            type : "POST",
            enctype:'multipart/form-data',
            data: formData,
            contentType: false,
            processData: false,
            success : function(result) {
                if (result.resultCode === "success") {
                    alert(result.message);
                    location.href = "${pageContext.request.contextPath}/customer/qnaManagement.do";
                } else {
                    alert(result.message);
                }
            }
        });
    }
</script>


</body>
<!-- END: Body-->

</html>
