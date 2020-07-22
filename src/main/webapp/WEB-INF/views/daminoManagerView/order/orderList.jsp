<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>다미노피자 테스트점 주문목록</title>
<link href="<c:url value='/resources/css/admin/styles.css' />" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="index.html">다미노피자 테스트점</a>
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
							data-target="#orderPage" aria-expanded="false"
							aria-controls="orderPage"> 주문관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="orderPage" aria-labelledby="headingTwo"
							data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="order-list.html"> 주문목록 </a>
								<a class="nav-link collapse" href="order-search.html"> 주문검색
								</a>
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
								<a class="nav-link" href="manager-set.html">매장관리자 설정</a>
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
								<a class="nav-link" href="sales.html">매출통계</a>
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
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> <strong>주문 목록</strong>
						<!--새로고침 버튼-->
						<script type="text/javascript">
							function div_refresh() {
								$("#layoutSidenav_content").load(
										window.location
												+ '#layoutSidenav_content');
								document
										.getElementById('layoutSidenav_content').style.marginLeft = "-225px";
								document
										.getElementById('layoutSidenav_content').style.marginTop = "-56px";
							}
						</script>
						<img src="assets/img/refresh_icon.png" width="20"
							onClick="div_refresh()"
							style="margin-left: 15px; cursor: pointer;">
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>주문번호</th>
										<th>주문일</th>
										<th>배달/포장</th>
										<th>주소</th>
										<th>연락처</th>
										<th>제품</th>
										<th>금액</th>
										<th>결제방식</th>
										<th>결제상태</th>
										<th>확인상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>0025678113</td>
										<td>2020-05-05</td>
										<td>배달</td>
										<td>강남구 역삼동 21-13</td>
										<td>010-5555-2323</td>
										<td>피자 / 피자 / 콜라</td>
										<td>30,000 원</td>
										<td>카카오페이</td>
										<td>O</td>
										<td><select class="form-control">
												<option value="O">완료</option>
												<option value="X" selected>미완료</option>
										</select></td>
									</tr>
									<tr>
										<td>0025678113</td>
										<td>2020-03-03</td>
										<td>배달</td>
										<td>종로구 묘동 111-1</td>
										<td>010-1234-1234</td>
										<td>피자<br>콜라<br>피자<br>콜라
										</td>
										<td>24,000 원</td>
										<td>현장 결제</td>
										<td>X</td>
										<td><select class="form-control">
												<option>완료</option>
												<option selected>미완료</option>
										</select></td>
									</tr>
									<tr>
										<td>0025678113</td>
										<td>2020-03-31</td>
										<td>포장</td>
										<td>-</td>
										<td>010-2222-3333</td>
										<td>피자 / 피자 / 콜라 / 콜라</td>
										<td>51,000 원</td>
										<td>방문 결제</td>
										<td>X</td>
										<td><select class="form-control">
												<option>완료</option>
												<option selected>미완료</option>
										</select></td>
									</tr>
								</tbody>
							</table>
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

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/resources/js/admin/scripts.js'/>"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/resources/js/admin/chart-area-demo.js'/>"></script>
	<script src="<c:url value='/resources/js/admin/chart-bar-demo.js'/>"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/resources/js/admin/datatables-demo.js'/>"></script>

</body>
</html>