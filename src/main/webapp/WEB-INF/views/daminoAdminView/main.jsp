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
<title>도미노피자 테스트점 관리페이지</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/admin/styles.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css'/>"
	crossorigin="anonymous" />

<script type="text/javascript"
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>"
	crossorigin="anonymous"></script>
	
<style>
    table
    {
        text-align:center;
        width:98%;
    }
</style>	

<script language="javascript">
	var today = new Date(); // 오늘 날짜
	var date = new Date();

	function beforem() //이전 달을 today에 값을 저장
	{
		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		build(); //만들기
	}

	function nextm() //다음 달을 today에 저장
	{
		today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		build();
	}

	function build() {
		var nMonth = new Date(today.getFullYear(), today.getMonth(), 1); //현재달의 첫째 날
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); //현재 달의 마지막 날
		var tbcal = document.getElementById("calendar"); // 테이블 달력을 만들 테이블
		var yearmonth = document.getElementById("yearmonth"); //  년도와 월 출력할곳
		yearmonth.innerHTML = today.getFullYear() + "년 "
				+ (today.getMonth() + 1) + "월"; //년도와 월 출력

		if (today.getMonth() + 1 == 12) //  눌렀을 때 월이 넘어가는 곳
		{
			before.innerHTML = (today.getMonth()) + "월";
			next.innerHTML = "1월";
		} else if (today.getMonth() + 1 == 1) //  1월 일 때
		{
			before.innerHTML = "12월";
			next.innerHTML = (today.getMonth() + 2) + "월";
		} else //   12월 일 때
		{
			before.innerHTML = (today.getMonth()) + "월";
			next.innerHTML = (today.getMonth() + 2) + "월";
		}

		// 남은 테이블 줄 삭제
		while (tbcal.rows.length > 2) {
			tbcal.deleteRow(tbcal.rows.length - 1);
		}
		var row = null;
		row = tbcal.insertRow();
		var cnt = 0;

		// 1일 시작칸 찾기
		for (i = 0; i < nMonth.getDay(); i++) {
			cell = row.insertCell();
			cnt = cnt + 1;
		}

		// 달력 출력
		for (i = 1; i <= lastDate.getDate(); i++) // 1일부터 마지막 일까지
		{
			cell = row.insertCell();
			cell.innerHTML = i;
			cnt = cnt + 1;
			if (cnt % 7 == 1) {//일요일 계산
				cell.innerHTML = "<font color=#FF9090>" + i//일요일에 색
			}
			if (cnt % 7 == 0) { // 1주일이 7일 이므로 토요일 계산
				cell.innerHTML = "<font color=#7ED5E4>" + i//토요일에 색
				row = calendar.insertRow();// 줄 추가
			}
			if (today.getFullYear() == date.getFullYear()
					&& today.getMonth() == date.getMonth()
					&& i == date.getDate()) {
				cell.bgColor = "#BCF1B1"; //오늘날짜배경색
			}
		}

	}
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
								<a class="nav-link collapsed" href="storeRegForm.admdo">
									매장등록 </a> <a class="nav-link collapsed" href="storeView.admdo">
									매장조회 </a>
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
								<a class="nav-link collapsed" href="orderList.admdo"> 주문조회 </a>
								<a class="nav-link collapse" href="salesStatus.admdo"> 매출현황
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
					<div class="small">Logged in as: ${admin.adminid }</div>
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
									<canvas id="AreaChart_month" width="100%" height="40"></canvas>
								</div>
							</div>
						</div>
						<!-- 달력 -->
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header bg-dark text-white">
									<i class="fas fa-chart-area mr-1"></i> 달력
								</div>
								<table align="center" id="calendar">
									<tr>
										<td><font size=1%; color="#B3B6B3"><label
												onclick="beforem()" id="before"></label></font></td>
										<td colspan="5" align="center" id="yearmonth"></td>
										<td><font size=1%; color="#B3B6B3"><label
												onclick="nextm()" id="next"></label></font></td>
									</tr>
									<tr>
										<td align="center"><font color="#FF9090">일</font></td>
										<td align="center">월</td>
										<td align="center">화</td>
										<td align="center">수</td>
										<td align="center">목</td>
										<td align="center">금</td>
										<td align="center"><font color=#7ED5E4>토</font></td>
									</tr>
								</table>
								<script type="text/javascript">
									build();
								</script>
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
										<a href="boardList.admdo" class=small>공지사항로 이동</a>
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
										<a href="orderList.admdo" class=small>주문내역로 이동</a>
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
										<span><h1>${orderCount}</h1></span> <span><h3 class=small>건수</h3></span>
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
									<a class="small text-white stretched-link"
										href="memberInfo.admdo">회원관리</a>
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
									<a class="small text-white stretched-link"
										href="marketList.admdo">매장관리</a>
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
									<a class="small text-white stretched-link"
										href="menuList.admdo">메뉴관리</a>
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
									<a class="small text-white stretched-link"
										href="noticeBoardView.admdo">게시판관리</a>
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

	<script type="text/javascript"
		src="<c:url value='https://code.jquery.com/jquery-3.5.1.min.js'/>"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js'/>"
		crossorigin="anonymous"></script>

	<script type="text/javascript"
		src="<c:url value='/resources/js/admin/scripts.js'/>"></script>

	<script type="text/javascript"
		src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js'/>"
		crossorigin="anonymous"></script>

	<script type="text/javascript"
		src="<c:url value='/resources/assets/admin/demo/chart-area-demo.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/assets/admin/demo/chart-bar-demo.js'/>"></script>
	<!-- 차트 -->
	<!--  월차트   -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/admin/chart-area-month.js'/>"></script>
	<!-- end차트  -->
	<script type="text/javascript"
		src="<c:url value='https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" '/>"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" '/>"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/assets/admin/demo/datatables-demo.js'/>"></script>

</body>
</html>