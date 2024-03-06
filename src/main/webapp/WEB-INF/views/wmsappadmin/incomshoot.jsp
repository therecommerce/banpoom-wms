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
        <h3 class="content-header-title mb-50">입고영상/제품촬영</h3>
      </div>
      <div class="content-header-right col-md-6 col-12">
      </div>
    </div>
    <hr>
    <div class="content-body">
            <section class="row all-contacts">
                <div class="col-md-6 col-12">
                    <div class="card">
                      	<div class="card-header">
                       		<h4 class="card-title">제품 촬영 상태</h4>
                        </div>
	                  	<div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded d-flex">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6 col-6">
                                        <div class="text-center">
                                            <div id="shootProc1" class="avatar avatar-xxl bg-blue-grey bg-lighten-3">
                                                <span class="feather icon-camera"></span>
                                            </div>
                                            <span class="blue-grey darken-1 block">영상촬영 중</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-6">
                                        <div class="text-center">
                                            <div id="shootProc2" class="avatar avatar-xxl bg-blue-grey bg-lighten-3">
                                                <span class="feather icon-camera"></span>
                                            </div>
                                            <span class="blue-grey darken-1 block">영상촬영 완료</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-6">
                                        <div class="text-center">
                                            <div id="shootProc4" class="avatar avatar-xxl bg-blue-grey bg-lighten-3">
                                                <span class="feather icon-camera"></span>
                                            </div>
                                            <span class="blue-grey darken-1 block">제품촬영 중</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-6">
                                        <div class="text-center">
                                            <div id="shootProc5" class="avatar avatar-xxl bg-blue-grey bg-lighten-3">
                                                <span class="feather icon-camera"></span>
                                            </div>
                                            <span class="blue-grey darken-1 block">제품촬영 완료</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
               	</div>
             	<div class="col-md-6 col-12">
                    <div class="card">
                      	<div class="card-header">
                       		<h4 class="card-title" id="moveGrading">촬영중인 제품 정보</h4>
                        </div>
	                  	<div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded d-flex">
                        	<div class="card-body pt-2">
		                    	<div class="row">
	                           		<div class="form-body col-md-8">
	                                	<div class="form-group row">
	                                   		<label class="col-md-3 label-control text-bold-700" for="eventRegInput3">상품번호</label>
	                                      	<div class="col-md-8">
	                                            <input readonly type="text" class="form-control" id="idProductId">
	                                        </div>
	                                   	</div>
	                               	</div>
	                           		<div class="form-body col-md-8">
	                                	<div class="form-group row">
	                                   		<label class="col-md-3 label-control text-bold-700" for="eventRegInput3">상품명</label>
	                                      	<div class="col-md-8">
	                                            <input readonly type="text" class="form-control" id="idProductName">
	                                        </div>
	                                   	</div>
	                               	</div>
	                           		<div class="form-body col-md-4">
	                                	<div class="form-group row">
	                                      	<div class="col-md-8">
				                        	<button type="button" class="float-center btn btn-blue btn-min-width" onclick="javascript:fn_move_grading()">등급판정</button>
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
                  <table id="user_data_table1" class="table table-striped table-hover">
                    <thead class="text-center">
                    <tr>
                      <th>송장번호</th>
                      <th>상품번호</th>
                      <th>상품명</th>
                      <th>영상촬영여부</th>
                      <th>제품촬영여부</th>
                      <th>셀러명</th>
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
<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>
<!-- END: Page JS-->

<script>
  $(document).ready(function() {
    let columnFields = ["tracking_number", "product_id", "product_name", "video_state", "picture_state", "seller_name"];
    let columWidths = [30, 30, 30, 30, 30, 30];

    fn_set_datatable("#user_data_table1");
    init_datatable("${pageContext.request.contextPath}/wmsappadmin/incomshootstatus.json", columnFields, columWidths, fn_tbl_render);
      	
  	setInterval(function () {
       	
      	fn_set_shoot_status();
      	fn_search("#user_data_table1")
      	
    }, 1000);
  })
  
      function fn_tbl_render(data, type, full, meta) {
        
        var title = null;
	   	if (meta.col == 3) {
            if (full.video_state == 'S') {
                return '촬영중'
            } else if (full.video_state == 'F') {
            	return '촬영완료'
	        } else {
                return '준비중'
            }
	   	} else if (meta.col == 4) {
          	if (full.picture_state == 'S') {
            	return '촬영중'
         	} else if (full.picture_state == 'F') {
             	return '촬영완료'
    	  	} else {
         		return '준비중'
          	}
	    } else {
            if(data != null) {
                return data;
            } else{
                return "";
            }
        }
    }

  // 촬영 상태에 따라 상단 Avatar영역의 색상을 변경한다. 
  var product_id = "";
  function fn_set_shoot_status() {
	  var params = "{}";
	  	  
	  $.ajax({
      	url : "${pageContext.request.contextPath}/wmsappadmin/inspectionState.json",
        type : "POST",
        data : params,
        success : function(result) {
        	
        	if(result.resultCode != "success")
        		return ;
        	        	        	
        	product_id = result.inspection.product_id;
        	var video_state = result.inspection.video_state;
        	var picture_state = result.inspection.picture_state;
        	        		
	       	$(".avatar").removeClass("bg-blue");
	       	$(".avatar").addClass("bg-blue-grey bg-lighten-3");
	       	
	       	if(video_state == 'S') {
		        $("#shootProc1").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc1").addClass("bg-blue");
	       	} else if(video_state == 'F') {
		        $("#shootProc1").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc1").addClass("bg-blue");
		        $("#shootProc2").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc2").addClass("bg-blue");
	       	}
	        		    	
	       	if(picture_state == 'S') {
		        $("#shootProc4").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc4").addClass("bg-blue");
	       	} else if(picture_state == 'F') {
		        $("#shootProc4").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc4").addClass("bg-blue");
		        $("#shootProc5").removeClass("bg-blue-grey bg-lighten-3");
		        $("#shootProc5").addClass("bg-blue");
	       	}
	    	
        	$("#idProductId").val(result.inspection.product_id);
        	$("#idProductName").val(result.inspection.product_name);


        	//영상/제출 촬영이 완료되면 5초후 등급판정 화면으로 자동으로 넘어감
        	if(video_state == 'F' && picture_state == 'F') {

        		$("#moveGrading").text("잠시후, 등급판정 페이지로 이동됩니다.");
        		$("#moveGrading").css({'color':'red'})

              	setTimeout(function () {
              		fn_move_grading();
                }, 5000);
        	}
	 	}
      });
   }
  
  function fn_move_grading() {	
		location.href = "${pageContext.request.contextPath}/wmsappadmin/grading.do?product_id=" + product_id;
		/*
		console.log("START");
			var params = "token=123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890&eca=2222"
			
			$.ajax({
				url : "http://127.0.0.1:28481/api/PSMPTool/launch",
				type : "POST",
				data: params,
				contentType: "text/plain",
				success : function(result) {
					console.log(result);
				},
				error: function (request, status, error) {
		        	console.log("code: " + request.status)
		        	console.log("message: " + request.responseText)
		        	console.log("error: " + error);
		    	}
			});		
			*/

  }
  
  function fn_search(datatable_id) {
	  	  
    let table = $(datatable_id).DataTable();
    let numCols = table.columns().nodes().length;
    let search = null;

    for(let i=0; i<numCols; i++) {
      table.column(i).search('');
    }

    search = table.column(0).search("");

    if(search != null) {
      search.draw();
    }
    
  }   // 검색

</script>

</body>
<!-- END: Body-->

</html>