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
<title>다미노피자 ${storename } 통계 관리</title>
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
	    } );
	} );
	</script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="main.smdo?store=${storename }">다미노피자 ${storename }</a>
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
					<a class="dropdown-item" href="#">정보수정</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="logout.smdo">Logout</a>
				</div></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Dashboard</div>
						<a class="nav-link" href="main.smdo?store=${storename }"> 메인 </a>
						<div class="sb-sidenav-menu-heading">Interface</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#orderPage" aria-expanded="false"
							aria-controls="orderPage"> 주문관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="orderPage" aria-labelledby="headingTwo"
							data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="orderList.smdo"> 주문목록 </a>
								<a class="nav-link collapse" href="orderSearch.smdo"> 주문검색 </a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#storeInfoPage" aria-expanded="false"
							aria-controls="storeInfoPage"> 매장관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="storeInfoPage"
							aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="storeManagerInfo.smdo">매장관리자 설정</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#statisticPage" aria-expanded="false"
							aria-controls="statisticPage"> 통계관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="statisticPage"
							aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="statistics_list.smdo?store=${storename }">매출통계</a>
							</nav>
						</div>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">로그인 : &nbsp; ${managername }님</div>
					 ${storeregion } / ${storename }
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="card mb-1">
					<div class="card-header">
						<i class="fas fa-chart-bar mr-1"></i> <strong>매출 통계</strong>
					</div>
					<div class="card-body">
						<c:if test="${salesList eq null }">
							<div class="row">
								<div class="col-xl-6">
									<div class="card mb-4">
										<div class="card-header">
											<div>
												<i class="fas fa-chart-area mr-1"></i><b> 최근 12개월 매출</b> 
											</div>
										</div>
										<div class="card-body">
											<c:forEach var="storeMonthly" items="${storeMonthly}" varStatus="status">
												<input type="hidden" id="storeMonthly${status.index }" value="${storeMonthly}"/>
											</c:forEach>
											<c:forEach var="storeMonthlySales" items="${storeMonthlySales }" varStatus="status">
												<input type="hidden" id="storeMonthlySales${status.index }" value="${storeMonthlySales }"/>
											</c:forEach>
											<canvas id="Store_AreaChart_month" width="100%" height="30"></canvas>
										</div>
									</div>
								</div>
								<div class="col-xl-6">
									<div class="card mb-4">
										<div class="card-header">
											<div>
												<i class="fas fa-chart-bar mr-1"></i><b> 최근 5년 매출</b> 
											</div>
										</div>
										<div class="card-body">
											<c:forEach var="storeYearly" items="${storeYearly }" varStatus="status">
												<input type="hidden" id="storeYearly${status.index }" value="${storeYearly }"/>
											</c:forEach>
											<c:forEach var="storeYearlySales" items="${storeYearlySales }" varStatus="status">
												<input type="hidden" id="storeYearlySales${status.index }" value="${storeYearlySales }"/>
											</c:forEach>
											<canvas id="Store_AreaChart_year" width="100%" height="30"></canvas>
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
						<div class="card mb-4">
							<div class="card-header">
								<div>
									<i class="fas fa-table mr-1"></i><b> 매출 통계</b> 
								</div>
							</div>
							<div class="card-body">
								<strong style="font-size:18px;">매출 상세 검색</strong>
								<hr>
								<form name="searchSales" action="searchSales.smdo" method="post">
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
												<input type="hidden" name="store" id="" value="${sessionScope.storename }"/>
												<input type="submit" class="btn btn-primary" value="검색" style="height:40px; margin:5px;"/>
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
												<th>수령방식</th>
												<th>결제방식</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="salesList" items="${salesList }">
												<tr>
													<td><fmt:formatDate value="${salesList.orderdate }" pattern="yyyy-MM-dd"/></td>
													<td>${salesList.price }</td>
													<td>${salesList.take }</td>
													<td>${salesList.paytool }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2020</div>
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
	<script type="text/javascript" src="<c:url value='/resources/js/admin/chart-area-month-store.js'/>"></script>
	<!-- 년 바 차트  -->
	<script type="text/javascript" src="<c:url value='/resources/js/admin/chart-bar-year-store.js'/>"></script>
	<!-- 검색결과 차트 -->
	<script type="text/javascript" src="<c:url value='/resources/js/admin/chart-area-search.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/admin/chart-bar-search.js'/>"></script>

</body>
</html>