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
            <div class="content-header-left col-md-6 col-12">
                <h3 class="content-header-title mb-50">고객센타문의(앱)</h3>
            </div>
            <div class="content-header-right col-md-6 col-12">
<%--                <div class="float-md-right">--%>
<%--                    <button class="nav-link btn btn-sm btn-outline-blue" type="button">다운로드</button>--%>
<%--                </div>--%>
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
                                        <div class="col-md-4">
                                            <div class="row">
                                                <label class="col-md-2 label-control text-left" for="responseState">답변상태</label>
                                                <div class="form-group col-md-10 border-bottom-0">
                                                    <label class="sr-only" for="responseState">전체</label>
                                                    <select id="responseState" name="3" class="search_tag form-control">
                                                        <option value="" <c:if test="${state == null}">selected=""</c:if>>전체</option>
                                                        <option value="미답변" <c:if test="${state != null}">selected=""</c:if>>미답변</option>
                                                        <option value="답변완료">답변완료</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="row">
                                                <label class="col-md-2 label-control text-left" for="qnaType2">문의유형</label>
                                                <div class="form-group col-md-10 border-bottom-0">
                                                    <label class="sr-only" for="qnaType2">전체</label>
                                                    <select id="qnaType2" name="1" class="search_tag form-control">
                                                        <option value="" selected="">전체</option>
                                                        <option value="상품">상품</option>
                                                        <option value="배송/배송지연">배송/배송지연</option>
                                                        <option value="취소/환불/반품/교환">취소/환불/반품/교환</option>
                                                        <option value="사이트오류">사이트오류</option>
                                                        <option value="기타">기타</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="row">
                                                <label class="col-md-2 label-control text-left" for="searchInput">상세검색</label>
                                                <div class="form-group col-md-4 border-bottom-0">
                                                    <label class="sr-only" for="searchInput">제목</label>
                                                    <select id="searchInput" name="interested" class="form-control">
                                                        <option value="제목" selected="">제목</option>
                                                        <option value="작성자">작성자</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-6 border-bottom-0">
                                                    <input type="text" id="searchValue" class="form-control" name="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group row last">
                                        <div class="col-md-11 border-left-0">
                                            <div class="row">
                                                <div class="form-group col-md-2 border-bottom-0">
                                                    <label class="sr-only" for="projectinput1"> 1개월 </label>
                                                    <select id="projectinput1" name="interested" class="form-control" onchange="changeDateTime()">
                                                        <option value="-30" selected="">1개월</option>
                                                        <option value="-90">3개월</option>
                                                        <option value="-180">6개월</option>
                                                        <option value="-365">1년</option>
                                                        <option value="">직접입력</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="d-flex justify-content-start align-items-start">
                                                        <div class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="start_dt" name="7" class="search_tag form-control pickadate-selectors" placeholder="" value="" />
                                                                <div class="input-group-append">
                                                                  <span class="input-group-text">
                                                                      <span class="fa fa-calendar-o"></span>
                                                                  </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <span class="font-weight-bold mx-1 pt-50">~</span>
                                                        <div class="d-flex align-items-center justify-content-start">
                                                            <div class="input-group">
                                                                <input type='text' id="end_dt" name="8" class="search_tag form-control pickadate-selectors" placeholder="" value="" />
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
                            <button type="button" class="btn btn-outline-light btn-min-width mr-1" onclick="fn_reset()">초기화</button>
                            <button type="button" class="btn btn-outline-blue btn-min-width" onclick="fn_search();">검색</button>
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
                                <!-- datatable start -->
                                <div class="table-responsive">
                                    <table id="user_data_table" class="table table-striped table-hover">
                                        <thead class="text-center">
                                        <tr>
                                            <th>No</th>
                                            <th>문의유형</th>
                                            <th>문의내용</th>
                                            <th>답변상태</th>
                                            <th>작성자</th>
                                            <th>작성일자</th>
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

<form:form>
    <input type="hidden" id="product_id" name="product_id" value=""/>
    <input type="hidden" id="product_name" name="product_name" value=""/>
    <input type="hidden" id="order_name" name="order_name" value=""/>
    <input type="hidden" id="order_request_id" name="order_request_id" value=""/>
    <input type="hidden" id="modal_cal_dt" name="modal_cal_dt" value=""/>
</form:form>
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
<!-- END: Page JS-->

<script>
    $(document).ready(function() {
        let columnFields = [ "user_qna_no", "user_qna_type2", "user_qna_title", "user_qna_state", "user_qna_writer", "user_qna_reg_dt", "button", "start_dt", "end_dt"];
        let columWidths = [ 20, 40, 50, 30, 30, 30, 20, 0, 0 ];

        init_datatable("${pageContext.request.contextPath}/customer/userInquiry.json", columnFields, columWidths, fn_tbl_render);
        fn_search();

        $("#selectAll1").click(function () {
            $('input:checkbox[name="selectOne1"]').each(function () {
                if ($("#selectAll1").is(":checked")) {
                    $("input[name=selectOne1]").prop("checked", true);
                }
                else {
                    $("input[name=selectOne1]").prop("checked", false);
                }
            });
        });

        $('input:checkbox[name="selectOne1"]').each(function () {
            $("input[name=selectOne1]").click(function () {
                let total = $("input[name=selectOne1]").length;
                let checked = $("input[name=selectOne1]:checked").length;

                if (total != checked) {
                    $("#selectAll1").prop("checked", false);
                }
                else {
                    $("#selectAll1").prop("checked", true);
                }
            });
        });

    });

    function fn_tbl_render(data, type, full, meta) {
        if(meta.col == 3) {
            if (full.user_qna_state == '미답변') {
                return '<span class="badge bg-light-blue-grey width-100 text-muted">미답변</span>';
            } else {
                return '<span class="badge bg-light-blue width-100" style="color: blue">답변완료</span>';
            }
        }
        if(meta.col == 6) {
            if (full.user_qna_state == '미답변') {
                return `<button type="button" class="btn btn-sm btn-outline-grey-blue" onclick="location.href='manOnManQnaUserDetail.do?user_qna_no=`+ full.user_qna_no +`'">답변등록 </button>`;
            } else {
                return `<button type="button" class="btn btn-sm btn-outline-bitbucket" onclick="location.href='manOnManQnaUserDetail.do?user_qna_no=`+ full.user_qna_no +`'">답변보기 </button>`;
            }
        }
        return data;
    }   // 초기 렌더


    function fn_reset() {
        $("button[name=btnDate]").each(function() {
            $(this).css("background-color","white");
        });

        $("input[type=checkbox]").each(function() {
            this.checked = false;
        });
        $('#searchValue').val('');
        $("#selectAll").prop("checked", false);
        $("#selectAll1").prop("checked", true);
        $("#topName").val('');
        $("#middle").html('<option selected value="">전체</option>');
    }   // 초기화

    // function fn_search() {
    //     let table = $('#user_data_table').DataTable();
    //     let numCols = table.columns().nodes().length;
    //
    //     for(let i=0; i<numCols; i++) {
    //         table.column(i).search('');
    //     }
    //
    //     let search = null;
    //     $(".search_tag").each(function() {
    //         let val = $(this).val();
    //         let idx = $(this).attr('name');
    //
    //         if(search == null) {
    //             search = table.column(idx).search(val);
    //         }
    //         else {
    //             search = search.column(idx).search(val);
    //         }
    //     });
    //
    //     let searchCategory = $('#selectSearchCategory').val();
    //     let searchValue = $('#searchValue').val();
    //
    //     let idx = '';
    //     switch (searchCategory){
    //         case "상품명" :
    //             idx = 2;
    //             break;
    //         case "상품번호" :
    //             idx = 1;
    //             break;
    //         case "구매자" :
    //             idx = 8;
    //             break;
    //         case "주문번호" :
    //             idx = 8;
    //             break;
    //     }
    //     if(search == null) {
    //         search = table.column(idx).search(searchValue);
    //     }
    //     else {
    //         search = search.column(idx).search(searchValue);
    //     }
    //
    //     if(search != null) {
    //         search.draw();
    //     }
    // }

    // function changeDateTime(id,value) {
    //     $("button[name=btnDate]").each(function() {
    //         if($(this).attr('id')== id) {
    //             $(this).css("background-color","cornflowerblue")
    //         }else{
    //             $(this).css("background-color","white")
    //         }
    //     });
    //     var nowDate = new Date()
    //     if(value == 9999){
    //         $("#start_dt").pickadate('picker').set('select' ,null);
    //         $("#end_dt").pickadate('picker').set('select' ,null);
    //     }else{
    //         $("#start_dt").pickadate('picker').set('select' ,nowDate.setDate(nowDate.getDate() + value));
    //         $("#end_dt").pickadate('picker').set('select' ,new Date());
    //     }
    // }

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

        let searchInput =$('#searchInput').val();  // 검색어 select
        let searchValue = $('#searchValue').val();  // 검색어 input

        let val = searchValue;
        let idx = '';

        switch (searchInput) {
            case "제목" :
                idx = 2;
                break;
            case "작성자" :
                idx = 4;
                break;
        }

        if(search == null) {
            search = table.column(idx).search(searchValue);
        } else {
            search = search.column(idx).search(searchValue);
        }

        let statusArray= [];

        // if ($("#selectAll1").is(":checked")){
        //   statusArray = '';
        // } else {
        //   $("input[name=selectOne1]").each(function() {
        //     if(this.checked) {
        //       statusArray.push($(this).val());
        //     }
        //   });
        // }
        // if(search == null) {
        //   search = table.column(idx).search(statusArray);
        // } else {
        //   search = search.column(idx).search(statusArray);
        // }
        if(search != null) {
            search.draw();
        }
    }   // 검색


    $("#selectAll1").click(function () {
        $('input:checkbox[name="selectOne1"]').each(function () {
            if ($("#selectAll1").is(":checked")) $("input[name=selectOne1]").prop("checked", true);
            else $("input[name=selectOne1]").prop("checked", false);
        });
    }); // 체크박스 전체 작동

    function changeDateTime() {
        var value = parseInt($('#projectinput1').val());
        var nowDate = new Date()
        if(value == 9999){
            $("#start_dt").pickadate('picker').set('select', null);
            $("#end_dt").pickadate('picker').set('select', null);
        }else{
            $("#start_dt").pickadate('picker').set('select', nowDate.setDate(nowDate.getDate() + value));
            $("#end_dt").pickadate('picker').set('select', new Date());
        }
    }


</script>

</body>
<!-- END: Body-->

</html>
