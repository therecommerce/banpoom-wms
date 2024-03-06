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
            </div>
            <div class="content-body">
                    <div class="content-overlay"></div>

                    <section class="row">
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
                    </section>
                </div>
        </div>
    </div>
    <!-- END: Content-->

<div class="sidenav-overlay"></div>
<div class="drag-target"></div>


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

  	})
  
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
                    
                } else if (result.resultCode == "fail") {
                    alert(result.message);
                } else {
                    alert(result.message);
                }
            }
        });
    }
    
    

    /*
    	var issueID = 1;

    	var _inch = 2;
		var barCodeData = barcode;
		var barCodeSymbol = 7;
		var barCodeHeight = 100;
		var barWidth = 6;
		var nBarWidth = parseInt(barWidth / 2);
		var barCodeHri = 2;

		setLabelId(issueID);

		checkLabelStatus();
		clearBuffer();
		if(_inch == 2) {
			// 2inch sample
			setWidth(432);
		} else if(_inch == 3) {
			// 3inch sample
			setWidth(576);
		} else if(_inch == 4) {
			// 4inch sample
			setWidth(832);
		} else {
			// error
			return;
		}
		draw1DBarcode(barCodeData, 50, 50, barCodeSymbol, nBarWidth, barWidth, barCodeHeight, 0, barCodeHri);
		printBuffer();

		var strSubmit = getLabelData();

		console.log(strSubmit);

		issueID++;
		requestPrint("Printer1", strSubmit, viewResult);

    }
    
    
	function viewResult(result) {
		alert("Print Result=" + result);
	}
	*/



</script>

</body>
<!-- END: Body-->

</html>