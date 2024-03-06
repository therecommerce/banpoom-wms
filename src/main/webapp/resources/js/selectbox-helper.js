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


// Select box초기화 
function init_select_box(instance, data) {

    $(instance).select2({
      dropdownAutoWidth: true,
      width: '100%',
      data: data
    });
}

//Relationship SelectBox초기화 
function init_select_relationship(instance) {
    var data = [
        { id: 1, text: '부모' },
        { id: 2, text: '배우자' },
        { id: 3, text: '형제/자매' },
        { id: 4, text: '친척' },
        { id: 5, text: '친구' },
        { id: 6, text: '기타' }
    ];
    
    init_select_box(instance, data);
}

//질병 유무 초기화 
function init_select_extrainfo(instance) {
    var data = [
        { id: 1, text: '없음' },
        { id: 2, text: '있음' }
    ];
    
    init_select_box(instance, data);
}



//검색창의 User 상태 Select box초기화 
function init_select_status(instance) {
    var data = [
        { id: 0, text: '전체' },
        { id: 1, text: '정상' },
        { id: 2, text: '주의' },
        { id: 3, text: '관심' },
        { id: 4, text: '위급' }
    ];

    init_select_box(instance, data);
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

//서버 조회한 데이터를 사용함.  
function init_select_server(instance, url, initVal) {
		
	call_ajax(url, function(result) {
		if(result.resultCode == "success"){
			
		    init_select_box(instance, result.results);
		    
		    if(initVal != null && initVal != "") {
		    	
		    	$(instance).select2("val", initVal);
		    }
			
		}else if(result.resultCode == "fail"){
		}
	});	
}


