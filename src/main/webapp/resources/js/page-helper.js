/*=========================================================================================
    File Name: page-users.js
    Description: Users page
    --------------------------------------------------------------------------------------
    Item Name:
    Author: sykim
    Author URL:
==========================================================================================*/

//   MSRHIST : 측정이력조회
//             H - HeartBeat, B - Breath, S - Stress, X - XBody
//             L - List, C - Chart
// DIAGNOSIS : 진단이력 조회
//USRREGINFO : 회원등록정보
//    CONFIG : 설정/관리
//             U - User관리, M - Manager, A - Auth 관리, D - Device 관리, R - Risk관리
//             L - List, U - User

const LEFT_MENU = {
	DASHBOARD_U: "0",
	DASHBOARD_M: "0.1",
	MSRHIST_HL: "1.1.1",
	MSRHIST_HC: "1.1.2",
	MSRHIST_BL: "1.2.1",
	MSRHIST_BC: "1.2.2",
	MSRHIST_SL: "1.3.1",
	MSRHIST_SC: "1.3.2",
	MSRHIST_X : "1.4.1",
	DIAGNOSIS_L: "2",
	USRREGINFO: "3",
	CONFIG_UL : "4.1",
	CONFIG_UD : "4.1.1",
	CONFIG_OL : "4.2",
	CONFIG_OD : "4.2.1",
	CONFIG_ML : "4.3",
	CONFIG_MD : "4.3.1",
	CONFIG_A  : "4.4",
	CONFIG_DL : "4.5.1",
	CONFIG_DD : "4.5.1.1",
	CONFIG_DU : "4.5.2",
	CONFIG_DUD : "4.5.2.1",
	CONFIG_R  : "4.6",
	SITE_SL    : "5.1",
	SITE_SD    : "5.1.1",
	SITE_UL    : "5.2",
	SITE_UD    : "5.2.1"
}

const STATUS_COLOR = {
	NORMAL: "#00B5B8",
	ATTENTION : "#FF9EAC",
	WARNING  : "#FF7D4D",
	DANGER: "#FF4558"

}

function get_menu_uri(menu) {

	if(menu == LEFT_MENU.DASHBOARD_U)
		return "dashboardUser.do";
	else if(menu == LEFT_MENU.DASHBOARD_M)
		return "dashboardManager.do";
	else if(menu == LEFT_MENU.MSRHIST_HL)
		return "heartbeatList.do";
	else if(menu == LEFT_MENU.MSRHIST_HC)
		return "heartbeatChart.do";
	else if(menu == LEFT_MENU.MSRHIST_BL)
		return "breathList.do";
	else if(menu == LEFT_MENU.MSRHIST_BC)
		return "breathChart.do";
	else if(menu == LEFT_MENU.MSRHIST_SL)
		return "stressList.do";
	else if(menu == LEFT_MENU.MSRHIST_SC)
		return "stressChart.do";
	else if(menu == LEFT_MENU.MSRHIST_X)
		return "xbodyReport.do";
	else if(menu == LEFT_MENU.DIAGNOSIS_L)
		return "diagList.do";
	else if(menu == LEFT_MENU.DIAGNOSIS_D)
		return "diagDetail.do";
	else if(menu == LEFT_MENU.USRREGINFO)
		return "xbodyReport.do";
	else if(menu == LEFT_MENU.CONFIG_UL)
		return "userList.do";
	else if(menu == LEFT_MENU.CONFIG_UD)
		return "userDetail.do";
	else if(menu == LEFT_MENU.CONFIG_OL)
		return "operatorList.do";
	else if(menu == LEFT_MENU.CONFIG_OD)
		return "operatorDetail.do";
	else if(menu == LEFT_MENU.CONFIG_ML)
		return "managerList.do";
	else if(menu == LEFT_MENU.CONFIG_MD)
		return "managerDetail.do";
	else if(menu == LEFT_MENU.CONFIG_A)
		return "authList.do";
	else if(menu == LEFT_MENU.CONFIG_DL)
		return "deviceList.do";
	else if(menu == LEFT_MENU.CONFIG_DD)
		return "deviceDetail.do";
	else if(menu == LEFT_MENU.CONFIG_DU)
		return "deviceUserList.do";
	else if(menu == LEFT_MENU.CONFIG_DUD)
		return "deviceUserDetail.do";
	else if(menu == LEFT_MENU.CONFIG_R)
		return "alarmList.do";
	else if(menu == LEFT_MENU.SITE_SL)
		return "siteList.do";
	else if(menu == LEFT_MENU.SITE_SD)
		return "siteDetail.do";
	else if(menu == LEFT_MENU.SITE_UL)
		return "sManagerList.do";
	else if(menu == LEFT_MENU.SITE_UD)
		return "sManagerDetail.do";

	return null;

}


var datatable_id = "#user_data_table";

function fn_set_datatable(id) {
	datatable_id = id;
}

function init_datatable(svrUri, columnDatas, columWidths, renderFuncs, search, pageLength) {

	var svrUrl = svrUri;
	var columns = [columnDatas.length];
	var columDefs = [columWidths.length];
	var orderIdx = 0

	//set colum field names
	for(var i = 0; i < columnDatas.length; i++)   {
		var col = {};
		col.data = columnDatas[i];
		col.defaultContent = "-";
		columns[i] = col;

		if(columnDatas[i] == "reg_dt")
			orderIdx  =i;
	}

	//set column width
	//align center for header and body column
	for(var i = 0; i < columWidths.length; i++)   {
		var colDef = {};
		colDef.targets = i;

		if(renderFuncs != null)
			colDef.render = renderFuncs;

		colDef.className = "dt-center";
		colDef.width = columWidths[i];

		if(columnDatas[i] == "rownum" || columnDatas[i] == "checkbox") {
			colDef.orderable = false;
		}

		if(columWidths[i] == 0)
			colDef.visible = false;

		columDefs[i] = colDef;
	}

	if(pageLength == null || pageLength == "")
		pageLength = 10;


	$(datatable_id).dataTable({
		"destroy" : true,
    	"paging" :  true,
	   	"serverSide": true,
	   	"processing": false,
	   	"autoWidth": false,
	    "lengthChange" : true,
	    "pageLength" : pageLength,
		// "searching" : false,
       //  "dom": 'lrtip',
	   	"ajax": {
	   		"url": svrUrl,
	   	    "type": "POST",
	   	    "contentType" : "application/json",
	   	    "data": function (d) {
	   	    	d.customSearch = search;
	   	    	return JSON.stringify(d);
	   	    },
	   	    "dataSrc": function(res) {
	   	    	var data = res.data;
	   	        return data;
	   	    }
	   	},
	   	"columns" : columns,
	   	"columnDefs": columDefs,
	   	"fixedColumns": true,
	   	"order": [[ orderIdx, "desc" ]],
		"sDom": 'ltip',
		"language" : {
			"emptyTable":     "데이터가 없습니다.",
			"info":           "총 _TOTAL_개 의 데이터 중 _START_부터  _END_까지",
			"infoEmpty":      "",
			"infoFiltered":   "(filtered from _MAX_ total entries)",
			"infoPostFix":    "",
			"thousands":      ",",
			"lengthMenu":     "_MENU_ 개씩 보기",
			"loadingRecords": "Loading...",
			"processing":     "",
			"search":         "Search:",
			"zeroRecords":    "검색 결과가 없습니다.",
			"paginate": {
				"first":      "처음",
				"last":       "끝",
				"next":       "다음",
				"previous":   "이전"
			}
		}
	      // responsive: true

    });
}

// Select box초기화
function init_select_box(instance, data) {

    $(instance).select2({
      dropdownAutoWidth: true,
      width: '100%',
      data: data
    });
}


//검색창의 User 상태 Select box초기화
function init_select_status(instance) {
    // Loading array data
    var data = [
        { id: 0, text: get_str_status(0) },
        { id: 1, text: get_str_status(1) },
        { id: 2, text: get_str_status(2) },
        { id: 3, text: get_str_status(3) },
        { id: 4, text: get_str_status(4) }
    ];

    $(instance).select2({
      dropdownAutoWidth: true,
      width: '100%',
      data: data
    });
}

function get_str_status(status) {
	if(status == 0)
		return "전체";
	else if(status == 1)
		return "정상";
	else if(status == 2)
		return "주의";
	else if(status == 3)
		return "관심";
	else if(status == 4)
		return "위급";
	else
		return "없음";
}

//서버 연동 SELECT BOX
function init_select_ajax(instance, svrUri, placeholder) {

	var svrUrl = getContextPath() + "/" + svrUri;

    // Loading remote data
    $(instance).select2({
    	dropdownAutoWidth: true,
    	width: '100%',
    	placeholder: placeholder,
    	ajax: {
    		url: svrUrl,
    		dataType: 'json',
    		delay: 250,
    		data: function (params) {
    			return {
    				search: encodeURIComponent(params.term) // search term
    			};
    		},
    		cache: true
    	},
    	minimumInputLength: 1
    });
}

//검색창의 달력 초기화 (From ~ Start)
function init_calendar(instance) {

	var start = moment().subtract(6, 'days');
    var end = moment();


	// Always Show Calendar on Ranges
	$(instance).daterangepicker({
        startDate: start,
        endDate: end,
		locale: {
			format: 'YYYY/MM/DD'
		},
		ranges: {
			'오늘': [moment(), moment()],
	        '어제': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
	        '지난 일주일': [moment().subtract(6, 'days'), moment()],
	        '지난 30일': [moment().subtract(29, 'days'), moment()],
	        '이번달': [moment().startOf('month'), moment().endOf('month')],
	        '지난달': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
		},
	});
}


function call_ajax(uri, callback){

	var params = $("form[name=parameterVO]").serialize();

	$.ajax({
		url : getContextPath() + "/" + uri,
		type : "POST",
		data: params,
		success : function(result) {
			if(callback != null) {
				callback(result);
			}
		}
	});
}

function open_modal_info(content, callback) {

	$(".modal-header").removeClass("bg-warning");
	$(".modal-header").removeClass("bg-danger");
	$(".modal-header").addClass("bg-info");

	$("#btnClose").text("확인");
	$("#btnYes").hide();

	if(callback != null)
		$('#infoModal').on('hidden.bs.modal', callback);

	$('#modalBody').text(content);
	$('#infoModal').modal('show')
}

function open_modal_warn(content, callback) {

	$(".modal-header").removeClass("bg-warning");
	$(".modal-header").removeClass("bg-info");
	$(".modal-header").addClass("bg-danger");

	$("#btnClose").text("확인");
	$("#btnYes").hide();

	if(callback != null)
		$('#infoModal').on('hidden.bs.modal', callback);

	$('#modalBody').html(content);
	$('#infoModal').modal('show')
}

function open_modal_yesno(content, callback) {

	$(".modal-header").removeClass("bg-danger");
	$(".modal-header").removeClass("bg-info");
	$(".modal-header").addClass("bg-warning");

	$("#btnClose").text("아니오");
	$("#btnYes").show();

	$("#btnYes").click(function() {
		if(callback != null) {
			callback();
		}
    });

	//$('#infoModal').on('hidden.bs.modal', callback);

	$('#modalBody').text(content);
	$('#infoModal').modal('show')
}


function init_input_mask() {
	// Date dd/mm/yyyy
	$('.date-inputmask').inputmask("yyyy-mm-dd");

	$('.phone-inputmask').inputmask("99[9]-999[9]-9999");

	// Email mask
	$('.email-inputmask').inputmask({
		mask: "*{1,20}[.*{1,20}][.*{1,20}][.*{1,20}]@*{1,20}[*{2,6}][*{1,2}].*{1,}[.*{2,6}][.*{1,2}]",
		greedy: false,
		onBeforePaste: function (pastedValue, opts) {
			pastedValue = pastedValue.toLowerCase();
			return pastedValue.replace("mailto:", "");
		},
		definitions: {
			'*': {
				validator: "[0-9A-Za-z!#$%&'*+/=?^_`{|}~/-]",
				cardinality: 1,
				casing: "lower"
			}
		}
	});

	// Decimal
	$('.decimal-inputmask').inputmask({ "alias": "decimal" , "radixPoint": "." });
}

function fn_search() {

	var table = $('#user_data_table').DataTable();

	var numCols = table.columns().nodes().length;
	for(var i=0; i<numCols; i++) { table.column(i).search(''); }

	var search = null;
	$(".search_tag").each(function() {
	    var val = $(this).val();
	    var idx = $(this).attr('name');

	    console.log(val + ", " + idx);

	    if(search == null)
	    	search = table.column(idx).search(val);
	    else
	    	search = search.column(idx).search(val);
	});

	if(search != null)
		search.draw();
}

function fn_get_body_status(type, val) {

	if(type == 'H') { //HearBeat
		return fn_get_heartbeat_status(val);
	} else if(type == 'B') { //Breath
		return fn_get_breath_status(val);
	}
}

function fn_get_heartbeat_status(val) {
	if(val >= 70 && val <= 100)
		return 'N';
	else if(val >= 46 && val <= 70)
		return 'A';
	else if(val >= 26 && val <= 45)
		return 'W';
	else if(val >= 0 && val <= 25)
		return 'D';
	else
		return 'N';
}

function fn_get_breath_status(val) {

	if(val >= 14 && val <= 18)
		return 'N';
	else if(val == 13 || (val >= 19 && val <= 22))
		return 'A';
	else if(val == 12 || (val >= 23 && val <= 24))
		return 'W';
	else if(val >= 25 || (val >= 0 && val <= 11))
		return 'D';
	else
		return 'N';
}

    function fn_print_barcode(barcode) {

    	window.open("http://127.0.0.1:8080/LabelPrinter.html?barcode=" + barcode, 'pop01', 'top=10, left=10, width=10, height=10, status=no, menubar=no, toolbar=no, resizable=no');
    }



