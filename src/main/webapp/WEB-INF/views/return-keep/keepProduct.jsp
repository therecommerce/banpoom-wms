<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

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
  <link
          href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i"
          rel="stylesheet">

  <!-- BEGIN: Vendor CSS-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/vendors.min.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/pickers/daterange/daterangepicker.css">
  <link rel="stylesheet" type="text/css"
        href="${pageContext.request.contextPath}/resources/app-assets/vendors/css/pickers/datetime/bootstrap-datetimepicker.css">
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
  <!-- END: Page CSS-->

  <!-- BEGIN: Custom CSS-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/app-assets/css/pages/page-users.css">
  <!-- END: Custom CSS-->

  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-zoom-in" viewBox="0 0 16 16">
    <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
    <path d="M10.344 11.742c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1 6.538 6.538 0 0 1-1.398 1.4z"/>
    <path fill-rule="evenodd" d="M6.5 3a.5.5 0 0 1 .5.5V6h2.5a.5.5 0 0 1 0 1H7v2.5a.5.5 0 0 1-1 0V7H3.5a.5.5 0 0 1 0-1H6V3.5a.5.5 0 0 1 .5-.5z"/>
  </svg>

  <style>
    select option[value=""][disabled] {
      display: none;
    }

     input[type="checkbox"]{
       width: 15px;
       height: 15px;
     }
  </style>

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu"
      data-col="2-columns">

<!-- Modal -->


<!-- BEGIN: Content-->
<div class="app-content content">
  <div class="content-overlay"></div>
  <div class="content-wrapper">
    <div class="content-header row">
      <div class="content-header-left col-md-6 col-12">
        <h3 class="content-header-title mb-50">보관 상품 관리</h3>
      </div>
    </div>
    <hr>

    <div class="content-body">
      <!-- 상태정의 -->
      <section>
        <div class="row">
          <div class="col-xl-2 col-lg-6 col-6">
            <div class="card">
              <div class="card-content">
                <div class="card-body height-80">
                  <p class="sub-heading">픽업요청</p>
                  <a href="#" onclick="searchStatus('픽업요청');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${productCountVO.pickupCount}</span></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-2 col-lg-6 col-6">
            <div class="card">
              <div class="card-content">
                <div class="card-body height-80">
                  <p class="sub-heading">반품구조대로 이동 중</p>
                  <a href="#" onclick="searchStatus('반품구조대로 이동 중');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${productCountVO.moveCount}</span></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-2 col-lg-6 col-6">
            <div class="card">
              <div class="card-content">
                <div class="card-body height-80">
                  <p class="sub-heading">반품구조대 도착/입고</p>
                  <a href="#" onclick="searchStatus('도착/입고');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${productCountVO.arrivalCount}</span></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-2 col-lg-6 col-6">
            <div class="card">
              <div class="card-content">
                <div class="card-body height-80">
                  <p class="sub-heading">최종 검수대기</p>
                  <a href="#" onclick="searchStatus('최종 검수 대기');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${productCountVO.readyCount}</span></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-2 col-lg-6 col-6">
            <div class="card">
              <div class="card-content">
                <div class="card-body height-80">
                  <p class="sub-heading">검수완료/보관중</p>
                  <a href="#" onclick="searchStatus('보관중');"><span class="h5 heading-text text-bold-600" style="font-size: 30px">${productCountVO.completeCount}</span></a>
                </div>
              </div>
            </div>
          </div>
        </div>
<%--        <div class="card">--%>
<%--          <div class="card-content">--%>
<%--            <div class="card-body">--%>
<%--              <div class="row">--%>
<%--                <div class="col-lg-2 col-md-6 col-6">--%>
<%--                  <div class="float-left pl-2">--%>
<%--                    <div class="avatar avatar-xl bg-info">--%>
<%--                      <span class="feather icon-camera"></span>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                  <div class="float-left mt-50 ml-1">--%>
<%--                    <span class="blue-grey darken-1 block">픽업요청</span>--%>
<%--                    <a href="#" onclick="searchStatus('픽업요청');" class="font-large-1 text-bold-300">${productCountVO.consignmentProductCount1}<span--%>
<%--                            class="blue-grey darken-1">건</span></a>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-2 col-md-6 col-6">--%>
<%--                  <div class="float-left pl-2">--%>
<%--                    <div class="avatar avatar-xl bg-amber">--%>
<%--                      <span class="feather icon-camera"></span>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                  <div class="float-left mt-50 ml-1">--%>
<%--                    <span class="blue-grey darken-1 block">반품구조대로 이동 중</span>--%>
<%--                    <a href="#" onclick="searchStatus('반품구조대로 이동 중');" class="font-large-1 text-bold-300">${productCountVO.consignmentProductCount2}<span--%>
<%--                            class="blue-grey darken-1">건</span></a>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-2 col-md-6 col-6">--%>
<%--                  <div class="float-left pl-2">--%>
<%--                    <div class="avatar avatar-xl bg-blue">--%>
<%--                      <span class="feather icon-camera"></span>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                  <div class="float-left mt-50 ml-1">--%>
<%--                    <span class="blue-grey darken-1 block">도착/입고</span>--%>
<%--                    <a href="#" onclick="searchStatus('도착/입고');" class="font-large-1 text-bold-300">${productCountVO.consignmentProductCount3}<span--%>
<%--                            class="blue-grey darken-1">건</span></a>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-2 col-md-6 col-6">--%>
<%--                  <div class="float-left pl-2">--%>
<%--                    <div class="avatar avatar-xl bg-purple">--%>
<%--                      <span class="feather icon-camera"></span>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                  <div class="float-left mt-50 ml-1">--%>
<%--                    <span class="blue-grey darken-1 block">검수 완료</span>--%>
<%--                    <a href="#" onclick="searchStatus('검수완료');" class="font-large-1 text-bold-300">${productCountVO.consignmentProductCount4}<span--%>
<%--                            class="blue-grey darken-1">건</span></a>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-2 col-md-6 col-6 border-right-blue-grey border-right-lighten-3">--%>
<%--                  <div class="float-left pl-2">--%>
<%--                    <div class="avatar avatar-xl bg-cyan">--%>
<%--                      <span class="feather icon-camera"></span>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                  <div class="float-left mt-50 ml-1">--%>
<%--                    <span class="blue-grey darken-1 block">판매 중</span>--%>
<%--                    <a href="#" onclick="searchStatus('판매중');" class="font-large-1 text-bold-300">${productCountVO.consignmentProductCount5}<span--%>
<%--                            class="blue-grey darken-1">건</span></a>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-2 col-md-6 col-6">--%>
<%--                  <div class="float-left pl-2">--%>
<%--                    <div class="avatar avatar-xl bg-warning">--%>
<%--                      <span class="feather icon-camera"></span>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                  <div class="float-left mt-50 ml-1">--%>
<%--                    <span class="blue-grey darken-1 block">품절</span>--%>
<%--                    <a href="#" onclick="searchStatus('품절');" class="font-large-1 text-bold-300">${productCountVO.consignmentProductCount6}<span--%>
<%--                            class="blue-grey darken-1">건</span></a>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
      </section>
      <!-- 검색 필터 -->
      <section>
        <div class="users-list-filter">
          <div class="border border-light rounded p-2 mb-2">
            <form class="form form-horizontal form-bordered">
              <div class="form-body">
                <div class="row">
                  <div class="col-md-4 border-right-blue-grey border-right-lighten-5">
                    <div class="form-group row">
                      <label class="col-md-2 label-control text-left"
                             for="userinput1">검색어</label>
                      <div class="col-md-10 border-left-0">
                        <div class="row">
                          <div class="form-group col-md-4 border-bottom-0">
                            <label class="sr-only" for="searchProduct1">상품명</label>
                            <select id="searchProduct" name="interested"
                                    class="form-control">
                              <option value="상품명" selected="">상품명</option>
                              <option value="상품번호">상품번호</option>
                              <option value="셀러명">셀러명</option>
                              <option value="검수자">검수자</option>
                              <option value="운송장번호">운송장번호</option>
                            </select>
                          </div>
                          <div class="form-group col-md-8 border-bottom-0">
                            <input type="text" id="searchValue" class="form-control"
                                   placeholder="상품명을 입력하세요" name="">
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="form-group row">
                      <label class="col-md-2 label-control text-left"
                             for="userinput1">카테고리</label>
                      <div class="col-md-10 border-left-0">
                        <div class="row">
                          <div class="form-group col-md-6 border-bottom-0">
                            <select id="topName" class="search_tag form-control" name="13" onchange="changeMiddle();">
                              <option selected value="">전체</option>
                              <c:forEach items="${categoryName}" var="categoryName">
                                <c:if test="${categoryName.parent_category_id == ''}">
                                      <option value="${categoryName.category_id}">${categoryName.category_name}</option>
                                </c:if>
                              </c:forEach>
                            </select>
                          </div>
                          <div class="form-group col-md-6 border-bottom-0">
                            <select id="middle" class="search_tag form-control" name="12">
                              <option selected value="">전체</option>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="form-group row" style="height: 74px">
                      <label class="col-md-2 label-control text-left"
                             for="eventRegInput1">위탁유형</label>
                      <div class="col-md-10 border-left-0">
                        <div class="row">
                          <div class="form-group col-md-6 border-bottom-0">
                            <label class="sr-only" for="projectinput2-1">전체</label>
                            <select id="sell_type" name="2"
                                    class="search_tag form-control">
                              <option value="" selected="" disabled="">전체
                              </option>
                              <option value="마켓위탁">반품보관</option>
                              <option value="재고위탁">직접등록</option>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6 border-right-blue-grey border-right-lighten-5">
                    <div class="form-group row" style="height: 74px">
                      <label class="col-md-2 label-control text-left"
                             for="checkbox" id="selectStatus" name="selectStatus">상품상태</label>
                      <div class="col-md-10 border-left-0" id="checkbox">
                        <div class="d-inline-block custom-control custom-checkbox mr-1">
                          <input type="checkbox" class="custom-control-input"
                                 name="selectAll" checked id="selectAll" value="전체">
                          <label class="custom-control-label" for="selectAll">전체</label>
                        </div>
                        <div class="d-inline-block custom-control custom-checkbox mr-1">
                          <input type="checkbox" class="custom-control-input"
                                 name="selectOne" id="checkSearch1"  value="픽업요청">
                          <label class="custom-control-label" for="checkSearch1">픽업요청</label>
                        </div>
                        <div class="d-inline-block custom-control custom-checkbox mr-1">
                          <input type="checkbox" class="custom-control-input"
                                 name="selectOne" id="checkSearch2"  value="반품구조대로 이동 중">
                          <label class="custom-control-label" for="checkSearch2">반품구조대로 이동 중</label>
                        </div>
                        <div class="d-inline-block custom-control custom-checkbox mr-1">
                          <input type="checkbox" class="custom-control-input"
                                 name="selectOne" id="checkSearch3" value="도착/입고">
                          <label class="custom-control-label" for="checkSearch3">도착/입고</label>
                        </div>
                        <div class="d-inline-block custom-control custom-checkbox mr-1">
                          <input type="checkbox" class="custom-control-input"
                                 name="selectOne" id="checkSearch4" value="검수중">
                          <label class="custom-control-label" for="checkSearch4">검수중</label>
                        </div>
                        <div class="d-inline-block custom-control custom-checkbox mr-1">
                          <input type="checkbox" class="custom-control-input"
                                 name="selectOne" id="checkSearch5"  value="최종 검수 대기">
                          <label class="custom-control-label" for="checkSearch5">최종 검수 대기</label>
                        </div>
                        <div class="d-inline-block custom-control custom-checkbox mr-1">
                          <input type="checkbox" class="custom-control-input"
                                 name="selectOne" id="checkSearch6"  value="보관중, 검수완료">
                          <label class="custom-control-label" for="checkSearch6">검수완료/보관중</label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 border-right-blue-grey border-right-lighten-5">
                    <div class="form-group row last">
                      <label class="col-md-2 label-control text-left"
                             for="userinput1">조회기간</label>
                      <div class="col-md-10 border-left-0">
                        <div class="row">
                          <div class="form-group col-md-2 border-left-0 left">
                            <label class="sr-only" for="projectinput1">1개월</label>
                            <select id="projectinput1" name="interested"
                                    class="form-control" onchange="changeDateTime()">
                              <option value="0" selected="">오늘</option>
                              <option value="-7">1주일</option>
                              <option value="-30">1개월</option>
                              <option value="-90">3개월</option>
                              <option value="9999">직접설정</option>
                            </select>
                          </div>
                          <div class="form-group col-md-10 border-bottom-0">
                            <div class="d-flex justify-content-start align-items-start p-0">
                              <div class="d-flex align-items-center justify-content-start">
                                <div class="input-group">
                                  <input type='text' id="start_dt" name="14"
                                         class="search_tag form-control pickadate-selectors"
                                         placeholder="" value="" />
                                  <div class="input-group-append">
                                    <span class="input-group-text">
                                        <span class="fa fa-calendar-o"></span>
                                    </span>
                                  </div>
                                </div>
                              </div>
                              <span class="font-weight-bold mx-1 pt-50">~</span>
                              <div
                                      class="d-flex align-items-center justify-content-start">
                                <div class="input-group">
                                  <input type='text' id="end_dt" name="15"
                                         class="search_tag form-control pickadate-selectors"
                                         placeholder="" value="" />
                                  <div class="input-group-append">
                                    <span class="input-group-text">
                                        <span class="fa fa-calendar-o"></span>
                                    </span>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-actions center">
                <button type="button" class="btn btn-outline-light btn-min-width mr-1" onclick="javascript:fn_reset();">초기화</button>
                <button type="button" class="btn btn-outline-blue btn-min-width" onclick="javascript:fn_search()">검색</button>
              </div>
            </form>
          </div>
        </div>
      </section>

      <!-- 리스트 -->
      <section>
        <div class="users-list-table">
          <div class="card">
            <div class="card-content">
              <div class="card-body">
                <button type="button" class="btn btn-outline-blue btn-min-width float-right" onclick="exportExcel();">다운로드</button>
                <!-- datatable start -->
                <div class="table-responsive">
                  <table id="user_data_table" class="table table-striped table-hover">
                    <thead class="text-center">
                    <tr>
                      <th><input type="checkbox" id="selectAllChk" name="selectAllChk" /></th>
                      <th>상품번호</th>
                      <th>위탁유형</th>
                      <th>셀러명</th>
                      <th>카테고리</th>
                      <th>상품명</th>
                      <th>상품수량</th>
                      <th>상품상태</th>
                      <th>배송정보</th>
                      <th>검수자명</th>
                      <th>등록일</th>
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

<!-- modal : start -->
<!-- <div class="modal fade text-left" id="modal-5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
     aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header bg-blue-grey bg-lighten-5">
        <h4 class="modal-title" id="myModalLabel200">주소 변경</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center" id="trackingContent">
        <div class="modal-body">
          <div class="text-center my-2">
            <h5>정보</h5>
            <p id="trackingInfo"></p>
          </div>
        </div>
        <div class="col-md-12">
          <div class="input-group mb-1">
<%--            <input type="text" class="form-control" id="pickup_zipcode" placeholder="우편번호" readonly>--%>
<%--            <div class="input-group-append" id="button-addon1">--%>
<%--              <input type="button" class="btn btn-blue" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" ><br>--%>
<%--            </div>--%>
          </div>
<%--          <input type="text" class="form-control mb-1" id="order_rcv_addr1" placeholder="기본주소" readonly>--%>
<%--          <input type="text" class="form-control mb-1" id="order_rcv_addr2" placeholder="상세 주소">--%>
<%--          <input type="hidden" id="delivery_no">--%>
        </div>
      </div>
      <div class="modal-footer justify-content-center">
        <button type="button" class="btn btn-blue btn-min-width" data-dismiss="modal" onclick="update_addr();">저장</button>
        <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div> -->


<div class="modal fade text-left" id="modal-5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel20"
aria-hidden="true">
<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
<div class="modal-content">
 <div class="modal-header bg-blue-grey bg-lighten-5">
   <h4 class="modal-title" id="myModalLabel200">배송 정보</h4>
   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
     <span aria-hidden="true">&times;</span>
   </button>
 </div>
 <div class="modal-body text-center" id="trackingContent">
   <div class="modal-body">
     <div class="text-center my-2">
       <h5>운송장 번호</h5>
       <p id="trackingInfo"></p>
     </div>
     <div class="row justify-content-md-center">
       <div class="col-lg-2 col-md-6 col-6">
         <div class="float-left pl-2">
           <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
             <span class="feather"></span>

           </div>
           <span class="blue-grey darken-1 block">배송요청</span>

         </div>
       </div>
       <div class="col-lg-2 col-md-6 col-6">
         <div class="float-left pl-2">
           <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
             <span class="feather"></span>

           </div>
           <span class="blue-grey darken-1 block">상품 이동중</span>

         </div>
       </div>
       <div class="col-lg-2 col-md-6 col-6">
         <div class="float-left pl-2">
           <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
             <span class="feather"></span>

           </div>
           <span class="blue-grey darken-1 block">배달지</span>

         </div>
       </div>
       <div class="col-lg-2 col-md-6 col-6">
         <div class="float-left pl-2">
           <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
             <span class="feather"></span>

           </div>
           <span class="blue-grey darken-1 block">배달중</span>

         </div>
       </div>
       <div class="col-lg-2 col-md-6 col-6">
         <div class="float-left pl-2">
           <div class="avatar avatar-xl bg-blue-grey bg-lighten-3">
             <span class="feather"></span>

           </div>
           <span class="blue-grey darken-1 block">배송완료</span>

         </div>
       </div>
     </div>
   </div>
   <table class="table align-middle">
     <thead class="text-center bg-blue-grey bg-lighten-5">
     <tr>
       <th>처리 일시</th>
       <th>배송 단계</th>
       <th>처리 장소</th>
     </tr>
     </thead>
     <tbody id="trackingTable">
     </tbody>
   </table>
 </div>
 <div class="modal-footer justify-content-center">
   <button type="button" class="btn btn-light btn-min-width" data-dismiss="modal">닫기</button>
 </div>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- modal : end -->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>
<jsp:include page="/WEB-INF/views/common/sideBar.jsp" flush="false" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.14.3/xlsx.full.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.8/FileSaver.min.js"></script>

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
  <script src="${pageContext.request.contextPath}/resources/js/page-helper.js"></script>


    <script type="text/javascript">
      $(document).ready(function() {

        var start_dt = sessionStorage.getItem('start_dt');
        var end_dt = sessionStorage.getItem('end_dt');
        var category1 = sessionStorage.getItem('category1');
        var category2 = sessionStorage.getItem('category2');


        if ((start_dt != null && start_dt != '') && (end_dt != null && end_dt != '')) {
          $("#start_dt").val(start_dt);
          $("#end_dt").val(end_dt);
        } else {
          $("#projectinput1 option:selected").val('전체');
        }

        if ((category1 != null && category1 != '') && (category2 != null && category2 != '')) {
          $("#topName").val(category1);
          $("#topName").change();

          setTimeout(function() {
            $("#middle").val(category2);
          }, 1000)
        }

        if (((start_dt != null && start_dt != '') && (end_dt != null && end_dt != '')) || ((category1 != null && category1 != '') && (category2 != null && category2 != ''))) {
          setTimeout(function() {
            fn_search();
          }, 2000);
        }

        setTimeout(function() {
          sessionStorage.removeItem('start_dt');
          sessionStorage.removeItem('end_dt');
          sessionStorage.removeItem('category1');
          sessionStorage.removeItem('category2');
        }, 5000);

        // let nowDate = new Date();
        //
        // $("#start_dt").pickadate('picker').set('select', nowDate.setDate(nowDate.getDate() + 9999));
        // $("#end_dt").pickadate('picker').set('select', new Date());

        var columnFields = ["checkbox", "product_id", "sell_type", "seller_name", "category_name","product_name", "product_count","product_state","tracking_no","inspector_name","product_selling_dt","detail","category_id","parent_category_id","start_dt","end_dt"];
        var columWidths = [ 30, 50, 50, 80, 80, 400, 50, 50, 80, 50, 80, 80, 0, 0, 0, 0];

        init_datatable("${pageContext.request.contextPath}/keeping/keepingProductList.json", columnFields, columWidths, fn_tbl_render);


        $("#selectAllChk").click(function () {
          $('input:checkbox[name="selectOneChk"]').each(function () {
            if ($("#selectAllChk").is(":checked")) $("input[name=selectOneChk]").prop("checked", true);
            else $("input[name=selectOneChk]").prop("checked", false);
          });
        });

        $('input:checkbox[name="selectOneChk"]').each(function () {
          $("input[name=selectOneChk]").click(function () {
            var total = $("input[name=selectOneChk]").length;
            var checked = $("input[name=selectOneChk]:checked").length;

            if (total != checked) {
              $("#selectAllChk").prop("checked", false);
            } else {
              $("#selectAllChk").prop("checked", true);
            }
          });
        });
      });


      function fn_tbl_render(data, type, full, meta) {

        var title = null;
        if (meta.col == 0) {
          return '<input type="checkbox" id="selectOneChk" name="selectOneChk" value="' + full.product_id + '" />';
        } else if(meta.col == 7) {
          switch (full.product_state) {
            case null :
              return "";
              break;
            case '픽업요청':
              return '<span class="badge bg-success bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
              break;
            case '반품구조대로 이동 중':
              return '<span class="badge bg-warning bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
              break;
            case '도착/입고':
              return '<span class="badge bg-light-success bg-lighten-2 width-150 d-inline-block" style="color : green">' + full.product_state + '</span>'
              break;
            case '최종 검수 대기':
              return '<span class="badge bg-blue bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
              break;
            case '검수완료':
              return '<span class="badge bg-danger bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
              break;
            case '보관중':
              return '<span class="badge bg-purple bg-lighten-2 width-150 d-inline-block">' + full.product_state + '</span>'
              break;
            default:
              return '<span>' + full.product_state + '</span>'
              break;
          }
        } else if(meta.col == 8) {
          if (full.tracking_no == undefined && full.tracking_no == null) {
            return "-";
          } else {
            if (full.delivery_company == undefined && full.delivery_company == null) {
              full.delivery_company = '-';
            }
            return  (full.delivery_company == 'HJ' ? '한진택배' : full.delivery_company) + ' / ' + full.tracking_no + " " + `<a class="btn bg-blue-white bg-lighten-3" data-toggle="modal" data-target="#modal-5" onclick="setTrackingInfo('` + full.delivery_company + `', '` + full.tracking_no + `')"><i class="feather icon-search"></i></a>`;
          }
        } else if (meta.col == 9) {
          if (full.inspector_name == '' || full.inspector_name == null) {
            return '-';
          } else if (full.inspector_name != '' && full.inspector_name != null) {
            return full.inspector_name ;
          }
        } else if(meta.col == 11){
          return `<button type="text" class="btn btn-sm btn-outline-blue" onclick="location.href='keepProductDetail.do?product_id=` + full.product_id + `&isSelling=false'">상세보기</button>`;
        } else {
          if(data != null) {
            return data;
          } else{
            return "";
          }
        }
      }

      function fn_search() {
          var table = $('#user_data_table').DataTable();

          var numCols = table.columns().nodes().length;
          for(var i=0; i<numCols; i++) { table.column(i).search(''); }


          var search = null;
          $(".search_tag").each(function() {
              var val = $(this).val();
              var idx = $(this).attr('name');

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
                idx = 5;
                break;
            case "상품번호" :
                idx = 1;
                break;
            case "셀러명" :
                idx = 3;
                break;
            case "검수자" :
              idx = 9;
              break;
            case "운송장번호" :
              idx = 8;
              break;
          }
         if(search == null)
              search = table.column(idx).search(val);
         else
              search = search.column(idx).search(val);

        var statusArray= [];
        if ($("#selectAll").is(":checked")){
          statusArray = '';
        }else{
          $("input[name=selectOne]").each(function() {
            if(this.checked) {
              statusArray.push($(this).val());
            }
          });
        }
        if(search == null)
          search = table.column(7).search(statusArray);
        else
          search = search.column(7).search(statusArray);

        var start_dt =$("#start_dt").val();
        var end_dt = $("#end_dt").val()


        if(search == null) {
          search = table.column(14).search(start_dt);
          search = search.column(15).search(end_dt);
        }else {
          search = search.column(14).search(start_dt);
          search = search.column(15).search(end_dt);
        }

        if(search != null)
              search.draw();
        sessionStorage.setItem('start_dt', start_dt);
        sessionStorage.setItem('end_dt', end_dt);
        sessionStorage.setItem('category1', $("#topName option:selected").val());
        sessionStorage.setItem('category2', $("#middle option:selected").val());
      }

      function dateSelect() {
        var params = $("form[name=parameterVO]").serialize();
        $.ajax({
          url : "${pageContext.request.contextPath}/commissionSaleList.json",
          type : "POST",
          data : params,
          success : function() {

          }
        });
      }

      $(document).ready(function() {
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

      function fn_picker() {
        alert(document.getElementById('picker_from').value);
      }

      function fn_reset() {
        $("button[name=btnDate]").each(function() {
            $(this).css("background-color","white");
        });

        $("input[type=checkbox]").each(function() {
          this.checked = false;
        });
        $('#searchValue').val('');
        $("#selectAll").prop("checked", true);
        $("#topName").val('');
        $("#middle").html('<option selected value="">전체</option>');
        $("#start_dt").val('');
        $("#end_dt").val('');
        $("#sell_type").val('');
        $('#projectinput1').val('0');
      }

      function changeDateTime() {
        var value = parseInt($('#projectinput1').val());
        var nowDate = new Date()
        if(value == 9999){
          $("#start_dt").pickadate('picker').set('select', null);
          $("#end_dt").pickadate('picker').set('select', null);
          document.getElementById('start_dt').style.backgroundColor = 'white';
          document.getElementById('end_dt').style.backgroundColor = 'white';
        }else{
          $("#start_dt").pickadate('picker').set('select', nowDate.setDate(nowDate.getDate() + value));
          $("#end_dt").pickadate('picker').set('select', new Date());
        }
      }

      function changeMiddle(){
        var htmlString = '';
        var params = {
          'category_id': document.getElementById('topName').options[document.getElementById('topName').selectedIndex].value
        }
        if(params.category_id == ''){
          htmlString += '<option selected value="">전체</option>';
          document.getElementById("middle").innerHTML = htmlString;
          return;
        }
        $.ajax({
          url : "${pageContext.request.contextPath}/common/category.json",
          type : "POST",
          data: params,
          success : function(result) {
            htmlString += '<option selected value="">전체</option>';

            for (var i=0; i<result.categoryList.length; i++) {
              htmlString += '<option + value="'+result.categoryList[i].category_id + '">' + result.categoryList[i].category_name + '</option>';
            }
            document.getElementById("middle").innerHTML = htmlString;
          }
        });
      }

      function setTrackingInfo(company, trackingNumber){
        var trackingCompany = '';
        switch (company){
          case "롯데택배":
          case "'롯데'":
            trackingCompany = 'LT';
            break;    // 롯데
          case "CJ대한통운":
            trackingCompany = 'CJ';
            break;    // CJ
          case "한진택배":
          case "한진":
            trackingCompany = 'HJ';
            break; // 한진
          case "우체국택배":
          case "우체국":
            trackingCompany = 'EP';
            break;    // 우체국
        }

        $('#trackingInfo').html('<b>'+company +' '+ trackingNumber+'</b>');
        $('#trackingTable').html('');

        $.ajax({
          url : "https://therecommerce.kr/crawling?code="+trackingNumber+"&company="+trackingCompany,
          // crossDomain: true,
          type : "GET",
          success : function(result) {
            if(result != null && result != undefined && result != ''){
              for(let i=0; i<result.progress.length; i++) {
                $('#trackingTable').append(`<tr><td>`+result.progress[i].date +` `+ result.progress[i].time +`</td><td>`+result.progress[i].info+`</td><td>`+ result.progress[i].location +`</td></tr>`);
              }
            }
          }
        })
      }

      function searchStatus(type){
        fn_reset();
        $('#selectAll').prop("checked", false);
        switch (type){
          case "픽업요청" :
            $('#checkSearch1').prop("checked", true);
              break;
          case "반품구조대로 이동 중" :
            $('#checkSearch2').prop("checked", true);
            break;
          case "도착/입고" :
            $('#checkSearch3').prop("checked", true);
            break;
          case "최종 검수 대기" :
            $('#checkSearch5').prop("checked", true);
            break;
          case "보관중" :
            $('#checkSearch6').prop("checked", true);
            break;
        }
        fn_search();
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
          return 'keepProduct table.xlsx';  // 파일명
        },
        getSheetName : function(){
          return 'keepProduct table sheet';  // 시트명
        },
        getExcelData : function(){
          // return document.getElementById('user_data_table'); // 테이블 id

          var table = document.getElementById('user_data_table');
          var clonedTable = table.cloneNode(true);
          var rows = clonedTable.getElementsByTagName('tr');

          for (var i = 0; i < rows.length; i++) {
            var cells = rows[i].getElementsByTagName('td');

            if (cells.length > 11) {
              rows[i].removeChild(cells[11]);  // 상세보기 삭제
            }
          }

          return clonedTable;
        },
        getWorksheet : function(){
          return XLSX.utils.table_to_sheet(this.getExcelData());
        }
      }

      function stringToUint8ArrayBuffer(s) {
        var buf = new ArrayBuffer(s.length);
        var view = new Uint8Array(buf);
        for (var i=0; i<s.length; i++) view[i] = s.charCodeAt(i) & 0xFF;
        return buf;
      }

    </script>

    <!-- BEGIN: Page JS-->
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pages/page-users.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/bootstrap-datetime.js"></script>
    <script src="${pageContext.request.contextPath}/resources/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
    <!-- END: Page JS-->
<%--    <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>--%>


</body>
<!-- END: Body-->

</html>
