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
                <h3 class="content-header-title mb-50">공지등록</h3>
            </div>
        </div>
        <hr>
        <div class="content-body">
            <!-- 상태 정의 -->
            <section>
                <div class="card">
                    <!-- card body -->
                    <div class="card-body p-2">
                        <!-- card-header -->
                        <div class="card-header bg-blue bg-lighten-5 border-top" style="margin-top: 30px; ">
                            <div class="d-flex align-items-center" style="margin-bottom: 20px">
                                <label class="none font-weight-bold mr-2" style="padding-right: 1700px;">공지유형&nbsp;&nbsp;<span class="danger">*</span></label>
                                <label class="none font-weight-bold mr-2">채널&nbsp;&nbsp;<span class="danger">*</span></label>
                            </div>
                            <div>
                                <div style="margin-bottom: 20px">
                                    <input type="radio" name="registerType" value="일반" />&nbsp;&nbsp;<label class="none" style="margin-right: 40px">일반공지</label>
                                    <input type="radio" name="registerType" value="긴급" />&nbsp;&nbsp;<label class="none" style="margin-right: 40px">긴급공지</label>
                                    <input type="radio" name="registerType" value="시스템" />&nbsp;&nbsp;<label class="none" style="margin-right: 40px">시스템 공지</label>
                                    <input type="radio" name="registerType" value="기타" />&nbsp;&nbsp;<label class="none" style="margin-right: 1380px">기타</label>
<%--                                    <input type="radio" name="channel" value="셀러 웹" onclick="hidePopup()" />&nbsp;&nbsp;<label class="none" style="margin-right: 40px">셀러 웹</label>--%>
<%--                                    <input type="radio" name="channel" value="고객 앱" onclick="showPopup()" />&nbsp;&nbsp;<label class="none" style="margin-right: 40px">고객 앱</label>--%>
                                    <input type="radio" name="channel" value="셀러 웹" />&nbsp;&nbsp;<label class="none" style="margin-right: 40px">셀러 웹</label>
                                    <input type="radio" name="channel" value="고객 앱" />&nbsp;&nbsp;<label class="none" style="margin-right: 40px">고객 앱</label>
                                </div>
                                <div>
                                    <label class="none font-weight-bold mr-2">제목</label>
                                </div>
                                <div class="row col-md-15" style="margin-bottom: 20px">
                                    <input type="text" class="form-control col-md-9" id="notice_title" placeholder="제목을 입력하세요(최대 50자까지 입력 가능)" style="margin-right: 10px" />
                                    <input type="checkbox" id="important" style="margin-right: 5px" />
                                    <label class="none" style="margin-top: 10px">주요 공지(선택 시, 공지사항 목록 상단에 고정됩니다)</label>
                                </div>
                                <div style="margin-bottom: 20px;" id="banner">
                                    <label class="none font-weight-bold mr-2" style="padding-right: 150px;">배너 사용 여부&nbsp;&nbsp;<span class="danger">*</span></label>
                                    <label class="none font-weight-bold mr-2">게시기간&nbsp;&nbsp;<span class="danger">*</span></label>
                                </div>
                                <div class="row" style="margin-left: 3px" id="noticeType">
                                    <input type="radio" name="banner" value="1" style="margin-bottom: 15px" />&nbsp;&nbsp;<label class="none" style="margin-right: 40px; margin-top: 10px;">사용</label>
                                    <input type="radio" name="banner" value="0" style="margin-bottom: 15px" checked />&nbsp;&nbsp;<label class="none" style="margin-right: 120px; margin-top: 10px;">사용안함</label>

                                    <div class="form-group col-md-10 border-bottom-0">
                                        <div class="d-flex justify-content-start align-items-start p-0">
                                            <div class="d-flex align-items-center justify-content-start">
                                                <div class="input-group">
                                                    <input type='text' id="start_dt"
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
                                            <div class="d-flex align-items-center justify-content-start">
                                                <div class="input-group">
                                                    <input type='text' id="end_dt"
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
                                <div>
                                    <label class="none font-weight-bold mr-2">내용&nbsp;&nbsp;<span class="danger">*</span></label>
                                </div>
                                <div>
                                    <textarea type="text" id="notice_content"></textarea>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted text-center">
                        <button type="button" class="btn btn-light btn-min-width mr-1" onclick="location.href='${pageContext.request.contextPath}/operation/noticeManagement.do'">취소</button>
                        <button type="button" class="btn btn-blue btn-min-width" onclick="fn_insertNotice();">저장</button>
                    </div>
                </div>
            </section>

            <!-- Pick-A-Date Picker start -->
            <div style="display: none">
                <div class="input-group">
                    <input id="picker_from" class="form-control datepicker" type="date">
                </div>
                <div class="input-group">
                    <input id="picker_to" class="form-control datepicker" type="date">
                </div>
            </div>
            <!-- Pick-A-Date Picker end -->
                    </div>
                </div>
            </div>
            <input type="hidden" id="account_id" value="${account_id}">

            <!-- 리스트 -->

        </div>
        <!-- END: Content-->

        <div class="sidenav-overlay"></div>
        <div class="drag-target"></div>

        <!-- Modal-1 -->
        <div class="modal fade text-left" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel1">판매 중지</h4>
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
        <div class="modal fade text-left" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-blue-grey bg-lighten-5">
                        <h4 class="modal-title" id="myModalLabel2">판매 상태로 변경</h4>
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

    </div>
</div>
<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />



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

<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>

<script type="text/javascript">
    var noticeContent = document.getElementById('notice_content');

    function ContentSize() {
        noticeContent.style.width = (window.innerWidth - 380) + 'px';
        noticeContent.style.height = (window.innerHeight - 500) + 'px';
    }

    window.addEventListener('resize', ContentSize);

    $('#start_time').datetimepicker({
        format: 'HH:mm:ss'
    });

    $('#end_time').datetimepicker({
        format: 'HH:mm:ss'
    });

    $(document).ready(function() {
        ContentSize();
    });

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
        switch (searchName) {
            case "상품명" :
                idx = 4;
                break;
            case "상품번호" :
                idx = 1;
                break;
            case "셀러명" :
                idx = 2;
                break;
        }
        if(search == null)
            search = table.column(idx).search(val);
        else
            search = search.column(idx).search(val);

        var statusArray= [];
        if ($("#selectAll1").is(":checked")){
            statusArray = '';
        }else{
            $("input[name=selectOne1]").each(function() {
                if(this.checked) {
                    statusArray.push($(this).val());
                }
            });
        }
        if(search == null)
            search = table.column(7).search(statusArray);
        else
            search = search.column(7).search(statusArray);

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

    // function showPopup(){
    //     document.getElementById("banner").style.display = '';
    //     document.getElementById("noticeType").style.display = '';
    //
    // }
    // function hidePopup(){
    //     document.getElementById("banner").style.display = 'none';
    //     document.getElementById("noticeType").style.display = 'none';
    // }

    function fn_insertNotice() {

        var flag = ''
        if ($('#important').prop("checked")) {
            flag = '1'
        } else {
            flag = '0'
        }

            var params = {
                'notice_type': $("input[name='registerType']:checked").val(),
                'notice_channel': $("input[name='channel']:checked").val(),
                'notice_title': document.getElementById('notice_title').value,
                'banner_flag': $("input[name='banner']:checked").val(),
                'important_flag': flag,
                'notice_content': document.getElementById('notice_content').value,
                'notice_writer': document.getElementById('account_id').value,
                // 'start_posting_dt': document.getElementById('start_dt').value + ' ' + document.getElementById('start_time').value,
                'start_posting_dt': document.getElementById('start_dt').value,
                // 'end_posting_dt': document.getElementById('end_dt').value + ' ' + document.getElementById('end_time').value
                'end_posting_dt': document.getElementById('end_dt').value
            }

            $.ajax({
                url: "${pageContext.request.contextPath}/operation/insertNotice.json",
                type : "POST",
                data : JSON.stringify(params),
                contentType : "application/json;",
                success : function(result) {
                    if (result.resultCode == "success") {
                        alert(result.message);
                        location.href='${pageContext.request.contextPath}/operation/noticeManagement.do';
                    } else if (result.resultCode == "fail") {
                        alert(result.message);
                    } else{
                        alert(result.message);
                    }
                }
            });
    }

</script>


<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>

<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
