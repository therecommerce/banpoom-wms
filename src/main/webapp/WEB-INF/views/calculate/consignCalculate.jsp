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
        <h3 class="content-header-title mb-50">위탁판매상품 정산관리</h3>
      </div>
    </div>
    <hr>
    <div class="content-body">
      <!-- 상태 정의 -->

      <section>
        <div class="border border-light rounded p-2 mb-6">
          <form class="form form-horizontal form-bordered">
            <div class="row">
              <div class="col-md-2">
                <div class="card">
                  <div class="card-content">
                    <div class="card-body height-60">
                      <p class="sub-heading">이번달 정산 금액 (${calculateVO.this_month_cal_date})</p>
                        <span style="font-size: 25px;">
                          <fmt:formatNumber type="number" value="${calculateVO.this_month_cal_price}"/>원
                        </span><br>&nbsp;&nbsp;&nbsp;&nbsp;
                        <c:if test="${calculateVO.deffrent_this_month_price >= 0}">
                          <span style="color: red">
                            (전월대비 +<fmt:formatNumber type="number" value="${calculateVO.deffrent_this_month_price}"/>원)
                          </span>
                        </c:if>
                        <c:if test="${calculateVO.deffrent_this_month_price < 0}">
                          <span style="color: blue">
                            (전월대비 <fmt:formatNumber type="number" value="${calculateVO.deffrent_this_month_price}"/>원)
                          </span>
                      </c:if>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-content">
                    <div class="card-body height-60">
                      <p class="sub-heading">다음달 정산 예정 금액 (${calculateVO.next_month_cal_date})</p>
                      <span style="font-size: 25px">
                        <fmt:formatNumber type="number" value="${calculateVO.next_month_cal_price}"/>원
                      </span><br>&nbsp;&nbsp;&nbsp;&nbsp;
                      <c:if test="${calculateVO.deffrent_next_month_price >= 0}">
                        <span style="color: red">
                          (전월대비 +<fmt:formatNumber type="number" value="${calculateVO.deffrent_next_month_price}"/>원)
                        </span>
                      </c:if>
                      <c:if test="${calculateVO.deffrent_next_month_price < 0}">
                        <span style="color: blue"><br>
                          (전월대비 <fmt:formatNumber type="number" value="${calculateVO.deffrent_next_month_price}"/>원)
                        </span>
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
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="row">
                <div class="col-md-6">
<%--                  <button type="button" class="btn btn-outline-blue btn-min-width mr-1" data-toggle="modal" data-target="#modal-1">정산</button>--%>
                </div>
                <div class="col-md-6">
                  <button type="button" class="btn btn-outline-blue btn-min-width float-right" onclick="exportExcel();">다운로드</button>
                </div>
              </div>
              <hr class="my-2">
              <!-- datatable started -->
              <div id="app-invoice-wrapper" class="">
                <table id="user_data_table" class="table table-striped table-hover">
                  <thead class="text-center">
                  <tr>
<%--                    <th><input type="checkbox" id="selectAll" name="selectAll" /></th>--%>
                    <th>정산번호</th>
                    <th>정산일</th>
                    <th>정산기간</th>
                    <th>정산 상태</th>
                    <th>판매 상품수</th>
                    <th>상품 판매금액</th>
                    <th>판매 수수료</th>
                    <th>총 정산금액</th>
                    <th></th>
                  </tr>
                  </thead>
                </table>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- Modal-1 -->
    <div class="modal fade text-left" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
         aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header bg-blue-grey bg-lighten-5">
            <h4 class="modal-title" id="myModalLabel20">주문확인</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body text-center">
            <h5 class="my-4">정산 처리하시겠습니까?</h5>
          </div>
          <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
            <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus(full.cal_id);">확인</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal-2 -->
    <div class="modal fade text-left" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
         aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header bg-blue-grey bg-lighten-5">
            <h4 class="modal-title" id="myModalLabel20">발송처리</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="text-center my-2">
              <h5>발송처리 하시겠습니까?</h5>
              <p>발송처리 후 운송장 번호는 변경할 수 있습니다.</p>
            </div>
          </div>
          <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
            <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus('배송중');">확인</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal-3 -->
    <div class="modal fade text-left" id="modal-3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
         aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header bg-blue-grey bg-lighten-5">
            <h4 class="modal-title" id="myModalLabel20">취소요청(품절)</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="text-center my-2">
              <h5>주문을 취소하시겠습니까?</h5>
              <p>확인을 누르면 구매자에게 메시지가 전송됩니다.</p>
            </div>
          </div>
          <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
            <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="javascript:changeStatus('취소');">확인</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal-4 -->
    <div class="modal fade text-left" id="modal-4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
         aria-hidden="true">
      <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header bg-blue-grey bg-lighten-5">
            <h4 class="modal-title" id="myModalLabel20">배송정보 입력</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <h5>3개 물품이 선택됨</h5>
            <table class="table align-middle">
              <thead class="text-center bg-blue-grey bg-lighten-5">
              <tr>
                <th>주문번호</th>
                <th>배송정보</th>
              </tr>
              </thead>
              <tbody>
              <tr class="text-center">
                <td><a href="#">221221-234</a></td>
                <td>
                  <div class="row">
                    <div class="form-group col-md-4 border-bottom-0 mb-0">
                      <label class="sr-only" for="projectinput1">택배사 선택</label>
                      <select id="projectinput1" name="interested" class="form-control">
                        <option value="none" selected="" disabled="">택배사 선택
                        </option>
                        <option value="a">a</option>
                        <option value="b">b</option>
                        <option value="c">c</option>
                      </select>
                    </div>
                    <div class="form-group col-md-8 border-bottom-0 mb-0">
                      <input type="text" id="userinput1" class="form-control"
                             placeholder="택배사 선택" name="">
                    </div>
                  </div>
                </td>
              </tr>
              <tr class="text-center">
                <td><a href="#">221221-234</a></td>
                <td>
                  <div class="row">
                    <div class="form-group col-md-4 border-bottom-0 mb-0">
                      <label class="sr-only" for="projectinput1">택배사 선택</label>
                      <select id="projectinput1" name="interested" class="form-control">
                        <option value="none" selected="" disabled="">택배사 선택
                        </option>
                        <option value="a">a</option>
                        <option value="b">b</option>
                        <option value="c">c</option>
                      </select>
                    </div>
                    <div class="form-group col-md-8 border-bottom-0 mb-0">
                      <input type="text" id="userinput1" class="form-control"
                             placeholder="택배사 선택" name="">
                    </div>
                  </div>
                </td>
              </tr>
              <tr class="text-center">
                <td><a href="#">221221-234</a></td>
                <td>
                  <div class="row">
                    <div class="form-group col-md-4 border-bottom-0 mb-0">
                      <label class="sr-only" for="projectinput1">택배사 선택</label>
                      <select id="projectinput1" name="interested" class="form-control">
                        <option value="none" selected="" disabled="">택배사 선택
                        </option>
                        <option value="a">a</option>
                        <option value="b">b</option>
                        <option value="c">c</option>
                      </select>
                    </div>
                    <div class="form-group col-md-8 border-bottom-0 mb-0">
                      <input type="text" id="userinput1" class="form-control"
                             placeholder="택배사 선택" value="39912041231" name="">
                    </div>
                  </div>
                </td>
              </tr>
              </tbody>
            </table>
          </div>
          <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
            <button type="submit" class="btn btn-blue btn-min-width">저장</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

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
              <div class="cost-title mr-auto">
                <p class="mb-0 font-weight-bold"></p>
                <button id="" disabled class="btn btn-sm btn-outline-blue"> 정산예정</button>
                <hr style="">
                <p class="mb-0">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-xs-8 col-sm-6">
                      <span>이달 정산(예정) 금액</span><br>
                      <span class="font-bold display-4"><strong id="thisMonthCalculateTotal"></strong></span><br>
                      <span class="small">이달 정산 금액은 전월 1일부터 말일까지의 정산금액입니다.</span>
                    </div>
                    <div class="col-xs-4 col-sm-6">
                      <span id="sellerName">셀러명 : </span>
                      <span id="adminName" class="float-right">처리자 : </span><br>
                      <span id="bankAccount">입금계좌 : </span>
                      <span id="calDt" class="float-right">정산일시 : </span><br>
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
                <span id="normalCalculateTotal" class="float-right">1</span><span id="normalCalculateCommission" class="float-right">2</span><span id="normalCalculatePrice" class="float-right">3</span>
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



<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />


<script type="text/javascript">

  var chartData = null;
  var chart = null;
  var chartIndex = 0;
  $(document).ready(function() {
    refreshChart();
    $("#selectAll1").click(function () {
      $('input:checkbox[name="selectOne1"]').each(function () {
        if ($("#selectAll1").is(":checked")) $("input[name=selectOne1]").prop("checked", true);
        else $("input[name=selectOne1]").prop("checked", false);
      });
    });

    $('input:checkbox[name="selectOne1"]').each(function () {
      $("input[name=selectOne1]").click(function () {
        var total = $("input[name=selectOne1]").length;
        var checked = $("input[name=selectOne1]:checked").length;

        if (total != checked) {
          $("#selectAll1").prop("checked", false);
        }
        else {
          $("#selectAll1").prop("checked", true);
        }
      });
    });
  });

  function refreshChart(){
    var params = {
        'chartIndex': chartIndex * 6
    }
    $.ajax({

      url : "${pageContext.request.contextPath}/selectCalculateChart.json",
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
    let columnFields = ["cal_month_no", "cal_dt", "firstDay", "cal_state", "total_product_count", "cal_vprice", "sell_commission", "cal_price_total", ""];
    let columWidths = [20, 20, 20, 60, 120, 50, 60, 60, 10];
    // var columWidths = [];

    init_datatable("${pageContext.request.contextPath}/consignCalculateList.json", columnFields, columWidths, fn_tbl_render, 10 , "");
  });


  function fn_tbl_render(data, type, full, meta) {

    let title = null;

    if (meta.col == 2) {
      return full.firstDay + " - " + full.lastDay;
    }
    if (meta.col == 3) {
      if (full.cal_state == '정산예정') {
        return `<button type="text" class="btn btn-sm btn-outline-grey-blue">정산예정</button>`;
      } else {
        return `<button type="text" class="btn btn-sm btn-outline-primary">정산완료</button>`;
      }
    }
    if(meta.col == 4) {
      return '<td>' + full.total_product_count + '개' + '</td>';
    }
    if (meta.col == 5) {
      return '<td class="float-right">' + (Number)(full.cal_vprice).toLocaleString('ko-KR') + '원</td>';
    }
    if (meta.col == 6) {
      return full.sell_commission.toLocaleString('ko-KR') + "원";
    }
    if (meta.col == 7) {
      return full.cal_price_total.toLocaleString('ko-KR') + "원";
    }
    else if (meta.col == 8) {
      let date = full.firstDay;
      date = date.substring(0,7);

      // return `<button type="text" class="btn btn-sm btn-outline-blue" data-toggle="modal" data-target="#calculateModal" onclick="selectModal('`+ date + "," + full.account_id + `')">상세보기</button>`;
      return `<button type="text" class="btn btn-sm btn-outline-blue" onclick="location.href='calculateDetail.do?cal_month_no=`+ full.cal_month_no +`'">상세보기</button>`;
    } else {
      if(data != null) {
        return data;
      } else {
        return "";
      }
    }

  }
  function fn_tbl_render2(data, type, full, meta) {

    if (meta.col == 0) {
      return full.sell_type
    }
    if (meta.col == 1) {
      if (full.order_request_id == null && full.order_request_id == undefined) {
        return "-";
      }
    }
    if (meta.col == 5) {
      return full.product_price.toLocaleString('ko-KR');
    }
    if (meta.col == 6) {
      return full.sell_commission.toLocaleString('ko-KR');
    }
    if (meta.col == 7) {
      return full.cal_price.toLocaleString('ko-KR');
    }
    if (meta.col == 8) {
      if (full.order_request_dt == null && full.order_request_dt == undefined) {
        return "-";
      } else {
        return full.order_request_dt;
      }
    }
    if (meta.col == 9) {
      if (full.order_decide_dt == null && full.order_decide_dt == undefined) {
        return "-";
      } else {
        return full.order_decide_dt;
      }
    }

    return data;
  }

  function fn_search() {
    let table = $('#user_data_table').DataTable();

    let numCols = table.columns().nodes().length;
    for(let i=0; i<numCols; i++) { table.column(i).search(''); }


    let search = null;
    $(".search_tag").each(function() {
      let val = $(this).val();
      let idx = $(this).attr('name');

      if(search == null)
        search = table.column(idx).search(val);
      else
        search = search.column(idx).search(val);
    });

    var searchName =$('#searchProduct').val();
    var searchValue = $('#searchValue').val();
    var val = searchValue;
    var idx = '';
    switch (searchName){
      case "상품명" :
        idx = 2;
        break;
      case "주문번호" :
        idx = 1;
        break;
      case "구매자" :
        idx = 5;
        break;
      case "셀러명" :
        idx = 2;
        break;
    }
    if(search == null)
      search = table.column(idx).search(val);
    else
      search = search.column(idx).search(val);

    var statusArray= [];
    if ($("#selectAll1").is(":checked")){
      statusArray = '';
    }else{
      $("input[name=selectOne1]").each(function() {
        if(this.checked) {
          statusArray.push($(this).val());
        }
      });
    }
    if(search == null)
      search = table.column(5).search(statusArray);
    else
      search = search.column(5).search(statusArray);

    if(search != null)
      search.draw();
  }

  function changeStatus() {

    let chk_val = [];

    $("input:checkbox[name=selectOne]").each(function (i, iVal) {
      if ($(this).is(":checked") == true) {
        chk_val.push(iVal.value);
      }
    })
    if(chk_val.length ==0){
      alert('선택된 항목이 없습니다. 다시 확인해주세요.');
      return;
    }
    let params = {
      'order_delivery_state': state,
      'delivery_no_list': chk_val
    }

    $.ajax({
      url : "${pageContext.request.contextPath}/updateCalState.json",
      type : "POST",
      data : JSON.stringify(params),
      contentType : "application/json;",
      success : function(result) {
        if (result.resultCode == "success") {
          alert(result.message);
          fn_search();
        } else if (result.resultCode == "fail") {
          alert(result.message);
        } else{
          alert(result.message);
        }
      }
    })
  }

  function fn_reset() {
    $("button[name=btnDate]").each(function() {
      $(this).css("background-color","white");
    });
    $("input[type=checkbox]").each(function() {
      this.checked = false;
    });
    $('#searchValue').val('');
    $("#selectAll1").prop("checked", true);
    $("#start_dt").val('');
    $("#end_dt").val('')
  }

  function changeDateTime() {
    var value = parseInt($('#projectinput1').val());
    var nowDate = new Date();

    if(value == 9999){
      $("#start_dt").pickadate('picker').set('select', null);
      $("#end_dt").pickadate('picker').set('select', null);
    }else{
      $("#start_dt").pickadate('picker').set('select', nowDate.setDate(nowDate.getDate() + value));
      $("#end_dt").pickadate('picker').set('select', new Date());
    }
  }


  function searchStatus(type) {
    fn_reset();
    $('#selectAll1').prop("checked", false);
    switch (type) {
      case "배송요청" :
        $('#checkSearch1').prop("checked", true);
        break;
      case "배송준비중" :
        $('#checkSearch2').prop("checked", true);
        break;
      case "배송중" :
        $('#checkSearch3').prop("checked", true);
        break;
      case "배송완료" :
        $('#checkSearch4').prop("checked", true);
        break;
      case "취소" :
        $('#checkSearch5').prop("checked", true);
        break;
    }
    fn_search();
  }

  function selectModal(date, account_id) {

    let columnFields1 = ["sell_type", "order_request_id", "product_id", "product_name", "consumer", "product_price", "sell_commission", "cal_price", "order_request_dt,", "order_decide_dt"];
    let columWidths1 = [30, 30, 30, 30, 30, 30, 30, 30, 30, 30];

    init_datatable1("${pageContext.request.contextPath}/selectCalculateModalList.json", columnFields1, columWidths1, fn_tbl_render2, date, 10);


    let params = {
      "date" : date,
      "account_id" : account_id
    }

    $.ajax({
      url : "${pageContext.request.contextPath}/calculateModalDetail.json",
      type : "POST",
      data : JSON.stringify(params),
      contentType : "application/json;",
      success : function(result) {
        if (result.resultCode === "success") {
          $('#thisMonthCalculateTotal').text(result.data.cal_price.toLocaleString('ko-KR'));
          $('#sellerName').text("셀러명 : " + result.data.depositor + "   ");
          $('#bankAccount').text("입금계좌 : " + result.data.bank_name + " " + result.data.account_num + " (" + result.data.account_name + ")   ");
          $('#calDt').text("정산일시 : " + result.data.cal_dt);
          $('#calCount').text("정산건수 : " + result.data.cal_count);
          $('#adminName').text("처리자 : " + result.data.cal_admin);
          $('#normalCalculateTotal').text( "= " + result.data.cal_price.toLocaleString('ko-KR') + "(정산가격)");
          $('#normalCalculateCommission').text("  " + result.data.sell_commission.toLocaleString('ko-KR') + "(수수료) ");
          $('#normalCalculatePrice').text(result.data.product_price_total.toLocaleString('ko-KR') + "(판매가격) - ");
        } else {
          alert(result.message);
        }
      }
    })

  }

  function init_datatable1(svrUri, columnDatas, columWidths, renderFuncs, search, pageLength) {

    let svrUrl = svrUri;
    let columns = [columnDatas.length];
    let columDefs = [columWidths.length];
    let orderIdx = 0;

    //set colum field names
    for(let i = 0; i < columnDatas.length; i++)   {
      var col = {};
      col.data = columnDatas[i];
      columns[i] = col;

      if(columnDatas[i] == "reg_dt")
        orderIdx  = i;
    }

    //set column width
    //align center for header and body column
    for(let i = 0; i < columWidths.length; i++)   {
      let colDef = {};
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


    $('#calDetail').dataTable({
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
          let data = res.data;
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
        return 'Calculate table.xlsx';  // 파일명
    },
    getSheetName : function(){
        return 'Calculate table sheet';  // 시트명
    },
    getExcelData : function(){
        // return document.getElementById('user_data_table'); // 테이블 id

        var table = document.getElementById('user_data_table');
        var clonedTable = table.cloneNode(true);
        var rows = clonedTable.getElementsByTagName('tr');

        for (var i = 0; i < rows.length; i++) {
            var cells = rows[i].getElementsByTagName('td');

            if (cells.length > 8) {
                rows[i].removeChild(cells[8]);  // 상세보기 삭제
            }
        }

        return clonedTable;
    },
    getWorksheet : function(){
        return XLSX.utils.table_to_sheet(this.getExcelData());

        // var worksheet = XLSX.utils.table_to_sheet(this.getExcelData());
        //
        // var range = XLSX.utils.decode_range(worksheet['!ref']);
        // for (var row = range.s.r; row <= range.e.r; row++) {
        //     var cellIndex = XLSX.utils.encode_cell({ r: row, c: 4 });
        //     worksheet[cellIndex].z = '@'; // 셀 형식을 텍스트(@)로 설정
        // }

        return worksheet;
    }
}

function stringToUint8ArrayBuffer(s) {
    var buf = new ArrayBuffer(s.length);  // 길이가 s.length인 ArrayBuffer 생성
    var view = new Uint8Array(buf);  // 생성한 ArrayBuffer를 사용해 Uint8Array 객체 생성
    for (var i=0; i<s.length; i++) view[i] = s.charCodeAt(i) & 0xFF;  // s의 각 문자를 UTF-8로 변환 후 Uint8Array에 저장
    return buf;
}

</script>

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

</body>
<!-- END: Body-->

</html>
