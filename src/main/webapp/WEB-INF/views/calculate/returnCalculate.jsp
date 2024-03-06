<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
                <h3 class="content-header-title mb-50">반품수거/보관상품 정산관리</h3>
            </div>
            <div class="content-header-right col-md-6 col-12">
                <div class="float-md-right">
                </div>
            </div>
        </div>
        <hr>
        <div class="content-body">
            <!-- 검색 필터 -->
            <section>
                <div class="border border-light rounded p-2 mb-6">
                    <form class="form form-horizontal form-bordered">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="card">
                                    <div class="card-content">
                                        <div class="card-body height-60">
                                            <p class="sub-heading">이번달 정산 금액 (${calculateVO.this_month_cal_date})</p>
                                            <span style="font-size: 25px;"><fmt:formatNumber type="number" value="${calculateVO.this_month_cal_price}"/>원</span><br>
                                            <c:if test="${calculateVO.deffrent_this_month_price >= 0}">
                                                <span style="color: red">(전월대비 +<fmt:formatNumber type="number" value="${calculateVO.deffrent_this_month_price}"/>원)</span>
                                            </c:if>
                                            <c:if test="${calculateVO.deffrent_this_month_price < 0}">
                                                <span style="color: blue">(전월대비 <fmt:formatNumber type="number" value="${calculateVO.deffrent_this_month_price}"/>원)</span>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-content">
                                        <div class="card-body height-60">
                                            <p class="sub-heading">다음달 정산 예정 금액 (${calculateVO.next_month_cal_date})</p>
                                            <span style="font-size: 25px"><fmt:formatNumber type="number" value="${calculateVO.next_month_cal_price}"/>원</span><br>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <c:if test="${calculateVO.deffrent_next_month_price >= 0}">
                                                <span style="color: red">(전월대비 +<fmt:formatNumber type="number" value="${calculateVO.deffrent_next_month_price}"/>원)</span>
                                            </c:if>
                                            <c:if test="${calculateVO.deffrent_next_month_price < 0}">
                                                <span style="color: blue">(전월대비 <fmt:formatNumber type="number" value="${calculateVO.deffrent_next_month_price}"/>원)</span>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content col-md-10">
                                <div class="text-center">
                                    <div style="display: flex; align-items: center; justify-content: center; height: 100%;">
                                        <a onclick="chagneChartData('before')"><i class="font-large-1 feather icon-chevron-left"></i></a>
                                        <div style="display: block;">
                                            <span id="chartDateRange" class="font-medium-4"></span>
                                        </div>
                                        <a onclick="chagneChartData('after')"><i class="font-large-1 feather icon-chevron-right"></i></a>
                                    </div>
                                </div>
                                <div id="chart" class="height-100"></div>
                            </div>
                        </div>
                    </form>
                </div>
            </section>

            <!-- 리스트 -->
            <section>
                <div class="users-list-table">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <button class="nav-link btn btn-sm btn-outline-blue float-right" type="button" onclick="exportExcel();">다운로드</button>
                                <!-- datatable start -->
                                <div class="table-responsive">
                                    <table id="user_data_table" class="table table-striped table-hover">
                                        <thead class="text-center">
                                        <tr>
                                            <th>정산번호</th>
                                            <th>정산일</th>
                                            <th>정산기간</th>
                                            <th>정산 상태</th>
                                            <th>셀러수(명)</th>
                                            <th>보관 상품수(개)</th>
                                            <th>총 청구금액</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                    </table>
                                </div>
                                <!-- datatable ends -->
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

<!-- Modal -->
<div class="modal fade text-left" id="calculateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey bg-lighten-5">
                <h4 class="modal-title" id="myModalLabel1">상세 정산 내역</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div>
                    <span id="calDate"></span>
                </div>
                <div class="border border-light rounded bg-blue-grey bg-lighten-5 p-2 mb-2">
                    <ul class="list-group">
                        <li class="list-group-item border-0 p-50 d-flex justify-content-between">
                            <div class="cost-title mr-2">
                                <p class="mb-0 font-weight-bold"></p>
                                <button id="" disabled class="btn btn-sm btn-outline-blue"> 정산예정</button>
                                <hr style="">
                                <p class="mb-0">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-xs-8 col-sm-6">
                                            <span>이달 정산(예정) 금액</span><br>
                                            <span ><strong id="thisMonthCalculateTotal"></strong></span><br>
                                            <span class="small">이달 정산 금액은 전월 1일부터 말일까지의 정산금액입니다.</span>
                                        </div>
                                        <div class="col-xs-4 col-sm-6">
                                            <span id="sellerName">셀러명 : </span><span id="adminName">처리자 : </span><br>
                                            <span id="bankAccount">입금계좌 : </span><span id="calDt">정산일시 : </span><br>
                                            <span id="calCount">정산건수 : </span><span></span><br>
                                        </div>
                                    </div>
                                </div>
                                </p>
                            </div>
                            <span class="font-weight-bold" id="calculateTotalPrice"></span>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li class="list-group-item  border-0 p-50 d-flex justify-content-between">
                            <span class="mr-2" id="productPrice"></span>
                            <div>

                            </div>
                        </li>
                        <div class="modal-body">
                            <p class="mb-0" id="commission">
                            <h4 class="card-title bg-blue bg-lighten-5 border-top p-1 mb-1">
                                일반 정산 요약
                                <span class="float-right">1</span><span class="float-right">2</span><span class="float-right">3</span>
                                <div></div>
                            </h4>

                            <table id="calDetail" class="table table-striped table-hover">
                                <thead class="text-center">
                                <tr>
                                    <th>상품유형</th>
                                    <th>주문번호</th>
                                    <th>상품번호</th>
                                    <th>상품명</th>
                                    <th>구매자</th>
                                    <th>상품가격</th>
                                    <th>수수료</th>
                                    <th>정산금액</th>
                                    <th>구매일</th>
                                    <th>구매확정일</th>
                                </tr>
                                </thead>
                            </table>

                            </p>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

        <!-- BEGIN: Page Vendor JS-->
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/ui/prism.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/datatables.checkboxes.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
        <!-- END: Page Vendor JS-->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.14.3/xlsx.full.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.8/FileSaver.min.js"></script>

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
        <script src="${pageContext.request.contextPath}/resources/app-assets/vendors/js/charts/apexcharts/apexcharts.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/cards/card-statistics.js"></script>
        <!-- END: Page JS-->

    <script type="text/javascript">

        var chartData = null;
        var chart = null;
        var chartIndex = 0;

        $(document).ready(function() {
            refreshChart();

            $.ajax({
                url : "${pageContext.request.contextPath}/selectReturnCalculateChart.json",
                type : "GET",
                success : function(result) {
                    if(result.resultCode == 'success'){
                        chartData = result.calChart;
                        chartRender(true);
                    }
                }
            });
        });

        function refreshChart(){
            var params = {
                'chartIndex': chartIndex * 6
            }
            $.ajax({

                url : "${pageContext.request.contextPath}/selectReturnCalculateChart.json",
                type : "POST",
                contentType : "application/json;",
                data : JSON.stringify(params),
                success : function(result) {
                    if(result.resultCode == 'success'){
                        chartData = result.calChart;
                        chartRender(true);
                        $("#chartDateRange").text(chartData[0].chart_date + " ~ " + chartData[chartData.length-1].chart_date);
                    }
                }
            });
        }
        function chagneChartData(type){
            if(type == 'after'){
                if(chartIndex != 0){
                    chartIndex--;
                }
            } else {
                chartIndex++;
            }
            refreshChart();
        }

        function chartRender(flag){
            var chartOption = {
                chart: {
                    height: 310,
                    type: 'bar',
                    toolbar: {
                        show: false
                    }
                },
                legend: {
                    show: false
                },
                grid: {
                    show: false
                },
                colors: chartData.map(function(item){
                    return "#0f8e67";
                }),
                plotOptions: {
                    bar: {
                        horizontal: false,
                        columnWidth: '23%',
                        endingShape: 'flat',
                        colors: {
                            backgroundBarColors: '#444',
                            backgroundBarOpacity: 0.1,
                        },
                        distributed: true
                    }
                },
                dataLabels: {
                    enabled: false
                },
                series: [{
                    name: '',
                    data: chartData.map(function(item){
                        return item.cal_price;
                    }),
                }],
                xaxis: {
                    type: 'category',
                    categories: chartData.map(function(item){
                        return item.chart_date;
                    }),
                    axisBorder: {
                        show: false
                    },
                    axisTicks: {
                        show: false
                    },
                    labels: {
                        style: {
                            cssClass: 'apexcharts-xaxis-title',
                        }
                    },
                },
                yaxis: {
                    show: false,
                    labels: {
                        show: true,
                        style: {
                            fontSize: '10',
                            cssClass: 'apexcharts-xaxis-title',
                        },
                        offsetY: 10,
                    },
                },
                fill: {
                    opacity: 1,
                },
                tooltip: {
                    marker: {
                        show: false
                    },
                    x: {
                        show: false
                    },

                    y: {
                        formatter: function (seriesName, index) {
                            return "정산금액: " + (seriesName).toLocaleString('ko-KR') + ' 원  <br>' + "판매금액: " + (chartData[index.dataPointIndex].sell_price).toLocaleString('ko-KR') + ' 원 <br>' + "수수료: " + (chartData[index.dataPointIndex].commission).toLocaleString('ko-KR') + ' 원'
                        }
                    }
                }
            }

            if (chart != null) {
                chart.destroy();
            }
            chart = new ApexCharts(
                document.querySelector("#chart"),
                chartOption
            );
            chart.render();
        }


        $(document).ready(function() {

            let columnFields = ["cal_month_no", "cal_dt",  "firstDay",  "cal_state",  "seller_number",  "remain_count","cal_price_total",  "", "original_price", "return_collection_cost", "storage_cost", "recovery_cost", "forwarding_cost", "offer_management_cost"];
            let columWidths = [ 30, 30, 30, 30, 30, 30, 30, 30, 0, 0, 0, 0, 0, 0];

            init_datatable("${pageContext.request.contextPath}/returnCalculateList.json", columnFields, columWidths, fn_tbl_render);
        });

        function fn_tbl_render(data, type, full, meta) {

            let title = null;

            if (meta.col == 2) {
                return full.firstDay + " - " + full.lastDay;
            } else if (meta.col == 3) {
                if (full.cal_state == '정산예정') {
                    return '<span class="btn btn-sm btn-outline-grey-blue">' + full.cal_state + '</span>'
                } else if (full.cal_state == '정산완료') {
                    return '<span class="btn btn-sm btn-outline-primary">' + full.cal_state + '</span>'
                }
            } else if (meta.col == 4) {
                return full.seller_number + "명";
            } else if (meta.col == 5) {
                return full.remain_count + "개";
            } else if (meta.col == 6) {
                return (full.cal_price_total).toLocaleString('ko-KR') + "원";
            } else if (meta.col == 7) {
                return `<button type="text" class="btn btn-sm btn-outline-blue" onclick="location.href='returnCalDetail.do?cal_month_no=`+ full.cal_month_no +`'">상세보기</button>`;
            }

            return data;
        }

        const excelDownload = document.querySelector('#excelDownload');

        document.addEventListener('DOMContentLoaded', ()=>{
            excelDownload.addEventListener('click', exportExcel);
        });

        function exportExcel(){
            // workbook 생성
            var wb = XLSX.utils.book_new();
            // 시트 생성
            var newWorksheet = excelHandler.getWorksheet();
            // 생성된 워크시트에 이름 만들기
            XLSX.utils.book_append_sheet(wb, newWorksheet, excelHandler.getSheetName());
            // 엑셀파일 생성
            var wbout = XLSX.write(wb, {bookType:'xlsx',  type: 'binary'});
            // 엑셀파일 내보내기
            saveAs(new Blob([stringToUint8ArrayBuffer(wbout)],{type:"application/octet-stream"}), excelHandler.getExcelFileName());
        }

        var excelHandler = {
            getExcelFileName : function(){
                return 'returnCalculate table.xlsx';  // 파일명
            },
            getSheetName : function(){
                return 'returnCalculate table sheet';  // 시트명
            },
            getExcelData : function(){
                // return document.getElementById('user_data_table'); // 테이블 id

                var table = document.getElementById('user_data_table');
                var clonedTable = table.cloneNode(true);
                var rows = clonedTable.getElementsByTagName('tr');

                for (var i = 0; i < rows.length; i++) {
                    var cells = rows[i].getElementsByTagName('td');

                    if (cells.length > 7) {
                        rows[i].removeChild(cells[7]);  // 상세보기 삭제
                    }
                }

                return clonedTable;
            },
            getWorksheet : function(){
                return XLSX.utils.table_to_sheet(this.getExcelData());

                return worksheet;
            }
        }

        function stringToUint8ArrayBuffer(s) {
            var buf = new ArrayBuffer(s.length);
            var view = new Uint8Array(buf);
            for (var i=0; i<s.length; i++) view[i] = s.charCodeAt(i) & 0xFF;
            return buf;
        }

    </script>

</body>
<!-- END: Body-->

</html>
