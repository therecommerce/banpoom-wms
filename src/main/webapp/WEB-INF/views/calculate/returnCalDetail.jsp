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

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/v/dt/dt-1.10.12/datatables.min.js"></script>
  <script src="https: //cdn.rawgit.com/ashl1/datatables-rowsgroup/fbd569b8768155c7a9a62568e66a64115887d7d0/dataTables.rowsGroup.js"></script>
  <script src="https://cdn.datatables.net/v/dt/dt-1.10.12/datatables.min.css"></script>

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
      </div>
      <div class="content-header-right col-md-6 col-12">
        <div class="float-md-right">
          <button class="nav-link btn btn-sm btn-outline-blue" type="button">다운로드</button>
        </div>
      </div>
    </div>
    <hr>
    <div class="content-body">
      <!-- 검색 필터 -->
      <section>
        <div class="border border-light rounded p-2 mb-2">
          <form class="form form-horizontal form-bordered">
            <div class="form-body">
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group row">
                    <div class="col-md-5 border-left-0">
                      <div>
                        <a href="${pageContext.request.contextPath}/calculateManagement.do"><button type="button" class="btn btn-outline-light"><</button>
                        </a>&nbsp;&nbsp;&nbsp;&nbsp;<span>정산 상세 내역</span>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-xl-1 col-lg-6 col-6">
                      <div class="card">
                        <div class="card-content">
                          <div class="card-body height-80">
                            <p class="sub-heading">정산유형</p>
                            <span class="h5 heading-text text-bold-600">${calculateVO.sell_type}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-1 col-lg-6 col-6">
                      <div class="card">
                        <div class="card-content">
                          <div class="card-body height-80">
                            <p class="sub-heading">정산일</p>
                            <span class="h5 heading-text text-bold-600">${calculateVO.cal_dt}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-1 col-lg-6 col-6">
                      <div class="card">
                        <div class="card-content">
                          <div class="card-body height-80">
                            <p class="sub-heading">총 정산금액</p>
                            <span class="h5 heading-text text-bold-600"><fmt:formatNumber type="number" value="${calculateVO.total_cal_price}"/>원</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-1 col-lg-6 col-6">
                      <div class="card">
                        <div class="card-content">
                          <div class="card-body height-80">
                            <p class="sub-heading">정산상태</p>
                            <span class="h5 heading-text text-bold-600">${calculateVO.cal_state}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="row">
          <div class="col-md-6">
            <button type="button" class="btn btn-outline-blue btn-min-width mr-1" data-toggle="modal" data-target="#modal-1">정산확정</button>
          </div>
          <div class="col-md-2 ml-auto">
            <select id="searchProduct" name="interested" class="form-control">
              <option value="전체" selected="">전체</option>
              <option value="정산예정">정산예정</option>
              <option value="정산완료">정산완료</option>
            </select>
          </div>
          <div class="col-md-2">
            <div class="form-group position-relative">
              <input type="search" class="form-control" id="searchValue" placeholder="셀러이름을 입력하세요.">
              <div class="form-control-position">
                <a onclick="javascript:fn_search();"><i class="fa fa-search text-size-base text-muted"></i></a>
              </div>
            </div>
          </div>
          <input type="hidden" class="search_tag" id="cal_dt" name="11" value="${cal_dt}"/>
        </div>
      </section>

      <!-- 리스트 -->
      <section>
        <div class="users-list-table">
          <div class="card">
            <div class="card-content">
              <div class="card-body">
                <button class="nav-link btn btn-sm btn-outline-blue float-right" type="button">다운로드</button>
                <!-- datatable start -->
                <div class="table-responsive">
                  <table id="user_data_table" class="table table-striped table-hover">
                    <thead class="text-center">
                    <tr>
                      <th><input type="checkbox" id="selectAll" name="selectAll" class="allChk"/></th>
                      <th>정산번호</th>
                      <th>셀러명</th>
                      <th>셀러별 총 정산금액</th>
                      <th>정산 상태</th>
                      <th>보관상품수</th>
                      <th>반품수거비용</th>
                      <th>입고/보관비용</th>
                      <th>출고비용</th>
                      <th>고객사회수 비용</th>
                      <th>기부폐기 비용</th>
                      <th></th>
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

<!-- 정산확정1 모달 시작-->
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
        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="updateCalculateState()">확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 정산확정 모달 끝 -->

<!-- 입금확인정보 모달 시작-->
<div class="modal fade text-left" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header bg-blue-grey bg-lighten-5">
        <h4 class="modal-title" id="myModalLabel20">입금확인</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center center">
        <div class="row">
          <label>입금일시</label>
          <input id="depositDate" class="form-control width-50-per">
        </div>
        <div class="row">
          <label>입금계좌</label>
          <input id="depositNumber" class="form-control width-50-per">
        </div>
        <div class="row">
          <label>입금금액</label>
          <input id="depositMoney" class="form-control width-50-per">
        </div>
        <div class="row">
          <label>처리자</label>
          <input id="executor" class="form-control width-50-per">
        </div>
      </div>
      <div class="modal-footer justify-content-center">
        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">취소</button>
        <button type="submit" class="btn btn-blue btn-min-width" data-dismiss="modal">저장</button>
      </div>
    </div>
  </div>
</div>
<!-- 입금확인정보 모달 끝 -->

<!-- 셀러별 정산 내역 상세모달 : 시작 -->
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
                      <span id="adminName" class="float-right" style="position: relative; left: 50px; width: 150px">처리자 : </span>
                      <br>
                      <span id="bankAccount">입금계좌 : </span>
                      <span id="calDt" class="float-right" style="position: relative; left: 100px; width: 200px">정산일시 : </span>
                      <br>
                      <span id="calCount">정산건수 : </span>
                      <span></span>
                      <br>
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
                <span id="normalCalculateTotal" class="float-right"></span><span id="normalCalculateCommission" class="float-right"></span><span id="normalCalculatePrice" class="float-right"></span>
                <div></div>
              </h4>

              <table id="calDetail" class="table table-striped table-hover">
                <thead class="text-center">
                <tr>
                  <th>상품유형</th>
                  <th>주문번호</th>
                  <th>상품번호</th>
                  <th>상품명</th>
                  <th>상품수량</th>
                  <th>구매자</th>
                  <th>상품가격</th>
                  <th>수수료</th>
                  <th>정산금액</th>
                  <th>입고일</th>
                  <th>출고일</th>
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
<!-- 셀러별 정산 내역 상세모달 : 끝 -->

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
    let saveId = '';

    let columnFields = ["", "cal_id", "account_id", "cal_vprice", "cal_state", "remain_count", "return_collection_cost", "storage_cost", "forwarding_cost", "recovery_cost", "offer_management_cost", "", "", "original_price"];
    let columWidths = [10, 20, 20, 20, 10, 10, 20, 20, 20, 20, 20, 10, 10, 0];

    init_datatable1("${pageContext.request.contextPath}/returnCalDetail.json", columnFields, columWidths, fn_tbl_render, ${cal_month_no}, 10);

  });

  function fn_tbl_render(data, type, full, meta) {
    if (meta.col == 0) {
      return '<input type="checkbox" id="selectOne" class="listChk" name="selectOne" value="' + full.cal_id + '" />';
    }
    if (meta.col == 2) {
      return full.account_name + "(" + full.account_id + ")";
    }
    if (meta.col == 3) {
      var vprice = Number(full.cal_vprice);

      return vprice.toLocaleString('ko-KR')  + "원";
    }
    if (meta.col == 4) {
      if (full.cal_state == '정산예정') {
        return `<button type="text" class="btn btn-sm btn-outline-grey-blue">정산예정</button>`;
      } else {
        return `<button type="text" class="btn btn-sm btn-outline-primary">정산완료</button>`;
      }
    }
    if (meta.col == 5) {
      return full.remain_count + "개";
    }
    if (meta.col == 6) {
      return full.return_collection_cost.toLocaleString('ko-KR')  + "원";
    }
    if (meta.col == 7) {
      return full.storage_cost.toLocaleString('ko-KR') + "원";
    }
    if (meta.col == 8) {
      return full.forwarding_cost.toLocaleString('ko-KR') + "원";
    }
    if (meta.col == 9) {
      return full.recovery_cost.toLocaleString('ko-KR') + "원";
    }
    if (meta.col == 10) {
      return full.offer_management_cost.toLocaleString('ko-KR') + "원";
    }
    if (meta.col == 11) {
      let date = full.firstDay;
      date = date.substring(0,7);

      return `<button type="text" class="btn btn-sm btn-outline-blue" data-toggle="modal" data-target="#calculateModal" onclick="selectModal('`+ date + "," + full.account_id + `')">정산확인서</button>`;
    }
    if (meta.col == 12) {
      return `<button type="text" class="btn btn-sm btn-outline-blue" data-toggle="modal" data-target="#modal-2">입금확인정보</button>`;
    }
    return data;
  }

  function fn_search() {
    let table = $('#user_data_table').DataTable();
    let numCols = table.columns().nodes().length;
    let search = null;

    for(let i=0; i<numCols; i++) {
      table.column(i).search('');
    }

    $(".search_tag").each(function() {
      let val = $(this).val();
      let idx = $(this).attr('name');

      if(search == null)
        search = table.column(idx).search(val);
      else
        search = search.column(idx).search(val);
    });

    let searchName =$('#searchProduct').val();
    let searchValue = $('#searchValue').val();

    let val = searchValue;
    let idx = '';

    switch (searchName) {
      case "셀러명" :
        idx = 12;
        break;
      case "주문번호" :
        idx = 2;
        break;
      case "상품번호" :
        idx = 3;
        break;
      case "상품명" :
        idx = 4;
        break;
    }

    if(search == null) {
      search = table.column(idx).search(val);
    } else {
      search = search.column(idx).search(val);
    }

    if(search != null) {
      search.draw();
    }
  }

  function sendModal(account_id, cal_dt) {

    var params = {
      'account_id': account_id,
      'cal_dt': cal_dt
    }

    $.ajax({
      url : "${pageContext.request.contextPath}/calculateModal.json",
      type : "POST",
      data : JSON.stringify(params),
      contentType : "application/json",
      success : function(result) {
        if (result.resultCode == "success") {

          $('#calculateTotalPrice').text((result.data.total_cal_price - result.data.commission).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + '원');
          $('#modalCommission').text((result.data.commission).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + '원');

        } else {
          alert(result.data);
        }
      }
    })
  }


  function init_datatable1(svrUri, columnDatas, columWidths, renderFuncs, search, pageLength) {

    let svrUrl = svrUri;
    let columns = [columnDatas.length];
    let columDefs = [columWidths.length];
    let orderIdx = 0

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


    $('#user_data_table').dataTable({
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

  function selectModal(date, account_id) {

    let columnFields1 = ["sell_type", "order_request_id", "product_id", "product_name", "order_product_count", "consumer", "cal_vprice", "storage_cost", "original_price", "store_dt,", "release_dt", "return_collection_cost", "forwarding_cost", "recovery_cost", "offer_management_cost"];
    let columWidths1 = [30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 0, 0, 0, 0];

    init_datatable2("${pageContext.request.contextPath}/selectCalculateModalListKeep.json", columnFields1, columWidths1, fn_tbl_render2, date, 10);

    let params = {
      "date" : date,
      "account_id" : account_id
    }

    $.ajax({
      url : "${pageContext.request.contextPath}/calculateModalDetailKeep.json",
      type : "POST",
      data : JSON.stringify(params),
      contentType : "application/json;",
      success : function(result) {
        if (result.resultCode === "success") {
          $('#thisMonthCalculateTotal').text(result.data.original_price.toLocaleString('ko-KR') + "원");
          $('#sellerName').text("셀러명 : " + result.data.depositor + "   ");
          $('#bankAccount').text("입금계좌 : " + result.data.bank_name + " " + result.data.account_num + " (" + result.data.account_name + ")   ");
          $('#calDt').text("정산일시 : " + result.data.cal_dt);
          $('#calCount').text("정산건수 : " + result.data.cal_count + "건");
          $('#adminName').text("처리자 : " + result.data.cal_admin);
          // $('#normalCalculateTotal').text( " = " + result.data.cal_price.toLocaleString('ko-KR') + "원(정산가격)");
          $('#normalCalculateCommission').text("  " + result.data.return_collection_cost.toLocaleString('ko-KR') + "원(반품수거)" + " + " + result.data.storage_cost.toLocaleString('ko-KR') + "원(입고 보관)" + " + " + result.data.forwarding_cost.toLocaleString('ko-KR') + "원(출고비용)" + " + " + result.data.recovery_cost.toLocaleString('ko-KR') + "원(고객사 회수비용)" + " + " + result.data.offer_management_cost.toLocaleString('ko-KR') + "원(기부/폐기비용)");
          // $('#normalCalculateCommission').text("  " + result.data.sell_commission.toLocaleString('ko-KR') + "원(수수료) ");
          // $('#normalCalculatePrice').text(result.data.product_price_total.toLocaleString('ko-KR') + "원(판매가격) - ");
        } else {
          alert(result.message);
        }
      }
    })

  }
  function init_datatable2(svrUri, columnDatas, columWidths, renderFuncs, search, pageLength) {
    let svrUrl = svrUri;
    let columns = [columnDatas.length];
    let columDefs = [columWidths.length];
    let orderIdx = 0

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

  function fn_tbl_render2(data, type, full, meta) {
    if (meta.col == 0) {
      return full.sell_type
    }
    if (meta.col == 1) {
      if (full.order_request_id == null && full.order_request_id == undefined) {
        return "-";
      }
    }
    if (meta.col == 3) {
      return full.product_name;
    }
    if (meta.col == 4) {
      return full.order_product_count + "개";
    }
    if (meta.col == 6) {
      return full.cal_vprice.toLocaleString('ko-KR') + "원";
    }
    if (meta.col == 7) {
      // return full.sell_commission.toLocaleString('ko-KR') + "원";
      const result = (
              full.return_collection_cost +
              full.storage_cost +
              full.recovery_cost +
              full.forwarding_cost +
              full.offer_management_cost
      ).toLocaleString('ko-KR') + "원";
      return result;
    }
    if (meta.col == 8) {
      return full.original_price.toLocaleString('ko-KR') + "원";
    }
    if (meta.col == 9) {
      if (full.store_dt == null && full.store_dt == undefined) {
        return "-";
      } else {
        return full.store_dt;
      }
    }
    if (meta.col == 10) {
      if (full.release_dt == null && full.release_dt == undefined) {
        return "-";
      } else {
        return full.release_dt;
      }
    }
    return data;
  }

  <!-- 체크박스 jQuery : 시작 -->
  $("#selectAll").click(function () {
    $('input:checkbox[name="selectOne"]').each(function () {
      if ($("#selectAll").is(":checked")) {
        $("input[name=selectOne]").prop("checked", true);
      }
      else {
        $("input[name=selectOne]").prop("checked", false);
      }

    });
  });
  $(document).on('click','.listChk',function() {
    if($('input[class = listChk]:checked').length == $('.listChk').length) {
      $('#selectAll').prop('checked',true);
    } else {
      $('#selectAll').prop('checked',false);
    }
  });
  <!-- 체크박스 jQuery : 끝 -->

  <%--function updateCalculateState(state) {--%>
  <%--  var table = $('#user_data_table').DataTable();--%>
  <%--  var rowData = $.map(table.rows().data(), function(item){--%>
  <%--    return item;--%>
  <%--  });--%>

  <%--  let chk_val = [];--%>


  <%--  $("input:checkbox[name=selectOne]").each(function (i, iVal) {--%>
  <%--    if ($(this).is(":checked") == true) {--%>
  <%--      rowData.forEach(function (row) {--%>
  <%--        if (row.cal_id == iVal.value) {--%>
  <%--          if (row.cal_state != "정산예정"){--%>
  <%--            alert('정산예정만 입금확인 할 수 있습니다.');--%>
  <%--            return;--%>
  <%--          }else{--%>
  <%--            chk_val.push(iVal.value);--%>
  <%--          }--%>
  <%--        }--%>
  <%--      })--%>
  <%--    }--%>
  <%--  })--%>

  <%--  let params = {--%>
  <%--    'cal_state': state,--%>
  <%--    'cal_id_list': chk_val,--%>
  <%--  }--%>

  <%--  if (chk_val.length == 0) {--%>
  <%--    alert('선택된 값이 없습니다.');--%>

  <%--  } else {--%>

  <%--    $.ajax({--%>
  <%--      url : "${pageContext.request.contextPath}/updateCalState.json",--%>
  <%--      type : "POST",--%>
  <%--      data : JSON.stringify(params),--%>
  <%--      contentType : "application/json;",--%>
  <%--      success : function(result) {--%>
  <%--        if (result.resultCode == "success") {--%>
  <%--          alert(result.message);--%>
  <%--          fn_search();--%>

  <%--        } else {--%>
  <%--          alert(result.message);--%>
  <%--        }--%>
  <%--      }--%>
  <%--    })--%>
  <%--  }--%>
  <%--}--%>

  function updateCalculateState(state) {
    var table = $('#user_data_table').DataTable();
    var rowData = $.map(table.rows().data(), function(item) {
      return item;
    });

    let chk_val = [];
    let hasInvalidState = false;

    $("input:checkbox[name=selectOne]").each(function(i, iVal) {
      if ($(this).is(":checked") == true) {
        rowData.forEach(function(row) {
          if (row.cal_id == iVal.value) {
            if (row.cal_state != "정산예정") {
              hasInvalidState = true;
            } else {
              chk_val.push(iVal.value);
            }
          }
        });
      }
    });

    if (hasInvalidState) {
      alert('정산예정만 입금확인 할 수 있습니다.');
      return;
    }

    let params = {
      'cal_state': state,
      'cal_id_list': chk_val,
    };

    if (chk_val.length == 0) {
      alert('선택된 항목이 없습니다.');
    } else {
      $.ajax({
        url: "${pageContext.request.contextPath}/updateCalState.json",
        type: "POST",
        data: JSON.stringify(params),
        contentType: "application/json;",
        success: function(result) {
          if (result.resultCode == "success") {
            alert(result.message);
            fn_search();
          } else {
            alert(result.message);
          }
        }
      });
    }
  }





  <%--function updateCalculateState(state) {--%>
  <%--  var table = $('#user_data_table').DataTable();--%>
  <%--  var rowData = $.map(table.rows().data(), function(item) {--%>
  <%--    return item;--%>
  <%--  });--%>

  <%--  let chk_val = [];--%>
  <%--  let isShowEmpty = true;--%>
  <%--  let showAlert = true;--%>

  <%--  for (let i = 0; i < $("input:checkbox[name=selectOne]").length; i++) {--%>
  <%--    let iVal = $("input:checkbox[name=selectOne]")[i];--%>

  <%--    if ($(iVal).is(":checked")) {--%>
  <%--      let isChecked = false;--%>

  <%--      for (let j = 0; j < rowData.length; j++) {--%>
  <%--        let row = rowData[j];--%>

  <%--        if (row.cal_id == iVal.value) {--%>
  <%--          if (row.cal_state != "정산예정") {--%>
  <%--            alert('정산예정만 입금확인 할 수 있습니다.');--%>
  <%--            isShowEmpty = false;--%>
  <%--            showAlert = false;--%>
  <%--            break;--%>
  <%--          } else {--%>
  <%--            isChecked = true;--%>
  <%--            break;--%>
  <%--          }--%>
  <%--        }--%>
  <%--      }--%>

  <%--      if (!showAlert) {--%>
  <%--        break;--%>
  <%--      }--%>

  <%--      if (isChecked) {--%>
  <%--        chk_val.push(iVal.value);--%>
  <%--      }--%>
  <%--    }--%>
  <%--  }--%>

  <%--  // if (chk_val.length == 0 && showAlert) {--%>
  <%--  //   alert('체크된 값이 없습니다.');--%>
  <%--  //   return;--%>
  <%--  // }--%>

  <%--  let params = {--%>
  <%--    'cal_state': state,--%>
  <%--    'cal_id_list': chk_val,--%>
  <%--  };--%>

  <%--  $.ajax({--%>
  <%--    url: "${pageContext.request.contextPath}/updateCalState.json",--%>
  <%--    type: "POST",--%>
  <%--    data: JSON.stringify(params),--%>
  <%--    contentType: "application/json;",--%>
  <%--    success: function(result) {--%>
  <%--      if (result.resultCode == "success") {--%>
  <%--        alert(result.message);--%>
  <%--        fn_search();--%>
  <%--      } else {--%>
  <%--        alert(result.message);--%>
  <%--      }--%>
  <%--    }--%>
  <%--  });--%>
  <%--}--%>





</script>


</body>
<!-- END: Body-->

</html>
