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
<title>다미노피자 테스트점 관리자 설정</title>
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
		<a class="navbar-brand" href="main.smdo">다미노피자 테스트점</a>
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
					<a class="dropdown-item" href="managerLogin.smdo">Logout</a>
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
						<a class="nav-link" href="main.smdo"> 메인 </a>
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
								<a class="nav-link" href="statistics_list.smdo">매출통계</a>
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
						<i class="fas fa-table mr-1"></i> <strong>매장 관리자 설정</strong>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<div class="card-header">
								<div class="card-body">
									<strong>관리자 설정</strong>
									<hr>
									<div class="input-group">
										<div class="input-group">
											<p class="p-kjh">이름</p>
											<input class="text2-kjh" type="text" placeholder="이름 입력" />
											<p class="p-kjh">ID</p>
											<input class="text2-kjh" type="text" placeholder="아이디 입력" />
										</div>
										<div class="input-group">
											<p class="p-kjh">PW</p>
											<input class="text2-kjh" type="password"
												placeholder="비밀번호 입력" />
											<p class="p-kjh">PW 확인</p>
											<input class="text2-kjh" type="password"
												placeholder="비밀번호 입력" />
										</div>
										<div class="input-group">
											<p class="p-kjh">연락처</p>
											<input class="text2-kjh" type="password" placeholder="연락처 입력" />
										</div>
										<div class="input-group">
											<p class="p-kjh">주소</p>
											<input class="text2-kjh" type="text" placeholder="주소 입력"
												style="width: 695px" />
										</div>
										<div class="input-group">
											<p class="p-kjh">비고</p>
											<input class="text2-kjh" type="text" placeholder=""
												style="width: 695px" /> <input type="submit"
												class="btn btn-primary" value="등록" />
										</div>
									</div>
								</div>
							</div>
							<hr>
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th style="width: 15px; margin-left:">
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input" id="checkAll"
													type="checkbox" /> <label class="custom-control-label"
													for="checkAll"></label>
											</div>
										</th>
										<th style="width: 100px">no.</th>
										<th>이름</th>
										<th>ID</th>
										<th>등록일</th>
										<th>주소</th>
										<th>연락처</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input" id="check1"
													type="checkbox" /> <label class="custom-control-label"
													for="check1"></label>
											</div>
										</td>
										<td>1</td>
										<td>홍길동</td>
										<td>hgd</td>
										<td>2020-03-21</td>
										<td>서울시 종로구 묘동 111-1</td>
										<td>010-1234-5678</td>
										<td></td>
									</tr>
									<tr>
										<td>
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input" id="check2"
													type="checkbox" /> <label class="custom-control-label"
													for="check2"></label>
											</div>
										</td>
										<td>2</td>
										<td>손오공</td>
										<td>son</td>
										<td>2020-03-21</td>
										<td>서울시 강남구 역삼동 12-12</td>
										<td>010-4433-2211</td>
										<td></td>
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
						<div class="text-muted">Copyright &copy; DaminoPizza 2020</div>
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