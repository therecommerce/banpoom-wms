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
    <meta name="description" content="Stack admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, stack admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>반품구조대 - Admin</title>
    <link rel="apple-touch-icon" href="../../../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">

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
            <h3 class="content-header-title mb-2">1:1 문의</h3>
        </div>
        <hr>

        <div class="content-body">
            <section>
                <div class="card">
                    <div class="card-content">
                        <!-- Q -->
                        <div class="card-body">
                            <div class="card-header bg-blue bg-lighten-5 border-top">
                                <div class="row">
                                    <div class="col-md-12 col-lg-7 col-xl-4 mb-50">
                                        <div class="d-flex align-items-center">
                                            <span class="danger font-weight-bold mr-2">Q</span>
                                            <span class="font-weight-bold" id="qna_title">
                                                ${sellerInquiryVO.qna_title}
                                            </span>
                                        </div>
                                        <input type="hidden" id="qna_no" value="${sellerInquiryVO.qna_no}">
                                    </div>
                                    <div class="col-md-12 col-lg-5 col-xl-8 d-flex justify-content-end">
                                        <span >${sellerInquiryVO.qna_state}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row py-2">
                                <div class="col-12 d-flex justify-content-end">
                                    <div class="d-flex align-items-center justify-content-end justify-content-xs-start">
                                        <div class="issue-date pr-2">
                                            <span class="font-weight-bold no-wrap">작성일</span>
                                            <span>${sellerInquiryVO.qna_reg_dt} </span>
                                        </div>
                                        <div class="due-date">
                                            <span class="font-weight-bold no-wrap">작성자</span>
                                            <span>${sellerInquiryVO.qna_writer}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="m-0">
                            <div class="card-body">
                                <p class="text-bold-500">
                                    ${sellerInquiryVO.qna_content}
                                </p>
                                <div class="card-body border-top">
                                    <label class="sidebar-label">첨부 파일</label>
                                    <ul class="list-unstyled list-inline mb-0">
                                        <c:forEach items="${sellerInquiryVO.file_id_list_question}" var="fileIdQuestion">
                                            <li class="cursor-pointer pb-25">
                                                <img src="${pageContext.request.contextPath}/file/down/image/${fileIdQuestion}" alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <c:choose>
                            <c:when test="${sellerInquiryVO.qna_answer == null || sellerInquiryVO.qna_answer.length() <= 0}">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label class="card-title" for="qna_answer"><strong>문의답변</strong></label>
                                        <textarea class="form-control" id="qna_answer" rows="6" placeholder="답변을 입력하세요"></textarea>
                                    </div>
                                    <input type="file" class="form-control-file" id="basicInputFile" accept="img/*" multiple="multiple" onchange="addImageFile(this, 5)">
                                    <ul class="list-inline" id="image_list">
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted text-center">
                                        <button type="button" class="btn btn-light btn-min-width mr-1" onclick="move('manOnManQnaSeller.do', '')">취소</button>
                                        <button type="submit" class="btn btn-blue btn-min-width" onclick="insertSellerInquiryAnswer()">등록</button>
                                    </div>
                                </div>
                            </c:when>
                            <c:when test="${ sellerInquiryVO.qna_answer != null}">
                                <!-- A -->
                                <div class="card-body">
                                    <div class="card-header bg-blue bg-lighten-5 border-top">
                                        <div class="row">
                                            <div class="col-md-12 col-lg-7 col-xl-4 mb-50">
                                                <div class="d-flex align-items-center">
                                                    <span class="danger font-weight-bold mr-2">Q</span>
                                                    <span class="font-weight-bold">${sellerInquiryVO.qna_title}에 대한 답변 드립니다.</span>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-lg-5 col-xl-8 d-flex justify-content-end">
                                                <span>${sellerInquiryVO.qna_type2}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row py-2">
                                        <div class="col-12 d-flex justify-content-end">
                                            <div class="d-flex align-items-center justify-content-end justify-content-xs-start">
                                                <div class="issue-date pr-2">
                                                    <span class="font-weight-bold no-wrap">작성일</span>
                                                    <span>${sellerInquiryVO.qna_answer_dt}</span>
                                                </div>
                                                <div class="due-date">
                                                    <span class="font-weight-bold no-wrap">작성자</span>
                                                    <span>${sellerInquiryVO.answeris}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="m-0">
                                    <div class="card-body">
                                        <p>안녕하세요 ${sellerInquiryVO.qna_writer} 고객님</p>
                                        <p>반품을 구해줘! 부메랑 운영자 ${sellerInquiryVO.answeris}입니다.</p>
                                            ${sellerInquiryVO.qna_answer}
                                    </div>
                                    <div class="card-body border-top">
                                        <label class="sidebar-label">첨부 파일</label>
                                        <ul class="list-unstyled list-inline mb-0">
                                            <c:forEach items="${sellerInquiryVO.file_id_list_answer}" var="fileIdAnswer">
                                                <li class="cursor-pointer pb-25">
                                                    <img src="${pageContext.request.contextPath}/file/down/image/${fileIdAnswer}" alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </c:when>
                        </c:choose>

                        <!-- Next/Prev -->
                        <div class="card-body">
                            <div class="list-group list-group list-group-flush">
                                <c:choose>
                                    <c:when test="${sellerInquiryVO.next_qna_no == '' || sellerInquiryVO.next_qna_no == null}">
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
                                    <c:when test="${sellerInquiryVO.next_qna_no != '' && sellerInquiryVO.next_qna_no != null}">
                                        <a onclick="move('manOnManQnaSellerDetail.do?qna_no=', ${sellerInquiryVO.next_qna_no});" class="list-group-item list-group-item-action border-top">
                                            <div class="d-flex align-items-center">
                                            <span class="mr-1">
                                                <i class="feather icon-chevron-up font-large-1"></i>
                                            </span>
                                                <span class="mr-5">다음글</span>
                                                <span>${sellerInquiryVO.next_qna_title}</span>
                                            </div>
                                        </a>
                                    </c:when>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${sellerInquiryVO.previous_qna_no == '' || sellerInquiryVO.previous_qna_no == null}">
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
                                    <c:when test="${sellerInquiryVO.previous_qna_no != '' && sellerInquiryVO.previous_qna_no != null}">
                                        <a onclick="move('manOnManQnaSellerDetail.do?qna_no=', ${sellerInquiryVO.previous_qna_no});" class="list-group-item list-group-item-action border-top">
                                            <div class="d-flex align-items-center">
                                                <span class="mr-1">
                                                    <i class="feather icon-chevron-down font-large-1"></i>
                                                </span>
                                                <span class="mr-5">이전글</span>
                                                <span>${sellerInquiryVO.previous_qna_title}</span>
                                            </div>
                                        </a>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted text-center">
                        <button type="submit" class="btn btn-blue btn-lg btn-min-width" onclick="javascript:move('manOnManQnaSeller.do', '');">목록</button>
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

<script>
    var fileNo = 0;
    var filesArr = new Array();

    <%--    let param = {--%>
    <%--        "qna_no" : qnaNo--%>
    <%--    }--%>

    <%--    $.ajax({--%>
    <%--        url : "${pageContext.request.contextPath}/customer/selectImageList.json",--%>
    <%--        type : "POST",--%>
    <%--        data: JSON.stringify(param),--%>
    <%--        contentType : "application/json",--%>
    <%--        success : function(result) {--%>
    <%--            if (result.resultCode === "success") {--%>
    <%--            } else {--%>
    <%--            }--%>
    <%--        }--%>
    <%--    });--%>
    <%--});--%>

    function insertSellerInquiryAnswer() {
        const formData = new FormData();
        let answer = document.getElementById('qna_answer').value;
        let qnaNo = document.getElementById("qna_no").value;

        if(answer == null || answer == '') {
            alert("답변이 작성되지 않았습니다.");
            return;
        }

        var files = new Array();
        filesArr.forEach(function(imageFile){
            if(!imageFile.is_delete){
                formData.append("files",imageFile);
            }
        })

        formData.append("qna_answer", answer);
        formData.append("qna_no", qnaNo );

        $.ajax({
            url : "${pageContext.request.contextPath}/customer/insertSellerInquiryAnswer.json",
            type : "POST",
            enctype:'multipart/form-data',
            data: formData,
            contentType: false,
            processData: false,
            success : function(result) {
                if (result.resultCode === "success") {
                    alert(result.message);
                    location.href = "${pageContext.request.contextPath}/customer/manOnManQnaSeller.do";
                } else {
                    alert(result.message);
                }
            }
        });
    }

    function sendData() {
        let qnaEmail = document.getElementById("qna_answer").value;
        const formData = new FormData();

        var files = new Array();
        filesArr.forEach(function(imageFile) {
            if(!imageFile.is_delete){
                formData.append("files",imageFile);
            }
        })

        formData.append("qna_type1", qnaType1);
        formData.append("qna_type2", qnaType2);
        formData.append("qna_title", qnaTitle);
        formData.append("qna_writer", qnaName);
        formData.append("qna_content", qnaContent);
        formData.append("qna_email", qnaEmail);
        formData.append("qna_phone", qnaPhone);

        $.ajax({
            url : "${pageContext.request.contextPath}/qnaRegister.json",
            type : "POST",
            enctype:'multipart/form-data',
            data : formData,
            contentType: false,
            processData: false,
            success : function(result) {
                if (result.resultCode === "success") {
                    <%--location.href = "${pageContext.request.contextPath}/sideBar.do";--%>
                }
            }
        });
    }
</script>

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/charts/apexcharts/apexcharts.min.js"></script>
<!-- END: Page Vendor JS-->

<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
