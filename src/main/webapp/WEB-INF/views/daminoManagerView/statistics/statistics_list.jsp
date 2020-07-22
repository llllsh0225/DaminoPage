<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>도미노피자 테스트점 관리자 설정</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/admin/styles.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css'/>"  crossorigin="anonymous" />

<script type="text/javascript"
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>" crossorigin="anonymous"></script>

</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="index.html">도미노피자 테스트점</a>
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
								<a class="nav-link" href="#">매출통계</a>
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
				<div class="card mb-1">
					<div class="card-header">
						<i class="fas fa-chart-bar mr-1"></i> <strong>매출 통계</strong>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<div class="card-header">
								<div class="card-body">
									<strong>매출 통계</strong>
									<hr>
									<div class="input-group">
										<input class="text-kjh" type="date" placeholder="날짜 입력" />
										<p style="margin-top: 10px">&nbsp; &nbsp; ~ &nbsp; &nbsp;
										</p>
										<input class="text-kjh" type="date" placeholder="날짜 입력" />
									</div>
									<div class="input-group">
										<select class="form-control-kjh" style="margin: 5px">
											<option>년/월/주</option>
											<option>연간</option>
											<option>월간</option>
											<option>주간</option>
										</select> <select class="form-control-kjh" style="margin: 5px">
											<option>매출액</option>
											<option>주문건</option>
										</select> <input type="submit" class="btn btn-primary" value="검색" />
									</div>
								</div>
							</div>
							<hr>
							<div class="col-xl-12">
								<div class="card mb-4">
									<div class="card-header">
										<i class="fas fa-chart-area mr-1"></i> 검색한 매출액/주문건
									</div>
									<div class="card-body">
										<canvas id="myAreaChart" width="100%" height="40"></canvas>
									</div>
								</div>
							</div>
							<hr>
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-table mr-1"></i> 매출 통계표
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											width="100%" cellspacing="0">
											<thead>
												<tr>
													<th>날짜</th>
													<th>매출액</th>
													<th>주문건수</th>
													<th>카드</th>
													<th>현금</th>
													<th>쿠폰</th>
												</tr>
											</thead>
											<tfoot>
												<tr>
													<th>합계</th>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
												</tr>
											</tfoot>
											<tbody>
												<tr>
													<td>2020-05</td>
													<td>8,000,000</td>
													<td>300</td>
													<td>200</td>
													<td>70</td>
													<td>30</td>
												</tr>
												<tr>
													<td>2020-04</td>
													<td>8,000,000</td>
													<td>300</td>
													<td>200</td>
													<td>70</td>
													<td>30</td>
												</tr>
												<tr>
													<td>2020-03</td>
													<td>8,000,000</td>
													<td>300</td>
													<td>200</td>
													<td>70</td>
													<td>30</td>
												</tr>
												<tr>
													<td>2020-05</td>
													<td>8,000,000</td>
													<td>300</td>
													<td>200</td>
													<td>70</td>
													<td>30</td>
												</tr>
											</tbody>
										</table>
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

	<script src="<c:url value='https://code.jquery.com/jquery-3.5.1.min.js'/>" crossorigin="anonymous"></script>
	<script
		src="<c:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js'/>" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/admin/scripts.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js'/>" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/admin/demo/chart-area-demo.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/admin/demo/chart-bar-demo.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" '/>" crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" '/>" crossorigin="anonymous"></script>
	
	<script type="text/javascript" src="<c:url value='/resources/assets/admin/demo/datatables-demo.js'/>"></script>


</body>
</html>