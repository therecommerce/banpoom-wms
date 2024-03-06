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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-invoice.css">
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

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-6 col-12">
                <h3 class="content-header-title mb-50">셀러회원 정보</h3>
            </div>
            <div class="content-header-right col-md-6 col-12">
                <div class="float-md-right" style="margin-left: 25px">
                    <c:if test="${userManagementVO.account_dormant != '2'}">
                        <button class="nav-link btn btn-sm btn-outline-blue" type="button" data-toggle="modal" data-target="#modal-6">강퇴하기</button>
                    </c:if>
                </div>
                <div class="float-md-right" style="margin-left: 25px">
                    <button class="nav-link btn btn-sm btn-outline-blue" data-toggle="modal" data-target="#modal-2" type="button">등급 변경</button>
                </div>
                <c:if test="${userManagementVO.business_info_flag == 1}">
                <div class="float-md-right">
                    <button class="nav-link btn btn-sm btn-outline-blue" type="button" style="background-color: blue" data-toggle="modal" data-target="#modal-1">사업자등록 승인</button>
                </div>
                </c:if>
            </div>
        </div>
        <hr>
        <div class="content-body">
            <!-- 상태 정의 -->
            <!-- 검색 필터 -->
            <section>
                <div class="border border-light bg-white rounded p-2 mb-2">
                    <form class="form form-horizontal form-bordered">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-2 border-right-blue-grey border-right-lighten-5">
                                    <div>${userManagementVO.vip_grade}</div>
                                    <div><span style="font-size: large;">${userManagementVO.account_name}(${userManagementVO.account_id})</span>
                                        <c:if test="${userManagementVO.account_dormant == 0}"><span class="badge bg-blue bg-lighten-4 width-100 d-inline-block">휴면</span></c:if>
                                        <c:if test="${userManagementVO.account_dormant == 1}"><span class="badge bg-success bg-lighten-2 width-100 d-inline-block">정상</span></c:if>
                                        <c:if test="${userManagementVO.account_dormant == 2}"><span class="badge bg-blue-grey bg-lighten-2 width-100 d-inline-block">탈퇴</span></c:if>
                                        </div>
                                        <c:if test="${userManagementVO.business_info_flag == 0}"><div>사업자 미인증</div></c:if>
                                        <c:if test="${userManagementVO.business_info_flag == 1}"><div>사업자 승인대기</div></c:if>
                                        <c:if test="${userManagementVO.business_info_flag == 2}"><div>사업자 인증</div></c:if>
                                </div>
                                <div class="col-md-2">
                                    <div>정산예정 금액</div>
                                    <div><fmt:formatNumber type="number" value="${userManagementVO.cal_predict_price}"/>원</div>
                                </div>
                                <div class="col-md-2">
                                    <div>판매중인 위탁상품</div>
                                    <div><fmt:formatNumber type="number" value="${userManagementVO.consignment_sale_count}"/>개</div>
                                </div>
                                <div class="col-md-2">
                                    <div>판매중인 직접등록상품</div>
                                    <div><fmt:formatNumber type="number" value="${userManagementVO.direct_sale_count}"/>개</div>
                                </div>
                                <div class="col-md-1">
                                    <div>기부 건수</div>
                                    <div><fmt:formatNumber type="number" value="${userManagementVO.donate_count}"/>개</div>
                                </div>
                                <div class="col-md-1">
                                    <div>폐기 건수</div>
                                    <div><fmt:formatNumber type="number" value="${userManagementVO.discard_count}"/>개</div>
                                </div>
                                <div class="col-md-1">
                                    <div>회수 건수</div>
                                    <div><fmt:formatNumber type="number" value="${userManagementVO.recovery_count}"/>개</div>
                                </div>
<%--                                <input type="hidden" class="search_tag" id="account_id" name="0" value="${userManagementVO.account_id}"/>--%>
                            </div>
                        </div>
                    </form>
                </div>
            </section>

            <!-- 리스트 -->
            <section>
                <div class="card">
                    <ul class="nav nav-tabs page-table-taps mb-4">
                        <li>
                            <a class="nav-link active" type="button" onclick="javascript:showTap(this);">회원정보</a>
                        </li>
                        <li>
                            <a class="nav-link" type="button" onclick="javascript:showTap(this);">사업자정보</a>
                        </li>
                        <li>
                            <a class="nav-link" type="button" onclick="javascript:showTap(this);">위탁 상품 정보</a>
                        </li>
                        <li>
                            <a class="nav-link" type="button" onclick="javascript:showTap(this);">직접등록상품 정보</a>
                        </li>
                        <li>
                            <a class="nav-link" type="button" onclick="javascript:showTap(this);">정산 내역</a>
                        </li>
                        <li>
                            <a class="nav-link" type="button" onclick="javascript:showTap(this);">스토어 문의내역</a>
                        </li>
                        <li>
                            <a class="nav-link" type="button" onclick="javascript:showTap(this);">정보수정이력</a>
                        </li>
                    </ul>
                    <div class="card-content">

                        <div class="card-body" id="cardBody">

                        </div>
                    </div>
                </div>
                <div class="border-top-blue-grey border-top-lighten-5 text-muted text-center">
                    <button type="button" class="btn btn-blue btn-lg btn-min-width"><a onclick="move('sellerManagement.do', '');">목록</a></button>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
        <!-- END: Content-->

<!-- Modal-1 -->
<div class="modal fade text-left" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel1">사업자등록 승인</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                <h5>사업자등록을 승인하시겠습니까?</h5>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="approvalBusinessInfo();">확인</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal-2 -->
<div class="modal fade text-left" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel2">등급 변경</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                <h5>선택한 회원의 등급을 아래 등급으로 변경하시겠습니까?</h5>
                <%--                <p>중지 시에 사용자의 화면에서 상품은 표시되지 않습니다.</p>--%>
            </div>
            <c:choose>
                <c:when test="${userManagementVO.vip_grade == '일반'}">
                    <div style="margin-left: 10px;">
                        <input type="radio" value="일반" id="normal" name="grade" checked/>&nbsp;&nbsp;<label for="normal">일반</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="프리미엄" id="premium" name="grade" />&nbsp;&nbsp;<label for="premium">프리미엄</label>
                    </div>
                </c:when>
                <c:when test="${userManagementVO.vip_grade == '프리미엄'}">
                    <div style="margin-left: 10px;">
                        <input type="radio" value="일반" id="normal" name="grade" />&nbsp;&nbsp;<label for="normal">일반</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="프리미엄" id="premium" name="grade" checked/>&nbsp;&nbsp;<label for="premium">프리미엄</label>
                    </div>
                </c:when>
                <c:otherwise>
                    <div style="margin-left: 10px;">
                        <input type="radio" value="일반" id="normal" name="grade" />&nbsp;&nbsp;<label for="normal">일반</label>
                    </div>
                    <div style="margin-left: 10px">
                        <input type="radio" value="프리미엄" id="premium" name="grade" />&nbsp;&nbsp;<label for="premium">프리미엄</label>
                    </div>
                </c:otherwise>
            </c:choose>


            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="changeVipGrade();">확인</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal-1 -->
<div class="modal fade text-left" id="modal-3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel3">판매 중지</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                <h5>해당 상품을 판매 중지하시겠습니까?</h5>
                <p>중지 시에 사용자의 화면에서 상품은 표시되지 않습니다.</p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="changeProductStatus('판매중지');">확인</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal-2 -->
<div class="modal fade text-left" id="modal-4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel4">판매 상태로 변경</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center my-2">
                    <h5>해당 상품을 판매 상태로 변경하시겠습니까?</h5>
                    <p>변경시에 사용자의 화면에 상품이 노출됩니다.</p>
                </div>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="changeProductStatus('판매중');">확인</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal-3 -->
<div class="modal fade text-left" id="modal-5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel5"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel5">품절</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center my-2">
                    <h5>해당 상품을 품절 처리하시겠습니까?</h5>
                    <p class="mb-0">품절 시 더 이상 해당 상품을 판매할 수 없습니다.</p>
                    <p>일시적인 판매중지를 원하는 경우 판매중지를 활용하세요.</p>
                </div>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" name="product_state" onclick="javascript:changeProductStatus('품절');return;">확인</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal-4 -->
<div class="modal fade text-left" id="modal-6" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel22" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h3 class="modal-title" id="myModalLabel22">강퇴하기</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="btnReport">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form>
                <div class="modal-body">
                    <p><h5>해당 회원을 강제 탈퇴하시겠습니까? 사유를 작성해 주세요.</h5></p>
                    <p>강퇴 사유<span class="danger">*</span></p>
                    <div class="row" style="margin-left: 20px">
                        <div class="custom-control custom-radio mb-30">
                            <input type="radio" class="custom-control-input"
                                   name="ban_reason" id="reportRadio1" value="허위 상품/정보 게시" checked />
                            <label class="custom-control-label"
                                   for="reportRadio1">허위 상품/정보 게시</label>
                        </div>
                        <div class="custom-control custom-radio mb-50">
                            <input type="radio" class="custom-control-input"
                                   name="ban_reason" id="reportRadio2" value="욕설/비방글 게시" />
                            <label class="custom-control-label"
                                   for="reportRadio2" style="margin-left: 15px">욕설/비방글 게시</label>
                        </div>
                        <div class="custom-control custom-radio mb-50">
                            <input type="radio" class="custom-control-input"
                                   name="ban_reason" id="reportRadio3" value="잦은 배송 지연" />
                            <label class="custom-control-label"
                                   for="reportRadio3">잦은 배송 지연</label>
                        </div>
                    </div>

                    <div class="row" style="margin-left: 20px">
                        <div class="custom-control custom-radio mb-50">
                            <input type="radio" class="custom-control-input"
                                   name="ban_reason" id="reportRadio4" value="악성 민원" />
                            <label class="custom-control-label"
                                   for="reportRadio4">악성 민원</label>
                        </div>
                        <div class="custom-control custom-radio mb-50">
                            <input type="radio" class="custom-control-input"
                                   name="ban_reason" id="reportRadio5" value="허위 상품 판매" />
                            <label class="custom-control-label"
                                   for="reportRadio5">허위 상품 판매</label>
                        </div>
                        <div class="custom-control custom-radio mb-50">
                            <input type="radio" class="custom-control-input"
                                   name="ban_reason" id="reportRadio6" value="허위송장 등록" />
                            <label class="custom-control-label"
                                   for="reportRadio6">허위송장 등록</label>
                        </div>
                    </div>

                    <div class="custom-control custom-radio mb-100" style="margin-left: 20px">
                        <input type="radio" class="custom-control-input"
                               name="ban_reason" id="reportRadio7" value="서비스 이용약관에 위배되는 행위를 한 경우" />
                        <label class="custom-control-label" style="width: 250px"
                               for="reportRadio7">서비스 이용약관에 위배되는 행위를 한 경우</label>
                    </div>
                    <p><h5>강퇴 사유 안내</h5></p>
                    <textarea class="form-control" id="ban_message" rows="5"
                              placeholder="작성된 내용을 고객의 메일로 전송합니다."></textarea>
                </div>
                <div class="modal-footer justify-content-center">
                    <input type="reset" class="btn btn-light btn-min-width" data-dismiss="modal" value="취소">
                    <input type="button" class="btn btn-blue btn-min-width"
                           value="확인" onclick="banUser();">
                </div>
            </form>
        </div>
    </div>
</div>


<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="true" />


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
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/forms/checkbox-radio.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
<!-- END: Page JS-->
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>


<script type="text/javascript">

    $(document).ready(function() {
        changeCardBody('회원정보');
    });

    function inputTagEvent(){

        $('.pickadate-selectors').pickadate({
            labelMonthNext: 'Next month',
            labelMonthPrev: 'Previous month',
            labelMonthSelect: 'Pick a Month',
            labelYearSelect: 'Pick a Year',
            selectMonths: true,
            selectYears: true
        });

        $("#selectAll").click(function () {
            $('input:checkbox[name="selectOne"]').each(function () {
                if ($("#selectAll").is(":checked")) $("input[name=selectOne]").prop("checked", true);
                else $("input[name=selectOne]").prop("checked", false);
            });
        });

        $('input:checkbox[name="selectOne"]').each(function () {
            $("input[name=selectOne]").click(function () {
                var total = $("input[name=selectOne]").length;
                var checked = $("input[name=selectOne]:checked").length;

                if (total != checked) {
                    $("#selectAll").prop("checked", false);
                }
                else {
                    $("#selectAll").prop("checked", true);
                }
            });
        });

        $("#selectAll1").click(function () {
            $('input:checkbox[name="selectOne1"]').each(function () {
                if ($("#selectAll1").is(":checked")) $("input[name=selectOne1]").prop("checked", true);
                else $("input[name=selectOne1]").prop("checked", false);
            });
        });

        $('input:checkbox[name="selectOne1"]').each(function () {
            $("input[name=selectOne1]").click(function () {
                var total = $("input[name=selectOne1]").length;
                var checked = $("input[name=selectOne1]:checked").length;

                if (total != checked) {
                    $("#selectAll1").prop("checked", false);
                }
                else {
                    $("#selectAll1").prop("checked", true);
                }
            });
        });
    }

    function fn_tbl_render1(data, type, full, meta) {

        var title = null;

        if(meta.col == 3){
            if(full.product_price != null && full.product_price !='' && full.product_price !=0) {
                return full.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + '원';
            }else{
                return '-';
            }

        } else if(meta.col == 5) {
            switch (full.product_state) {
                case null :
                    return "";
                    break;
                case '픽업요청':
                    return '<span class="badge bg-info bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '반품구조대로 이동 중':
                    return '<span class="badge bg-amber bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '도착/입고':
                    return '<span class="badge bg-blue bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '검수완료':
                    return '<span class="badge bg-purple bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '판매중':
                    return '<span class="badge bg-cyan bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '품절':
                    return '<span class="badge bg-warning bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                default:
                    return '<span>' + full.product_state + '</span>'
                    break;
            }
        } else if (meta.col == 6) {
            if (full.product_grade == '' || full.product_grade == null) {
                return '-';
            } else if (full.product_grade != '' && full.product_grade != null) {
                return full.product_grade + '급';
            }
        } else if(meta.col== 7){
            if(full.product_vprice != null && full.product_vprice !='' && full.product_vprice !=0) {
                return full.product_vprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + '원';
            }else{
                return '-';
            }
        } else if(meta.col == 9){
            switch (full.product_state) {
                case null :
                    return "";
                    break;
                case '픽업요청':
                case '반품구조대로 이동 중':
                case '도착/입고':
                case '검수완료':
                    return `<button type="text" class="btn btn-sm btn-outline-blue" onclick="location.href='consignment/consignmentDetail.do?product_id=`+full.product_id+`'">상세보기</button>`;return '<span class="badge bg-cyan bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '판매중':
                case '품절':
                    return `<button type="text" class="btn btn-sm btn-outline-blue" onclick="location.href='consignment/consignmentDetail.do?product_id=`+full.product_id+`&isSelling=true'">상세보기</button>`;return '<span class="badge bg-cyan bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
            }
        } else {
            if(data != null) {
                return data;
            } else{
                return "";
            }
        }
        // return data;
    }

    function fn_tbl_render2(data, type, full, meta) {

        var title = null;

        if(meta.col == 0 ){
            return '<input type="checkbox" id="selectOneChk" name="selectOneChk" value="' + full.product_id + '" />';
        }
        else if(meta.col == 4){
            if(full.product_price != null && full.product_price !='' && full.product_price !=0) {
                return full.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + '원';
            }else{
                return '-';
            }

        } else if(meta.col == 6) {
            switch (full.product_state) {
                case null :
                    return "";
                    break;
                case '픽업요청':
                    return '<span class="badge bg-info bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '반품구조대로 이동 중':
                    return '<span class="badge bg-amber bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '도착/입고':
                    return '<span class="badge bg-blue bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '검수완료':
                    return '<span class="badge bg-purple bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '판매중':
                    return '<span class="badge bg-cyan bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '품절':
                    return '<span class="badge bg-warning bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                case '판매중지':
                    return '<span class="badge bg-secondary bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
                    break;
                default:
                    return '<span>' + full.product_state + '</span>'
                    break;
            }
        }  else if(meta.col == 8) {
            return `<button type="text" class="btn btn-sm btn-outline-blue" onclick="location.href='direct/productManagementEdit.do?product_id=`+full.product_id+`'">수정</button>`;
        } else {
            if(data != null) {
                return data;
            } else{
                return "";
            }
        }
        // return data;
    }

    function changeVipGrade() {
        let grade = $('input[name=grade]:checked').val();

        let params = {
            'account_id': '${userManagementVO.account_id}',
            'vip_grade': grade
        }

        $.ajax({
            url: "${pageContext.request.contextPath}/changeVipGrade.json",
            type : "POST",
            data : JSON.stringify(params),
            contentType : "application/json;",
            success : function(result) {
                if (result.resultCode == "success") {
                    alert(result.message);
                    location.reload();
                } else if (result.resultCode == "fail") {
                    alert(result.message);
                } else{
                    alert(result.message);
                }
            }
        });
    }

    function approvalBusinessInfo() {


        var params = {
            'business_info_flag': 2,
            'account_id': '${userManagementVO.account_id}'
        }

        $.ajax({
            url: "${pageContext.request.contextPath}/approvalBusinessInfo.json",
            type : "POST",
            data : JSON.stringify(params),
            contentType : "application/json;",
            success : function(result) {
                if (result.resultCode == "success") {
                    alert(result.message);
                    location.reload();
                } else if (result.resultCode == "fail") {
                    alert(result.message);
                } else{
                    alert(result.message);
                }
            }
        });
    }

    function showTap(tabControl)
    {
        $('a[class="nav-link active"]').each(function () {
            if($(this).attr("type") == 'button') {
                $(this).attr("class", "nav-link");
            }
        });
        $(tabControl).attr("class", "nav-link active");
        changeCardBody($(tabControl).text());
    }

    function changeCardBody(name){
        switch (name){
            case '회원정보' :
                $('#cardBody').html(`    <div class="float-md-right" style="margin-right: 25px;">
                            <button class="nav-link btn btn-sm btn-outline-blue" type="button">수정</button>
                        </div><div class="card" id="tab-menu0">
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">회원 번호</dt>
                                                    <dd class="col-sm-10">${userManagementVO.account_no}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">회원 상태</dt>
                                                    <dd class="col-sm-10">
                                                        <c:if test="${userManagementVO.account_dormant == 0}"><span class="badge bg-blue bg-lighten-4 width-100 d-inline-block">휴면</span></c:if>
                                                        <c:if test="${userManagementVO.account_dormant == 1}"><span class="badge bg-success bg-lighten-2 width-100 d-inline-block">정상</span></c:if>
                                                        <c:if test="${userManagementVO.account_dormant == 2}"><span class="badge bg-blue-grey bg-lighten-2 width-100 d-inline-block">탈퇴</span></c:if>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">사업자 승인</dt>
                                                    <dd class="col-sm-10">
                                                        <c:if test="${userManagementVO.business_info_flag == 0}"><div>사업자 미등록</div></c:if>
                                                        <c:if test="${userManagementVO.business_info_flag == 1}"><div>사업자 승인대기</div></c:if>
                                                        <c:if test="${userManagementVO.business_info_flag == 2}"><div>사업자 승인</div></c:if>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">회원 등급</dt>
                                                    <dd class="col-sm-10">${userManagementVO.vip_grade}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">회원가입 일</dt>
                                                    <dd class="col-sm-10">${userManagementVO.reg_dt}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">최종 로그인</dt>
                                                    <dd class="col-sm-10">${userManagementVO.last_login}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <hr>
                                            <h4 class="card-title">계정정보</h4>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">아이디</dt>
                                                    <dd class="col-sm-10">${userManagementVO.account_id}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">이름</dt>
                                                    <dd class="col-sm-10">${userManagementVO.account_name}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">휴대폰 번호</dt>
                                                <dd class="col-sm-10">${userManagementVO.account_phone}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">이메일 주소</dt>
                                                    <dd class="col-sm-12">${userManagementVO.account_email} <button class="btn btn-sm btn-outline-blue" type="button">임시 비밀번호 발송</button></dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>`);
                break;
            case '사업자정보' :
                $('#cardBody').html(`<div class="float-md-right" style="margin-right: 25px;">
                                <button class="nav-link btn btn-sm btn-outline-blue" type="button">수정</button>
                            </div>
                             <div class="card" id="tab-menu1">
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">사업자 등록번호</dt>
                                                    <dd class="col-sm-10">${userManagementVO.company_num}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">사업자 등록증</dt>
                                                    <dd class="col-sm-10">
                                                    `+ `<c:forEach items="${setBusinessImage}" var="setBusinessImage">
                                                        <li class="cursor-pointer pb-25">
                                                        <img src="${pageContext.request.contextPath}/file/down/image/${setBusinessImage}"
                                                        alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >
                                                        </li>
                                                        </c:forEach>` +`
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">통신판매업 신고번호</dt>
                                                    <dd class="col-sm-10">${userManagementVO.online_marketing_num}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">통신판매업 신고증</dt>
                                                    <dd class="col-sm-10">
                                                    `+ `<c:forEach items="${setOnlineMarketingImage}" var="setOnlineMarketingImage">
                                                        <li class="cursor-pointer pb-25">
                                                        <img src="${pageContext.request.contextPath}/file/down/image/${setOnlineMarketingImage}"
                                                        alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >
                                                        </li>
                                                        </c:forEach>` +`
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">대표자명</dt>
                                                    <dd class="col-sm-10">${userManagementVO.chief_name}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">상호명</dt>
                                                    <dd class="col-sm-10">${userManagementVO.store_name}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">사업장 주소</dt>
                                                    <dd class="col-sm-10">(${userManagementVO.company_zip}) ${userManagementVO.company_addr1} ${userManagementVO.company_addr2}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-2">사업장 연락처</dt>
                                                    <dd class="col-sm-10">${userManagementVO.company_phone}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="">
                                                    <dt class="col-sm-3">이메일 주소(세금계산서 목적)</dt>
                                                    <dd class="col-sm-10">${userManagementVO.company_email}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <hr>
                                        <h4 class="card-title">스토어 정보</h4>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">스토어 명</dt>
                                                    <dd class="col-sm-10">마인브릿지</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">스토어 로고</dt>
                                                    <dd class="col-sm-10">
                                                    `+ `<c:forEach items="${setStoreImage}" var="setStoreImage">
                                                        <li class="cursor-pointer pb-25">
                                                        <img src="${pageContext.request.contextPath}/file/down/image/${setStoreImage}"
                                                        alt="Generic placeholder image" style="width: 125px;height: 125px;" onclick="window.open(this.src)" >
                                                        </li>
                                                        </c:forEach>` +`
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">스토어 소개</dt>
                                                    <dd class="col-sm-10">${userManagementVO.store_introduce}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <hr>
                                        <h4 class="card-title">정산계좌 정보</h4>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">은행</dt>
                                                    <dd class="col-sm-10">${userManagementVO.bank_name}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">계좌번호</dt>
                                                    <dd class="col-sm-10">${userManagementVO.account_num}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">예금주</dt>
                                                    <dd class="col-sm-10">${userManagementVO.depositor}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <hr>
                                        <h4 class="card-title">배송지 정보</h4>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">출고지 정보</dt>
                                                    <dd class="col-sm-10">${userManagementVO.forwarding_address}</dd>
                                                </dl>
                                            </div>
                                            <div class="col-md-6">
                                                <dl class="row">
                                                    <dt class="col-sm-2">반품지 정보</dt>
                                                    <dd class="col-sm-10">${userManagementVO.return_address}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <c:if test="${userManagementVO.business_info_flag == 0}"><div class="text-center">사업자 미인증 회원입니다.</div></c:if>
                            </div>`);
                break;
            case '위탁 상품 정보' :
                $('#cardBody').html(`<div class="card" id="tab-menu2">
                                <section>
                                    <div class="border border-light rounded p-2 mb-2">
                                        <form class="form form-horizontal form-bordered">
                                            <div class="form-body">
                                                <div class="row">
                                                    <div class="col-md-6 border-right-blue-grey border-right-lighten-5">
                                                        <div class="form-group row">
                                                            <label class="col-md-2 label-control text-left"
                                                                   for="searchProduct1">검색어</label>
                                                            <div class="col-md-10 border-left-0">
                                                                <div class="row">
                                                                    <div class="form-group col-md-4 border-bottom-0">
                                                                        <label class="sr-only" for="searchProduct1">상품명</label>
                                                                        <select id="searchProduct" name="interested"
                                                                                class="form-control">
                                                                            <option value="상품명" selected="">상품명</option>
                                                                            <option value="상품번호">상품번호</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-8 border-bottom-0">
                                                                        <input type="text" id="searchValue" class="form-control"
                                                                               placeholder="상품명을 입력하세요" name="">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group row">
                                                            <label class="col-md-2 label-control text-left"
                                                                   for="topName">카테고리</label>
                                                            <div class="col-md-10 border-left-0">
                                                                <div class="row">
                                                                    <div class="form-group col-md-6 border-bottom-0">
                                                                        <select id="topName" class="search_tag form-control" name="11" onchange="changeMiddle();">
                                                                            <option selected value="">전체</option>
                                                                            <c:forEach items="${categoryName}" var="categoryName">
                                                                                <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-6 border-bottom-0">
                                                                        <select id="middle" name="10" class="search_tag form-control">
                                                                            <option selected value="">전체</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group row" style="height: 74px">
                                                            <label class="col-md-2 label-control text-left"
                                                                   for="checkbox" id="selectStatus" name="selectStatus">상품상태</label>
                                                            <div class="col-md-10 border-left-0" id="checkbox">
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectAll" checked id="selectAll" value="전체">
                                                                    <label class="custom-control-label" for="selectAll">전체</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne" id="checkSearch1" value="픽업요청">
                                                                    <label class="custom-control-label" for="checkSearch1" >픽업요청</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne" id="checkSearch2" value="반품구조대로 이동 중">
                                                                    <label class="custom-control-label" for="checkSearch2" >반품구조대로 이동 중</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne" id="checkSearch3" value="도착/입고">
                                                                    <label class="custom-control-label" for="checkSearch3" >도착/입고</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne" id="checkSearch4" value="검수완료">
                                                                    <label class="custom-control-label" for="checkSearch3" >검수완료</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne" id="checkSearch5" value="판매중">
                                                                    <label class="custom-control-label" for="checkSearch3" >판매중</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne" id="checkSearch6" value="품절">
                                                                    <label class="custom-control-label" for="checkSearch3" >품절</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group row" style="height: 74px">
                                                            <label class="col-md-2 label-control text-left"
                                                                   for="checkbox" id="selectStatus" name="selectStatus">상품등급</label>
                                                            <div class="col-md-10 border-left-0" id="">
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectAll1" checked id="selectAll1" value="전체">
                                                                    <label class="custom-control-label" for="selectAll1">전체</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne1" value="A" id="checkAll1">
                                                                    <label class="custom-control-label" for="checkAll1" >A급</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne1" value="B" id="checkAll2">
                                                                    <label class="custom-control-label" for="checkAll2">B급</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne1" value="C" id="checkAll3">
                                                                    <label class="custom-control-label" for="checkAll3">C급</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne1" value="D" id="checkAll4">
                                                                    <label class="custom-control-label" for="checkAll4">D급</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne1" value="" id="checkAll5">
                                                                    <label class="custom-control-label" for="checkAll5">-</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group row last">
                                                            <label class="col-md-1 label-control text-left">조회기간</label>
                                                            <div class="col-md-11 border-left-0">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="btn-group btn-block" role="group" aria-label="">
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn1" value="" onclick="changeDateTime(this.id, 0);">오늘</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn2" value="" onclick="changeDateTime(this.id, -7)">1주일</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn3" value="" onclick="changeDateTime(this.id, -30)">1개월</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn4" value="" onclick="changeDateTime(this.id, -90)">3개월</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn5" value="" onclick="changeDateTime(this.id, -180)">6개월</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn6" value="" onclick="changeDateTime(this.id, -365)">1년</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn7" onclick="changeDateTime(this.id, 9999)">직접입력</button>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="d-flex justify-content-start align-items-start">
                                                                            <div class="d-flex align-items-center justify-content-start">
                                                                                <div class="input-group">
                                                                                    <input type='text' id="start_dt" name="12"
                                                                                           class="search_tag form-control pickadate-selectors"
                                                                                           placeholder="" value=""/>
                                                                                    <div class="input-group-append">
                                                                                    <span class="input-group-text">
                                                                                        <span class="fa fa-calendar-o"></span>
                                                                                    </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <span class="font-weight-bold mx-1 pt-50">~</span>
                                                                            <div class="d-flex align-items-center justify-content-start">
                                                                                <div class="input-group">
                                                                                    <input type='text' id="end_dt" name="13"
                                                                                           class="search_tag form-control pickadate-selectors"
                                                                                           placeholder="" value=""/>
                                                                                    <div class="input-group-append">
                                                                                    <span class="input-group-text">
                                                                                        <span class="fa fa-calendar-o"></span>
                                                                                    </span>
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
                                            <div class="form-actions center">
                                                <button type="button" class="btn btn-outline-light btn-min-width mr-1" onclick="javascript:fn_reset();">초기화</button>
                                                <button type="button" class="btn btn-outline-blue btn-min-width" onclick="javascript:fn_search('위탁 상품 정보')">검색</button>
                                            </div>
                                        </form>
                                    </div>
                                </section>
                                <section>
                                    <div class="card">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <!-- datatable started -->
                                                <div class="table-responsive">
                                                    <table id="user_data_table" class="table table-striped table-hover">
                                                        <thead class="text-center">
                                                        <tr>
                                                            <th><span class="align-middle">상품번호</span></th>
                                                            <th>카테고리</th>
                                                            <th class="text-center">상품명</th>
                                                            <th class="col-md-6">상품가격</th>
                                                            <th class="text-center">상품수량</th>
                                                            <th class="text-center">상품 상태</th>
                                                            <th class="text-center">등급</th>
                                                            <th class="text-center">부메랑 판매가격</th>
                                                            <th class="text-center">판매 등록일</th>
                                                            <th></th>
                                                        </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
`);
                var columnFields = ["product_id", "category_name", "product_name", "product_price","product_count", "product_state","product_grade","product_vprice","product_selling_dt","seller","category_id","parent_category_id","start_dt","end_dt"];
                var columWidths = [30, 80, 100, 80, 80, 80, 80, 80, 80,80,0,0,0,0];

                init_datatable("${pageContext.request.contextPath}/sellerManagementEdit_consignment.json", columnFields, columWidths, fn_tbl_render1, '${userManagementVO.account_id}');

                break;
            case '직접등록상품 정보' :
                $('#cardBody').html(`<div class="card" id="tab-menu3">
                                <section>
                                    <div class="border border-light rounded p-2 mb-2">
                                        <form class="form form-horizontal form-bordered">
                                            <div class="form-body">
                                                <div class="row">
                                                    <div class="col-md-4 border-right-blue-grey border-right-lighten-5">
                                                        <div class="form-group row">
                                                            <label class="col-md-2 label-control text-left"
                                                                   for="searchProduct">검색어</label>
                                                            <div class="col-md-10 border-left-0">
                                                                <div class="row">
                                                                    <div class="form-group col-md-4 border-bottom-0">
                                                                        <label class="sr-only" for="searchValue">상품명</label>
                                                                        <select id="searchProduct" name="interested"
                                                                                class="form-control">
                                                                            <option value="상품명" selected="">상품명</option>
                                                                            <option value="상품번호">상품번호</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-8 border-bottom-0">
                                                                        <input type="text" id="searchValue" class="form-control"
                                                                               placeholder="상품명을 입력하세요" name="">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group row">
                                                            <label class="col-md-2 label-control text-left"
                                                                   for="topName">카테고리</label>
                                                            <div class="col-md-10 border-left-0">
                                                                <div class="row">
                                                                    <div class="form-group col-md-6 border-bottom-0">
                                                                        <select id="topName" class="search_tag form-control" name="10" onchange="changeMiddle();">
                                                                            <option selected value="">전체</option>
                                                                            <c:forEach items="${categoryName}" var="categoryName">
                                                                                <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-6 border-bottom-0">
                                                                        <select id="middle" name="9" class="search_tag form-control">
                                                                            <option selected value="">전체</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group row" style="height: 74px">
                                                            <label class="col-md-2 label-control text-left"
                                                                   for="checkbox" id="selectStatus" name="selectStatus">상품상태</label>
                                                            <div class="col-md-10 border-left-0" id="checkbox">
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectAll" checked id="selectAll" value="전체">
                                                                    <label class="custom-control-label" for="selectAll">전체</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne" id="checkSearch1" value="판매중">
                                                                    <label class="custom-control-label" for="checkSearch1" >판매중</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne" id="checkSearch2" value="판매중지">
                                                                    <label class="custom-control-label" for="checkSearch2" >판매중지</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne" id="checkSearch3" value="품절">
                                                                    <label class="custom-control-label" for="checkSearch3" >품절</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group row last">
                                                            <label class="col-md-1 label-control text-left">조회기간</label>
                                                            <div class="col-md-11 border-left-0">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="btn-group btn-block" role="group" aria-label="">
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn1" value="" onclick="changeDateTime(this.id, 0);">오늘</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn2" value="" onclick="changeDateTime(this.id, -7)">1주일</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn3" value="" onclick="changeDateTime(this.id, -30)">1개월</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn4" value="" onclick="changeDateTime(this.id, -90)">3개월</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn5" value="" onclick="changeDateTime(this.id, -180)">6개월</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn6" value="" onclick="changeDateTime(this.id, -365)">1년</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn7" onclick="changeDateTime(this.id, 9999)">직접입력</button>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="d-flex justify-content-start align-items-start">
                                                                            <div class="d-flex align-items-center justify-content-start">
                                                                                <div class="input-group">
                                                                                    <input type='text' id="start_dt" name="11"
                                                                                           class="search_tag form-control pickadate-selectors"
                                                                                           placeholder="" />
                                                                                    <div class="input-group-append">
                                                                                    <span class="input-group-text">
                                                                                        <span class="fa fa-calendar-o"></span>
                                                                                    </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <span class="font-weight-bold mx-1 pt-50">~</span>
                                                                            <div class="d-flex align-items-center justify-content-start">
                                                                                <div class="input-group">
                                                                                    <input type='text' id="end_dt" name="12"
                                                                                           class="search_tag form-control pickadate-selectors"
                                                                                           placeholder="" />
                                                                                    <div class="input-group-append">
                                                                                    <span class="input-group-text">
                                                                                        <span class="fa fa-calendar-o"></span>
                                                                                    </span>
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
                                            <div class="form-actions center">
                                                <button type="button" class="btn btn-outline-light btn-min-width mr-1" onclick="javascript:fn_reset();">초기화</button>
                                                <button type="button" class="btn btn-outline-blue btn-min-width" onclick="javascript:fn_search('직접등록상품 정보')">검색</button>
                                            </div>
                                        </form>
                                    </div>
                                </section>
                                <div class="row">
                                    <div class="col-md-6">
                                        <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                                data-toggle="modal" data-target="#modal-3">판매중지</button>
                                        <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                                data-toggle="modal" data-target="#modal-4">판매상태로 변경</button>
                                        <button type="button" class="btn btn-outline-blue btn-min-width mr-1"
                                                data-toggle="modal" data-target="#modal-5">품절</button>
                                    </div>
                                </div>
                                <section>
                                    <div class="card">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <!-- datatable started -->
                                                <div class="table-responsive">
                                                    <table id="user_data_table" class="table table-striped table-hover">
                                                        <thead class="text-center">
                                                        <tr>
                                                            <th><input type="checkbox" id="selectAll1" name="selectAll1" /></th>
                                                            <th><span class="align-middle">상품번호</span></th>
                                                            <th>카테고리</th>
                                                            <th class="text-center">상품명</th>
                                                            <th class="col-md-6">상품가격</th>
                                                            <th class="text-center">상품수량</th>
                                                            <th class="text-center">상품 상태</th>
                                                            <th class="text-center">판매 등록일</th>
                                                            <th></th>
                                                        </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>`);
                var columnFields = ["checkbox", "product_id", "category_name", "product_name", "product_price","product_count", "product_state", "product_selling_dt","seller","category_id","parent_category_id","start_dt","end_dt"];
                var columWidths = [30, 30, 80, 100, 80, 80, 80, 80, 80, 0, 0, 0, 0];

                init_datatable("${pageContext.request.contextPath}/sellerManagementEdit_direct.json", columnFields, columWidths, fn_tbl_render2, '${userManagementVO.account_id}');

                break;
            case '정산 내역' :
                $('#cardBody').html(`<div class="card" id="tab-menu4">
                                <section>
                                    <div class="border border-light rounded p-2 mb-2">
                                        <form class="form form-horizontal form-bordered">
                                            <div class="form-body">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group row" style="height: 74px">
                                                            <label class="col-md-2 label-control text-left"
                                                                   for="checkbox" id="selectStatus" name="selectStatus">지급상태</label>
                                                            <div class="col-md-10 border-left-0" id="checkbox">
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectAll1" checked id="selectAll1" value="전체">
                                                                    <label class="custom-control-label" for="selectAll1">전체</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne1" id="checkSearch1" value="픽업요청">
                                                                    <label class="custom-control-label" for="checkSearch1" >정산완료</label>
                                                                </div>
                                                                <div class="d-inline-block custom-control custom-checkbox mr-1">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           name="selectOne1" id="checkSearch6" value="품절">
                                                                    <label class="custom-control-label" for="checkSearch3" >정산예정</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group row last">
                                                            <label class="col-md-1 label-control text-left">조회기간</label>
                                                            <div class="col-md-11 border-left-0">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="btn-group btn-block" role="group" aria-label="">
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn1" value="" onclick="changeDateTime(this.id, 0);">오늘</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn2" value="" onclick="changeDateTime(this.id, -7)">1주일</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn3" value="" onclick="changeDateTime(this.id, -30)">1개월</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn4" value="" onclick="changeDateTime(this.id, -90)">3개월</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn5" value="" onclick="changeDateTime(this.id, -180)">6개월</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn6" value="" onclick="changeDateTime(this.id, -365)">1년</button>
                                                                            <button type="button"
                                                                                    class="btn custom btn-outline-blue-grey" name="btnDate" id="btn7" onclick="changeDateTime(this.id, 9999)">직접입력</button>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="d-flex justify-content-start align-items-start">
                                                                            <div class="d-flex align-items-center justify-content-start">
                                                                                <div class="input-group">
                                                                                    <input type='text' id="start_dt" name="start_dt"
                                                                                           class="form-control pickadate-selectors"
                                                                                           placeholder="" />
                                                                                    <div class="input-group-append">
                                                                                    <span class="input-group-text">
                                                                                        <span class="fa fa-calendar-o"></span>
                                                                                    </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <span class="font-weight-bold mx-1 pt-50">~</span>
                                                                            <div class="d-flex align-items-center justify-content-start">
                                                                                <div class="input-group">
                                                                                    <input type='text' id="end_dt" name="end_dt"
                                                                                           class="form-control pickadate-selectors"
                                                                                           placeholder="" />
                                                                                    <div class="input-group-append">
                                                                                    <span class="input-group-text">
                                                                                        <span class="fa fa-calendar-o"></span>
                                                                                    </span>
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
                                        </form>
                                    </div>
                                </section>
                                <section>
                                    <div class="card">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <!-- datatable started -->
                                                <div class="table-responsive">
                                                    <table id="user_data_table" class="table table-striped table-hover">
                                                        <thead class="text-center">
                                                        <tr>
                                                            <th><span class="align-middle">정산일</span></th>
                                                            <th>지금상태</th>
                                                            <th class="text-center">최종 정산금액</th>
                                                            <th class="col-md-6">주문번호</th>
                                                            <th class="text-center">상품번호</th>
                                                            <th class="text-center">상품명</th>
                                                            <th class="text-center">구매자</th>
                                                            <th class="text-center">상품가격</th>
                                                            <th class="text-center">수수료</th>
                                                            <th class="text-center">정산금액</th>
                                                            <th class="text-center">구매일</th>
                                                            <th>구매확정일</th>
                                                        </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>`);
                break;
            case '스토어 문의내역' :
                $('#cardBody').html(`<div class="card" id="tab-menu5">
                                <section>
                                    <div class="card">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <!-- datatable started -->
                                                <div class="table-responsive">
                                                    <table id="user_data_table" class="table table-striped table-hover">
                                                        <thead class="text-center">
                                                        <tr>
                                                            <th><span class="align-middle">no</span></th>
                                                            <th>답변상태</th>
                                                            <th class="text-center">상품명(상품번호)</th>
                                                            <th class="col-md-6">문의내용</th>
                                                            <th class="text-center">문의유형</th>
                                                            <th class="text-center">작성자</th>
                                                            <th class="text-center">작성일자</th>
                                                            <th></th>
                                                        </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>`);
                break;
            case '정보수정이력' :
                $('#cardBody').html(`<div class="card" id="tab-menu6">
                                <section>
                                    <div class="card">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <!-- datatable started -->
                                                <div class="table-responsive">
                                                    <table id="user_data_table" class="table table-striped table-hover">
                                                        <thead class="text-center">
                                                        <tr>
                                                            <th><span class="align-middle">no</span></th>
                                                            <th>변경 일자</th>
                                                            <th class="text-center">처리자</th>
                                                            <th class="col-md-6">변경 항목</th>
                                                            <th class="text-center">변경 이전</th>
                                                            <th class="text-center">변경 이후</th>
                                                        </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>`);
                break;
        }
        inputTagEvent();
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

    function changeProductStatus(product_state) {
        var table = $('#user_data_table').DataTable();
        var rowData = $.map(table.rows().data(), function(item){
            return item;
        });

        let chk_val = [];
        let isShowEmpty = true;

        if(product_state == '판매중지') {
            $("input:checkbox[name=selectOneChk]").each(function (i, iVal) {
                if ($(this).is(":checked") == true) {
                    rowData.forEach(function (row) {
                        if (row.product_id == iVal.value) {
                            if (row.product_state != "판매중"){
                                alert('판매중인 상품만 판매중지가 가능합니다.');
                                isShowEmpty = false;
                                return;
                            }else{
                                chk_val.push(iVal.value);
                            }
                        }
                    })
                }
            })
        } else if(product_state == '판매중'){
            $("input:checkbox[name=selectOneChk]").each(function (i, iVal) {
                if ($(this).is(":checked") == true) {
                    rowData.forEach(function (row) {
                        if (row.product_id == iVal.value) {
                            if (row.product_state != "판매중지"){
                                alert('판매중지 상품만 판매중으로 변경이 가능합니다.');
                                isShowEmpty = false;
                                return;
                            }else{
                                chk_val.push(iVal.value);
                            }
                        }
                    })
                }
            })
        } else {
            $("input:checkbox[name=selectOneChk]").each(function (i, iVal) {
                if ($(this).is(":checked") == true) {
                    rowData.forEach(function (row) {
                        if (row.product_id == iVal.value) {
                            if (row.product_state == "품절"){
                                alert('품절이 아닌 상품만 품절으로 상태 변경이 가능합니다.');
                                isShowEmpty = false;
                                return;
                            }else{
                                chk_val.push(iVal.value);
                            }
                        }
                    })
                }
            })
        }
        if(chk_val.length ==0 && isShowEmpty){
            alert('선택된 항목이 없습니다. 다시 확인해주세요.');
            isShowEmpty = false;
            return;
        }
        var params = {
            'product_state': product_state,
            'product_id_list': chk_val
        }

        if(isShowEmpty){
            $.ajax({
                url: "${pageContext.request.contextPath}/direct/changeDirectProductStatus.json",
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

    function changeDateTime(id,value) {
        $("button[name=btnDate]").each(function() {
            if($(this).attr('id')== id) {
                $(this).css("background-color","cornflowerblue")
            }else{
                $(this).css("background-color","white")
            }
        });
        var nowDate = new Date()
        if(value == 9999){
            $("#start_dt").pickadate('picker').set('select' ,nowDate);
            $("#end_dt").pickadate('picker').set('select' ,nowDate);
        }else{
            $("#start_dt").pickadate('picker').set('select' ,nowDate.setDate(nowDate.getDate() + value));
            $("#end_dt").pickadate('picker').set('select' ,new Date());
        }
    }

    function fn_search(type) {
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
        if(type == "위탁 상품 정보") {
            var searchName = $('#searchProduct').val();
            var searchValue = $('#searchValue').val();
            var val = searchValue;
            var idx = '';
            switch (searchName) {
                case "상품명" :
                    idx = 2;
                    break;
                case "상품번호" :
                    idx = 0;
                    break;
            }
            if (search == null)
                search = table.column(idx).search(val);
            else
                search = search.column(idx).search(val);

            var statusArray = [];
            if ($("#selectAll").is(":checked")) {
                statusArray = '';
            } else {
                $("input[name=selectOne]").each(function () {
                    if (this.checked) {
                        statusArray.push($(this).val());
                    }
                });
            }

            if (search == null)
                search = table.column(5).search(statusArray);
            else
                search = search.column(5).search(statusArray);

            var gradeArray = [];
            if ($("#selectAll1").is(":checked")) {
                gradeArray = '';
            } else {
                $("input[name=selectOne1]").each(function () {
                    if (this.checked) {
                        gradeArray.push($(this).val());
                    }
                });
            }

            if (search == null)
                search = table.column(6).search(gradeArray);
            else
                search = search.column(6).search(gradeArray);
        } else if (type == "직접등록상품 정보"){
            var searchName = $('#searchProduct').val();
            var searchValue = $('#searchValue').val();
            var val = searchValue;
            var idx = '';
            switch (searchName) {
                case "상품명" :
                    idx = 3;
                    break;
                case "상품번호" :
                    idx = 1;
                    break;
            }
            if (search == null)
                search = table.column(idx).search(val);
            else
                search = search.column(idx).search(val);

            var statusArray = [];
            if ($("#selectAll").is(":checked")) {
                statusArray = '';
            } else {
                $("input[name=selectOne]").each(function () {
                    if (this.checked) {
                        statusArray.push($(this).val());
                    }
                });
            }

            if (search == null)
                search = table.column(6).search(statusArray);
            else
                search = search.column(6).search(statusArray);

        }

        if(search != null)
            search.draw();
    }

    function banUser() {

        let params = {
            'account_id': '${userManagementVO.account_id}',
            'ban_reason': $('input[name=ban_reason]:checked').val(),
            'ban_message': $("#ban_message").val()
        }

        console.log("==========");
        console.log(params);

        $.ajax({
            url: "${pageContext.request.contextPath}/banUser.json",
            type : "POST",
            data : JSON.stringify(params),
            contentType : "application/json;",
            success : function(result) {
                if (result.resultCode == "success") {
                    alert(result.message);
                    location.href='${pageContext.request.contextPath}/sellerManagement.do';
                } else if (result.resultCode == "fail") {
                    alert(result.message);
                } else{
                    alert(result.message);
                }
            }
        });
    }

</script>

</body>
<!-- END: Body-->

</html>
