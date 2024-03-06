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
    <title>반품구조대 - Seller</title>
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/app-assets/images/ico/favicon.ico">
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

    <style>
        label {
            cursor: pointer;
            /* Style as you please, it will become the visible UI component. */
        }

        .image_icon {
            opacity: 0;
            position: absolute;
            z-index: -1;
        }

        .wht {
            width: 200px;
            padding: .8em .5em;
            border: 1px solid #999;
            font-family: inherit;
            background: url('.././webapp/resources/img/arrow.jpg') no-repeat 95% 50%;
            border-radius: 0px;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }

        .select_box {
            padding-top : 0 !important;
            padding-bottom : 0 !important;
            width: 350px;
            height: 40px;
            border-radius: 5px;
            border : 1px solid #CCD6E6;
        }
    </style>
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Header-->

<!-- END: Header-->

<!-- BEGIN: Main Menu-->

<!-- END: Main Menu-->

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">반품구조대 문의등록</h3>
        </div>
        <hr>

        <div class="content-body">
            <!-- 1:1문의등록-->
            <section>
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <form class="form form-horizontal" name="qnaRegisterDate">
                                <div class="form-body">
                                	 <div class="form-group row">
                                        <label class="col-md-2 label-control text-bold-700 text-left"
                                               for="companyName">회사명 <span class="danger">*</span>
                                        </label>
                                        <div class="col-md-4">
                                            <input type="text" id="qnaName" class="form-control"
                                                       placeholder="회사명을 입력하세요" value="${accountList.account_name}" onfocusout="nameCertification()">
<%--                                            <span id ="nameCertificationMsg"></span>--%>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-bold-700 text-left"
                                               for="qnaName">이름 <span class="danger">*</span>
                                        </label>
                                        <div class="col-md-4">
                                            <input type="text" id="qnaName" class="form-control"
                                                       placeholder="이름을 입력하세요" value="${accountList.account_name}" onfocusout="nameCertification()">
<%--                                            <span id ="nameCertificationMsg"></span>--%>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-bold-700 text-left"
                                               for="qnaPhone">연락처 <span class="danger">*</span>
                                        </label>
                                        <div class="col-md-4">
                                            <input type="text" id="qnaPhone" class="form-control"
                                                   placeholder="연락처를 입력해 주세요." value="${accountList.account_phone}" oninput="autoHyphen(this);">
                                            <span id ="telCertificationMsg"></span>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-bold-700 text-left"
                                               for="qnaEmail">이메일 주소</label>
                                        <div class="col-md-4">
                                            <input type="email" id="qnaEmail" class="form-control"
                                                   name="contact" placeholder="이메일 주소를 입력하세요"
                                                   value="${accountList.account_email}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-bold-700 text-left"
                                               > 문의 내용 <span class="danger">*</span>
                                        </label>
                                        <div class="col-md-6">
                                                <textarea class="form-control" id="qnaContent" rows="5" placeholder="문의 내용을 적어주세요."></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2 label-control text-bold-700 text-left"
                                               for="preview">첨부파일</label>
                                        <div class="col-md-4">
                                            <input type="file" class="form-control-file" id="basicInputFile" accept="img/*" onchange="addImageFile(this, 5);">
                                            <div class="card-text">
                                                <ul class="list-unstyled">
                                                    <li>* 파일 확장자 : JPG, JPEG, GIF, BMP, PNG 파일 형태만 가능</li>
                                                    <li>* 파일은 최대 5개까지 업로드 가능</li>
                                                    <li>* 1개 파일당 최대 ##MB까지 업로드</li>
                                                </ul>

                                                <ul class="list-inline" id="image_list">

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center border-top-blue-grey border-top-lighten-5 text-muted"></div>
                                    <div class="form-group row">
                                    <div class="col-md-2"></div>
                                    	<div class="card-body">
											<div class="media col-md-4">
												<div class="media-body text-left font-medium-3">
													<fieldset>
														<input type="checkbox" name="input-radio-1"
															   id="input-radio-11" onchange="javascript:choiceBtn();">
														<label class="none" for="input-radio-11">개인정보 수집 및 이용 동의</label>
													</fieldset>
												</div>
											</div>
											<div class="card-content collapse show">
												<div class="card-body py-0">
													<p class="font-medium-1 text-muted p-0 mb-0">
													[수집항목] : 회사명(또는 이름) / 연락처(전화번호) / 이메일
													<br>
													[이용목적] : 문의접수 후 상담 진행을 위한 연락처
													<br>
													[보유 및 파기] : 30일 경과된 문의접수 건 파기
													</p>
												</div>
											</div>
										</div>
									</div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-center border-top-blue-grey border-top-lighten-5 text-muted">
                        <!--     <button type="button" class="btn btn-light btn-min-width mr-1" data-toggle="modal" data-target="#modal-cancel">
                                취소
                            </button> -->
                            <button class="btn btn-blue btn-min-width" data-toggle="modal" data-target="#modal-add">
                                보내기
                            </button>
                        </div>
                    </div>
                </div>
            </section>
            <!--/ 1:1문의등록-->
        </div>
    </div>
</div>
<!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

<!-- Modal start-->
<div class="modal fade text-center" id="modal-cancel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h3 class="modal-title" id="modal-cancel-title"> 작성 취소 </h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    입력된 내용이 모두 사라집니다.<br>
                    등록을 취소하시겠습니까?
                </p>
            </div>
            <div class="modal-footer justify-content-center" data-dismiss="modal">
                <button type="button" class="btn btn-light btn-min-width" aria-hidden="true"> 작성 계속 </button>
                <a type="button" class="btn btn-blue btn-min-width" id="closeRegister" href="${pageContext.request.contextPath}/qnaBoard.do" onclick="move('qnaBoard.do','')"> 문의 게시판으로 이동 </a>
            </div>
        </div>
    </div>
</div>

<div class="modal fade text-center" id="modal-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h3 class="modal-title" id="modal-add-title"> 작성 내용 전송 </h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    작성된 내용을 확인해 주세요.<br>
                    문의 등록 하시겠습니까?
                </p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" aria-label="Close"> 취소 </button>
                <a type="button" class="btn btn-blue btn-min-width" onclick="certification()"> 확인 </a>
            </div>
        </div>
    </div>
</div>

<!--이미지 모달-->

<div class="modal fade text-center" id="modal-image_1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h3 class="modal-title" id="modal-image-title_1"> 작성 취소 </h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    문의에 도움이될 이미지를 올려주세요.
                </p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal"> 취소 </button>
                <button type="button" class="btn btn-blue btn-min-width" onclick="fn_chkPage('qnaBoard')" id="modal_image_upload_1"> 문의 게시판으로 이동 </button>
            </div>
        </div>
    </div>
</div>
<!-- Modal end-->


<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/icheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"></script>
<!-- END: Page Vendor JS-->



<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/form-login-register.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/modal/components-modal.js"></script>
<!-- END: Page JS-->

<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

<form:form id="parameterVO" commandName="parameterVO" name="parameterVO" action="" method="post">
    <input type="hidden" id="qna_type1" name="qna_type1"/>
    <input type="hidden" id="qna_type2" name="qna_type2"/>
    <input type="hidden" id="qna_title" name="qna_title"/>
    <input type="hidden" id="qna_content" name="qna_content"/>
    <input type="hidden" id="qna_email" name="qna_email"/>
    <input type="hidden" id="qna_phone" name="qna_phone"/>
    <input type="hidden" id="qna_writer" name="qna_writer"/>
</form:form>

<script type="text/javascript">
    /* window.onload = function () {
        alert("산업안전법에 따라 고객응대근로자에게 폭언,욕설,선정적인 문구 및 이미지 업로드시 처벌받을수 있습니다.");
    } */

    var fileNo = 0;
    var filesArr = new Array();

    function nameCertification() {
        let regex = /[a-zA-Z0-9가-힇ㄱ-ㅎㅏ-ㅣぁ-ゔァ-ヴー々〆〤一-龥]/;
        let id = document.getElementById("qnaName").value;
        let msg = document.getElementById("nameCertificationMsg");

        if(regex.test(id) && id.length <= 20) {
            msg.setAttribute("style", "color:green;");
            msg.innerHTML = "사용가능한 아이디 입니다.";
        }
        else {
            msg.setAttribute("style", "color:red;");
            msg.innerHTML = "이름을 다시 확인해 주세요.";
        }
    }

    function telCertification() {
        let regex = /[0-9]/;
        let tel = document.getElementById("qnaPhone").value;
        let msg = document.getElementById("telCertificationMsg");

        if(regex.test(tel) && tel.length <= 14 && tel.length != 0) {
            msg.setAttribute("style", "color:green;");
            msg.innerHTML = "사용가능한 연락처 입니다.";
        }
        else {
            msg.setAttribute("style", "color:red;");
            msg.innerHTML ="전화번호 확인해 주세요.";
        }
    }

    function titleCertification() {
        let title = document.getElementById("qnaTitle").value;
        let msg = document.getElementById("titleCertificationMsg");

        if (title.length == 0) {
            msg.innerHTML = "제목을 입력해주세요."
        }
        else {
            msg.innerHTML = "";
        }
    }

    function certification() {
        let title = document.getElementById("qnaTitle").value;
        let qnaName = document.getElementById("qnaName").value;
        let qnaPhone = document.getElementById("qnaPhone").value;
        let qnaContent = document.getElementById("qnaContent").value;

        if(title.length == '') {
            alert("제목은 필수 입력 사항입니다.")
        }
        if(qnaName.length == ''){
            alert("이름은 필수 입력 사항입니다.")
        }
        if(qnaPhone.length == '') {
            alert("연락처는 필수 입력 사항입니다.")
        }
        if(qnaContent == '') {
            alert("문의 내용은 필수 입력 사항입니다.")
        }
        else {
            inputData();
            sendData();
            move('qnaBoard.do', '');
        }
    }

    function inputData() {

    }

    function sendData() {
        let qnaType1 = document.getElementById("qnaType1").value;
        let qnaType2 = document.getElementById("qnaType2").value;
        let qnaName = document.getElementById("qnaName").value;
        let qnaPhone = document.getElementById("qnaPhone").value;
        let qnaTitle = document.getElementById("qnaTitle").value;
        let qnaContent = document.getElementById("qnaContent").value;
        let qnaEmail = document.getElementById("qnaEmail").value;
        const formData = new FormData();

        var files = new Array();
        filesArr.forEach(function(imageFile){
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

    // 전화번호 '-' 추가
    const autoHyphen = (target) => {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
    }

</script>

</body>
<!-- END: Body-->

</html>