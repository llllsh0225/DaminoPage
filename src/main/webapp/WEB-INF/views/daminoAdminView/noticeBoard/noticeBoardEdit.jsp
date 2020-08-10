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
					<div class="small">Logged in as: ${admin.adminid }</div>
					Start Bootstrap
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<!-- 이곳이 Content 영역입니다. -->
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> <b>게시판 추가/수정/삭제</b> <img
							src="<c:url value='/resources/images/admin/refresh_icon.png' />" width="20"
							onClick="window.location.reload()"
							style="margin-left: 15px; cursor: pointer;">

					</div>

					<div class="card-body">
						<input type="button" class="btn btn-primary" value="추가"
							style="float: right"> <input type="button"
							class="btn-delete" value="수정" style="float: right"> <input
							type="button" class="btn-delete" value="삭제" style="float: right">
						<div class="table-responsive">

							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<tr>
									<th>게시판명</th>
									<td><input type="text" size="20" /></td>
								</tr>
								<tr>
									<th>게시판 그룹</th>
									<td><select>
											<option>공지사항</option>
											<option>다미노뉴스</option>
									</select></td>
								</tr>
								<tr>
									<th>게시판 관리자</th>
									<td><small>아이디를 쉼표로 분리 예)admin, admin1, admin2</small><br>
										<input type="text" size="80" /></td>

								</tr>
								<tr>
									<th>자동비밀글</th>
									<td><input type="checkbox" />작성자와 운영자만 열람 가능</td>

								</tr>
								<tr>
									<th>권한</th>
									<td>
										<table>
											<tr>
												<td align="center" width="150px">목록보기</td>
												<td align="center" width="150px">내용보기</td>
												<td align="center" width="150px">글쓰기</td>
												<td align="center" width="150px">답글쓰기</td>
											</tr>
											<tr>
												<td align="center"><select>
														<option>전체</option>
														<option>관리자</option>
												</select></td>
												<td align="center"><select>
														<option>전체</option>
														<option>관리자</option>
												</select></td>
												<td align="center"><select>
														<option>전체</option>
														<option>관리자</option>
												</select></td>
												<td align="center"><select>
														<option>전체</option>
														<option>관리자</option>
												</select></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<th>권한이 없을 경우</th>
									<td><div style="margin: 5px">
											경고메세지 : <input type="text" placeholder="권한이 없습니다" />
										</div>
										<div style="margin: 5px">
											경고후 이동 페이지 : <input type="text" size="30" placeholder="URL" />
										</div></td>
								</tr>
								<tr>
									<th>페이지 출력 수</th>
									<td><select>
											<option>5</option>
											<option>10</option>
											<option>15</option>
									</select></td>
								</tr>
							</table>
							<br></br>
							<p>1. 게시판명 : 어떤 게시판인지를 알수 있도록 한글로 입력합니다.</p>
							<p>2. 게시판그룹 : 게시판이 많은경우 관리의 편리를 위해 그룹을 생성하고 게시판 그룹을 설정합니다.
								ex) 고객센터, 커뮤니티 등.. 메뉴별로 생성</p>
							<p>3. 게시판관리자 : 관리자에 로그인 하지않고 홈페이지에서 해당 게시판을 관리할 수 있는 아이디를
								설정합니다.</p>
							<p>4. 자동비밀글 : 설정시 게시물 작성시 자동으로 비밀글로 작성됩니다.</p>
							<p>5. 권한 : 각 상활별 권한을 설정합니다. 등급은 "회원관리>회원등급" 이 표시 됩니다.</p>
							<p>6. 경고메세지 : 쓰기 권한 읽기 권한 등.. 권한이 없을경우 표시되는 경고 메세지를 설정합니다. 경고
								후 이동 페이지는 주로 로그인 페이지로 이동시키면 편리합니다.</p>
							<p>7. 페이지출력수 : 리스트 하단에 게시물 페이징 부분에 몇 페이지 단위로 표현할지를 설정합니다.</p>
							<br> <br>
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