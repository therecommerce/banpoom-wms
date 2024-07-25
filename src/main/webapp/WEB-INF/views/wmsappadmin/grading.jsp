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

				<!--입고영상 -->
				<div class="col-md-4 col-12">
					<div class="card bg-calendar">
						<div class="card-header">
							<h4 class="card-title">입고영상</h4>
						</div>
						<div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
							<div class="card-body">

								<div class="responsive-video-container">
									<!-- <video id="preview" width="100%" height="240" autoplay></video> -->
									<video id="preview" class="responsive-video" autoplay></video>
								</div>
								<video id="recording" width="320" height="240" controls></video>

								<div class="text-center">
									<button type="button" class="btn btn-secondary mt-1" id="startBtn" onclick="javascript:startRecording()">영상촬영</button>
									<button type="button" class="btn btn-secondary mt-1" id="stopBtn" onclick="javascript:stopRecording()" disabled>촬영종료</button>
									<button type="button" class="btn btn-secondary mt-1" id="playBtn" onclick="javascript:playVideo()" disabled>영상재생</button>
									<button type="button" class="btn btn-secondary mt-1" id="saveBtn" onclick="javascript:saveVideo()" disabled>영상저장</button>
									<!--
									<button type="button" id="idZoomOut" class="btn btn-blue mt-1" onclick="javascript:zoomOut()">ZoomOut</button>
									<button type="button" id="idZoomIn" class="btn btn-blue mt-1" onclick="javascript:zoomIn()">ZoomIn</button>
									-->
								</div>
								<div>
								    <button type="button" id="idZoomOut" class="btn btn-blue mt-1" onclick="javascript:zoomOut()">ZoomOut</button>
                                    <button type="button" id="idZoomIn" class="btn btn-blue mt-1" onclick="javascript:zoomIn()">ZoomIn</button>
								</div>
								    <!--
                                    <video class="height-350 width-550" controls>
                                        <source id='mp4' src="${pageContext.request.contextPath}/file/down/image/${videoUrl}" type='video/mp4' />
                                    </video>
                                    -->
							</div>
						</div>

					</div>

				</div>

				<!-- 제품사진 -->
				<div class="col-md-8 col-12">
					<div class="card bg-usage">
						<div class="card-header">
							<h4 class="card-title">제품사진</h4>
						</div>
						<div class="card-content bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
							<div class="card-body pt-0">

								<canvas id="canvas_video" width="640" height="480" style="display: none;"></canvas>
								<canvas id="canvas_front" width="640" height="480" style="display: none;"></canvas>
								<canvas id="canvas_side" width="640" height="480" style="display: none;"></canvas>
								<canvas id="canvas_back" width="640" height="480" style="display: none;"></canvas>
								<canvas id="canvas_defect" width="640" height="480" style="display: none;"></canvas>

								<ul class="list-inline">
									<li class="list-inline-item text-center">
										<div class="bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
											<div class="text-center">
												<img id="img_front" src="default-image.jpg" class="rounded" alt="ProductImage" height="140" width="140">
											</div>
										</div>
										<button type="button" class="btn btn-blue mt-1" onclick="javascript:capturePhoto('앞면', 'img_front', 'canvas_front')">앞면</button>
									</li>
									<li class="list-inline-item text-center">
										<div class="bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
											<div class="text-center">
												<img id="img_side" src="default-image.jpg" class="rounded" alt="ProductImage" height="140" width="140">
											</div>
										</div>
										<button type="button" class="btn btn-blue mt-1" onclick="javascript:capturePhoto('측면', 'img_side', 'canvas_side')">측면</button>
									</li>
									<li class="list-inline-item text-center">
										<div class="bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
											<div class="text-center">
												<img id="img_back" src="default-image.jpg" class="rounded" alt="ProductImage" height="140" width="140">
											</div>
										</div>
										<button type="button" class="btn btn-blue mt-1" onclick="javascript:capturePhoto('뒷면', 'img_back', 'canvas_back')">뒷면</button>
									</li>
									<li class="list-inline-item text-center">
										<div class="bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex">
											<div class="text-center">
												<img id="img_defect" src="default-image.jpg" class="rounded" alt="ProductImage" height="140" width="140">
											</div>
										</div>
										<button type="button" class="btn btn-blue mt-1" onclick="javascript:capturePhoto('하자', 'img_defect', 'canvas_defect')">하자</button>
									</li>
								</ul>
								<button type="button" class="btn btn-blue mt-1" onclick="javascript:saveAllPhoto()">사진저장</button>
							</div>
						</div>
					</div>
				</div>

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
										<label class="col-md-3 label-control text-bold-700 text-righ">반품송장번호</label>
										<div class="col-md-8">
											<input type="text" class="form-control" value="${inspection.tracking_number}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-md-3 label-control text-bold-700 text-right">상품번호</label>
										<div class="col-md-8">
											<input type="text" class="form-control" value="${inspection.product_id}">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-md-3 label-control text-bold-700 text-right">원상품명</label>
										<div class="col-md-8">
											<input type="text" class="form-control" value="${inspection.product_name}">
										</div>
									</div>
									<div class="form-group row mb-0">
										<label class="col-md-3 label-control text-bold-700 text-right">반품사유</label>
										<div class="col-md-8">
											<input type="text" class="form-control"  value="${inspection.return_reason}">
										</div>
									</div>
									<div class="form-group row mb-0">
										<label class="col-md-3 label-control text-bold-700 text-right">셀러명</label>
										<div class="col-md-8">
											<input type="text" class="form-control"  value="${inspection.seller_name}">
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
			</section>
			<!-- <div style="display:none;">이 컴퓨터의 IP 주소: <span id="client-ip"></span></div> -->
		</div>
	</div>
</div>
<!-- END: Content-->
<style>
    .responsive-video-container {
        position: relative;
        width: 100%;
        padding-bottom: 56.25%;
    }
    .responsive-video {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
</style>


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
<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/app-invoice.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bxlcommon.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bxllabel.js"></script>

<!-- END: Page JS-->

<script>
    const se = document.createElement('script');
    se.src = 'https://ipinfo.io?callback=callback';
    document.body.appendChild(se);
    document.body.removeChild(se);
    function callback(data) {
        document.getElementById('client-ip').textContent = data.ip;
    }



	let mediaRecorder;
	let recordedBlobs;
	const preview = document.getElementById('preview');
	const recording = document.getElementById('recording');

	//사진찍기
	let videoStream;
	let videoTrack;
	let zoomLevel = 0;

	$(document).ready(function() {

		init();

		$("#recording").hide();

		$(".grading").on('click', function(event){
			$(".grading").removeClass("bg-red");
			$(".grading").addClass("bg-blue-grey");
			$(this).removeClass("bg-blue-grey");
			$(this).addClass("bg-red");
		});

	})

	async function init() {
		try {
			const stream = await navigator.mediaDevices.getUserMedia({
				video: {
					width: 1920,
					height: 1080,
					advanced: [{ zoom: true }]
				}
			});
			preview.srcObject = stream;
			videoStream = stream;
			videoTrack = stream.getVideoTracks()[0];

			// Check if zoom is supported
			const capabilities = videoTrack.getCapabilities();

			if (!capabilities.zoom) {
				$("#idZoomIn").hide();
				$("#idZoomOut").hide();
				console.log('Zoom is not supported on this device.');
			}

			console.log(capabilities);
			console.log(videoTrack.getSettings());

		} catch (error) {
			console.error('Error accessing media devices.', error);
		}
	}

	function capturePhoto(around, imgsrc, canvassrc) {

		const canvas = document.getElementById(canvassrc);
		const context = canvas.getContext('2d');
		context.drawImage(preview, 0, 0, canvas.width, canvas.height);
		const capturedImage = document.getElementById(imgsrc);

		capturedImage.src = canvas.toDataURL('image/png');
		saveButton.prop('disabled', false);
	}

	function saveAllPhoto() {
		savePhoto("canvas_front");
		savePhoto("canvas_side");
		savePhoto("canvas_back");
		savePhoto("canvas_defect");
	}


	function savePhoto(canvassrc) {

		const canvas = document.getElementById(canvassrc);

		const dataUrl = canvas.toDataURL('image/png');
		const blob = dataURLToBlob(dataUrl);
		const formData = new FormData();
		formData.append('files', blob, 'photo.png');
		formData.append('product_id', '${inspection.product_id}'); // product_id를 동적으로 설정하도록 수정하세요
		formData.append('file_types', '앞면'); // file_state를 '사진'으로 설정

		$.ajax({
			url: '${pageContext.request.contextPath}/product-inspection/picture',
			method: 'POST',
			data: formData,
			processData: false,
			contentType: false,
			success: function(response) {
				if (response.header.result_code === "Success") {
					console.log('Photo uploaded successfully');
					alert(response.header.result_msg);
				} else {
					console.error('Error uploading photo:', response.header.result_msg);
					alert(response.header.result_msg);
				}
			},
			error: function(error) {
				console.error('Error uploading photo:', error);
				alert('Error uploading photo');
			}
		});
	}

	function zoomIn() {
		if (videoTrack) {
			const capabilities = videoTrack.getCapabilities();
			const settings = videoTrack.getSettings();
			if (capabilities.zoom && settings.zoom < capabilities.zoom.max) {
				const newZoom = Math.min(settings.zoom + 0.1, capabilities.zoom.max);
				zoomLevel = zoomLevel + 100;
				videoTrack.applyConstraints({ advanced: [{ zoom: zoomLevel }] });
			}
		}
	}

	function zoomOut() {

		if (videoTrack) {
			const capabilities = videoTrack.getCapabilities();
			const settings = videoTrack.getSettings();

			console.log(capabilities.zoom);
			console.log(settings);

			console.log("ttt");
			if (capabilities.zoom && settings.zoom > capabilities.zoom.min) {

				console.log("ttt2");

				zoomLevel = zoomLevel - 100;
				videoTrack.applyConstraints({ advanced: [{ zoom: zoomLevel }] });
			}
		}
	}


	function dataURLToBlob(dataURL) {
		const parts = dataURL.split(',');
		const byteString = atob(parts[1]);
		const mimeString = parts[0].split(':')[1].split(';')[0];
		const buffer = new ArrayBuffer(byteString.length);
		const data = new Uint8Array(buffer);
		for (let i = 0; i < byteString.length; i++) {
			data[i] = byteString.charCodeAt(i);
		}
		return new Blob([buffer], { type: mimeString });
	}


	function startRecording() {
		recordedBlobs = [];
		const options = {mimeType: 'video/webm;codecs=vp9'};
		mediaRecorder = new MediaRecorder(videoStream, options);
		mediaRecorder.ondataavailable = handleDataAvailable;
		mediaRecorder.start();
		console.log('MediaRecorder started', mediaRecorder);

		$("#recording").hide();

		// 버튼 상태 변경
		document.getElementById('startBtn').disabled = true;
		document.getElementById('startBtn').classList.replace('btn-secondary', 'btn-red');
		document.getElementById('stopBtn').disabled = false;
		document.getElementById('playBtn').disabled = true;
		document.getElementById('saveBtn').disabled = true;
	}

	function stopRecording() {
		mediaRecorder.stop();
		console.log('Recorded Blobs: ', recordedBlobs);
		recording.src = window.URL.createObjectURL(new Blob(recordedBlobs, {type: 'video/webm'}));

		// 버튼 상태 변경
		document.getElementById('startBtn').disabled = false;
		document.getElementById('startBtn').classList.replace('btn-red', 'btn-secondary');
		document.getElementById('stopBtn').disabled = true;
		document.getElementById('playBtn').disabled = false;
		document.getElementById('saveBtn').disabled = false;
	}
	function handleDataAvailable(event) {
		if (event.data && event.data.size > 0) {
			recordedBlobs.push(event.data);
		}
	}

	function playVideo() {
		$("#recording").show();

		const superBuffer = new Blob(recordedBlobs, {type: 'video/webm'});
		recording.src = window.URL.createObjectURL(superBuffer);
		recording.controls = true;
		recording.play();
	}

	function saveVideo() {
		const blob = new Blob(recordedBlobs, { type: 'video/webm' });
		const formData = new FormData();
		formData.append('files', blob, 'video.webm');
		formData.append('product_id', '${inspection.product_id}'); // product_id를 동적으로 설정하도록 수정하세요

		$.ajax({
			url: '${pageContext.request.contextPath}/product-inspection/video',
			method: 'POST',
			data: formData,
			processData: false,
			contentType: false,
			success: function(response) {
				if (response.header.result_code === "Success") {
					console.log('Video uploaded successfully');
					alert(response.header.result_msg);
				} else {
					console.error('Error uploading video:', response.header.result_msg);
					alert(response.header.result_msg);
				}
			},
			error: function(error) {
				console.error('Error uploading video:', error);
				alert('Error uploading video');
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

		//alert("fn_inspection_done")
		var params = {
			'product_grade': fn_selected_grade(),
			'inspection_opinion': $("#inspection_opinion").val(),
			'product_id': '${inspection.product_id}'
		}

		let url = "${pageContext.request.contextPath}/product-inspection";
		fn_call_ajax(url, params, function(result) {
			console.log(result);
			if (result.header.result_code == "Success") {
				location.href = "${pageContext.request.contextPath}/wmsappadmin/incomshoot.do"

			} else {
				alert(result.header.result_msg);
			}
		});
	}

	function fn_make_barcode() {
		//fn_print_barcode("1234567890123");
		//fn_inspection_done();
		//return ;

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

