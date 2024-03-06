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
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Content-->
<div class="app-content content">
  <div class="content-overlay"></div>
  <div class="content-wrapper">
    <div class="content-header">
      <h3 class="content-header-title mb-2">공지사항</h3>
    </div>
    <hr>
    <input type="hidden" id="notice_no" value="${noticeVO.notice_no}">

    <div class="content-body">
      <!-- 공지상세-->
      <section>
        <div class="card">
          <!-- card body -->
          <div class="card-body p-2">
            <span class="font-weight-bold mr-2" style="margin-left: 20px; font-size: 20px">${noticeVO.notice_title}</span>
            <div style="float: right;">
                  <button type="button" class="btn btn-outline-white btn-min-width mr-1" style="color: blue; background-color: ghostwhite">수정</button>
                  <button type="button" class="btn btn-outline-white btn-min-width" style="color: blue; background-color: ghostwhite" onclick="javascript:fn_delete();">삭제</button>
            </div>
            <!-- card-header -->
            <div class="card-header bg-blue bg-lighten-5 border-top" style="margin-top: 30px; ">
              <div class="d-flex align-items-center">
                <span class="font-weight-bold mr-2">공지유형: ${noticeVO.notice_type}</span>
                <span class="font-weight-bold" style="margin-left: 1680px;">채널: &nbsp;</span><span class="mr-2">${noticeVO.notice_channel}</span>
                <span class="font-weight-bold">등록일: &nbsp;</span><span class="mr-2">${noticeVO.notice_dt}</span>
                <span class="font-weight-bold">작성자: &nbsp;</span><span>${noticeVO.notice_writer}</span>
              </div>
            </div>
            <hr class="m-0"/>

            <!--  Details  -->
            <div class="collapse show">
              <div class="card-content">
                <div class="card-body height-500 bg-blue bg-lighten-5">
                  <div class="form-control bg-blue bg-lighten-5" rows="14" style="border: hidden">${noticeVO.notice_content}
                    <c:if test="${noticeFileList != null && noticeFileList.size() != 0 && noticeFileList.get(0) != null }">
                      <div class="card-header pb-0">
                        <h4 class="card-title blue">입고 영상/이미지(${noticeFileList.size()})</h4>
                        <hr class="bg-blue mb-0">
                        <div class="card-content">
                          <c:forEach items="${noticeFileList}" var="noticeFile">
                            <c:if test="${noticeFile.file_content_type.indexOf('video') != -1}">
                              <video width="200px;" height="200px;"  src="${pageContext.request.contextPath}/file/down/image/${noticeFile.file_id}" controls></video>
                            </c:if>
                          </c:forEach>
                          <c:forEach items="${noticeFileList}" var="noticeFile">
                            <c:if test="${noticeFile.file_content_type.indexOf('image') != -1}">
                              <img src="${pageContext.request.contextPath}/file/down/image/${noticeFile.file_id}" style="width: 200px;height: 200px;" onclick="window.open(this.src)">
                            </c:if>
                          </c:forEach>
                        </div>
                      </div>
                    </c:if>
                  </div>
                </div>
              </div>
            </div>

            <div class="card-body">
              <div class="list-group list-group list-group-flush">
                <c:choose>
                  <c:when test="${noticeVO.after_notice_no == '' || noticeVO.after_notice_no == null}">
                    <div class="list-group-item list-group-item-action border-top">
                      <div class="d-flex align-items-center">
                                              <span class="mr-1">
                                                  <i class="feather icon-chevron-up font-large-1"></i>
                                              </span>
                        <span class="mr-5">다음글</span>
                        <span>다음글이 없습니다.</span>
                      </div>
                    </div>
                  </c:when>
                  <c:when test="${noticeVO.after_notice_no != '' && noticeVO.after_notice_no != null}">
                    <a onclick="move('noticeDetail.do?notice_no=', ${noticeVO.after_notice_no});" class="list-group-item list-group-item-action border-top">
                      <div class="d-flex align-items-center">
                                            <span class="mr-1">
                                                <i class="feather icon-chevron-up font-large-1"></i>
                                            </span>
                        <span class="mr-5">다음글</span>
                        <span>${noticeVO.after_notice_title}</span>
                      </div>
                    </a>
                  </c:when>
                </c:choose>
                <c:choose>
                  <c:when test="${noticeVO.before_notice_no == '' || noticeVO.before_notice_no == null}">
                  <div class="list-group-item list-group-item-action border-top">
                      <div class="d-flex align-items-center">
                                              <span class="mr-1">
                                                  <i class="feather icon-chevron-down font-large-1"></i>
                                              </span>
                        <span class="mr-5">이전글</span>
                        <span>이전글이 없습니다.</span>
                      </div>
                  </div>
                  </c:when>
                  <c:when test="${noticeVO.before_notice_no != '' && noticeVO.before_notice_no != null}">
                    <a onclick="move('noticeDetail.do?notice_no=', ${noticeVO.before_notice_no});" class="list-group-item list-group-item-action border-top">
                      <div class="d-flex align-items-center">
                                            <span class="mr-1">
                                                <i class="feather icon-chevron-down font-large-1"></i>
                                            </span>
                        <span class="mr-5">이전글</span>
                        <span>${noticeVO.before_notice_title}</span>
                      </div>
                    </a>
                  </c:when>
                </c:choose>
              </div>
            </div>

          </div>
          <div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted text-center">
            <button type="button" class="btn btn-blue btn-lg btn-min-width"><a onclick="move('noticeManagement.do', '');">목록</a></button>
          </div>
        </div>
      </section>
      <!-- / 공지상세-->
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

<script type="text/javascript">

  function fn_delete() {

    var params = {
      'notice_no': document.getElementById('notice_no').value
    }

    $.ajax({
      url : "${pageContext.request.contextPath}/operation/deleteNotice.json",
      type : "POST",
      data : JSON.stringify(params),
      contentType : "application/json;",
      success : function(result) {
        if (result.resultCode == "success") {
          alert(result.message);
          move('noticeManagement.do', '');
        } else if (result.resultCode == "fail") {
          alert(result.message);
        } else{
          alert(result.message);
        }
      }
    })

  }

</script>

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
