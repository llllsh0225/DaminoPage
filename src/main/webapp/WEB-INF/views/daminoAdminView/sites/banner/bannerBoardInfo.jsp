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
<title>다미노피자 테스트점 관리페이지</title>
<link rel="stylesheet"  
	href="<c:url value='/resources/css/admin/styles.css' />" />
<link rel="stylesheet"
	href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css' />" crossorigin="anonymous">

<script type="text/javascript" 
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>" crossorigin="anonymous">
</script>
<!-- 삭제 수정 버튼 설정 -->
<script type="text/javascript">
	function bannerAction(index){
		if(index==1){
			console.log("수정");
			document.bannerInfoForm.action='updateBanner.admdo'; 
		}
		if(index==2){
			console.log("삭제");
			document.bannerInfoForm.action='deleteBanner.admdo';
		}
		document.bannerInfoForm.submit();
	}
</script>


</head>
<!-- body -->
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
								<a class="nav-link collapse" href="boardList.admdo">
									게시글관리 </a>
								<a class="nav-link collapse" href="myquestionlist.admdo">
									1:1문의처리 </a>
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
								<a class="nav-link" href="qna_list.admdo">FAQ</a> <a
									class="nav-link" href="bannerBoardView.admdo">배너관리</a> <a
									class="nav-link" href="terms_list.admdo">약관관리</a>
							</nav>
						</div>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">로그인 : ${admin.adminid }</div>
				</div>
			</nav>
		</div>
		<!-- content 영역 -->
		<div id="layoutSidenav_content">
		<!-- main -->
		<main>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> <b>배너 수정</b>
				</div>
			</div>
			
			<div class="card-body">
				<h6>
					<strong>배너 상세정보</strong>
				</h6>
				<div class="for-margin-height-div"></div>
				<form id="bannerInfoForm" name="bannerInfoForm" method="post" enctype="multipart/form-data">
					<!-- seq를 넘길떄 'banner_seq' vo랑 주의 -->
					<input type="hidden" name="banner_seq" id="banner_seq" value="${bannerList.banner_seq }" />
					<input type="button" class="btn btn-primary" value="글수정" onclick="bannerAction(1)" style="float: right" /> 
					<input type="button" class="btn-delete" value="글삭제" onclick="bannerAction(2)" style="float: right" /> 
					<input type="button" class="btn-delete" value="전체 목록" onclick="location.href='bannerBoardView.admdo'" style="float: right"/>
					
					<div id="table-reponsive">
						<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<tr>
								<th>배너 명</th>
								<td><input type="text" name="banner_name" id="banner_name" value="${bannerList.banner_name }" /></td>
							</tr>
							<tr>
								<th>이미지 설명(20자 이내)</th>
								<td><input type="text" name="banner_alt"  id="banner_alt" value="${bannerList.banner_alt }"/></td>
							</tr>
							<tr>
								<th>배너 이미지</th>
								<td>
									<input type="file" name="uploadFile" value="${bannerList.banner_image }" />
									<input type="text" name="banner_originalname" value="${bannerList.banner_originalname }" disabled="disabled" />
								</td>
							</tr>
						</table>
						<br>
						<div id="insert-menu-btns" align="center"> 
							<input type="button" class="btn btn-delete" value="목록" />
						</div>
					</div>
				</form>
			</div>
		</main>
		<!-- end main -->	
			
			<!-- footer -->
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Damino Pizza 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms &amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
			<!-- end footer -->
		</div>
		<!-- end content -->
	</div>	
	<!-- script -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/datatables-demo.js"></script>
	
</body>
</html>