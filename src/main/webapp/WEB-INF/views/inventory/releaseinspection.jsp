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
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">

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
        <h3 class="content-header-title mb-50">출고검수</h3>
      </div>
      <div class="content-header-right col-md-6 col-12">
<%--        <div class="float-md-right">--%>
<%--          <button class="nav-link btn btn-sm btn-outline-blue" type="button">다운로드</button>--%>
<%--        </div>--%>
      </div>
    </div>
    <hr>
    <div class="content-body">
            <section class="row all-contacts">
                <div class="col-md-4 col-12">
                    <div class="card">
                      	<div class="card-header">
                       		<h4 class="card-title">출고진행상태</h4>
                        </div>
	                  	<div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded d-flex">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6 col-6">
                                        <div class="text-center">
                                            <div id="shootProc1" class="avatar avatar-xl bg-blue-grey bg-lighten-3">
                                                <span class="feather icon-camera"></span>
                                            </div>
                                            <span class="blue-grey darken-1 block">제품 확인중</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-6">
                                        <div class="text-center">
                                            <div id="shootProc2" class="avatar avatar-xl bg-blue-grey bg-lighten-3">
                                                <span class="feather icon-camera"></span>
                                            </div>
                                            <span class="blue-grey darken-1 block">제품 확인<br>완료</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-6">
                                        <div class="text-center">
                                            <div id="shootProc3" class="avatar avatar-xl bg-blue-grey bg-lighten-3">
                                                <span class="feather icon-camera"></span>
                                            </div>
                                            <span class="blue-grey darken-1 block">영상 촬영중</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-6">
                                        <div class="text-center">
                                            <div id="shootProc4" class="avatar avatar-xl bg-blue-grey bg-lighten-3">
                                                <span class="feather icon-camera"></span>
                                            </div>
                                            <span class="blue-grey darken-1 block">영상 촬영<br>완료</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
               	</div>
             	<div class="col-md-8 col-12">
                    <div class="card">
                      	<div class="card-header">
                       		<h4 class="card-title" id="moveGrading">주문 정보</h4>
                        </div>
	                  	<div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded d-flex">
                        	<div class="card-body pt-2">
		                    	<div class="row">
	                           		<div class="form-body col-md-6">
	                                	<div class="form-group row">
	                                   		<label class="col-md-3 label-control text-bold-700 text-right" for="eventRegInput3">주문일시</label>
	                                      	<div class="col-md-8">
	                                            <input readonly type="text" class="form-control" id="idOrderDate">
	                                        </div>
	                                   	</div>
	                               	</div>
	                           		<div class="form-body col-md-6">
	                                	<div class="form-group row">
	                                   		<label class="col-md-3 label-control text-bold-700 text-right" for="eventRegInput3">판매처</label>
	                                      	<div class="col-md-8">
	                                            <input readonly type="text" class="form-control" id="idSeller">
	                                        </div>
	                                   	</div>
	                               	</div>
	                       		</div>
		                    	<div class="row">
	                           		<div class="form-body col-md-6">
	                                	<div class="form-group row">
	                                   		<label class="col-md-3 label-control text-bold-700 text-right" for="eventRegInput3">주문번호</label>
	                                      	<div class="col-md-8">
	                                            <input readonly type="text" class="form-control" id="idOrderNo">
	                                        </div>
	                                   	</div>
	                               	</div>
	                               	
	                           		<div class="form-body col-md-6">
	                                	<div class="form-group row">
	                                   		<label class="col-md-3 label-control text-bold-700 text-right" for="eventRegInput3">수하인</label>
	                                      	<div class="col-md-8">
	                                            <input readonly type="text" class="form-control" id="idReceipent">
	                                        </div>
	                                   	</div>
	                               	</div>
	                          	</div>
		                    	<div class="row">
	                           		<div class="form-body col-md-6">
	                                	<div class="form-group row">
	                                   		<label class="col-md-3 label-control text-bold-700 text-right"  for="eventRegInput3">송장번호</label>
	                                      	<div class="col-md-8">
	                                            <input readonly type="text" class="form-control search_tag" name="5" id="idTrackingNo">
	                                        </div>
	                                   	</div>
	                               	</div>
	                           		<div class="form-body col-md-6">
	                                	<div class="form-group row">
	                                      	<div class="col-md-8">
				                        	<button type="button" class="float-center btn btn-blue btn-min-width" onclick="javascript:fn_inspection_finish()">검수완료</button>
	                                        </div>
	                                   	</div>
	                               	</div>
	                            </div>
                        	</div>
                        </div>
                    </div>
               	</div>
               	
          	</section>
            

      <!-- 리스트 -->
  	<section class="row all-contacts">
    	<div class="col-md-12 col-12">
        <div class="users-list-table">
          <div class="card">
            <div class="card-content">
              <div class="card-body">
                <!-- datatable start -->
                <div class="table-responsive">
                  <table id="user_data_table" class="table table-striped table-hover">
                    <thead class="text-center">
                    <tr>
                      <th>출고상품번호</th>
                      <th>출고상품명</th>
                      <th>옵션</th>
                      <th>수량</th>
                      <th>검수수량</th>
                      <th>송장번호</th>
                    </tr>
                    </thead>
                  </table>
                </div>
                <!-- datatable ends -->
              </div>
            </div>
          </div>
        </div>
        </div>
      </section>
    </div>
  </div>
</div>

<form:form>
  <input type="hidden" id="product_id" name="product_id" value=""/>
  <input type="hidden" id="product_name" name="product_name" value=""/>
  <input type="hidden" id="order_name" name="order_name" value=""/>
  <input type="hidden" id="order_request_id" name="order_request_id" value=""/>
  <input type="hidden" id="modal_cal_dt" name="modal_cal_dt" value=""/>
</form:form>
<!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>
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



<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>

<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>
<!-- END: Page JS-->

<script>
  $(document).ready(function() {
    let columnFields = ["product_id", "product_name", "product_name", "product_count", "product_count", "tracking_no"];
    let columWidths = [30, 30, 30, 30, 30, 0];

    fn_set_datatable("#user_data_table");
    init_datatable("${pageContext.request.contextPath}/inventory/releaseInspectionList.json", columnFields, columWidths, null);
      	
    
  	fn_set_release_inspection_status();
  	fn_search();

  	setInterval(function () {
       	
      	fn_set_release_inspection_status();
      	fn_search();
      	
    }, 3000);
  })
  
   

  // 촬영 상태에 따라 상단 Avatar영역의 색상을 변경한다. 
  var tracking_no = "";
  function fn_set_release_inspection_status() {
	
    var params = {
    	'tracking_no': tracking_no
  	}	  	  
	  $.ajax({
      	url : "${pageContext.request.contextPath}/inventory/releaseInspectionState.json",
        type : "POST",
        data : params,
        success : function(result) {
        	        	
        	if(tracking_no != "" && result.resultCode == 'notfound') {
            	location.reload();
        		return ;
        	}
        	
        	if(result.resultCode != "success")
        		return ;

        	        	        	
        	tracking_no = result.inspection.tracking_no;
        	var state = result.inspection.state;
        	        		
	       	$(".avatar").removeClass("bg-blue");
	       	$(".avatar").addClass("bg-blue-grey bg-lighten-3");
	       	
	       	if(state == 'N') {
		        $("#shootProc1").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc1").addClass("bg-blue");
	       	} else if(state == 'S') {
		        $("#shootProc1").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc1").addClass("bg-blue");
		        $("#shootProc2").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc2").addClass("bg-blue");
		        $("#shootProc3").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc3").addClass("bg-blue");	        		    	
	       	} else if(state == 'F') {
		        $("#shootProc1").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc1").addClass("bg-blue");
		        $("#shootProc2").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc2").addClass("bg-blue");
		        $("#shootProc3").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc3").addClass("bg-blue");	
		        $("#shootProc4").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc4").addClass("bg-blue");	        		    	
	       	}
	    	
	       	
        	$("#idOrderDate").val(result.inspection.order_request_dt);
        	$("#idSeller").val(result.inspection.smartstore_name);
        	$("#idOrderNo").val(result.inspection.smartstore_order_no);
        	$("#idReceipent").val(result.inspection.order_rcv_name);
        	$("#idTrackingNo").val(result.inspection.tracking_no);
	 	}
      });
   }


   function fn_inspection_finish() {
      var params = {
                'product_id' : '==========상품 아이디 데이터 바인딩 위치==========',
                'order_request_id' : document.getElementById('idOrderNo').value ,
	        	'tracking_no': tracking_no
      }
      $.ajax({
          url : "${pageContext.request.contextPath}/inventory/releaseInspectionFinish.json",
          type : "POST",
          data : params,
          success : function(result) {
              if(result.resultCode != "success") {
                  // alert("서버오류가 발생하였습니다. 잠시후 다시 시도해 주시기 바랍니다.")
              }
              location.reload();
          }
      })
   }  
  
</script>

</body>
<!-- END: Body-->

</html>