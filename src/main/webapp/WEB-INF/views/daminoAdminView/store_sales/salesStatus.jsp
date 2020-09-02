<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>도미노피자 테스트점 관리페이지</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/admin/styles.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css'/>"  crossorigin="anonymous" />

	<script src="<c:url value='https://code.jquery.com/jquery-3.5.1.min.js'/>" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>" crossorigin="anonymous"></script>
	<!-- chart js -->
	<script type="text/javascript" src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" '/>" crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" '/>" crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" '/>" crossorigin="anonymous"></script>
	
	<script type="text/javascript" src="<c:url value='/resources/assets/admin/demo/datatables-demo.js'/>"></script>

	<!-- pdf 변환 js -->
	<script type = "text/javascript" src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.2.61/jspdf.min.js'/>"></script>
	<script type = "text/javascript" src ="<c:url value='https://html2canvas.hertzen.com/dist/html2canvas.min.js" '/>"></script>
	
	<!-- 특정 영역 print 해주는 js -->
	<script type = "text/javascript" src ="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/printThis/1.15.0/printThis.js" '/>"></script>

<script type="text/javascript">
var lang_kor = {
        "emptyTable" : "데이터가 없습니다.",
        "info" : "_START_ - _END_ (총 _TOTAL_ 건)",
        "infoEmpty" : "0건",
        "infoFiltered" : "(전체 _MAX_ 건 중 검색결과)",
        "lengthMenu" : "_MENU_ 개씩 보기",
        "search" : "빠른 검색 : ",
        "zeroRecords" : "검색된 데이터가 없습니다.",
        "paginate" : {
            "first" : "첫 페이지",
            "last" : "마지막 페이지",
            "next" : "다음",
            "previous" : "이전"
        }
    };
$(document).ready(function() {
    $('#dataTable1').DataTable( {
        order: [[ 0, 'desc' ]],
        ordering:true,
        language : lang_kor
    });
    
    $("#printPDF").click(function(){
    	alert("1");
    	//$("#monthly12").printThis();

    	 //pdf_wrap을 canvas객체로 변환
		  html2canvas($('#monthly12')[0]).then(function(canvas) {
		    var doc = new jsPDF('p', 'mm', [200,180]); //jspdf객체 생성
		    var imgData = canvas.toDataURL('image/jpeg', 1.0); //캔버스를 이미지로 변환
		    
		     doc.addImage(imgData, 'jpeg', 10, 30); //이미지를 기반으로 pdf생성
		    doc.save('sample-file.pdf'); //pdf저장 
		  });
    });
    
    $("#yearlyPDF").click(function(){
    	alert("1");

    	 //pdf_wrap을 canvas객체로 변환
		  html2canvas($('#yearly12')[0]).then(function(canvas) {
		    var doc = new jsPDF('p', 'mm', [200,180]); //jspdf객체 생성
		    var imgData = canvas.toDataURL('image/jpeg', 1.0); //캔버스를 이미지로 변환
		    
		     doc.addImage(imgData, 'jpeg', 10, 30); //이미지를 기반으로 pdf생성
		    doc.save('sample-file.pdf'); //pdf저장 
		  });
    });
   
});

/* 날짜 선택 자동으로 오늘날짜  */
/* window.onload = function(){
	var today = new Date();
	var Year = today.getFullYear(); 
	var Month = "" + (today.getMonth()+1);
	var Day = "" + today.getDate();
	
	if(Month.length < 2) Month = "0" + Month;
	if(Day.length < 2) Day = "0" + Day;
	
	var Today = Year + "-" + Month + "-" + Day;
	
	document.getElementById("startDate").value = Today;
	document.getElementById("endDate").value = Today;
} */
</script>
<script type="text/javascript">
    /* function doExcelUploadProcess(){
        var f = new FormData(document.getElementById('form1'));
        $.ajax({
            url: "monthlyExcel.admdo",
            data: f,
            processData: false,
            contentType: false,
            type: "POST",
            success: function(data){
                console.log(data);
                document.getElementById('result').innerHTML = JSON.stringify(data);
            }
        })
        
        doExcelDownloadProcess();
    }
    
    function doExcelDownloadProcess(){
        var f = document.form1;
        f.action = "monthlyExcel.admdo";
        f.submit();
    } */
</script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="main.admdo">Damino Administration</a>
		<!-- 전체화면 버튼 -->
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Navbar-->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="userDropdown" href="#"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<c:choose>
						<c:when test="${msg=='logout' }">
							<a class="dropdown-item" href="login.admdo">Login</a>
						</c:when>
						<c:otherwise>
							<a class="dropdown-item" href="updateTempPW.admdo">정보수정</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="logout.admdo">Logout</a>
						</c:otherwise>
					</c:choose>
				</div>
			</li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">

						<div class="sb-sidenav-menu-heading">Dashboard</div>

						<a class="nav-link" href="main.admdo"> 메인 </a>

						<div class="sb-sidenav-menu-heading">Interface</div>

						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#customerPage" aria-expanded="false"
							aria-controls="customerPage"> 회원관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="customerPage"
							aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link collapsed" href="memberInfo.admdo"> 회원관리 </a> 
								<a class="nav-link collapsed" href="marketList.admdo"> 점포승인 </a>
								<a class="nav-link collapsed" href="couponList.admdo"> 쿠폰관리 </a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#storePage" aria-expanded="false"
							aria-controls="storePage"> 매장관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="storePage" aria-labelledby="headingTwo"
							data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link collapsed" href="storeRegForm.admdo"> 매장등록 </a> 
								<a class="nav-link collapsed" href="storeView.admdo"> 매장조회 </a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#ordersalesPage" aria-expanded="false"
							aria-controls="ordersalesPage"> 주문/매출관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="ordersalesPage"
							aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link collapsed" href="orderList.admdo"> 주문조회
								</a> <a class="nav-link collapse" href="salesStatus.admdo"> 매출현황
								</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#boardPage" aria-expanded="false"
							aria-controls="boardPage"> 게시판관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="boardPage" aria-labelledby="headingTwo"
							data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link collapsed" href="noticeBoardView.admdo">게시판리스트 </a> 
								<a class="nav-link collapse" href="boardList.admdo">게시글관리 </a>
								<a class="nav-link collapse" href="myquestionlist.admdo">1:1문의처리 </a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#menuPage" aria-expanded="false"
							aria-controls="menuPage"> 메뉴관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="menuPage" aria-labelledby="headingTwo"
							data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="menuList.admdo"> 메뉴조회 </a> <a
									class="nav-link collapsed" href="#" data-toggle="collapse"
									data-target="#insertMenuPage" aria-expanded="false"
									aria-controls="insertMenuPage"> 메뉴등록
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="insertMenuPage"
									aria-labelledby="headingOne"
									data-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="insertMenu_pizza.admdo">피자</a>
										<a class="nav-link" href="insertMenu_side.admdo">사이드디시</a> 
										<a class="nav-link" href="insertMenu_drink.admdo">음료&기타</a> 
										<a class="nav-link" href="insertMenu_topping.admdo">토핑</a>
									</nav>
								</div>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#sitePage" aria-expanded="false"
							aria-controls="sitePage"> 사이트관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="sitePage" aria-labelledby="headingOne"
							data-parent="#sidenavAccordionPages">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="qna_list.admdo">Q&A</a> <a
									class="nav-link" href="bannerBoardView.admdo">배너관리</a> <a
									class="nav-link" href="terms_list.admdo">약관관리</a>
							</nav>
						</div>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as: ${admin.adminid }</div>
					Start Bootstrap
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<!-- main 내용 입력  -->
				<div class="card mb-4" >
					<!-- 본문 머리 -->
					<div class="card-header">
						<i class="fas fa-table mr-1"></i><strong> 매출 현황</strong>
						<!--새로고침 버튼-->
						<img src="<c:url value='/resources/images/admin/refresh_icon.png' />" width="20"
							onClick="window.location.reload()"
							style="margin-left: 15px; cursor: pointer;">
					</div>
					<!-- 본문  몸통 -->
					<div class="card-body">
						<c:if test="${salesList eq null }">
							<!--년 / 월 매출-->
							<div class="row">
									<div class="col-xl-6">
									<input type="button" id="printPDF" class="btn btn-primary" value="PDF 다운로드" style="height: 40px; margin: 10px; ">
										<div class="card mb-4" id="monthly12">
											<div class="card-header">
												<div>
													<i class="fas fa-chart-area mr-1"></i><b> 최근 12개월 매출</b> 
												</div>
											</div>
											<div class="card-body">
												<c:forEach var="monthly" items="${monthly}"
													varStatus="status">
													<input type="hidden" id="monthly${status.index }"
														value="${monthly}" />
												</c:forEach>
												<c:forEach var="monthlySales" items="${monthlySales }"
													varStatus="status">
													<input type="hidden" id="monthlySales${status.index }" 
														 value="${monthlySales }" /> 
												</c:forEach>
												<canvas id="AreaChart_month" width="100%" height="30"></canvas>
											</div>
										</div>
									</div>
									
								<div class="col-xl-6">
								<input type="button" id="yearlyPDF" class="btn btn-primary" value="PDF 다운로드" style="height: 40px; margin: 10px;">								
									<div class="card mb-4" id="yearly12">
										<div class="card-header">
											<div>
												<i class="fas fa-chart-bar mr-1"></i><b> 최근 5년 매출</b> 
											</div>
										</div>
										<div class="card-body">
											<c:forEach var="yearly" items="${yearly }" varStatus="status">
												<input type="hidden" id="yearly${status.index }" value="${yearly }"/>
											</c:forEach>
											<c:forEach var="yearlySales" items="${yearlySales }" varStatus="status">
												<input type="hidden" id="yearlySales${status.index }" value="${yearlySales }"/>
											</c:forEach>
											<canvas id="AreaChart_year" width="100%" height="30"></canvas>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${salesList != null }">
							<!--검색기간 매출 -->
					
							<div class="row">
								<div class="col-xl-6">
									<div class="card mb-4">
										<div class="card-header">
											<div>
												<i class="fas fa-chart-area mr-1"></i>
												<b> <fmt:formatDate value="${sessionScope.startdate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${sessionScope.enddate}" pattern="yyyy-MM-dd"/> 매출액 </b>
											</div>
										</div>
										<div class="card-body">
											<c:forEach var="dateSearch" items="${dateSearch}" varStatus="status">
												<input type="hidden" class="searchCount" id="dateSearch${status.index }" value="${dateSearch}"/>
											</c:forEach>
											<c:forEach var="salesSearch" items="${salesSearch }" varStatus="status">
												<input type="hidden" id="salesSearch${status.index }" value="${salesSearch }"/>
											</c:forEach>
											<canvas id="AreaChart_Search" width="100%" height="30"></canvas>
										</div>
									</div>
								</div>
								<div class="col-xl-6">
									<div class="card mb-4">
										<div class="card-header">
											<div>
												<i class="fas fa-chart-bar mr-1"></i>
												<b> <fmt:formatDate value="${sessionScope.startdate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${sessionScope.enddate}" pattern="yyyy-MM-dd"/> 주문건수 </b> 
											</div>
										</div>
										<div class="card-body">
											<c:forEach var="countSearch" items="${countSearch }" varStatus="status">
												<input type="hidden" id="countSearch${status.index }" value="${countSearch }"/>
											</c:forEach>
											<canvas id="BarChart_Search" width="100%" height="30"></canvas>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</div>
						<!--검색-->
						<form id="form1" name="form1" method="post" enctype="multipart/form-data">
						
						<div class="card mb-4">
							<div class="card-header">
								<div>
									<i class="fas fa-table mr-1"></i><b> 매출 통계</b> 
								</div>
							</div>
							<div class="card-body">
								<strong style="font-size:18px;">매출 상세 검색</strong>
								<hr>
								<form name="searchSales" action="searchSales.admdo" method="post">
									<div class="row">
										<div>
											<div class="input-group" style="margin: 10px;">
												<strong><p style="height:40px; font-size: 16px;">날짜 선택</p></strong>
											</div>
											<div class="input-group" style="margin: 10px;">
												<strong><p style="height:40px; font-size: 16px;">금액 입력</p></strong>
											</div>
											<div class="input-group" style="margin: 10px;">
												<strong><p style="height:40px; font-size: 16px;">수령방식</p></strong>
											</div>
										</div>
										
										<div>
											<div class="input-group" style="margin: 10px;">
												<input type="date" name="startdate" id="startdate" value="<fmt:formatDate value="${sessionScope.startdate}" pattern="yyyy-MM-dd"/>" style="height: 40px;"/>
												<p style="margin-top: 10px">&nbsp; &nbsp; <strong>~</strong> &nbsp; &nbsp; </p>
												<input type="date" name="enddate" id="enddate" value="<fmt:formatDate value="${sessionScope.enddate}" pattern="yyyy-MM-dd"/>" style="height: 40px;"/>
											</div>
											<div class="input-group" style="margin: 10px;">
												<input type="number" name="rowprice" id="rowprice" value=0 style="height: 40px; width:160px;"/>
												<p style="margin-top: 10px">&nbsp; &nbsp; <strong>~</strong> &nbsp; &nbsp; </p>
												<input type="number" name="highprice" id="highprice" value=0 style="height: 40px; width:160px;"/>
											</div>
											<div class="input-group" style="margin: 5px;">
												<select name="take" id="take" style="height: 40px; margin:5px;">
													<option value="none">수령방식 선택</option>
													<option value="배달">배달</option>
													<option value="포장">포장</option>
												</select>
												<strong style="height=40px; margin:10px;"><p>매장명</p></strong>
												<select name="store" id="store" style="height: 40px; margin:5px;">
													<option value="none">매장명 선택</option>
													<option value="개포점">개포점</option>
													<option value="논현점">논현점</option>
													<option value="대치점">대치점</option>
													<option value="압구정점">압구정점</option>
													<option value="천호암사점">천호암사점</option>
													<option value="둔촌점">둔촌점</option>
													<option value="길동점">길동점</option>
													<option value="강일점">강일점</option>
													<option value="미아점">미아점</option>
													<option value="번동점">번동점</option>
													<option value="수유점">수유점</option>
													<option value="강서구청점">강서구청점</option>
													<option value="등촌가양점">등촌가양점</option>
													<option value="발산점">발산점</option>
													<option value="방화점">방화점</option>
													<option value="염창점">염창점</option>
													<option value="화곡점">화곡점</option>
													<option value="낙성대점">낙성대점</option>
													<option value="독산난곡점">독산난곡점</option>
													<option value="보라매점">보라매점</option>
													<option value="신림점">신림점</option>
													<option value="구의광장점">구의광장점</option>
													<option value="군자점">군자점</option>
													<option value="자양점">자양점</option>
													<option value="중곡점">중곡점</option>
													<option value="개봉점">개봉점</option>
													<option value="구로점">구로점</option>
													<option value="신도림점">신도림점</option>
													<option value="천왕점">천왕점</option>
													<option value="가산점">가산점</option>
													<option value="시흥점">시흥점</option>
													<option value="공릉점">공릉점</option>
													<option value="당고개점">당고개점</option>
													<option value="상계점">상계점</option>
													<option value="월계점">월계점</option>
													<option value="도봉점">도봉점</option>
													<option value="쌍문점">쌍문점</option>
													<option value="고대점">고대점</option>
													<option value="이문점">이문점</option>
													<option value="장안점">장안점</option>
													<option value="전농점">전농점</option>
													<option value="사당점">사당점</option>
													<option value="상도점">상도점</option>
													<option value="중앙대점">중앙대점</option>
													<option value="마포점">마포점</option>
													<option value="망원점">망원점</option>
													<option value="신촌점">신촌점</option>
													<option value="서대문점">서대문점</option>
													<option value="연희점">연희점</option>
													<option value="홍제점">홍제점</option>
													<option value="동서초점">동서초점</option>
													<option value="방배역점">방배역점</option>
													<option value="방배점">방배점</option>
													<option value="성수2호점">성수2호점</option>
													<option value="옥수점">옥수점</option>
													<option value="왕십리점">왕십리점</option>
													<option value="동소문점">동소문점</option>
													<option value="정릉점">정릉점</option>
													<option value="가락점">가락점</option>
													<option value="롯데월드점">롯데월드점</option>
													<option value="석촌점">석촌점</option>
													<option value="목동점">목동점</option>
													<option value="신월점">신월점</option>
													<option value="양천점">양천점</option>
													<option value="당산점">당산점</option>
													<option value="대림점">대림점</option>
													<option value="대방점">대방점</option>
													<option value="용산점">용산점</option>
													<option value="이촌점">이촌점</option>
													<option value="이태원점">이태원점</option>
													<option value="가좌점">가좌점</option>
													<option value="구파발점">구파발점</option>
													<option value="연신내점">연신내점</option>
													<option value="대학로점">대학로점</option>
													<option value="성균관대 인사캠(서울점)">성균관대 인사캠(서울점)</option>
													<option value="세종로점">세종로점</option>
													<option value="명동점">명동점</option>
													<option value="신당점">신당점</option>
													<option value="면목점">면목점</option>
													<option value="중랑점">중랑점</option>
													<option value="녹번점">녹번점</option>
												</select>
												<input type="submit" class="btn btn-primary" value="검색" style="height:40px; margin:5px;"/>
												<input type="button" class="btn btn-primary" onclick="doExcelDownloadProcess()" value="Excel 다운로드" style="height: 40px; left-margin: 15px;">
										</div>
										</div>
									</div>
								</form>
								<hr>
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable1" width="100%" cellspacing="0">
										<thead>
											<tr>
												<th>주문날짜</th>
												<th>판매금액</th>
												<th>매장명</th>
												<th>수령방식</th>
												<th>결제방식</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="salesList" items="${salesList }">
												<tr>
													<td><fmt:formatDate value="${salesList.orderdate }" pattern="yyyy-MM-dd"/></td>
													<td>${salesList.price }</td>
													<td>${salesList.store }</td>
													<td>${salesList.take }</td>
													<td>${salesList.paytool }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							
						</div>
						</form>
						<!-- 종합 -->
						<div class="card mb-4">
							<div class="card-header">
								<div>
									<b>종 합</b>
								</div>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-lg-6">
										<div class="card-header">
											<p>총 매출액</p>
											<hr>
											<div class="card-body">
												<!-- <h3> 원</h3> -->
												<h3><fmt:formatNumber value="${orderPrice }" pattern="#,###" />원</h3>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="card-header">
											<p>전월대비</p>
											<hr>
											<div class="card-body">
												<h3>100.0 %</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 원그래프 -->
						<div class="row">
							<div class="col-lg-6">
								<div class="card-header">
									<i class="fas fa-chart-pie mr-1"></i><b> 인기 제품</b>
								</div>
								<div class="card-body">
									<canvas id="PieChart_sellrank" width="100%" height="50"></canvas>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="card-header">
									<i class="fas fa-chart-pie mr-1"></i><b> 성별 선호도</b>
								</div>
								<div class="card-body">
									<canvas id="PieChart_mw" width="100%" height="50"></canvas>
								</div>
								<script>
									var ctx = document.getElementById("PieChart_mw");
									var myPieChart = new Chart(ctx, {
									  type: 'pie',
									  data: {
									    labels: ["남성", "여성"],
									    datasets: [{
									      data: [
									    	  "${maleCount}",
									    	  "${femaleCount}"
									    	  ],
									      backgroundColor: ['#004098 ', '#FF2C2C'],
									    }],
									  },
									});
								</script>
							</div>
						</div>
						<!-- 원그래프 -->
					</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Damino Pizza 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	
	<script
		src="<c:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js'/>" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/admin/scripts.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js'/>" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/admin/demo/chart-bar-demo.js'/>"></script>
	<!-- 차트 -->
	<!-- 월 라인 차트  -->
	<script type="text/javascript" src="<c:url value='/resources/js/admin/chart-area-month.js'/>"></script>
	<!-- 년 바 차트  -->
	<script type="text/javascript" src="<c:url value='/resources/js/admin/chart-bar-year.js'/>"></script>
	<!--  남녀차트   -->
	<script type="text/javascript" src="<c:url value='/resources/js/admin/chart-pie-sellrank.js'/>"></script>
	<!-- 검색결과 차트 -->
	<script type="text/javascript" src="<c:url value='/resources/js/admin/chart-area-search.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/admin/chart-bar-search.js'/>"></script>
</body>
</html>