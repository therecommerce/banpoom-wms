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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/plugins/forms/switch.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-users.css">
    <!-- END: Custom CSS-->

    <style>
        select option[value=""][disabled] {
            display: none;
        }

        .radio-buttons .custom-control {
            margin-right: 5px;
        }
    </style>

</head>
<!-- END: Head-->

<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">상품 수정</h3>
        </div>
        <hr>


        <div class="content-body" id="tab-menu0">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12">
                    <span class="text-muted"><h4 class="text-uppercase mb-1">${consignmentVO.product_name}(${consignmentVO.product_id})</h4></span>
                </div>
            </div>
            <c:if test="${consignmentVO.product_state == '보관중' ||  consignmentVO.product_state == '검수완료'}">
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">반품구조대 검수 정보</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <div class="form-group row">
                                        <label class="col-md-1" for="product_grade">검수 등급<span
                                                class="danger">*</span></label>
                                        <div class="col-md-4" id="selectConsignReason">
                                            <select id="product_grade" name="product_grade" class="form-control">
                                                <option value="A">A등급</option>
                                                <option value="B">B등급</option>
                                                <option value="C">C등급</option>
                                                <option value="D">D등급</option>
                                            </select>
                                        </div>
<%--                                        <input type="text" id="inspection_opinion" class="col-md-4" style="display: none" placeholder="" />--%>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-1" for="inspection_opinion">검수 의견<span
                                                class="danger">*</span></label>
                                        <div class="col-md-11">
                                            <input type="text" id="inspection_opinion" name="inspection_opinion" class="form-control"
                                                   placeholder="" value="${consignmentVO.inspection_opinion}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            </c:if>
            <!-- 상품정보 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">상품정보</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <p><i class="feather icon-alert-circle"></i> 등록할 상품의 기본정보를 입력하세요.</p>
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <c:if test="${consignmentVO.selling == true}">
                                    <div class="form-group row">
                                        <label class="col-md-1">상품상태 <span
                                                class="danger">*</span></label>
                                        <div class="col-md-4">
                                            <div class="float-left">
                                                <button id="switch1" onclick="javascript:clickBtn('판매중');">판매중</button>
                                                <button id="switch2" onclick="javascript:clickBtn('판매중지');">판매중지</button>
                                                <button id="switch3" onclick="javascript:clickBtn('품절');">품절</button>
                                            </div>
                                        </div>
                                    </div>
                                    </c:if>
                                    <div class="form-group row">
                                        <label class="col-md-1 label-control text-left"
                                               for="userinput1">카테고리</label>
                                        <div class="col-md-4 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <select id="topName" class="form-control"onchange="changeMiddle();">
                                                        <option selected value="">전체</option>
                                                        <c:forEach items="${categoryName}" var="categoryName">
                                                            <c:if test="${categoryName.parent_category_id == ''}">
                                                                <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                                            </c:if>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <select id="middle" class="form-control">
                                                        <option selected value="">전체</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-1" for="product_name">상품명 <span
                                                class="danger">*</span></label>
                                        <div class="col-md-11">
                                            <input type="text" id="product_name" name="product_name" class="form-control"
                                                   placeholder="상품명을 입력해주세요. (ex: Nike Air Force)" value="${consignmentVO.product_name}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 배송 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">배송</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="row mb-1">
                                <div class="col-md-6">
                                    <span class="float-left"><i class="feather icon-alert-circle"></i> 배송정보를설정하세요.</span>
                                </div>
                            </div>
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="sample6_postcode">출고지 <span class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <div class="input-group mb-1">
                                                        <input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" value="15878" readonly>
                                                        <div class="input-group-append" id="button-addon2">
                                                            <input type="button" class="btn btn-blue" onclick="sample6_execDaumPostcode()" value="주소검색"><br>
                                                        </div>
                                                    </div>
                                                    <input type="text" class="form-control mb-1" id="sample6_address" placeholder="주소" value="경기 군포시 번영로 82" readonly><br>
                                                    <input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소" value="복합물류터미널H동 4층 반품구조대">
                                                    <div class="help-block"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="delivery_company">택배사 <span class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <select id="delivery_company" name="delivery_company" class="form-control">
                                                        <option value="반품구조대">반품구조대</option>
                                                        <option value="한진택배">한진택배</option>
                                                        <option value="CJ대한통운">CJ대한통운</option>
                                                        <option value="우체국">우체국</option>
                                                        <option value="롯데택배">롯데택배</option>
                                                        <option value="로젠택배">로젠택배</option>
                                                        <option value="일양택배">일양택배</option>
                                                        <option value="경동택배">경동택배</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="delivery_type">배송비 <span class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <div class="row">
                                                        <div class="form-group col-md-6 mb-1">
                                                            <input type="hidden" id="type" name="type" value="${consignmentVO.delivery_type}" />
                                                            <label class="sr-only" for="delivery_type">유료배송</label>
                                                            <select id="delivery_type" name="delivery_type"
                                                                    class="form-control" onchange="changeDeliveryType()">
                                                                <option value="유료배송">유료배송</option>
                                                                <option value="무료배송">무료배송</option>
                                                                <option value="조건부 무료배송">조건부 무료배송</option>
                                                                </option>
                                                            </select>
                                                        </div>

                                                        <div class="form-group col-md-6 mb-1">
                                                            <div class="input-group">
                                                                <input type="text" class="form-control" id="delivery_charge" onkeyup="inputNumberFormat(this);"
                                                                       placeholder="" aria-label="" name="" value="${consignmentVO.delivery_charge}" <c:if test="${consignmentVO.delivery_type == '무료배송'}">readonly</c:if>>
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text" id="delivery_cost">원</span> <span id="freeDelivery" style="margin-top: 15px; margin-left: 5px; display: none">이상 무료배송</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control text-bold-700 text-left"
                                                       for="delivery_type">묶음배송<span class="danger">*</span></label>
                                                <div class="custom-radio">
                                                    <input type="radio" class="custom-control-input" name="bundle_delivery"
                                                           id="able" checked="" value="가능">
                                                    <label class="custom-control-label" for="able">가능</label>
                                                </div>
                                                <div class="custom-radio">
                                                    <input type="radio" class="custom-control-input" name="bundle_delivery"
                                                           id="disable" value="불가능">
                                                    <label class="custom-control-label" for="disable">불가능</label>
                                                </div>
                                                <span style="color: dodgerblue; font-size: 10px; margin-top: 3px">출고지 정보가 같은 상품만 묶음배송 할 수 있습니다.</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 반품/교환 -->
            <section>
                <div class="card">
                    <div class="card-header pb-0">
                        <h4 class="card-title blue">반품/교환</h4>
                        <hr class="bg-blue mb-0">
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="row mb-1">
                                <div class="col-md-6">
                                    <span class="float-left"><i class="feather icon-alert-circle"></i> 반품/교환지를설정하세요</span>
                                </div>
                            </div>
                            <div class="form form-horizontal">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="sample6_postcode1">반품/교환지 <span
                                                        class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <div class="input-group mb-1">
                                                        <input type="text" class="form-control" id="sample6_postcode1" placeholder="우편번호" value="15878" readonly>
                                                        <div class="input-group-append" id="button-addon2">
                                                            <input type="button" class="btn btn-blue" onclick="sample6_execDaumPostcode1();" value="주소검색"><br>
                                                        </div>
                                                    </div>
                                                    <input type="text" class="form-control mb-1" id="sample6_address1" placeholder="주소" value="경기 군포시 번영로 82" readonly><br>
                                                    <input type="text" class="form-control" id="sample6_detailAddress1" placeholder="상세주소" value="복합물류터미널H동 4층 반품구조대">
                                                    <div class="help-block"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 label-control text-bold-700 text-left"
                                                       for="return_charge">반품 배송비 <span
                                                        class="danger">*</span></label>
                                                <div class="col-md-10">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="" onkeyup="inputNumberFormat(this);"
                                                               aria-label="" name="" id="return_charge" value="${consignmentVO.return_charge}">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text">원</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div class="row">
                <div class="col-md-6">
<%--                    <button type="button" class="btn btn-outline-secondary btn-min-width" data-toggle="modal" data-target="#preview" onclick="preview()">미리보기</button>--%>
                </div>
                <div class="col-md-6">
                    <div class="float-right">
                        <button type="button" class="btn btn-light btn-min-width mr-1" onclick="window.history.back()">취소</button>
                        <button type="submit" class="btn btn-blue btn-min-width" onclick="updateProduct();">저장</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade text-center" id="preview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
    <div class="modal-dialog modal-l" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h3 class="modal-title" id="modal-add-title">미리보기</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p id="pre_grade"></p>
                <p id="pre_opinion"></p>
                <p id="pre_category"></p>
                <p id="pre_product_name"></p>
                <p id="pre_product_price"></p>
                <p id="pre_delivery_company"></p>
                <p id="pre_delivery_cost"></p>
                <p id="pre_delivery_once"></p>
                <p id="pre_return_cost"></p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal" aria-label="Close">확인</button>
            </div>
        </div>
    </div>
</div>

    <!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

    <!-- BEGIN: Vendor JS-->
<%--    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/vendors.min.js"></script>--%>
    <!-- BEGIN Vendor JS-->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- BEGIN: Page Vendor JS-->
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
    <%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>--%>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>

    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/toggle/bootstrap-checkbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/forms/toggle/switchery.min.js"></script>
    <!-- END: Page Vendor JS-->

    <script type="text/javascript">

        $(document).ready(function () {
            $('#delivery_company').val('${consignmentVO.delivery_company}');
            $('#delivery_type').val('${consignmentVO.delivery_type}');
            $('#product_grade').val('${consignmentVO.product_grade}');
            $('#topName').val(${consignmentVO.parent_category_id});
            clickBtn('${consignmentVO.product_state}');

            var htmlString = '';
            var params = {
                'category_id': document.getElementById('topName').options[document.getElementById('topName').selectedIndex].value
            }
            $.ajax({
                url : "${pageContext.request.contextPath}/common/category.json",
                type : "POST",
                data: params,
                success : function(result) {
                    for (var i=0; i<result.categoryList.length; i++) {
                        htmlString += '<option + value="'+result.categoryList[i].category_id + '">' + result.categoryList[i].category_name + '</option>';
                    }
                    document.getElementById("middle").innerHTML = htmlString;
                    $('#middle').val(${consignmentVO.category_id});
                }
            });

        });


        function clickBtn(state) {
            // ar class_by_id = $('#test_id').attr('class');

            if (state == '판매중') {
                $('#switch1').attr('class','btn btn-primary btn-min-width');
                $('#switch2').attr('class','btn btn-outline-secondary btn-min-width');
                $('#switch3').attr('class','btn btn-outline-secondary btn-min-width');
            } else if (state == '판매중지') {
                $('#switch1').attr('class','btn btn-outline-secondary btn-min-width');
                $('#switch2').attr('class','btn btn-danger btn-min-width');
                $('#switch3').attr('class','btn btn-outline-secondary btn-min-width');
            } else if (state == '품절') {
                $('#switch1').attr('class','btn btn-outline-secondary btn-min-width');
                $('#switch2').attr('class','btn btn-outline-secondary btn-min-width');
                $('#switch3').attr('class','btn btn-dark btn-min-width');
            }
        }


        function change_consignReason() {
            if ($("#consign_reason option:selected").val() != '직접입력') {
                document.getElementById('inputConsignReason').style.display = 'none';
            } else if ($("#consign_reason option:selected").val() == '직접입력') {
                document.getElementById('inputConsignReason').style.display = '';
            }
        }

        function updateProduct() {
            var product_state = ''
            if ($('#switch1').attr('class') == 'btn btn-primary btn-min-width') {
                product_state = '판매중';
            } else if($('#switch2').attr('class') == 'btn btn-danger btn-min-width') {
                product_state = '판매중지';
            } else if ($('#switch3').attr('class') == 'btn btn-dark btn-min-width') {
                product_state = '품절';
            }

            if (${consignmentVO.product_state== '품절'}) {
                if (product_state == '판매중') {
                    alert("품절상태에서 판매중으로 변경 불가능합니다.");
                    return;
                } else if (product_state == '판매중지') {
                    alert("품절상태에서 판매중지로 변경 불가능합니다.");
                    return;
                }
            }

            if(product_state == ''){
                product_state = '${consignmentVO.product_state}'
            }
            var params = {
                "product_id": '${consignmentVO.product_id}',
                "category_id": $("#middle option:selected").val(),
                "product_name": document.getElementById('product_name').value,
                "forwarding_destination_zip": document.getElementById('sample6_postcode').value,
                "forwarding_destination_addr1": document.getElementById('sample6_address').value,
                "forwarding_destination_addr2": document.getElementById('sample6_detailAddress').value,
                "delivery_company": $("#delivery_company").val(),
                "delivery_type": $("#delivery_type").val(),
                "delivery_charge": document.getElementById('delivery_charge').value,
                "return_location_zip": document.getElementById('sample6_postcode1').value,
                "return_location_addr1": document.getElementById('sample6_address1').value,
                "return_location_addr2": document.getElementById('sample6_detailAddress1').value,
                "return_charge": document.getElementById('return_charge').value,
                "product_count" : '${consignmentVO.product_count}',
                "product_vprice" : '${consignmentVO.product_vprice}',
                "product_grade" : '${consignmentVO.product_grade}',
                "inspection_opinion" : $('#inspection_opinion').val(),
                "product_state" : product_state,
                "bundle_delivery" : $('input[name="bundle_delivery"]:checked').val()
            }

            $.ajax({
                url : "${pageContext.request.contextPath}/keeping/updateProductInspectionInfo.json",
                type : "POST",
                data: params,
                success : function(result) {
                    if (result.resultCode == "success") {
                        alert(result.message)
                        move('keepProductDetail.do?product_id=${consignmentVO.product_id}', '');
                    } else if (result.resultCode == "fail") {
                        alert(result.message);
                    } else {
                        alert(result.message);
                    }
                }
            });
        }

        function changeMiddle(){
            var htmlString = '';
            var params = {
                'category_id': document.getElementById('topName').options[document.getElementById('topName').selectedIndex].value
            }
            if(params.category_id == ''){
                htmlString += '<option selected value="">전체</option>';
                document.getElementById("middle").innerHTML = htmlString;
                return;
            }
            $.ajax({
                url : "${pageContext.request.contextPath}/common/category.json",
                type : "POST",
                data: params,
                success : function(result) {
                    htmlString += '<option selected value="">전체</option>';

                    for (var i=0; i<result.categoryList.length; i++) {
                        htmlString += '<option + value="'+result.categoryList[i].category_id + '">' + result.categoryList[i].category_name + '</option>';
                    }
                    document.getElementById("middle").innerHTML = htmlString;
                }
            });
        }

        function changeDeliveryType(){
            if($('#delivery_type').val() =='무료배송'){
                $('#delivery_charge').val('');
                $('#delivery_charge').prop("readonly",true);
                document.getElementById('freeDelivery').style.display = 'none';
            } else if ($('#delivery_type').val() =='조건부 무료배송') {
                document.getElementById('freeDelivery').style.display = '';
                $('#delivery_charge').prop("readonly",false);
            } else if ($('#delivery_type').val() == '유료배송') {
                document.getElementById('freeDelivery').style.display = 'none';
                $('#delivery_charge').prop("readonly",false);
            }
        }

        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    // document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }

        function sample6_execDaumPostcode1() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode1').value = data.zonecode;
                    document.getElementById("sample6_address1").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    // document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }

        function preview() {
            document.getElementById('pre_grade').innerText = '검수 등급: ' + $("#product_grade option:selected").val();
            document.getElementById('pre_opinion').innerText = '등급 의견: ' + document.getElementById('inspection_opinion').value;
            document.getElementById('pre_category').innerText = '카테고리: ' + $("#topName option:selected").text() + '>' + $("#middle option:selected").text();
            document.getElementById('pre_product_name').innerText = '상품명: ' +  document.getElementById('product_name').value;
            document.getElementById('pre_product_price').innerText = '판매 가격: ' + document.getElementById('product_vprice').value;
            if ($("#delivery_company option:selected").val() != null && $("#delivery_company option:selected").val() != '') {
                document.getElementById('pre_delivery_company').innerText = '배송 택배사: ' + $("#delivery_company option:selected").val();
            }
            if (document.getElementById('delivery_cost').value != null && document.getElementById('delivery_cost').value != '') {
                document.getElementById('pre_delivery_cost').innerText = '배송비: ' + document.getElementById('delivery_cost').value;
            }
            document.getElementById('pre_delivery_once').innerText = '묶음 배송: ' + $('input[name="bundle_delivery"]:checked').val();
            if (document.getElementById('return_charge').value != null && document.getElementById('return_charge').value != '') {
                document.getElementById('pre_return_cost').innerText = '반품 배송비: ' + document.getElementById('return_charge').value;
            }
        }

    </script>

    <!-- BEGIN: Theme JS-->
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app-menu.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/switch.js"></script>
    <!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
