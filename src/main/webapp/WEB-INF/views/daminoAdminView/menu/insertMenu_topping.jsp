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
<title>다미노피자 테스트점 관리페이지</title>
<link href="<c:url value='/resources/css/admin/styles.css' />" rel="stylesheet" />
<link href="<c:url value='/resources/css/admin/style-osh.css' />" rel="stylesheet" />
<link rel="stylesheet"
	href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css' />" crossorigin="anonymous">

<script type="text/javascript"
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>" crossorigin="anonymous"></script>

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
					<a class="dropdown-item" href="#">정보수정</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="login.admdo">Logout</a>
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
								<a class="nav-link collapsed" href="memberInfo.admdo"> 회원관리 </a> <a
									class="nav-link collapsed" href="marketList.admdo"> 점포승인
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
								<a class="nav-link collapsed" href="storeRegForm.admdo"> 매장등록 </a> <a
									class="nav-link collapsed" href="storeView.admdo"> 매장조회 </a>
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
								<a class="nav-link collapsed" href="noticeBoardView.admdo">
									게시판리스트 </a> <a class="nav-link collapse" href="boardList.admdo">
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
										<a class="nav-link" href="insertMenu_pizza.admdo">피자</a> <a
											class="nav-link" href="insertMenu_side.admdo">사이드디시</a> <a
											class="nav-link" href="insertMenu_drink.admdo">음료&기타</a> <a
											class="nav-link" href="insertMenu_topping.admdo">토핑</a>
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
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<!-- 메뉴관리 -> 메뉴 등록 페이지 -->
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> <strong>메뉴 관리</strong>
						<!--새로고침 버튼-->
						<img src="assets/img/refresh_icon.png" width="20"
							onClick="window.location.reload()"
							style="margin-left: 15px; cursor: pointer;">
					</div>
					<div class="card-body">
						<h6>
							<strong>메뉴 등록 - 토핑</strong>
						</h6>
						<br>
						<form>
							<div id="table-reponsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<tr>
										<th>제품명</th>
										<td><input type="text" /></td>
									</tr>
									<tr>
										<th>카테고리</th>
										<td>토핑</td>
									</tr>
									<tr>
										<th>구분</th>
										<td><select>
												<option>메인</option>
												<option>치즈</option>
												<option>애프터</option>
										</select></td>
									</tr>
									<tr>
										<th>가격</th>
										<td><input type="text" /></td>
									</tr>
									<tr>
										<th>제품 이미지</th>
										<td><input type="file"></td>
									</tr>
								</table>
								<br>
								<div id="insert-menu-btns" align="center">
									<input type="submit" class="btn btn-primary" value="메뉴등록" /> <input
										type="button" class="btn btn-delete" value="목록" />
								</div>
							</div>
						</form>
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

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/datatables-demo.js"></script>

</body>
</html>