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
								<a class="nav-link collapsed" href="order-count.html"> 주문조회
								</a> <a class="nav-link collapse" href="order-stats.html"> 매출현황
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
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> <b>주문내역</b>
						<!-- 머리부분 채워야할것.-->
					</div>
					<div class="card mb-4">
						<div>
							<strong>상세검색</strong>
							<hr>
							<div class="input-group">
								<input class="text-kjh" type="date" placeholder="날짜 입력" />
								<p>&nbsp; &nbsp; ~ &nbsp; &nbsp;</p>
								<input class="text-kjh" type="date" placeholder="날짜 입력" />
							</div>
							<div class="input-group">
								<select class="form-control-kjh" style="margin: 5px">
									<option>수령방식 선택</option>
									<option>배달</option>
									<option>포장</option>
								</select> <select class="form-control-kjh" style="margin: 5px">
									<option>결제방식 선택</option>
									<option>현장 결제</option>
									<option>방문 결제</option>
								</select>
							</div>
							<div class="input-group">
								<select class="form-control-kjh" style="margin: 5px">
									<option>주문번호</option>
									<option></option>
									<option>주문번호</option>
								</select> <input class="text2-kjh" type="text" placeholder="검색할 내용 입력" />
								<input type="submit" class="btn btn-primary" value="상세 검색" />
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>주문 번호</th>
										<th>고 객 명</th>
										<th>주문 날짜</th>
										<th>주 소</th>
										<th>연락처</th>
										<th>제 품</th>
										<th>금 액</th>
										<th>배달/포장</th>
										<th>점포명</th>
										<th>결제 방식</th>
										<th>결제 상태</th>
										<th>확인 상태</th>
									</tr>
								</thead>
								<!-- 테이블 몸통 -->
								<tbody>
									<tr>
										<!-- 예시 -->
										<td><a href="#">주문번호0000</a></td>
										<td>홍 길동</td>
										<td>2020-05-03</td>
										<td>서울시 강남구 A 아파트</td>
										<td>010-5555-2233</td>
										<td>포테이토 피자 x1<br>콜라 1.5L
										</td>
										<td>16,500</td>
										<td>포장</td>
										<td><a href="#">강남점</a></td>
										<td>카카오페이</td>
										<td>결제 완료</td>
										<td><select>
												<option value="true">완료</option>
												<option value="false" selected>미완료</option>
										</select></td>
									</tr>
									<tr>
										<td><a href="#">주문번호0002</a></td>
										<td>고 길동</td>
										<td>2020-06-22</td>
										<td>서울시 서초구 B 아파트</td>
										<td>010-1234-4567</td>
										<td>고구마 피자 x1<br>콜라 1.5L
										</td>
										<td>15,500</td>
										<td>포 장</td>
										<td><a href="#">서초점</a></td>
										<td>카카오페이</td>
										<td>결제 완료</td>
										<td><select>
												<option value="true">완료</option>
												<option value="false" selected>미완료</option>
										</select></td>
									</tr>
									<tr>
										<td><a href="#">주문번호0003</a></td>
										<td>둘 리</td>
										<td>2020-07-17</td>
										<td>서울시 서초구 B 아파트</td>
										<td>010-1234-7894</td>
										<td>비싼 피자 x1<br>사이 1.5L
										</td>
										<td>22,500</td>
										<td>배 달</td>
										<td><a href="#">서초점</a></td>
										<td>카카오페이</td>
										<td>결제 완료</td>
										<td><select>
												<option value="true">완료</option>
												<option value="false" selected>미완료</option>
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