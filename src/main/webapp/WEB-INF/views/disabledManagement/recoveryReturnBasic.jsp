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
            <h3 class="content-header-title mb-2">회수 신청</h3>
        </div>
        <hr>
        <div class="content-body">
            <div class="blue py-2">
                <div class="d-inline-block alert alert-blue bg-lighten-5 py-25" role="alert">
                    <i class="feather icon-alert-circle"></i> 회수 신청을 위해서는 반품 수거비 및 상품 회수비 결제가 필요합니다.
                </div>
            </div>

            <!-- 회수 물품 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">회수 물품</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <hr class="bg-blue m-0">
                            <div id="app-invoice-wrapper" class="">
                                <table class="table align-middle">
                                    <thead class="text-center">
                                    <tr>
                                        <th>카테고리</th>
<%--                                        <th>사진</th>--%>
                                        <th>상품명</th>
                                        <th>상품 수량</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="text-center">${productListVO.category_name}</td>
<%--                                        <td class="text-center"><img class="media-object img-xl" src="${pageContext.request.contextPath}/resources/app-assets/images/portrait/small/avatar-s-5.png" alt="Generic placeholder image"></td>--%>
                                        <td class="text-center">${productListVO.product_name}</td>
                                        <td class="text-center">${productListVO.product_count}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 배송지 정보-->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">배송지 정보</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <p><i class="feather icon-alert-circle"></i> 회수 받을 배송지를 입력하세요.</p>
<%--                            <form class="form form-horizontal">--%>
                                <div class="form-body">
                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-bold-700 text-left"
                                               for="eventRegInput3">배송지<span class="danger">*</span></label>
                                        <div class="col-md-4">
                                            <div class="input-group mb-1">
                                                <input type="text" class="form-control" id="pickup_zipcode"
                                                       readonly="readonly" value="" required=""
                                                       aria-describedby="button-addon2">
                                                <div class="input-group-append" id="button-addon2">
                                                    <button class="btn btn-blue" type="button" onclick="addressSearch('pickup_zipcode', 'pickup_address1', 'pickup_address2')">주소검색</button>
                                                </div>
                                            </div>
                                            <input type="text" class="form-control mb-1" id="pickup_address1"
                                                   readonly="readonly" value="">
                                            <input type="text" class="form-control" id="pickup_address2" placeholder="상세 주소"
                                                   value="" required=""
                                                   data-validation-required-message="사업장 상세 주소를 입력하세요.">
                                            <div class="help-block"></div>
                                        </div>
                                    </div>
                                </div>
<%--                            </form>--%>
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
<%--                            <form class="form">--%>
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

            <!-- 정책 동의 -->
            <section>
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">

                            <div class="d-flex justify-content-between">
                                <div class="d-flex align-items-center">
                                    <div class="">
                                        <input type="checkbox" name="agreement" id="agreement" onclick="javascript:Activation();">
                                        <label class="none" for="agreement"><strong class="mr-2">동의</strong>회수신청 및 회수약관에
                                            동의하십니까?</label>
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
                                    <span class="cost-value font-weight-bold blue" id="payment_price">6,000원</span>
                                </li>
                                <li
                                        class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                    <span class="cost-title blue">반품 수거비용</span>
                                    <span class="cost-value blue">3,000원</span>
                                </li>
                                <li
                                        class="list-group-item each-cost border-0 p-50 d-flex justify-content-between bg-blue bg-lighten-4">
                                    <span class="cost-title blue">상품 회수비용(물류처리대행비)</span>
                                    <span class="cost-value blue">3,000원</span>
                                    <input type="hidden" id="product_id" value="${productListVO.product_id}">
                                    <input type="hidden" id="account_id" value="${ProductListVO.account_id}">
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
                        <button type="button" id="register" class="btn btn-blue btn-min-width" onclick="pay();" disabled>결제</button>
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
                    <div class="modal-body">
                        <p>회수 신청이 완료되었습니다.</p>
                        <p>입력하신 주소로 발송될 예정입니다.</p>
                        <p>(기부/폐기/회수 메뉴에서 확인하실 수 있습니다.)</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-blue" data-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/disabledManagement.do';">확인</button>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<form:form class="form-horizontal" id="parameterVO" name="parameterVO" action="" method="post">
    <input type="hidden" id="post_number" name="post_number" value="">
    <input type="hidden" id="consign_addr1" name="consign_addr1" value="">
    <input type="hidden" id="consign_addr2" name="consign_addr2" value="">
    <input type="hidden" id="consign_payment_type" name="consign_payment_type">
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

    function pay() {

        let price = document.getElementById('payment_price').innerText;
        const regex = /[^0-9]/g;
        const result = price.replace(regex, "");
        const payment_price = parseInt(result);

        if (document.getElementById('pickup_zipcode').value == null || document.getElementById('pickup_zipcode').value == '') {
            alert("우편번호를 입력하세요");
            return;
        } else if (document.getElementById('pickup_address1').value == null || document.getElementById('pickup_address1').value == '') {
            alert("주소를 입력하세요");
            return;
        } else if (document.getElementById('pickup_address2').value == null || document.getElementById('pickup_address2').value == '') {
            alert("상세 주소를 입력하세요");
            return;
        }

        let params = {
            'discard_zip': document.getElementById('pickup_zipcode').value,
            'discard_addr': document.getElementById('pickup_address1').value,
            'discard_addr_detail': document.getElementById('pickup_address2').value,
            'payment_method': $('input[name=paymentRadio]:checked').val(),
            'payment_price': payment_price,
            'account_id': document.getElementById('account_id').value,
            'product_id': document.getElementById('product_id').value,
            'sort_type': '회수'
        }

        $.ajax({
            type : "post",
            url : "${pageContext.request.contextPath}/RecoveryReturnBasic.json",
            data : params,
            async : false,
            success : function(result) {
                if (result.resultCode == "success") {
                    $('#Small').modal('show');
                } else {
                    alert(result.message);
                }
            }
        })
    }

    function addressSearch(addr1, addr2, addr3) {
        new daum.Postcode({
            oncomplete: function(data) {

                var addr = '';
                var extraAddr = '';


                if (data.userSelectedType === 'R') {
                    addr = data.roadAddress;
                } else {
                    addr = data.jibunAddress;
                }

                if(data.userSelectedType === 'R'){

                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }

                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }

                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                }

                document.getElementById(addr1).value = data.zonecode;
                document.getElementById(addr2).value = addr;
                document.getElementById(addr3).focus();
            }
        }).open();
    }

</script>


</body>
<!-- END: Body-->

</html>
