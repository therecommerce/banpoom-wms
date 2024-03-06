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
    <title>반품구조대 - Seller</title>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/pickers/daterange/daterange.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/vertical-timeline.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/checkboxes-radios.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-users.css">
    <!-- END: Custom CSS-->


</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">기부 신청</h3>
        </div>
        <hr>
        <div class="content-body">
            <div class="text-center blue py-2">
                <h2 class="text-bold-500 mb-1">기부를 신청해주시는 따뜻한 마음에 감사드립니다.</h2>
                <p>기부해주신 물품은<br>아름다운 가게로 전달되어 소외된 이웃과 사회를 위해 쓰일 예정입니다.</p>
                <div class="d-inline-block alert alert-blue bg-lighten-5 py-25" role="alert">
                    <i class="feather icon-alert-circle"></i> 배송 정보를 배송사에 전달하였습니다. 배송 관련 문의는 배송 업체로 문의하세요.
                </div>
            </div>

            <!-- 기부 물품 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">기부 물품</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <hr class="bg-blue m-0">
                            <div id="app-invoice-wrapper" class="">
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
                                        <td class="text-center">${productVO.category_name}</td>
                                        <td class="text-center"><img class="media-object img-xl" src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-5.png" alt="Generic placeholder image"></td>
                                        <td class="text-center">${productVO.product_name}</td>
                                        <td class="text-center">${productVO.product_count}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 결제 수단 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">결제 수단</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
<%--                            <form class="form" action="addDonateBasic">--%>
                                <div class="form-body">
                                    <div class="form-group">
                                        <div class="custom-control custom-radio mb-1">
                                            <input type="radio" class="custom-control-input" name="paymentRadio"
                                                   id="payTypeCredit" checked="" value="신용카드">
                                            <label class="custom-control-label" for="payTypeCredit">신용카드</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input type="radio" class="custom-control-input" name="paymentRadio"
                                                   id="payTypeBank" value="무통장 입금">
                                            <label class="custom-control-label" for="payTypeBank">무통장 입금</label>
                                        </div>
                                    </div>
                                </div>
<%--                            </form>--%>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 기부 영수증 발급 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">기부 영수증 발급</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
<%--                            <form class="form form-horizontal">--%>
                                <div class="form-body">
                                    <div class="form-group">
                                        <div class="d-inline-block custom-control custom-radio mr-1">
                                            <input type="radio" class="custom-control-input" name="receipt"
                                                   id="receiptNo" checked="" value="발급 안함">
                                            <label class="custom-control-label" for="receiptNo">발급 안함</label>
                                        </div>
                                        <div class="d-inline-block custom-control custom-radio">
                                            <input type="radio" class="custom-control-input" name="receipt"
                                                   id="receiptYes" value="발급함">
                                            <label class="custom-control-label" for="receiptYes">발급함</label>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-bold-700 text-left">사업자/개인</label>
                                        <div class="col-md-4">
                                            <div class="d-inline-block custom-control custom-radio mr-1">
                                                <input type="radio" class="custom-control-input" name="business" id="businessYes" checked="" value="사업자" onclick="showInput(this.value);">
                                                <label class="custom-control-label" for="businessYes">사업자</label>
                                            </div>
                                            <div class="d-inline-block custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" name="business" id="businessNo" value="개인" onclick="showInput(this.value);">
                                                <label class="custom-control-label" for="businessNo">개인</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row" id="resident_num">
                                        <label class="col-md-1 label-control text-bold-700 text-left">주민등록번호</label>
                                        <div class="col-md-4">
                                            <div class="d-flex justify-content-start align-items-start">
                                                <div class="d-flex align-items-center justify-content-start">
                                                    <input type="number" id="residentNumber1" class="form-control" placeholder="주민번호 앞자리" maxlength="6">
                                                </div>
                                                <span class="font-weight-bold mx-1 pt-50">~</span>
                                                <div class="d-flex align-items-center justify-content-start">
                                                    <input type="number" id="residentNumber2" class="form-control" placeholder="주민번호 뒷자리" maxlength="7">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row mb-0" id="phone_num" style="display: none">
                                        <label class="col-md-1 label-control text-bold-700 text-left"
                                               >휴대폰번호</label>
                                        <div class="col-md-3">
                                            <input type="number" class="form-control" id="receiptTel" placeholder="휴대폰 번호 입력(ʻ-ʻ하이픈 제외)">
                                        </div>
                                    </div>
                                </div>
<%--                            </form>--%>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 정책 동의 -->
            <section>
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">

                            <div class="d-flex justify-content-between">
                                <div class="d-flex align-items-center">
                                    <div class="">
                                        <input type="checkbox" name="agreement" id="agreement" onclick="javascript:Activation();">
                                        <label class="none" for="agreement"><strong class="mr-2">동의</strong>기부 신청 및 기부
                                            약관에 동의하십니까?</label>
                                    </div>
                                </div>
                                <div class="align-self-center">
                                    <a class="btn btn-outline-secondary btn-sm" href="#" target="_blank"
                                       role="button">약관보기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 결제 금액 정보 표시 -->
            <section>
                <div class="card bg-blue bg-lighten-4">
                    <div class="card-content">
                        <div class="card-body">
                            <ul class="list-group cost-list">
                                <li
                                        class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                    <span class="cost-title font-weight-bold blue">총 결제 금액</span>
                                    <span class="cost-value font-weight-bold blue" id="payment_price">3,000원</span>
                                </li>
                                <li
                                        class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                    <span class="cost-title blue">반품 수거비용</span>
                                    <span class="cost-value blue">3,000원</span>
                                    <input type="hidden" id="product_id" value="${productVO.product_id}">
                                    <input type="hidden" id="account_id" value="${account_id}">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <div class="row">
                <div class="col-12 mt-1 mb-3">
                    <div class="text-center">
                        <button type="button" class="btn btn-light btn-min-width mr-1" onclick="window.history.back();">취소</button>
                        <button type="button" id="register" class="btn btn-blue btn-min-width" data-toggle="modal"
                                data-target="#Small" onclick="insertToOfferManagement();" disabled>신청</button>
                    </div>
                </div>
            </div>

        </div>
        <!-- END: Content-->

        <div class="sidenav-overlay"></div>
        <div class="drag-target"></div>

        <!-- Modal -->
        <div class="modal fade text-left" id="Small" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                <div class="modal-content">
                    <!-- <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel20">Basic Modal</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div> -->
                    <div class="modal-body">
                        <p>기부 신청이 완료되었습니다.</p>
                        <p>감사합니다.</p>
                        <p>(기부/폐기/회수 메뉴에서 확인하실 수 있습니다.)</p>
                    </div>
                    <div class="modal-footer">
                        <!-- <button type="button" class="btn grey btn-outline-secondary" data-dismiss="modal">Close</button> -->
                        <button type="button" class="btn btn-blue" data-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/management.do';">확인</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/vendors.min.js"></script>
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


<form:form class="form-horizontal" id="parameterVO" name="parameterVO" action="" method="post">
    <input type="hidden" id="consign_payment_type" name="consign_payment_type">
    <input type="hidden" id="consign_agree" name="consign_agree">
    <input type="hidden" id="receipt_yn" name="receipt_yn">
    <input type="hidden" id="business_type" name="business_type">
    <input type="hidden" id="resident_number_f" name="resident_number_f">
    <input type="hidden" id="resident_number_b" name="resident_number_b">
    <input type="hidden" id="receipt_tel" name="receipt_tel">
    <input type="hidden" id="consign_agree" name="consign_agree">
</form:form>


<script>

    function Activation() {

        if ($("#agreement").is(":checked")) {
            $("#register").attr("disabled", false)
        } else {
            $("#register").attr("disabled", true)
        }
    }


    function showInput(value) {
        if (value == '사업자') {
            document.getElementById('resident_num').style.display = ''
            document.getElementById('phone_num').style.display = 'none'
        } else if (value == '개인') {
            document.getElementById('resident_num').style.display = 'none'
            document.getElementById('phone_num').style.display = ''
        }

    }

    function insertToOfferManagement() {

        if ($('input[name=business]:checked').value == '사업자') {
            document.getElementById('receiptTel').value = ''
        } else if ($('input[name=business]:checked').value == '개인') {
            document.getElementById('residentNumber1').value = ''
            document.getElementById('residentNumber2').value = ''
        }

        let price = document.getElementById('payment_price').innerText;
        const regex = /[^0-9]/g;
        const result = price.replace(regex, "");
        const payment_price = parseInt(result);

        let params = {
            'payment_method': $('input[name=paymentRadio]:checked').val(),
            'donate_receipt': $('input[name=receipt]:checked').val(),
            'issuance_sorting': $('input[name=business]:checked').val(),
            'resident_number1': document.getElementById('residentNumber1').value,
            'resident_number2': document.getElementById('residentNumber2').value,
            'phone_number': document.getElementById('receiptTel').value,
            'payment_price': payment_price,
            'product_id': document.getElementById('product_id').value,
            'account_id': document.getElementById('account_id').value,
            'sort_type': '기부'
        }

        $.ajax({
            type : "post",
            url : "${pageContext.request.contextPath}/commissionDonateReturnBasic.json",
            data : params,
            async : false,
            success : function(result) {
                if (result.resultCode == "success") {
                } else {
                    alert(result.message);
                }
            }
        })
    }

</script>

</body>
<!-- END: Body-->

</html>
