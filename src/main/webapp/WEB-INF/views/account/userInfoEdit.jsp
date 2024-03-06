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
    <div class="content-header">
      <h3 class="content-header-title mb-2">내 정보 수정</h3>
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
                         for="account_pwd">비밀번호<span class="danger">*</span></label>
                  <div class="col-md-4">
                    <input type="password" id="account_pwd" name="account_pwd" class="form-control"
                           placeholder="8~18자를 입력하세요">
                  </div>
                  <div class="col-md-4" id="PwdError" style="color: red"></div>
                </div>

                <div class="form-group">
                <label class="col-md-2 label-control text-bold-700 text-left"
                         for="re_password">비밀번호 확인<span class="danger">*</span></label>
                  <div class="col-md-4">
                    <input type="password" id="re_password" name="re_password" class="form-control"
                           placeholder="">
                  </div>
                    <div class="col-md-4" id="re_PwdError" style="color: red"></div>
                </div>

                <div class="form-group">
                  <label class="col-md-2 label-control text-bold-700 text-left"
                         for="re_password">권한<span class="danger">*</span></label>
                  <div class="col-md-4">
<%--                    <input type="password" id="account_grade" name="account_grade" class="form-control"--%>
<%--                           placeholder="">--%>
                    <select id="grade_id" name="grade_id"
                            class="form-control">
                      <option value="1" selected="">부메랑 관리자
                      </option>
                      <option value="2">부메랑 운영자</option>
                      <option value="3">부메랑 직원</option>
                    </select>
                  </div>
                </div>

                <hr/>
                <div class="form-group">
                <label class="col-md-2 label-control text-bold-700 text-left"
                         for="account_name">이름<span class="danger">*</span></label>
                  <div class="col-md-4">
                    <input type="text" id="account_name" name="account_name" class="form-control"
                           placeholder="" value="${userInfo.account_name}">
                  </div>
                    <div class="col-md-4" id="nameError" style="color: red"></div>
                </div>

                <div class="form-group">
                <label class="col-md-2 label-control text-bold-700 text-left"
                         for="account_phone">휴대폰 번호<span class="danger">*</span></label>
                  <div class="col-md-4">
                    <input type="text" id="account_phone" name="account_phone" class="form-control"
                           placeholder="" value="${userInfo.account_phone}">
                  </div>
                    <div class="col-md-4" id="phoneError" style="color: red"></div>
                </div>

                <div class="form-group">
                  <label class="col-md-2 label-control text-bold-700 text-left"
                         for="account_email">이메일 주소<span class="danger">*</span></label>
                  <div class="col-md-4">
                    <input type="email" id="account_email" name="account_email" class="form-control"
                           name="contact" placeholder="이메일 주소를 입력하세요" value="${userInfo.account_email}">
                  </div>
                    <div class="col-md-4" id="emailError" style="color: red"></div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </section>
      <!--/ 회원 정보-->

      <!-- 사업자 정보-->
<%--      <section>--%>
<%--        <div class="card">--%>
<%--          <div class="card-header">--%>
<%--            <h4 class="card-title">사업자 정보</h4>--%>
<%--          </div>--%>
<%--          <div class="card-content">--%>
<%--            <div class="card-body">--%>
<%--              <form class="form form-horizontal">--%>
<%--                <div class="form-body">--%>
<%--                  <div class="form-group row">--%>
<%--                    <label class="col-md-2 label-control text-bold-700 text-left"--%>
<%--                           for="company_num">사업자 등록번호</label>--%>
<%--                    <div class="col-md-4">--%>
<%--                      <div class="row">--%>
<%--                        <div class="form-group col-md-10 mb-1">--%>
<%--                          <p class="form-control-static" id="company_num">${userInfo.company_num}</p>--%>
<%--                        </div>--%>
<%--                        <div class="form-group col-md-2 mb-1 ml-auto text-right">--%>
<%--                          <button type="button" class="btn btn-blue">변경</button>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </div>--%>

<%--                  <div class="form-group row">--%>
<%--                    <label class="col-md-2 label-control text-bold-700 text-left"--%>
<%--                           for="chief_name">대표자명</label>--%>
<%--                    <div class="col-md-4">--%>
<%--                      <input type="text" id="chief_name" class="form-control"--%>
<%--                             placeholder="대표자명을 입력하세요" value="${userInfo.chief_name}">--%>
<%--                    </div>--%>
<%--                  </div>--%>

<%--                  <div class="form-group row">--%>
<%--                    <label class="col-md-2 label-control text-bold-700 text-left"--%>
<%--                           for="store_name">상호명</label>--%>
<%--                    <div class="col-md-4">--%>
<%--                      <input type="text" id="store_name" class="form-control"--%>
<%--                             placeholder="상호명을 입력하세요" value="${userInfo.store_name}">--%>
<%--                    </div>--%>
<%--                  </div>--%>

<%--                  <div class="form-group row">--%>
<%--                    <label class="col-md-2 label-control text-bold-700 text-left"--%>
<%--                           for="company_zip">사업장 주소</label>--%>
<%--                    <div class="col-md-4">--%>
<%--                      <div class="input-group mb-1">--%>
<%--                        <input type="text" class="form-control" id="company_zip" readonly="readonly"--%>
<%--                               value="${userInfo.company_zip}" aria-describedby="button-addon2">--%>
<%--                        <div class="input-group-append" id="button-addon2">--%>
<%--                          <button class="btn btn-blue" type="button">주소검색</button>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                      <input type="text" class="form-control mb-1" id="company_addr1" readonly="readonly"--%>
<%--                             value="${userInfo.company_addr1}">--%>
<%--                      <input type="text" class="form-control" id="company_addr2" placeholder="상세주소"--%>
<%--                             value="${userInfo.company_addr2}">--%>
<%--                    </div>--%>
<%--                  </div>--%>

<%--                  <div class="form-group row">--%>
<%--                    <label class="col-md-2 label-control text-bold-700 text-left"--%>
<%--                           for="online_marketing_num">통신판매업 신고번호</label>--%>
<%--                    <div class="col-md-4">--%>
<%--                      <input type="text" id="online_marketing_num" class="form-control"--%>
<%--                             placeholder="통신판매업 신고번호를 입력하세요" value="${userInfo.online_marketing_num}">--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </form>--%>
<%--            </div>--%>
<%--          </div>--%>

<%--          <div class="card-header">--%>
<%--            <h4 class="card-title">정산 계좌 정보</h4>--%>
<%--          </div>--%>

<%--          <div class="card-body">--%>
<%--            <form class="form form-horizontal">--%>
<%--              <div class="form-body">--%>
<%--                <div class="form-group row">--%>
<%--                  <label class="col-md-2 label-control text-bold-700 text-left"--%>
<%--                         for="bank_name">은행</label>--%>
<%--                  <div class="col-md-4">--%>
<%--                    <div class="row">--%>
<%--                      <div class="form-group col-md-6 mb-1">--%>
<%--                        <label class="sr-only" for="bank_name">은행선택</label>--%>
<%--                        <select id="bank_name" name="bank_name"--%>
<%--                                class="form-control">--%>
<%--                          <option value="none" selected="" disabled="">은행선택--%>
<%--                          </option>--%>
<%--                          <option value="우리은행">우리은행</option>--%>
<%--                          <option value="기업은행">기업은행</option>--%>
<%--                          <option value="신한은행">신한은행</option>--%>
<%--                          <option value="하나은행">하나은행</option>--%>
<%--                          <option value="국민은행">국민은행</option>--%>
<%--                          <option type="hidden" value="${userInfo.bank_name}"></option>--%>
<%--                        </select>--%>
<%--                      </div>--%>

<%--                      <div class="form-group col-md-6 mb-1 ml-auto text-right">--%>
<%--                        <button type="button" class="btn btn-blue">변경</button>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </div>--%>

<%--                <div class="form-group row">--%>
<%--                  <label class="col-md-2 label-control text-bold-700 text-left"--%>
<%--                         for="account_num">계좌번호</label>--%>
<%--                  <div class="col-md-4">--%>
<%--                    <input type="text" id="account_num" class="form-control"--%>
<%--                           placeholder="계좌번호를 입력하세요" value="${userInfo.account_num}">--%>
<%--                  </div>--%>
<%--                </div>--%>

<%--                <div class="form-group row">--%>
<%--                  <label class="col-md-2 label-control text-bold-700 text-left"--%>
<%--                         for="depositor">예금주</label>--%>
<%--                  <div class="col-md-4">--%>
<%--                    <input type="text" id="depositor" class="form-control"--%>
<%--                           placeholder="예금주를 입력하세요" value="${userInfo.depositor}">--%>
<%--                  </div>--%>
<%--                </div>--%>

<%--                <div class="form-actions center">--%>
<%--                  <button type="button" class="btn btn-light btn-min-width mr-1">취소</button>--%>
<%--                  <button type="submit" class="btn btn-blue btn-min-width">완료</button>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </form>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </section>--%>
      <!--/ 사업자 정보-->
    </div>
      <div class="text-center mb-4">
          <button type="button" class="btn btn-light btn-min-width mr-1" onclick="location.href='${pageContext.request.contextPath}/userInfo.do'">취소</button>
          <button type="button" class="btn btn-blue btn-min-width" id="btn" name="btn" onclick="javascript:Edit();">완료</button>
      </div>
<%--    <div class="col-12 p-0">--%>
<%--      <a href="#" type="button" class="btn btn-outline-secondary btn-min-width" onclick="javascript:deleteDetail();">회원 탈퇴하기</a>--%>
<%--    </div>--%>
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

      if($("#account_pwd").val() === null || $("#account_pwd").val() === "") {
          $("#PwdError").text("비밀번호를 입력하세요");
          return;
      } else if($("#re_password").val() === null || $("#re_password").val() === "") {
          $("#PwdError").text("");
          $("#re_PwdError").text("비밀번호 확인을 입력하세요");
          return;
      } else if($("#account_name").val() === null || $("#account_name").val() === "") {
          $("#PwdError").text("");
          $("#re_PwdError").text("");
          $("#nameError").text("이름을 입력하세요");
          return;
      } else if($("#account_phone").val() === null || $("#account_phone").val() === "") {
          $("#PwdError").text("");
          $("#re_PwdError").text("");
          $("#nameError").text("");
          $("#phoneError").text("휴대폰 번호를 입력하세요");
          return;
      } else if($("#account_email").val() === null || $("#account_email").val() === "") {
          $("#PwdError").text("");
          $("#re_PwdError").text("");
          $("#nameError").text("");
          $("#phoneError").text("");
          $("#emailError").text("이메일 주소를 입력하세요");
          return;
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
        $("#emailError").text("");
      alert("비밀번호와 비밀번호 확인을 입력해주세요.");
      return false;
    }

    if (!invalidPwd.test(account_pwd.value)) {
        $("#emailError").text("");
      document.getElementById("PwdError").innerHTML = "8~18자의 영문, 숫자, 특수문자를 입력하세요."
      return false;
    } else if (invalidPwd.test(account_pwd.value)) {
        $("#emailError").text("");
      document.getElementById("PwdError").innerHTML = ""
    }

    if (account_email.value == "") {
        $("#emailError").text("");
      alert("이메일을 입력해주세요.");
      return false;
    } else if (!invalidEmail.test(account_email.value)) {
        console.log("이메일 검증 실패")
        $("#emailError").text("이메일 형식(@포함)을 확인하세요.");
      return false;
    }

    if (account_pwd.value !== re_password.value) {
      alert("비밀번호가 일치하지 않습니다.");
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
