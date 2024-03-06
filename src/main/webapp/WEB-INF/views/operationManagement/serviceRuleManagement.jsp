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

  <style>
    input[type="checkbox"]{
      width: 15px;
      height: 15px;
    }
  </style>
</head>

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<%--<!-- BEGIN: Content-->--%>
<div class="app-content content">
  <div class="content-overlay"></div>
  <div class="content-wrapper">
    <div class="content-header">
      <h3 class="content-header-title mb-2">이용약관 관리</h3>
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
                  <div class="row">
                    <div>
                      <button class="btn btn-blue btn-min-width" type="button" onclick="location.href='${pageContext.request.contextPath}/operation/serviceRuleRegist.do'">등록</button>
                      <button class="btn btn-outline-secondary btn-min-width" type="button" data-toggle="modal" data-target="#deleteModal">삭제</button>
                      <button class="btn btn-outline-secondary btn-min-width" type="button" data-toggle="modal" data-target="#copyModal">복제</button>
                    </div>
                  </div>
                  <div class="col-md-2 ml-auto"></div>
                  <div id="app-invoice-wrapper" class="">
                    <table id="user_data_table" class="table" style="width: 100%;">
                      <thead class="border-bottom border-dark text-center">
                      <tr>
                        <th><input type="checkbox" id="selectAll" name="selectAll" /></th>
                        <th>버전</th>
                        <th>상태</th>
                        <th>설명</th>
                        <th>작성자</th>
                        <th>작성일자</th>
                      </tr>
                      </thead>
                    </table>
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

<!-- 삭제 모달 -->
<div class="modal fade text-center" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header bg-blue-grey bg-lighten-5">
        <h3 class="modal-title"> 확인 </h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>
          이용약관을 삭제 하시겠습니까?
        </p>
      </div>
      <div class="modal-footer justify-content-center" data-dismiss="modal">
        <button type="button" class="btn btn-light btn-min-width" aria-hidden="true">취소</button>
        <a type="button" class="btn btn-blue btn-min-width" id="deleteReviewModalClose1" onclick="deleteManager()">확인</a>
      </div>
    </div>
  </div>
</div>
<!-- 삭제 모달 -->

<!-- 복제 모달 -->
<div class="modal fade text-center" id="copyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header bg-blue-grey bg-lighten-5">
        <h3 class="modal-title"> 확인 </h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>
          이용약관을 복제하시겠습니까?
        </p>
      </div>
      <div class="modal-footer justify-content-center" data-dismiss="modal">
        <button type="button" class="btn btn-light btn-min-width" aria-hidden="true">취소</button>
        <a type="button" class="btn btn-blue btn-min-width" id="deleteReviewModalClose1" onclick="deleteManager()">확인</a>
      </div>
    </div>
  </div>
</div>
<!-- 복제 모달 -->


<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>

<script type="text/javascript">

  $(document).ready(function() {

    let columnFields = ["checkbox", "", "", ""];
    let columWidths = [20, 30, 30, 30, 30, 30];

    init_datatable("${pageContext.request.contextPath}/operation/serviceRuleManagement.json", columnFields, columWidths, fn_tbl_render);

  });


  function fn_tbl_render(data, type, full, meta) {

  }



  <!-- 체크박스 jQuery : 시작 -->
  $("#selectAll").click(function () {
    $('input:checkbox[name="selectOne1"]').each(function () {
      if ($("#selectAll").is(":checked")) {
        $("input[name=selectOne1]").prop("checked", true);
      }
      else {
        $("input[name=selectOne1]").prop("checked", false);
      }

    });
  });
  $(document).on('click','.managerList1',function() {
    if($('input[class = managerList]:checked').length == $('.managerList1').length) {
      $('#selectAll').prop('checked',true);
    } else {
      $('#selectAll').prop('checked',false);
    }
  });
  <!-- 체크박스 jQuery : 끝 -->


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
