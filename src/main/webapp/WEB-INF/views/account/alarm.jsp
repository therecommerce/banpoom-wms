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
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/ui/prism.min.css">
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
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu" data-col="2-columns">

<!-- BEGIN: Header-->

<!-- END: Header-->


<!-- BEGIN: Main Menu-->

<!-- END: Main Menu-->

<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header">
            <h3 class="content-header-title mb-2">알림 설정</h3>
        </div>
        <hr>

        <div class="content-body">
            <!-- 알림 설정-->
            <section>
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">카카오톡/문자 알림 설정</h4>
                    </div>
                    <div class="card-content collapse show">
                        <div class="table-responsive">
                            <table class="table table-borderless mb-0">
                                <tbody>
                                <tr>
                                    <th class="width-200">검수 완료 알림</th>
                                    <td>
                                        <div class="card mb-0">
                                            <div class="card-header pt-0">
                                                <p class="card-text">부메랑에 상품이 도착하여 검수가 완료될 경우, 등급 정보 및 상품 사진을 발송합니다.</p>
                                            </div>
                                            <div class="card-content">
                                                <div class="card-body">
                                                    <div class="d-inline-block custom-control custom-radio mr-1">
                                                            <input type="radio" class="custom-control-input" name="gradeFix" id="grade_fix_alarmOn" data-toggle="modal" data-target="#changeAlarmDateModal"
                                                                   onchange="sendAlarmStatus(document.getElementById('grade_fix_alarmOn').value)" value="검수 알림">
                                                        <label class="custom-control-label" for="grade_fix_alarmOn">
                                                            알람받음
                                                        </label>
                                                    </div>
                                                    <div
                                                            class="d-inline-block custom-control custom-radio mr-1">
                                                        <input type="radio" class="custom-control-input"
                                                               name="gradeFix" id="grade_fix_alarmOff" data-toggle="modal" data-target="#changeAlarmDateModal"
                                                               onchange="sendAlarmStatus(document.getElementById('grade_fix_alarmOff').value)" value="검수 알림 해제">
                                                        <label class="custom-control-label" for="grade_fix_alarmOff">
                                                            알람 받지 않음
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>정산 완료 알림</th>
                                    <td>
                                        <div class="card mb-0">
                                            <div class="card-header pt-0">
                                                <p class="card-text">상품이 판매되어 정산이 완료된 경우, 알림을 발송합니다.</p>
                                            </div>
                                            <div class="card-content">
                                                <div class="card-body">
                                                    <div
                                                            class="d-inline-block custom-control custom-radio mr-1">
                                                        <input type="radio" class="custom-control-input"
                                                               name="colorRadio2" id="calculate_notification_alarmOn" data-toggle="modal" data-target="#changeAlarmDateModal"
                                                               onchange="sendAlarmStatus(document.getElementById('calculate_notification_alarmOn').value)" value="정산 알림">
                                                        <label class="custom-control-label" for="calculate_notification_alarmOn">
                                                            알람 받음
                                                        </label>
                                                    </div>
                                                    <div
                                                            class="d-inline-block custom-control custom-radio mr-1">
                                                        <input type="radio" class="custom-control-input"
                                                               name="colorRadio2" id="calculate_notification_alarmOff" data-toggle="modal" data-target="#changeAlarmDateModal"
                                                               onchange="sendAlarmStatus(document.getElementById('calculate_notification_alarmOff').value)" value="정산 알림 해제">
                                                        <label class="custom-control-label" for="calculate_notification_alarmOff">
                                                            알람 받지 않음
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>마케팅 정보 알림</th>
                                    <td>
                                        <div class="card mb-0">
                                            <div class="card-header pt-0">
                                                <p class="card-text">부메랑의 중요 안내 및 이벤트에 대한 정보를 발송합니다.</p>
                                            </div>
                                            <div class="card-content">
                                                <div class="card-body">
                                                    <div class="d-inline-block custom-control custom-radio mr-1">
                                                        <input type="radio" class="custom-control-input"
                                                               name="colorRadio3" id="marketing_info_alarmOn"
                                                               onchange="sendAlarmStatus(document.getElementById('marketing_info_alarmOn').value)" data-toggle="modal" data-target="#changeAlarmDateModal" value="마케팅 알림">
                                                        <label class="custom-control-label" for="marketing_info_alarmOn">
                                                            알람 받음
                                                        </label>
                                                    </div>
                                                    <div
                                                            class="d-inline-block custom-control custom-radio mr-1">
                                                        <input type="radio" class="custom-control-input"
                                                               name="colorRadio3" id="marketing_info_alarmOff"
                                                               onchange="sendAlarmStatus(document.getElementById('marketing_info_alarmOff').value)" data-toggle="modal" data-target="#changeAlarmDateModal" value="마케팅 알림 해제">
                                                        <label class="custom-control-label" for="marketing_info_alarmOff">
                                                            알람 받지 않음
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </section>
            <!--/ 알림 설정-->
        </div>
    </div>
</div>

<!-- modal : 시작 -->
<%--<div class="modal-body">--%>
<%--    <h5>Popover in a modal</h5>--%>
<%--    <p>This--%>
<%--        <a href="#" role="button" class="btn btn-secondary popover-test" title="Popover title" data-bs-content="Popover body content is set in this attribute.">button</a>--%>
<%--        triggers a popover on click.--%>
<%--    </p>--%>
<%--    <hr>--%>
<%--    <h5>Tooltips in a modal</h5>--%>
<%--    <p><a href="#" class="tooltip-test" title="Tooltip">This link</a> and <a href="#" class="tooltip-test" title="Tooltip">that link</a> have tooltips on hover.</p>--%>
<%--</div>--%>


<div class="modal fade text-center" id="changeAlarmDateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h3 class="modal-title">  </h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p id="alarmTitle">
                </p>
                <span id="alarmDate"></span>
            </div>
            <div class="modal-footer justify-content-center" data-dismiss="modal">
<%--                <button type="button" class="btn btn-light btn-min-width" aria-hidden="true">취소</button>--%>
                <a type="button" class="btn btn-blue btn-min-width">확인</a>
            </div>
        </div>
    </div>
</div>



<!-- modal : 끝 -->




<!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
<jsp:include page="/WEB-INF/views/account/myPageSideBar.jsp" flush="false" />



<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
<!-- END: Page Vendor JS-->

<script>
    $(document).ready(function() {
        if(${alarm.grade_fix_alarm}){
            $('#grade_fix_alarmOn').attr('checked', true);
        } else {
            $('#grade_fix_alarmOff').attr('checked', true);
         }

        if(${alarm.calculate_notification_alarm}){
            $('#calculate_notification_alarmOn').attr('checked', true);
        } else {
            $('#calculate_notification_alarmOff').attr('checked', true);
        }

        if(${alarm.marketing_info_alarm}){
            $('#marketing_info_alarmOn').attr('checked', true);
        } else {
            $('#marketing_info_alarmOff').attr('checked', true);
        }
    });

</script>

<script>
    var today = new Date();

    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);

    var dateString = year + '-' + month  + '-' + day;

    function sendAlarmStatus(message) {
        let param = {
            "alarm_state" : message
        };

        if($('#grade_fix_alarmOn').is(':checked')){
            param.grade_fix_alarm = true;
        } else {
            param.grade_fix_alarm = false;
        };

        if($('#calculate_notification_alarmOn').is(':checked')){
            param.calculate_notification_alarm = true;
        } else {
            param.calculate_notification_alarm = false;
        };

        if($('#marketing_info_alarmOn').is(':checked')){
            param.marketing_info_alarm = true;
        } else {
            param.marketing_info_alarm = false;
        };


        $('#alarmTitle').html(message + "상태로 변경되었습니다.");
        $('#alarmDate').html('동의 일시 : ' + dateString);

        $.ajax({
            url : "${pageContext.request.contextPath}/alarm.json",
            type : "POST",
            data : JSON.stringify(param),
            contentType : "application/json",
            success : function(result) {
                if (result.resultCode === "success") {

                } else {

                }
            }
        });
    }
</script>



<!-- BEGIN: Page JS-->
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>