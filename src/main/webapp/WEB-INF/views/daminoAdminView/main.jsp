<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<script type="text/javascript"
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>" crossorigin="anonymous"></script>
	
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="index.html">Damino Administration</a>
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
					<a class="dropdown-item" href="store-manager-login.html">Logout</a>
				</div></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">

						<div class="sb-sidenav-menu-heading">Dashboard</div>

						<a class="nav-link" href="index.html"> 메인 </a>

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
								<a class="nav-link collapsed" href="member.html"> 회원관리 </a> <a
									class="nav-link collapsed" href="controlMarket.html"> 점포승인
								</a>
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
								<a class="nav-link collapsed" href="enroll.html"> 매장등록 </a> <a
									class="nav-link collapsed" href="control.html"> 매장조회 </a>
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
								  <a class="nav-link collapsed" href="order-count.html"> 주문조회 </a>
								<a class="nav-link collapse" href="order-stats.html"> 매출현황
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
								<a class="nav-link collapsed" href="noticeBoardView.html">
									게시판리스트 </a> <a class="nav-link collapse" href="boardList.html">
									게시글관리 </a>
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
								<a class="nav-link collapsed" href="get-menus.html"> 메뉴조회 </a> <a
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
										<a class="nav-link" href="insert-menu-pizza.html">피자</a> <a
											class="nav-link" href="insert-menu-side.html">사이드디시</a> <a
											class="nav-link" href="insert-menu-drink.html">음료&기타</a> <a
											class="nav-link" href="insert-menu-topping.html">토핑</a>
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
								<a class="nav-link" href="site-qna-list.html">Q&A</a> <a
									class="nav-link" href="bannerBoardView.html">배너관리</a> <a
									class="nav-link" href="site-term-list.html">약관관리</a>
							</nav>
						</div>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1>Dashboard</h1>
					<div>
						<hr>
					</div>
					<div class="row">
						<!-- 월별 차트 -->
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header bg-dark text-white">
									<i class="fas fa-chart-area mr-1"></i> 월별 차트
								</div>
								<div class="card-body">
									<canvas id="myAreaChart-main" width="100%" height="40"></canvas>
								</div>
							</div>
						</div>
						<!-- 달력 -->
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header bg-dark text-white">
									<i class="fas fa-chart-area mr-1"></i> 달력
								</div>
								<table id="calendar" align="center">
									<thead>
										<tr class="btn-wrap clearfix">
											<td><label id="prev"> &#60; </label></td>
											<td align="center" id="current-year-month" colspan="5"></td>
											<td><label id="next"> &#62; </label></td>
										</tr>
										<tr>
											<td class="sun" align="center">Sun</td>
											<td align="center">Mon</td>
											<td align="center">Tue</td>
											<td align="center">Wed</td>
											<td align="center">Thu</td>
											<td align="center">Fri</td>
											<td class="sat" align="center">Sat</td>
										</tr>
									</thead>
									<tbody id="calendar-body" class="calendar-body"></tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- 공지사항 -->
					<div class="row">
						<div class="col-xl-4">
							<div class="card mb-4">
								<div class="card-header bg-dark text-white">공지사항</div>
								<div class="card-body">
									<ul>
										<li class="small"><span><a href="#"><b>[공지사항]</b></a></span>
											<span><a href="#" class="text-muted">코로나 사태에 따른
													매장대처</a></span></li>
										<li class="small"><span><a href="#"><b>[공지사항]</b></a></span>
											<span><a href="#" class="text-muted">코로나 사태에 따른
													매장대처</a></span></li>
										<li class="small"><span><a href="#"><b>[공지사항]</b></a></span>
											<span><a href="#" class="text-muted">코로나 사태에 따른
													매장대처</a></span></li>
										<li class="small"><span><a href="#"><b>[공지사항]</b></a></span>
											<span><a href="#" class="text-muted">코로나 사태에 따른
													매장대처</a></span></li>
									</ul>
									<div align="right">
										<a href="#" class=small>공지사항로 이동</a>
									</div>
								</div>
							</div>
						</div>
						<!-- 주문내역 -->
						<div class="col-xl-4">
							<div class="card mb-4">
								<div class="card-header bg-dark text-white">주문내역</div>
								<div class="card-body">
									<ul>
										<li class="small"><span><a href="#"><b>[2020-07]</b></a></span>
											<span><a href="#" class="text-muted"> - 7월 주문내역 -</a></span>
										</li>
										<li class="small"><span><a href="#"><b>[2020-06]</b></a></span>
											<span><a href="#" class="text-muted">- 6월 주문내역 -</a></span></li>
										<li class="small"><span><a href="#"><b>[2020-05]</b></a></span>
											<span><a href="#" class="text-muted">- 5월 주문내역 -</a></span></li>
										<li class="small"><span><a href="#"><b>[2020-04]</b></a></span>
											<span><a href="#" class="text-muted">- 4월 주문내역 -</a></span></li>
									</ul>
									<div align="right">
										<a href="order-count.html" class=small>주문내역로 이동</a>
									</div>
								</div>
							</div>
						</div>
						<!-- 달 주문건수 -->
						<div class="col-xl-4">
							<div class="card mb-4">
								<div class="card-header bg-dark text-white">주문건수</div>
								<div class="card-body">
									<div>
										<span><h1>91</h1></span> <span><h3 class=small>건수</h3></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="bg-"></div>
					<div class="row">
						<div class="col-xl-3 col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="member.html">회원관리</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-warning text-white mb-4">
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="control.html">매장관리</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-success text-white mb-4">
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="get-menus.html">메뉴관리</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-danger text-white mb-4">
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="boardList.html">게시판관리</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
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

	<script type="text/javascript" src="<c:url value='https://code.jquery.com/jquery-3.5.1.min.js'/>" crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js'/>" crossorigin="anonymous"></script>
	
	<script type="text/javascript" src="<c:url value='/resources/js/admin/scripts.js'/>"></script>
	
	<script type="text/javascript"
		src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js'/>" crossorigin="anonymous"></script>
	
	<script type="text/javascript" src="<c:url value='/resources/assets/admin/demo/chart-area-demo.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/admin/demo/chart-bar-demo.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/admin/demo/chart-area-demo_month.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" '/>" crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" '/>" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/admin/demo/datatables-demo.js'/>"></script>

</body>
</html>