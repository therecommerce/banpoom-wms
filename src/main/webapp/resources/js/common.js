// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/vendors.min.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>');
// document.write('<%--<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>--%>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app-menu.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/js/core/app.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>');
// document.write('<script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>');

let side_MENU = {
    sidebar: "0.0",
    userGrade: "1.1",
    editToLogin: "1.2",
    userInfoEdit: "1.2.1",
    alarm: "1.3",
    qnaBoard: "1.4",
    qnaDetail: "1.4.1",
    qnaRegister: "1.4.2",
    notice: "1.5",
    noticeDetail: "1.5.1",


    commissionRegisterReturnItem: "2.0.1",
    commissionItemRegisterSingle: "2.0.2",
    itemRegisterSingle: "2.0.3",
    uniteMonitoring: "2.2",
    commissionSaleList: "2.3.1",
    commissionSaleListDetail: "2.3.2",
    commissionSaleGradeD: "2.3.3",
    commissionOnSale: "2.3.4",
    directSale: "2.3.5",
    directSaleEdit: "2.3.6",
    orderDeliveryList: "2.4.1",
    returnManagement: "2.4.2",
    calculate: "2.5",
    management: "2.6",
    itemQnaBoard: "2.7.1",
    itemQnaDetailBefore: "2.7.1.1",
    itemQnaDetailAfter: "2.7.1.2",
    review: "2.7.2",
    salesPresent: "2.8.1",
    customerAnalysisChart: "2.8.2",


    orderReturnDetail: "3.0",
    detailTopStatus: "3.1",
    commissionDonateBulk: "3.2",
    commissionDonateReturnBasic: "3.3",
    commissionRecoveryBulk: "3.4",
    commissionRecoveryReturnBasic: "3.5",
    commissionDiscardBulk: "3.6",
    commissionDiscardReturnBasic: "3.7",
    commissionChangePrice: "3.8",
    recoveryDetail: "4.0",
    donateDetail: "4.1",
    discardDetail: "4.2",
    managementDetail : "4.3"
}

// if(menu == LEFT_MENU.DASHBOARD_U)
//     return "dashboardUser.do";
// else if(menu == LEFT_MENU.DASHBOARD_M)
//     return "dashboardManager.do";
// else if(menu == LEFT_MENU.MSRHIST_HL)
//     return "heartbeatList.do";

function fn_chkPage(pageName, data) {
    let url = '';
    switch (pageName) {
        case side_MENU.sidebar:
            url = 'sideBar.do';
            break;
        case side_MENU.userGrade:
            url = 'userGrade.do';
            break;
        case side_MENU.editToLogin:
            url = 'editToLogin.do';
            break;
        case side_MENU.userInfoEdit:
            url = 'userInfoEdit.do';
            break;
        case side_MENU.alarm:
            url = 'alarm.do';
            break;
        case side_MENU.qnaBoard :
            url = 'qnaBoard.do';
            break;
        case side_MENU.qnaDetail:
            url = 'qnaDetail.do?qna_no=' + data;
            break;
        case side_MENU.qnaRegister :
            url = 'qnaRegister.do';
            break;
        case side_MENU.notice:
            url = 'notice.do';
            break;
        case side_MENU.noticeDetail:
            url = 'noticeDetail.do?notice_no=' + data;
            break;


        case side_MENU.commissionRegisterReturnItem:
            url = 'commissionRegisterReturnItem.do';
            break;
        case side_MENU.commissionItemRegisterSingle:
            url = 'commissionItemRegisterSingle.do';
            break;
        case side_MENU.itemRegisterSingle:
            url = 'itemRegisterSingle.do';
            break;
        case side_MENU.uniteMonitoring:
            url = 'uniteMonitoring.do';
            break;
        case side_MENU.commissionSaleList:
            url = 'commissionSaleList.do';
            break;
        case side_MENU.commissionSaleListDetail:
            url = 'commissionSaleListDetail.do?product_id=' + data;
            break;
        case side_MENU.commissionSaleGradeD:
            url = 'commissionSaleGradeD.do';
            break;
        case side_MENU.commissionOnSale:
            url = 'commissionOnSale.do';
            break;
        case side_MENU.directSale:
            url = 'directSale.do';
            break;
        case side_MENU.directSaleEdit:
            url = 'directSaleEdit.do?product_id=' + data;
            break;
        case side_MENU.orderDeliveryList:
            url = 'orderDeliveryList.do';
            break;
        case side_MENU.returnManagement:
            url = 'returnManagement.do';
            break;
        case side_MENU.calculate:
            url = 'calculate.do';
            break;
        case side_MENU.management:
            url = 'management.do';
            break;
        case side_MENU.itemQnaBoard:
            url = 'itemQnaBoard.do';
            break;
        case side_MENU.itemQnaDetailBefore:
            url = 'itemQnaDetailBefore.do';
            break;
        case side_MENU.itemQnaDetailAfter:
            url = 'itemQnaDetailAfter.do';
            break;
        case side_MENU.review:
            url = 'review.do';
            break;
        case side_MENU.salesPresent:
            url = 'salesPresent.do';
            break;
        case side_MENU.customerAnalysisChart:
            url = 'customerAnalysisChart.do';
            break;

        case side_MENU.orderReturnDetail:
            url = 'orderReturnDetail.do';
            break;
        case side_MENU.detailTopStatus:
            url = 'detailTopStatus.do';
            break;
        case side_MENU.commissionDonateBulk:
            url = 'commissionDonateBulk.do';
            break;
        case side_MENU.commissionDonateReturnBasic:
            url = 'commissionDonateReturnBasic.do';
            break;
        case side_MENU.commissionRecoveryBulk:
            url = 'commissionRecoveryBulk.do';
            break;
        case side_MENU.commissionRecoveryReturnBasic:
            url = 'commissionRecoveryReturnBasic.do';
            break;
        case side_MENU.commissionDiscardBulk:
            url = 'commissionDiscardBulk.do';
            break;
        case side_MENU.commissionDiscardReturnBasic:
            url = 'commissionDiscardReturnBasic.do';
            break;
        case side_MENU.commissionChangePrice:
            url = 'commissionChangePrice.do';
            break;
        case side_MENU.recoveryDetail:
            url = 'recoveryDetail.do';
            break;
        case side_MENU.donateDetail:
            url = 'donateDetail.do';
            break;
        case side_MENU.discardDetail:
            url = 'discardDetail.do';
            break;
        case side_MENU.managementDetail:
            url = 'managementDetail.do?product_id=' + data;
            break;
    }

    fn_renderPage(url, data);
}

function fn_renderPage(url, data){
    $.ajax({
        url : url,
        type : "POST",
        data : data,
        async : true,
        success : function(result) {
            $('#contentArea').remove();
            $("#contentArea").html(result);
            history.pushState(null, null, url)
        }
    });
}



//     function move(url){
//     //ajax option
//         let ajaxOption = {
//             url : url ,
//             async : true,
//             type : "POST",
//             dataType : "html",
//             cache : false
//         };
//
//     $.ajax(ajaxOption).done(function(data){
//         //Contents 영역 삭제
//         $('#contentArea').children().remove();
//         //Contents 영역 교체
//         $('#contentArea').html(data);
//     });
// };

function move(url, data){
    location.href = url + data;
};

function priceToString(price) {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}

$(document).ready(function() {
    $("#selectAll").click(function () {
        $('input:checkbox[name="selectOne"]').each(function () {
            if ($("#selectAll").is(":checked")) $("input[name=selectOne]").prop("checked", true);
            else $("input[name=selectOne]").prop("checked", false);
        });
    });

    $('input:checkbox[name="selectOne"]').each(function () {
        $("input[name=selectOne]").click(function () {
            var total = $("input[name=selectOne]").length;
            var checked = $("input[name=selectOne]:checked").length;

            if (total != checked) {
                $("#selectAll").prop("checked", false);
            }
            else {
                $("#selectAll").prop("checked", true);
            }
        });
    });
});

// 이름 줄여주는 메소드
function longNameCutter(name) {
    if(name.length > 14) {
        return name.substring(0, 8) + "...";
    } else {
        return name;
    }
}

//이미지 추가 메소드
function addImageFile(obj, maxFile){
    var maxFileCnt = maxFile;   // 첨부파일 최대 개수
    var attFileCnt = document.querySelectorAll('.list-inline-item').length;
    var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
    var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수

    // 첨부이미지 개수 확인
    if (curFileCnt > remainFileCnt) {
        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
    }

    for (var i = 0; i < Math.min(curFileCnt, remainFileCnt); i++) {
        const file = obj.files[i];

        // 첨부이미지 검증
        if (imageValidation(file)) {
            // 파일 배열에 담기
            var reader = new FileReader();
            reader.onload = function () {
                filesArr.push(file);
            };
            reader.readAsDataURL(file)

            var imageSrc = URL.createObjectURL(file);
            // 목록 추가
            let htmlData = '';

            htmlData += '<li class="list-inline-item" id="previewBox' + fileNo + '" >';
            htmlData += '<div class="bg-blue-grey bg-lighten-5 border border-light-1 rounded p-1 d-flex"><div class="text-center">';
            htmlData += '<img src="'+ imageSrc +'" id="preview'+fileNo+'" class="rounded" alt="profile image" height="64" width="64">';
            htmlData += '<p class="mt-50 mb-0">'+ longNameCutter(file.name) +'</p>';
            htmlData += '</div><div class="delete-and-discount-config h-100 ml-50 d-flex flex-column justify-content-between"><span class="cursor-pointer d-flex justify-content-center align-items-center">';
            htmlData += `<i class="fa fa-times-circle-o font-size-increase danger" onclick="imageDeleteFile(`+ fileNo +`)"></i>`;
            htmlData += '</span></div></div></li>';

            $('#image_list').append(htmlData);
            fileNo++;
        } else {
            continue;
        }
    }
    // 초기화
    document.querySelector("input[type=file]").value = "";
}

// 이미지 업로드 제한 설정
function imageValidation(obj){
    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
    if (obj.name.length > 100) {
        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
        return false;
    } else if (obj.size > (100 * 1024 * 1024)) {
        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
        return false;
    } else if (obj.name.lastIndexOf('.') == -1) {
        alert("확장자가 없는 파일은 제외되었습니다.");
        return false;
    } else if (!fileTypes.includes(obj.type)) {
        alert("첨부가 불가능한 파일은 제외되었습니다.");
        return false;
    } else {
        return true;
    }
}
// 이미지 제거
function imageDeleteFile(num) {
    document.querySelector("#previewBox" + num).remove();
    filesArr[num].is_delete = true;
}

// 상세페이지 이동x. 알림에 변수 설정 후 상세페이지 추가필요
function movePage(title) {

    switch (title) {
        case '반품 구조대 도착/입고':
        case '최종 검수 대기':
            move('consignment/inspection.do', '');
            break;
        case '배송 요청':
            move('consignment/orderDelivery.do', '');
            break;
            case '반품요청':
            move('consignment/returnDelivery.do', '');
            break;
        case 'Q&A 문의 등록':
            move('', '');
            break;
        case '1:1문의(셀러)':
            move('customer/manOnManQnaSeller.do', '');
            break;
        case '사업자등록 승인 요청':
        case '반품수거보관서비스(리턴베이직2) 승인 요청':
            move('sellerManagement.do', '');
            break;
        case '반품수거보관 상품 등록':
        case '보관 처리':
        case '결제완료':
        case '배송시작':
            move('keeping/keepProduct.do', '');
            break;
    }

    function fn_saveSearch() {
        window.history.back();
        setTimeout(function() {
            fn_search();
        }, 1500);
    }
}


