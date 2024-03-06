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

<%--<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"--%>
<%--      data-col="2-columns">--%>

<!-- BEGIN: Header-->

<!-- END: Header-->


<!-- BEGIN: Main Menu-->

<!-- END: Main Menu-->

<!-- BEGIN: Content-->
<div class="app-content content">
  <div class="content-overlay"></div>
  <div class="content-wrapper">
    <div class="content-header row">
      <div class="col-md-6">
        <h3 class="content-header-title mb-2">내 정보</h3>
      </div>
      <div class="col-md-6">
        <button type="button"
                class="btn btn-blue btn-min-width float-right" onclick="move('userInfoEdit.do', '')">수정</button>
      </div>
    </div>
    <hr>

    <div class="content-body">
      <!-- 회원 정보-->
      <section>
        <div class="card">
<%--          <div class="card-header">--%>
<%--            <h4 class="card-title">회원 정보</h4>--%>
<%--          </div>--%>
          <div class="card-content">
            <div class="card-body">
              <input type="hidden" name="account_id" id="account_id" value="${userInfo.account_id}"/>
              <div class="form-body">
                <div class="form-group">
                  <label class="col-md-2 label-control text-bold-700 text-left"
                         for="account_id">아이디</label>

                  <div class="col-md-6">
                    <p class="form-control-static"><span style="font-size: large">${userInfo.account_id}</span></p>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-md-2 label-control text-bold-700 text-left"
                         for="re_password">권한<span class="danger">*</span></label>
                  <div class="col-md-4">
                      <c:if test="${userInfo.grade_id == '1'}">
                          <p class="form-control-static"><span style="font-size: large">부메랑 관리자</span></p>
                      </c:if>
                      <c:if test="${userInfo.grade_id == '2'}">
                          <p class="form-control-static"><span style="font-size: large">부메랑 운영자</span></p>
                      </c:if>
                      <c:if test="${userInfo.grade_id == '3'}">
                          <p class="form-control-static"><span style="font-size: large">부메랑 직원</span></p>
                      </c:if>
                  </div>
                </div>

                <hr/>
                <div class="form-group">
                <label class="col-md-2 label-control text-bold-700 text-left"
                         for="account_name">이름<span class="danger">*</span></label>
                  <div class="col-md-4">
                    <p class="form-control-static"><span style="font-size: large">${userInfo.account_name}</span></p>
                  </div>
                </div>

                <div class="form-group">
                <label class="col-md-2 label-control text-bold-700 text-left"
                         for="account_phone">휴대폰 번호<span class="danger">*</span></label>
                  <div class="col-md-4">
                    <p class="form-control-static"><span style="font-size: large">${userInfo.account_phone}</span></p>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-md-2 label-control text-bold-700 text-left"
                         for="account_email">이메일 주소<span class="danger">*</span></label>
                  <div class="col-md-4">
                    <p class="form-control-static"><span style="font-size: large">${userInfo.account_email}</span></p>
                  </div>
                </div>
                <div id="EmailError" class="EmailError" style="color: red"></div>
              </div>

            </div>
          </div>
        </div>
      </section>
      <!--/ 회원 정보-->
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script type="text/javascript">

  $(document).ready(function() {

    $('#bank_name').val('${userInfo.bank_name}').prop("selected", true);
    $('#grade_id').val('${userInfo.grade_id}');

  });

  const account_pwd = document.getElementById("account_pwd");
  const re_password = document.getElementById("re_password");
  const account_email = document.getElementById("account_email");
  const invalidPwd = /^[a-zA-Z0-9~!@#$%^&*]{8,18}$/;
  const invalidEmail = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;

  function Edit() {
    var params = {
      'account_id': $('#account_id').val(),
      'account_pwd':  $('#account_pwd').val(),
      'account_email': $('#account_email').val(),
      'account_phone': $('#account_phone').val(),
      'grade_id': $('#grade_id').val(),
      'account_name': $('#account_name').val()
    }

    if (validate()) {
      $.ajax({
        url : "${pageContext.request.contextPath}/updateUserInfo.json",
        type : "POST",
        data : JSON.stringify(params),
        contentType : "application/json",
        success : function(result) {
          if (result.resultCode == "success") {
            alert(result.message);
            location.href = "${pageContext.request.contextPath}/userInfoEdit.do";
          } else if (result.resultCode == "fail") {
            alert(result.message);
          } else{
            alert(result.message);
          }

        }
      })
    }
  }

  function validate() {
    if (account_pwd.value == "" || re_password.value == "") {
      alert("비밀번호와 비밀번호 확인을 입력해주세요.");
      return false;
    }

    if (!invalidPwd.test(account_pwd.value)) {
      document.getElementById("PwdError").innerHTML = "8~18자의 영문, 숫자, 특수문자를 입력하세요."
      return false;
    } else if (invalidPwd.test(account_pwd.value)) {
      document.getElementById("PwdError").innerHTML = ""
    }

    if (account_email.value == "") {
      alert("이메일을 입력해주세요.");
      return false;
    } else if (!invalidEmail.test(account_email.value)) {
      document.getElementById("EmailError").innerHTML = "이메일 형식(@포함)을 확인하세요."
      return false;
    }

    if (account_pwd.value !== re_password.value) {
      alert("비밀번호가 다릅니다.");
      return false;
    }

    return true;
  }

  function deleteDetail() {
    location.href = "${pageContext.request.contextPath}/deleteInfoDetail.do";
  }

  function sample4_execDaumPostcode() {
    new daum.Postcode({
      oncomplete: function(data) {
        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

        // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
        var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
        var extraRoadAddr = ''; // 도로명 조합형 주소 변수

        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
          extraRoadAddr += data.bname;
        }
        // 건물명이 있고, 공동주택일 경우 추가한다.
        if(data.buildingName !== '' && data.apartment === 'Y'){
          extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
        }
        // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
        if(extraRoadAddr !== ''){
          extraRoadAddr = ' (' + extraRoadAddr + ')';
        }
        // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
        if(fullRoadAddr !== ''){
          fullRoadAddr += extraRoadAddr;
        }

        // 우편번호와 주소 정보를 해당 필드에 넣는다.
        document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
        document.getElementById('sample4_roadAddress').value = fullRoadAddr;
        document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

        // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
        if(data.autoRoadAddress) {
          //예상되는 도로명 주소에 조합형 주소를 추가한다.
          var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
          document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

        } else if(data.autoJibunAddress) {
          var expJibunAddr = data.autoJibunAddress;
          document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

        } else {
          document.getElementById('guide').innerHTML = '';
        }
      }
    }).open("width = 500, height = 500");
  }


</script>



<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/form-login-register.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>