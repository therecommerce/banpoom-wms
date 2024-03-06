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
  <meta name="description" content="Stack admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
  <meta name="keywords" content="admin template, stack admin template, dashboard template, flat admin template, responsive admin template, web app">
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
            </div>
            <div class="content-body">
                    <div class="content-overlay">
					</div>
                    <section class="row">
                        <div class="col-md-3 col-3">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">원상품사진</h4>
                                </div>
	                            <div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
		                              <div class="text-center">
		                                <img class="card-img img-fluid height-200 width-300"src="${pageContext.request.contextPath}/resources/img/test1.png">
		                              </div>
	                         	</div>
                            </div>
                        </div>
                        <div class="col-md-4 col-8">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">반품정보</h4>
                                </div>
	                            <div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
                                    <div class="card-body pt-0">
	                                    <div class="form-body">
	                                        <div class="form-group row">
	                                            <label class="col-md-3 label-control text-bold-700 text-right"
	                                                for="eventRegInput3">반품송장번호</label>
	                                            <div class="col-md-8">
	                                                <input type="text" class="form-control" id="eventRegInput1" value="${inspection.tracking_number}">
	                                            </div>
	                                        </div>
	                                        <div class="form-group row">
	                                            <label class="col-md-3 label-control text-bold-700 text-right"
	                                                for="eventRegInput3">상품번호</label>
	                                            <div class="col-md-8">
	                                                <input type="text" class="form-control" id="eventRegInput1" value="${inspection.product_id}">
	                                            </div>
	                                        </div>
	                                        <div class="form-group row">
	                                            <label class="col-md-3 label-control text-bold-700 text-right"
	                                                for="eventRegInput3">원상품명</label>
	                                            <div class="col-md-8">
	                                                <input type="text" class="form-control" id="eventRegInput1" value="${inspection.product_name}">
	                                            </div>
	                                        </div>
	                                        <div class="form-group row mb-0">
	                                            <label class="col-md-3 label-control text-bold-700 text-right"
	                                                for="eventRegInput3">반품사유</label>
	                                            <div class="col-md-8">
	                                                <input type="text" class="form-control" id="eventRegInput1" value="${inspection.return_reason}">
	                                            </div>
	                                        </div>
											<div class="form-group row mb-0">
												<label class="col-md-3 label-control text-bold-700 text-right"
													   for="eventRegInput3">셀러명</label>
												<div class="col-md-8">
													<input type="text" class="form-control" id="eventRegInput1" value="${inspection.seller_name}">
												</div>
											</div>
	                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">등급판정 / 검수의견</h4>
                                </div>
	                            <div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded d-flex">
                                    <div class="card-body pt-2">
		                                <div class="row">
		                                    <div class="col-lg-2 col-md-6 col-6">
		                                        <div class="float-left pl-1">
		                                            <div class="grading avatar avatar-xl bg-blue-grey" grade="A">
		                                                <span> A </span>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="col-lg-2 col-md-6 col-6">
		                                        <div class="float-left pl-1">
		                                            <div class="grading avatar avatar-xl bg-blue-grey" grade="B">
		                                                <span>B</span>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="col-lg-2 col-md-6 col-6">
		                                        <div class="float-left pl-1">
		                                            <div class="grading avatar avatar-xl bg-blue-grey" grade="C">
		                                                <span>C</span>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="col-lg-2 col-md-6 col-6">
		                                        <div class="float-left pl-1">
		                                            <div class="grading avatar avatar-xl bg-blue-grey" grade="D">
		                                                <span>D</span>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="col-lg-2 col-md-6 col-6">
		                                        <div class="float-left pt-1">
				                            		<button type="button" class="btn btn-blue btn-min-width" onclick="javascript:fn_make_barcode()">검수 완료</button>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="row pt-2 justify-content-md-center">
			                             	<textarea name="maxlength-textarea" class="form-control textarea-maxlength" id="inspection_opinion" placeholder="검수의견을 입력하세요." maxlength="250" rows="5">${inspection.inspection_opinion}</textarea>
		                              </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 col-12">
                            <div class="card bg-usage">
                                <div class="card-header">
                                    <h4 class="card-title">제품사진</h4>
                                </div>
	                            <div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
                                    <div class="card-body pt-0">
                             			<ul class="list-inline">
										<c:forEach var="fileList" items="${fileList}" varStatus="status">
                                        	<li class="list-inline-item">
                                        	 	<p class="mt-50 mb-0">${fileList.file_state}</p>
                                            	<div class="bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
                                                	<div class="text-center">
                                                    	<img src="${pageContext.request.contextPath}/file/down/image/${fileList.file_id}"
                                                                        class="rounded" alt="ProductImage" height="140" width="140">
                                                  	</div>
                                              	</div>
                                          	</li>
                                        </c:forEach>
                                  		</ul>
                                  	</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-12">
                            <div class="card bg-calendar">
                                <div class="card-header">
                                    <h4 class="card-title">입고영상</h4>
                                </div>
	                            <div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
                              		<div class="card-body pt-0">
	                                    <div class="form-body">
	                                       	<div class="form-group">
											<video class="height-350 width-550" controls>
	    										<source id='mp4' src="${pageContext.request.contextPath}/file/down/image/${videoUrl}" type='video/mp4' />
											</video>
	                                      	</div>
                                     	</div>
                                	</div>
                                </div>

                            </div>

                        </div>
                    </section>
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
<script src="${pageContext.request.contextPath}/resources/js/bxlcommon.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bxllabel.js"></script>

<!-- END: Page JS-->

<script>

 	$(document).ready(function() {
		var product_grade = "${inspection.product_grade}";

		$('.grading').each(function(index,item){
			if($(this).attr("grade") == product_grade) {
	    		$(this).removeClass("bg-blue-grey");
	    		$(this).addClass("bg-red");
			}
		});

		$(".grading").on('click', function(event){
	    	$(".grading").removeClass("bg-red");
	    	$(".grading").addClass("bg-blue-grey");
	    	$(this).removeClass("bg-blue-grey");
	    	$(this).addClass("bg-red");
		});

	  	setInterval(function () {

	  		fn_check_inspection_done();

	    }, 1000);


  	})

 	function fn_check_inspection_done() {
	  var params = "{}";

	  $.ajax({
      	url : "${pageContext.request.contextPath}/wmsappadmin/inspectionState.json",
        type : "POST",
        data : params,
        success : function(result) {
        	if(result.resultCode != "success")
        		return ;

        	if(result.check_yn ==  "Y" && result.product_barcode != null) {
        		fn_print_barcode(result.product_barcode);
        	}
	 	}
      });
   }



	function fn_selected_grade() {
 		var selected_grade = "";

		$('.grading').each(function(index,item){
			if($(this).hasClass("bg-red")) {
				selected_grade = $(this).attr("grade");
			}
		});
		return selected_grade;
 	}

    function fn_inspection_done() {
        var params = {
            'product_grade': fn_selected_grade(),
            'inspection_opinion': $("#inspection_opinion").val(),
            'product_id': '${inspection.product_id}'
        }

        $.ajax({
            url : "${pageContext.request.contextPath}/wmsappadmin/updateInspection.json",
            type : "POST",
            data: params,
            success : function(result) {
                if (result.resultCode == "success") {
					location.href = "${pageContext.request.contextPath}/wmsappadmin/incomshoot.do"

                } else if (result.resultCode == "fail") {
                    alert(result.message);
                } else {
                    alert(result.message);
                }
            }
        });
    }

    function fn_make_barcode() {
        var params = {
                'product_id': '${inspection.product_id}'
       	}

        $.ajax({
            url : "${pageContext.request.contextPath}/wmsappadmin/makeBarCode.json",
            type : "POST",
            data: params,
            success : function(result) {
                if (result.resultCode == "success") {

                	fn_print_barcode(result.barcode);
                	fn_inspection_done();

                } else if (result.resultCode == "fail") {
                    alert(result.message);
                } else {
                    alert(result.message);
                }
            }
        });
    }


</script>

</body>
<!-- END: Body-->

</html>
