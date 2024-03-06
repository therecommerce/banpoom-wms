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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/app-invoice.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-users.css">
    <!-- END: Custom CSS-->

    <style>
        input[type="checkbox"]{
            width: 15px;
            height: 15px;
        }
    </style>
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- BEGIN: Header-->

<!-- END: Header-->


<!-- BEGIN: Main Menu-->

<!-- END: Main Menu-->

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-6 col-12">
                <h3 class="content-header-title mb-50">일반회원 관리</h3>
            </div>
        </div>
        <hr>
        <div class="content-body">
            <!-- 상태 정의 -->
            <!-- 검색 필터 -->
            <section>
                <div class="border border-light rounded p-2 mb-2">
                    <form class="form form-horizontal form-bordered">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-2">
                                    <div>회원 상태</div>
                                    <div class="form-group row">
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-10 border-bottom-0">
                                                    <select id="searchState" name="interested"
                                                            class="form-control">
                                                        <option value="" selected="">전체</option>
                                                        <option value="정상">정상</option>
                                                        <option value="휴면">휴면</option>
                                                        <option value="탈퇴">탈퇴</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div>회원 등급</div>
                                    <div class="form-group row">
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-10 border-bottom-0">
                                                    <select id="searchVipGrade" name="interested"
                                                            class="form-control">
                                                        <option value="" selected="">전체</option>
                                                        <option value="일반">일반</option>
                                                        <option value="우수회원">우수회원</option>
                                                        <option value="vip">vip</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div>회원 가입 경로</div>
                                    <div class="form-group row">
                                        <div class="col-md-10 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-10 border-bottom-0">
                                                    <select id="searchRegisterRoot" name="interested"
                                                            class="form-control">
                                                        <option value="" selected="">전체(기능구현 안함)</option>
                                                        <option value="이메일">이메일</option>
                                                        <option value="카카오">카카오</option>
                                                        <option value="네이버">네이버</option>
                                                        <option value="구글">구글</option>
                                                        <option value="애플">애플</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div>상세검색</div>
                                    <div class="form-group row">
                                        <div class="col-md-8 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <select id="searchProduct" name="interested"
                                                            class="form-control">
                                                        <option value="아이디" selected="">아이디</option>
                                                        <option value="이름">이름</option>
                                                        <option value="이메일주소">이메일주소</option>
<%--                                                        <option value="휴대폰번호">휴대폰번호</option>--%>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-5 border-bottom-0">
                                                    <input type="text" id="searchValue" class="form-control"
                                                           placeholder="" name="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group row last">
                                        <div class="col-md-10 border-left-0">
                                            <div style="margin-bottom: 10px;">회원가입일</div>
                                            <div class="row">
                                                <div class="form-group col-md-2 border-left-0 left">
                                                    <label class="sr-only" for="projectinput1">1개월</label>
                                                    <select id="projectinput1" name="interested"
                                                            class="form-control" onchange="changeDateTime()">
                                                        <option value="9999" selected="">전체</option>
                                                        <option value="-30">1개월</option>
                                                        <option value="-90">3개월</option>
                                                        <option value="-180">6개월</option>
                                                        <option value="-365">1년</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-10 border-bottom-0">
                                                    <div class="d-flex justify-content-start align-items-start p-0">
                                                        <div class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="start_dt" name="10"
                                                                       class="search_tag form-control pickadate-selectors"
                                                                       placeholder="" value="" />
                                                                <div class="input-group-append">
                                                                            <span class="input-group-text">
                                                                                <span class="fa fa-calendar-o"></span>
                                                                            </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <span class="font-weight-bold mx-1 pt-50">~</span>
                                                        <div
                                                                class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="end_dt" name="11"
                                                                       class="search_tag form-control pickadate-selectors"
                                                                       placeholder="" value="" />
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
                            <button type="button" class="btn btn-outline-blue btn-min-width" onclick="javascript:fn_search();">검색</button>
                        </div>
                    </form>
                </div>
                <button type="button" class="btn btn-outline-blue btn-min-width mr-1" data-toggle="modal" data-target="#modal-2" style="margin-bottom: 20px">등급 변경</button>
                <button type="button" class="btn btn-outline-blue btn-min-width mr-1" style="margin-bottom: 20px" data-toggle="modal" data-target="#modal-1">쿠폰 지급</button>
            </section>

            <!-- 리스트 -->
            <section>
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <!-- datatable started -->
                            <div class="table-responsive">
                                <table id="user_data_table" class="table table-striped table-hover">
                                    <thead class="text-center">
                                    <tr>
                                        <th><input type="checkbox" id="selectAll" name="selectAll" /></th>
                                        <th><span class="align-middle">회원번호</span></th>
                                        <th>회원가입 경로</th>
                                        <th>이메일 주소</th>
                                        <th class="text-center">이름</th>
                                        <th class="col-md-6">가입상태</th>
                                        <th class="text-center">등급</th>
                                        <th class="text-center">최종로그인</th>
                                        <th class="text-center">회원가입일</th>
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
    </div>
</div>
<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
        <!-- END: Content-->

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
                <h5>선택한 회원의 등급을 아래 등급으로 일괄 변경하시겠습니까?</h5>
                <%--                <p>중지 시에 사용자의 화면에서 상품은 표시되지 않습니다.</p>--%>
            </div>
            <div style="margin-left: 10px;">
            <input type="radio" value="일반" id="normal" name="grade" />&nbsp;&nbsp;<label for="normal">일반(이달 구매 상품 10개 미만 / 이 달 구매금액 20만원 미만)</label>
            </div>
            <div style="margin-left: 10px">
            <input type="radio" value="우수회원" id="premium" name="grade" />&nbsp;&nbsp;<label for="premium">우수회원(이 달 구매상품 10개 이상 / 이 달 구매금액 20만원 이상)</label>
            </div>
            <div style="margin-left: 10px">
                <input type="radio" value="vip" id="vip" name="grade" />&nbsp;&nbsp;<label for="vip">VIP(이 달 구매상품 30개 이상 / 이 달 구매금액 50만원 이상)</label>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="changeVipGrade();">확인</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal : coupon -->
<div class="modal fade text-left" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel1">쿠폰 지급</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                <h5>쿠폰 목록</h5>
                <%--                <p>중지 시에 사용자의 화면에서 상품은 표시되지 않습니다.</p>--%>
            </div>
            <div style="margin-left: 10px;">
                <input type="checkbox" value="" id="freeDeliveryCoupon" name="grade" />&nbsp;&nbsp;<label for="normal">무료배송 쿠폰</label>
            </div>
            <div style="margin-left: 10px">
                <input type="checkbox" value="" id="likeCoupon" name="grade" />&nbsp;&nbsp;<label for="premium">찜 쿠폰</label>
            </div>
            <div style="margin-left: 10px">
                <input type="checkbox" value="" id="deliveryCoupon" name="grade" />&nbsp;&nbsp;<label for="vip">배송비 지원</label>
            </div>
            <div style="margin-left: 10px">
                <input type="checkbox" value="" id="thousandCoupon" name="grade" />&nbsp;&nbsp;<label for="vip">1000원 할인 쿠폰</label>
            </div>
            <div style="margin-left: 10px">
                <input type="checkbox" value="" id="discountCoupon" name="grade" />&nbsp;&nbsp;<label for="vip">할인 쿠폰</label>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="changeVipGrade();">확인</button>
            </div>
        </div>
    </div>
</div>


<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="true" />


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
<%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>--%>
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
<!-- END: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>


<script type="text/javascript">

    $(document).ready(function() {
        var columnFields = ["checkbox", "account_no", "account_id", "account_email", "account_name", "account_dormant", "vip_grade", "last_login", "reg_dt", "temp", "start_dt", "end_dt"];
        var columWidths = [ 30, 80, 80, 80, 80, 80, 80, 80, 80, 30, 0, 0];

        init_datatable("${pageContext.request.contextPath}/userManagement.json", columnFields, columWidths, fn_tbl_render);
    });

    function checkFlag() {
        let chk_val = [];

        $("input:checkbox[name=selectOne]").each(function (i, iVal) {
            if ($(this).is(":checked") == true) {
                chk_val.push($(this).attr('id'));
                if (chk_val.includes('0') || chk_val.includes('2')) {
                    $("#approval").attr("disabled", true);
                } else if (!chk_val.includes('0') && !chk_val.includes('2')) {
                    $("#approval").attr("disabled", false);
                }
            }
        })
    }

    function fn_tbl_render(data, type, full, meta) {

        var title = null;
        if (meta.col == 0) {
            return '<input type="checkbox" id="' + full.business_info_flag + '" onclick="checkFlag();" name="selectOne" value="' + full.account_id + '" />';
        } else if(meta.col == 2) {
            return '회원가입 경로'
        } else if (meta.col == 5) {
            if (full.account_dormant == 0) {
                return '<span class="badge bg-blue bg-lighten-4 width-150 d-inline-block">' + '휴면' + '</span>'
            } else if (full.account_dormant == 1) {
                return '<span class="badge bg-success bg-lighten-2 width-150 d-inline-block">' + '정상' + '</span>'
            } else if (full.account_dormant == 2) {
                return '<span class="badge bg-blue-grey bg-lighten-2 width-150 d-inline-block">' + '탈퇴' + '</span>'
            }
        } else if (meta.col == 6) {
            if (full.vip_grade == '' || full.vip_grade == null) {
                return '-'
            } else {
                return full.vip_grade
            }
        } else if (meta.col == 9) {
            return `<button type="text" class="btn btn-sm btn-outline-blue" onclick="location.href='userManagementEdit.do?account_id=` + full.account_id + `'">상세보기</button>`;
        }
        else {
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

        var searchName =$('#searchProduct').val();
        var searchValue = $('#searchValue').val();
        var val = searchValue;
        var idx = '';
        switch (searchName){
            case "아이디" :
                idx = 2;
                break;
            case "이름" :
                idx = 4;
                break;
            case "이메일주소" :
                idx = 3;
                break;
        }
        if(search == null)
            search = table.column(idx).search(val);
        else
            search = search.column(idx).search(val);

        var searchState = $('#searchState').val();
        switch (searchState) {
            case "전체":
                idx = '';
                val = '';
                break;
            case "정상":
                idx = 5;
                val = 1;
                break;
            case "휴면":
                idx = 5;
                val = 0;
                break;
            case "탈퇴":
                idx = 5;
                val = 2;
                break;
        }
        if(search == null)
            search = table.column(idx).search(val);
        else
            search = search.column(idx).search(val);

        var vip_grade = $('#searchVipGrade').val();
        switch (vip_grade) {
            case "전체":
                idx = '';
                val = '';
                break;
            case "일반":
                idx = 6;
                val = vip_grade;
                break;
            case "우수회원":
                idx = 6;
                val = vip_grade;
                break;
            case "vip":
                idx = 6;
                val = vip_grade;
                break;
        }
        if (search == null)
            search = table.column(idx).search(val);
        else
            search = search.column(idx).search(val);


        var start_dt =$("#start_dt").val();
        var end_dt = $("#end_dt").val()

        if(search == null) {
            search = table.column(10).search(start_dt);
            search = search.column(11).search(end_dt);
        }else {
            search = search.column(10).search(start_dt);
            search = search.column(11).search(end_dt);
        }

        if(search != null)
            search.draw();
    }

    function fn_reset() {
        $("button[name=btnDate]").each(function() {
            $(this).css("background-color","white");
        });

        $("input[type=checkbox]").each(function() {
            this.checked = false;
        });
        $('#searchValue').val('');
        $("#selectAll").prop("checked", false);
        $("#selectAll1").prop("checked", true);
        $('#start_dt').val('');
        $('#end_dt').val('');
        $('#searchState').val('');
        $('#searchVipGrade').val('');
        $('#searchProduct').val('아이디');
    }

    function changeDateTime() {
        var value = parseInt($('#projectinput1').val());
        var nowDate = new Date()
        if(value == 9999){
            $("#start_dt").pickadate('picker').set('select', null);
            $("#end_dt").pickadate('picker').set('select', null);
        }else{
            $("#start_dt").pickadate('picker').set('select', nowDate.setDate(nowDate.getDate() + value));
            $("#end_dt").pickadate('picker').set('select', new Date());
        }
    }

    $(document).ready(function() {
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
    });

    function changeVipGrade() {
        let chk_val = [];
        let grade = $('input[name=grade]:checked').val();

        $("input:checkbox[name=selectOne]").each(function (i, iVal) {
            if ($(this).is(":checked") == true) {
                chk_val.push(iVal.value);
            }
        });

        let params = {
            'account_id_list': chk_val,
            'vip_grade': grade
        }
        if (chk_val == null || chk_val == '') {
            alert("선택된 회원이 없습니다.");
            return;
        } else if (grade == null || grade == '') {
            alert("등급을 선택해주세요");
            return;
        } else {
            $.ajax({
                url: "${pageContext.request.contextPath}/changeVipGrade.json",
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

</body>
<!-- END: Body-->

</html>