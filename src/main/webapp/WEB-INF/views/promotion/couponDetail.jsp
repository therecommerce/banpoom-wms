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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/vertical-timeline.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-users.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Header-->

<!-- END: Header-->


<!-- BEGIN: Main Menu-->

<!-- END: Main Menu-->

<!-- Modal -->

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">쿠폰 상세페이지</h3>
        </div>
        <hr>
        <div class="content-body">

            <section>
                <div id="accordionWrap15" role="tablist" aria-multiselectable="true">

                    <div class="card">
                        <div class="card-header pb-0">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4 class="card-title blue">쿠폰 등록 정보</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="float-right row">
                                        <c:if test="${couponVO.coupon_state == '발급중' || couponVO.coupon_state == '발급대기'}">
                                            <div class="border-right-lighten-5" style="margin-right: 20px">
                                                <button type="button" class="btn btn-sm btn-outline-blue btn-min-width border-right-lighten-5" data-toggle="modal"data-target="#modal-1">발급 중단으로 변경</button>
                                            </div>
                                        </c:if>
                                        <c:if test="${couponVO.coupon_state == '발급중단' || couponVO.coupon_state == '발급대기'}">
                                            <div class="border-right-lighten-5" style="margin-right: 20px">
                                                <button type="button" class="btn btn-sm btn-outline-blue btn-min-width border-right-lighten-5" data-toggle="modal"data-target="#modal-2">발급 중으로 변경</button>
                                            </div>
                                        </c:if>
                                        <div style="margin-right: 20px">
                                            <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" onclick="location.href='couponDetailEdit.do?coupon_no=${couponVO.coupon_no}'">수정</button>
                                        </div>
                                        <div style="margin-right: 20px">
                                            <button type="button" class="btn btn-sm btn-outline-blue btn-min-width" data-toggle="modal"data-target="#modal-3">삭제</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="bg-blue mb-0">

                        <div class="card-content">
                            <div class="card-body">
                                <div class="card-text">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">발급 상태</dt>
                                                <c:if test="${couponVO.coupon_state == '발급중'}">
                                                    <dd class="badge bg-success width-100 d-inline-block" style="color: darkgreen">${couponVO.coupon_state}</dd>
                                                </c:if>
                                                <c:if test="${couponVO.coupon_state == '발급중단'}">
                                                    <dd class="badge width-100 d-inline-block" style="background-color: grey">${couponVO.coupon_state}</dd>
                                                </c:if>
                                                <c:if test="${couponVO.coupon_state == '발급대기'}">
                                                    <dd class="badge width-100 d-inline-block" style="background-color: lightgrey; color: grey">${couponVO.coupon_state}</dd>
                                                </c:if>
                                            </dl>
                                        </div>
                                    </div>
                                    <input type="hidden" id="coupon_no" value="${couponVO.coupon_no}">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰유형</dt>
                                                <dd class="col-sm-10">${couponVO.coupon_type}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 지급 방식</dt>
                                                <dd class="col-sm-10">${couponVO.coupon_classification}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰명</dt>
                                                <dd class="col-sm-10">${couponVO.coupon_name}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 적용대상</dt>
                                                <dd class="col-sm-10">${couponVO.coupon_category}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 혜택</dt>
                                                <dd class="col-sm-10">${couponVO.sale_type}
                                                    <c:if test="${couponVO.sale_type == '정액 할인'}">
                                                        ${couponVO.sale_price}원 할인
                                                    </c:if>
                                                    <c:if test="${couponVO.sale_type == '정률 할인'}">
                                                        ${couponVO.sale_percent}%, 최대 ${couponVO.sale_limit}원 까지 할인
                                                    </c:if>
                                                    <c:if test="${couponVO.sale_type == '배송비에서 정액 할인'}">
                                                        ${couponVO.sale_price}원 할인
                                                    </c:if>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">최소 주문금액</dt>
                                                <dd class="col-sm-10">
                                                    <c:if test="${couponVO.minimum_type == '제한없음'}">
                                                        제한 없음
                                                    </c:if>
                                                    <c:if test="${couponVO.minimum_type == '제한있음'}">
                                                        ${couponVO.minimum_price}원 이상 구매 시 사용 가능
                                                    </c:if>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">복수 발급 가능 여부</dt>
                                                <dd class="col-sm-10">
                                                    <c:if test="${couponVO.issuance_count == 1}">
                                                        복수 발급 불가
                                                    </c:if>
                                                    <c:if test="${couponVO.issuance_count != 1}">
                                                        복수 발급 가능
                                                    </c:if>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">발급 개수</dt>
                                                <dd class="col-sm-10">
                                                    무제한
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 중복할인 여부</dt>
                                                <dd class="col-sm-10">${couponVO.overlap_use}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">발급 대상 등급</dt>
                                                <dd class="col-sm-10">${couponVO.issuance_grade}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <c:if test="${couponVO.reg_dt_type == '기간 직접 선택'}">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">발행 기간</dt>
                                                    <dd class="col-sm-10">${couponVO.start_dt} ~ ${couponVO.end_dt}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </c:if>
                                    <c:if test="${couponVO.reg_dt_type == '발급일로부터'}">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">쿠폰 유효 기간</dt>
                                                    <dd class="col-sm-10">발급일로부터 ${couponVO.diffDate}일</dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </c:if>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <dl class="row">
                                                <dt class="col-sm-2">쿠폰 유의사항</dt>
                                                <dd class="col-sm-10">${couponVO.coupon_memo}</dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div class="modal fade text-left" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel1">확인</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <h5>발급 중단으로 상태를 변경하시겠습니까?</h5>
                        <p>변경 시 사용자의 쿠폰 사용이 불가합니다.</p>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="changeCouponState('발급중단');">확인</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade text-left" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel2">확인</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <h5>발급 중으로 상태를 변경하시겠습니까?</h5>
                        <p>변경 시 사용자가 쿠폰 사용이 가능해집니다.</p>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="changeCouponState('발급중')">확인</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade text-left" id="modal-3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel3">확인</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center my-2">
                            <h5>해당 쿠폰을 삭제하시겠습니까?</h5>
                            <p>삭제시 발급중인 쿠폰 사용이 불가합니다.</p>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="deleteCoupon();">확인</button>
                    </div>
                </div>
            </div>
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

        <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

        <!-- BEGIN: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
        <%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>--%>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
        <!-- END: Page Vendor JS-->

            <script type="text/javascript">
                let percent = 0;

                 $(document).ready(function () {
                     // $('#modal2').on('hidden.bs.modal', function () {
                     //     document.getElementById('accordion11').style.display ='none';
                     // });

                    <%--clickPercent($('#btnPercent').val(), ${consignmentVO.product_price});--%>
                 });

                function changeCouponState(state) {
                    var params = {
                        'coupon_state': state,
                        'coupon_no': document.getElementById('coupon_no').value
                    }

                    $.ajax({
                        url : "${pageContext.request.contextPath}/promotion/updateCouponState.json",
                        type : "POST",
                        data: params,
                        success : function(result) {
                            if (result.resultCode == "success") {
                                alert(result.message)
                                location.reload();
                            } else if (result.resultCode == "fail") {
                                alert(result.message);
                            } else {
                                alert(result.message);
                            }
                        }
                    });
                }

                function deleteCoupon() {

                    let isShowEmpty = true;

                    var params = {
                        'coupon_no': document.getElementById('coupon_no').value
                    }

                    if(isShowEmpty){
                        $.ajax({
                            url: "${pageContext.request.contextPath}/deleteCoupon.json",
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
                        });
                    }
                }

            </script>

        <!-- BEGIN: Page JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
        <!-- END: Page JS-->
</body>
<!-- END: Body-->

</html>