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
      <h3 class="content-header-title mb-2">공지등록 관리</h3>
    </div>
    <hr>

    <div class="content-body">
      <!-- 공지사항 -->
      <section>
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-content">
                <div class="card-body">
                  <!-- bootstrap table -->
                  <div class="row">
                    <div>
                      <button class="btn btn-blue btn-min-width" type="button" onclick="location.href='${pageContext.request.contextPath}/operation/noticeRegister.do'">등록</button>
                      <button class="btn btn-outline-secondary btn-min-width" type="button" onclick="javascript:fn_delete();">삭제</button>
                    </div>
                    <div class="col-md-2 ml-auto">
                      <select name="2" class="search_tag form-control" onchange="javascript:fn_search();">
                        <option value="" selected="" style="display: none">공지방법</option>
                        <option value="">전체</option>
                        <option value="일반">일반</option>
                        <option value="시스템">시스템</option>
                        <option value="긴급">긴급</option>
                      </select>
                    </div>
                    <div class="col-md-2">
                      <select id="searchProduct" name="interested"
                              class="form-control">
                        <option value="제목" selected="">제목</option>
                        <option value="작성자">작성자</option>
                      </select>
                    </div>
                    <div class="col-md-2">
                      <form action="#">
                        <div class="form-group position-relative">
                          <input type="search" class="form-control" id="searchValue">
                          <div class="form-control-position">
                            <a onclick="javascript:fn_search();"><i class="fa fa-search text-size-base text-muted"></i></a>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                  <div id="app-invoice-wrapper" class="">
                    <table id="user_data_table" class="table" style="width: 100%;">
                      <thead class="border-bottom border-dark text-center">
                      <tr>
                        <th><input type="checkbox" id="selectAll" name="selectAll" /></th>
                        <th>No</th>
                        <th>공지방법</th>
                        <th>채널</th>
                        <th>제목</th>
                        <th>게시기간</th>
                        <th>작성자</th>
                        <th>작성일자</th>
                        <th>조회수</th>
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
      <!-- 공지사항 -->
    </div>
  </div>
</div>
<!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>

<script type="text/javascript">

  $(document).ready(function() {

    var columnFields = ["checkbox", "notice_no", "notice_type", "notice_channel",  "notice_title", "start_posting_dt", "notice_writer","notice_dt", "hits", "important_flag"];
    var columWidths = [10, 10, 30, 30, 80, 200, 40, 30, 10, 0];

    init_datatable("${pageContext.request.contextPath}/operation/noticeManagement.json", columnFields, columWidths, fn_tbl_render);
    <%--init_datatable("deviceBiowaveUserHistoryData.json", columnFields, columWidths, null, "${resultVO.device_id}", 5);--%>
    // init_select_status(".select2-data-array");
  });


  function fn_tbl_render(data, type, full, meta) {

    if (meta.col == 0) {
      return '<input type="checkbox" id="selectOne" name="selectOne" value="' + full.notice_no + '" />';
    } else if (meta.col == 3){
      switch (full.notice_channel) {
        case null :
          return "";
          break;
        case '셀러 웹':
          return '<span class="badge bg-blue bg-lighten-2 width-150 d-inline-block">셀러</span>'
          break;
        case '고객 앱':
          return '<span class="badge bg-light-secondary bg-lighten-2 width-150 d-inline-block">고객앱</span>'
          break;
      }
    } else if (meta.col == 2) {
      if (full.banner_flag == 1) {
        return '배너'
      } else {
        return '일반'
      }
    } else if (meta.col == 4) {
      if (full.important_flag == 1) {
        return `<a href="#" onclick="location.href='noticeDetail.do?notice_no=` + full.notice_no + `'";'>` + `<span style="color: red">` + `[` + '중요 공지' + `]` + `</span>` + `<span style="color: blue">` + '[' + full.notice_type + ']' + `</span>` + `&nbsp;` + full.notice_title + `</a>`;
      } else {
        return `<a href="#" onclick="location.href='noticeDetail.do?notice_no=` + full.notice_no + `'";'>` + `<span style="color: blue">` + '[' + full.notice_type + ']' + `</span>` + `&nbsp;` + full.notice_title + `</a>`;
      }
    } else if (meta.col == 5) {
      return full.start_posting_dt + '&nbsp;' + '~' + '&nbsp;' + full.end_posting_dt
    } else {
      if(data != null) {
        return data;
      } else{
        return "";
      }
    }
      // return data;
  }

  function fn_search() {
    var table = $('#user_data_table').DataTable();

    var numCols = table.columns().nodes().length;
    for(var i=0; i<numCols; i++) { table.column(i).search(''); }

    var search = null;
    $(".search_tag").each(function() {
      var val = $(this).val();
      var idx = $(this).attr('name');

      if(search == null)
        search = table.column(idx).search(val);
      else
        search = search.column(idx).search(val);
    });

    var searchName = $('#searchProduct').val();
    var searchValue = $('#searchValue').val();
    var val = searchValue;
    var idx = '';
    switch (searchName) {
      case "제목" :
        idx = 4;
        break;
      case "작성자" :
        idx = 6;
        break;
    }

    if(search == null)
      search = table.column(idx).search(val);
    else
      search = search.column(idx).search(val);

    if(search != null)
      search.draw();
  }

  function fn_delete() {

    let chk_val = [];

    $("input:checkbox[name=selectOne]").each(function (i, iVal) {
      if ($(this).is(":checked") == true) {
        chk_val.push(iVal.value);
      }
    })
    if(chk_val.length == 0){
      alert('선택된 항목이 없습니다. 다시 확인해주세요.');
      return;
    }

    var params = {
      'notice_no_list': chk_val
    }

    $.ajax({
      url : "${pageContext.request.contextPath}/operation/deleteNotice.json",
      type : "POST",
      data : JSON.stringify(params),
      contentType : "application/json;",
      success : function(result) {
        if (result.resultCode == "success") {
          alert(result.message);
          fn_search();
        } else if (result.resultCode == "fail") {
          alert(result.message);
        } else{
          alert(result.message);
        }
      }
    })
  }

</script>

<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

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
