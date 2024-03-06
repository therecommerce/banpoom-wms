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

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-invoice.css">
  <!-- END: Page CSS-->

  <!-- BEGIN: Custom CSS-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-users.css">
  <!-- END: Custom CSS-->

  <style>
    select option[value=""][disabled] {
      display: none;
    }
  </style>

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Content-->
<div class="app-content content">
  <div class="content-overlay"></div>
  <div class="content-wrapper">
    <div class="content-header row">
      <div class="content-header-left col-md-6 col-12">
        <h3 class="content-header-title mb-50">매니저 상세정보</h3>
      </div>
      <div>
        <button id="updateBtn" class="btn btn-outline-secondary btn-min-width float-right" onclick="location.href='${pageContext.request.contextPath}/operation/managerUpdateAccount.do?account_id=${managerVO.account_id}'"> 수정 </button>
      </div>
    </div>
    <hr>
    <div class="content-body">

      <!-- 매니저 정보 -->
      <section>
        <div class="border border-light rounded p-2 mb-2">
          <form class="form form-horizontal form-bordered">
            <div class="form-body">
              <div class="row">
                <div class="col-md-3">
                  <label class="col-md-3 label-control text-left" for="account_name">이름</label>
                  <div class="col-md-9 border-left-0">
                    <div class="row">
                      <div class="form-group col-md-12 border-bottom-0">
                        <input type="text" id="account_name" name="interested" class="form-control" value="${managerVO.account_name}" disabled>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <label class="col-md-3 label-control text-left" for="account_id">아이디</label>
                  <div class="col-md-9 border-left-0">
                    <div class="row">
                      <div class="form-group col-md-12 border-bottom-0">
                        <input id="account_id" name="interested" class="form-control" value="${managerVO.account_id}" disabled>
                      </div>
                    </div>
                  </div>
                </div>
                <c:choose>
                  <c:when test="">
                    <div class="col-md-3">
                      <label class="col-md-3 label-control text-left" for="account_pwd">비밀번호</label>
                      <div class="col-md-9 border-left-0">
                        <div class="row">
                          <div class="form-group col-md-12 border-bottom-0">
                            <input type="password" id="account_pwd" name="interested" class="form-control" value="${managerVO.account_pwd}">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <label class="col-md-3 label-control text-left" for="account_pwd2">비밀번호 확인</label>
                      <div class="col-md-9 border-left-0">
                        <div class="row">
                          <div class="form-group col-md-12 border-bottom-0">
                            <input type="password" id="account_pwd2" name="interested" class="form-control" value="${managerVO.account_pwd}">
                          </div>
                        </div>
                      </div>
                    </div>
                  </c:when>
                </c:choose>
                <div class="col-md-3">
                  <label class="col-md-3 label-control text-left" for="account_email">이메일</label>
                  <div class="col-md-9 border-left-0">
                    <div class="row">
                      <div class="form-group col-md-12 border-bottom-0">
                        <input id="account_email" name="interested" class="form-control" value="${managerVO.account_email}" disabled>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <label class="col-md-3 label-control text-left" for="account_tel">전화번호</label>
                  <div class="col-md-9 border-left-0">
                    <div class="row">
                      <div class="form-group col-md-12 border-bottom-0">
                        <input id="account_tel" name="interested" class="form-control" maxlength="13" oninput="autoHyphen(this);" value="${managerVO.account_tel}" disabled>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3"></div>
                <div class="col-md-3"></div>
                <div class="col-md-6 border-right-blue-grey border-right-lighten-5" style="margin-top: 30px"></div>
              </div>
            </div>
        </div>
      </section>

      <!-- 리스트 -->
      <section>
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="row">
                <div class="col-md-6">
                  <h3 class=""> 권한 설정 </h3>
                </div>
              </div>
              <hr class="my-2">

              <!-- 권한 설정 -->
              <div id="app-invoice-wrapper" class="">
                <table class="table">
                  <thead>
                  <tr class="border">
                    <th>메뉴명</th>
                    <th>조회</th>
                    <th>생성/수정</th>
                    <th>삭제</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>대시보드</td>
                    <td><input type="checkbox" id="dashboard_access" name="dashboard_access" checked></td>
                    <td><input type="checkbox" id="dashboard_modify" checked></td>
                    <td><input type="checkbox" id="dashboard_delete" checked></td>
                  </tr>
                  <tr>
                    <td>위탁상품 관리</td>
                    <td><input type="checkbox" id="consign_access" name="consign_access" checked></td>
                    <td><input type="checkbox" checked></td>
                    <td><input type="checkbox" checked></td>
                  </tr>
                  <tr>
                    <td>┕ 입고/검수 관리</td>
                    <td><input type="checkbox" id="consign_warehouse_access" name="consign_warehouse_access" checked></td>
                    <td><input type="checkbox" checked></td>
                    <td><input type="checkbox" checked></td>
                  </tr>
                  <tr>
                    <td>┕ 상품/판매 관리</td>
                    <td><input type="checkbox" id="consign_product_access" name="consign_product_access" checked></td>
                    <td><input type="checkbox" checked></td>
                    <td><input type="checkbox" checked></td>
                  </tr>
                  <tr>
                    <td>┕ 주문배송 관리</td>
                    <td><input type="checkbox" id="consign_delivery_access" name="consign_delivery_access" checked></td>
                    <td><input type="checkbox" checked></td>
                    <td><input type="checkbox" checked></td>
                  </tr>
                  <tr>
                    <td>┕ 반품 관리</td>
                    <td><input type="checkbox" id="consign_return_access" name="consign_return_access" checked></td>
                    <td><input type="checkbox" checked></td>
                    <td><input type="checkbox" checked></td>
                  </tr>
                  <tr>
                    <td>셀러상품 관리(직접판매)</td>
                    <td><input type="checkbox" id="seller_access" name="seller_access" checked></td>
                    <td><input type="checkbox" checked></td>
                    <td><input type="checkbox" checked></td>
                  </tr>
                  <tr>
                    <td>┕ 상품/판매 관리</td>
                    <td><input type="checkbox" id="seller_product_access" name="seller_product_access" checked></td>
                    <td><input type="checkbox" checked></td>
                    <td><input type="checkbox" checked></td>
                  </tr>
                  <tr>
                    <td>┕ 주문배송 관리</td>
                    <td><input type="checkbox" id="seller_delivery_access" name="seller_delivery_access" checked></td>
                    <td><input type="checkbox" checked></td>
                    <td><input type="checkbox" checked></td>
                  </tr>
                  <tr>
                    <td>┕ 반품 관리</td>
                    <td><input type="checkbox" id="seller_return_access" name="seller_return_access" checked></td>
                    <td><input type="checkbox" checked></td>
                    <td><input type="checkbox" checked></td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        </form>
      </section>
      <div class="col-md-12">
        <button type="button" class="btn btn-outline-blue btn-min-width mr-1" onclick="location.href='${pageContext.request.contextPath}/operation/managerManagement.do'">취소</button>
        <button type="submit" class="btn btn-outline-blue btn-min-width" onclick="managerUpdate()">저장</button>
      </div>
    </div>
    <!-- END: Content-->
    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>
  </div>
</div>
<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

<script type="text/javascript">

  $(document).ready(function() {
    if( ${managerVO.dashboard_access}) {
      $("input:checkbox[id='dashboard_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='dashboard_access']").prop("checked", false);
    }
    if( ${managerVO.consign_access}) {
      $("input:checkbox[id='consign_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='consign_access']").prop("checked", false);
    }
    if( ${managerVO.seller_return_access}) {
      $("input:checkbox[id='seller_return_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='seller_return_access']").prop("checked", false);
    }
    if( ${managerVO.consign_warehouse_access}) {
      $("input:checkbox[id='consign_warehouse_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='consign_warehouse_access']").prop("checked", false);
    }
    if( ${managerVO.consign_product_access}) {
      $("input:checkbox[id='consign_product_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='consign_product_access']").prop("checked", false);
    }
    if( ${managerVO.consign_delivery_access}) {
      $("input:checkbox[id='consign_delivery_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='consign_delivery_access']").prop("checked", false);
    }
    if( ${managerVO.consign_return_access}) {
      $("input:checkbox[id='consign_return_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='consign_return_access']").prop("checked", false);
    }
    if( ${managerVO.seller_access}) {
      $("input:checkbox[id='seller_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='seller_access']").prop("checked", false);
    }
    if( ${managerVO.seller_product_access}) {
      $("input:checkbox[id='seller_product_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='seller_product_access']").prop("checked", false);
    }
    if( ${managerVO.seller_delivery_access}) {
      $("input:checkbox[id='seller_delivery_access']").prop("checked", true);
    } else {
      $("input:checkbox[id='seller_delivery_access']").prop("checked", false);
    }
  });


  function managerUpdate() {
    let params = {
      "account_id" : document.getElementById('account_id').value,
      "account_name" : document.getElementById('account_name').value,
      "account_email" : document.getElementById('account_email').value,
      "account_tel" : document.getElementById('account_tel').value,
      "dashboard_access" : document.getElementById('dashboard_access').checked,
      "consign_access" : document.getElementById('consign_access').checked,
      "consign_warehouse_access" : document.getElementById('consign_warehouse_access').checked,
      "seller_return_access" : document.getElementById('seller_return_access').checked,
      "consign_product_access" : document.getElementById('consign_product_access').checked,
      "consign_delivery_access" : document.getElementById('consign_delivery_access').checked,
      "consign_return_access" : document.getElementById('consign_return_access').checked,
      "seller_access" : document.getElementById('seller_access').checked,
      "seller_product_access" : document.getElementById('seller_product_access').checked,
      "seller_delivery_access" : document.getElementById('seller_delivery_access').checked
    }

    $.ajax({
      url : "${pageContext.request.contextPath}/operation/updateManagerAuth.json",
      type : "POST",
      data : JSON.stringify(params),
      contentType : "application/json",
      success : function(result) {
        if (result.resultCode === "success") {
          alert(result.message);
          location.href="${pageContext.request.contextPath}/operation/managerManagement.do";
        } else {
          alert(result.message);
        }
      }
    });
  }

  const autoHyphen = (target) => {
    target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
  }


</script>


<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.checkboxes.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
<!-- END: Page Vendor JS-->

<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>