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
<link rel="stylesheet"
	href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css' />" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/admin/styles.css' />">

<script type="text/javascript"
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>" crossorigin="anonymous"></script>

<style type="text/css">
body {
	margin-top: 20px;
}

.email-app {
	display: flex;
	flex-direction: row;
	background: #fff;
	border: 1px solid #e1e6ef;
}

.email-app nav {
	flex: 0 0 200px;
	padding: 1rem;
	border-right: 1px solid #e1e6ef;
}

.email-app nav .btn-block {
	margin-bottom: 15px;
}

.email-app nav .nav {
	flex-direction: column;
}

.email-app nav .nav .nav-item {
	position: relative;
}

.email-app nav .nav .nav-item .nav-link, .email-app nav .nav .nav-item .navbar .dropdown-toggle,
	.navbar .email-app nav .nav .nav-item .dropdown-toggle {
	color: #151b1e;
	border-bottom: 1px solid #e1e6ef;
}

.email-app nav .nav .nav-item .nav-link i, .email-app nav .nav .nav-item .navbar .dropdown-toggle i,
	.navbar .email-app nav .nav .nav-item .dropdown-toggle i {
	width: 20px;
	margin: 0 10px 0 0;
	font-size: 14px;
	text-align: center;
}

.email-app nav .nav .nav-item .nav-link .badge, .email-app nav .nav .nav-item .navbar .dropdown-toggle .badge,
	.navbar .email-app nav .nav .nav-item .dropdown-toggle .badge {
	float: right;
	margin-top: 4px;
	margin-left: 10px;
}

.email-app main {
	min-width: 0;
	flex: 1;
	padding: 1rem;
}

.email-app .inbox .toolbar {
	padding-bottom: 1rem;
	border-bottom: 1px solid #e1e6ef;
}

.email-app .inbox .messages {
	padding: 0;
	list-style: none;
}

.email-app .inbox .message {
	position: relative;
	padding: 1rem 1rem 1rem 2rem;
	cursor: pointer;
	border-bottom: 1px solid #e1e6ef;
}

.email-app .inbox .message:hover {
	background: #f9f9fa;
}

.email-app .inbox .message .actions {
	position: absolute;
	left: 0;
	display: flex;
	flex-direction: column;
}

.email-app .inbox .message .actions .action {
	width: 2rem;
	margin-bottom: 0.5rem;
	color: #c0cadd;
	text-align: center;
}

.email-app .inbox .message a {
	color: #000;
}

.email-app .inbox .message a:hover {
	text-decoration: none;
}

.email-app .inbox .message.unread .header, .email-app .inbox .message.unread .title
	{
	font-weight: bold;
}

.email-app .inbox .message .header {
	display: flex;
	flex-direction: row;
	margin-bottom: 0.5rem;
}

.email-app .inbox .message .header .date {
	margin-left: auto;
}

.email-app .inbox .message .title {
	margin-bottom: 0.5rem;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.email-app .inbox .message .description {
	font-size: 12px;
}

.email-app .message .toolbar {
	padding-bottom: 1rem;
	border-bottom: 1px solid #e1e6ef;
}

.email-app .message .details .title {
	padding: 1rem 0;
	font-weight: bold;
}

.email-app .message .details .header {
	display: flex;
	padding: 1rem 0;
	margin: 1rem 0;
	border-top: 1px solid #e1e6ef;
	border-bottom: 1px solid #e1e6ef;
}

.email-app .message .details .header .avatar {
	width: 40px;
	height: 40px;
	margin-right: 1rem;
}

.email-app .message .details .header .from {
	font-size: 12px;
	color: #9faecb;
	align-self: center;
}

.email-app .message .details .header .from span {
	display: block;
	font-weight: bold;
}

.email-app .message .details .header .date {
	margin-left: auto;
}

.email-app .message .details .attachments {
	padding: 1rem 0;
	margin-bottom: 1rem;
	border-top: 3px solid #f9f9fa;
	border-bottom: 3px solid #f9f9fa;
}

.email-app .message .details .attachments .attachment {
	display: flex;
	margin: 0.5rem 0;
	font-size: 12px;
	align-self: center;
}

.email-app .message .details .attachments .attachment .badge {
	margin: 0 0.5rem;
	line-height: inherit;
}

.email-app .message .details .attachments .attachment .menu {
	margin-left: auto;
}

.email-app .message .details .attachments .attachment .menu a {
	padding: 0 0.5rem;
	font-size: 14px;
	color: #e1e6ef;
}

@media ( max-width : 767px) {
	.email-app {
		flex-direction: column;
	}
	.email-app nav {
		flex: 0 0 100%;
	}
}

@media ( max-width : 575px) {
	.email-app .message .header {
		flex-flow: row wrap;
	}
	.email-app .message .header .date {
		flex: 0 0 100%;
	}
}
</style>
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
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
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
							data-target="#orderSalesPage" aria-expanded="false"
							aria-controls="orderSalesPage"> 주문/매출관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="orderSalesPage"
							aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
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
						<div class="collapse" id="boardPage" aria-labelledby="headingOne"
							data-parent="#sidenavAccordionPages">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="noticeBoardView.admdo"> 게시판리스트 </a> <a class="nav-link"
									href="boardList.admdo"> 게시글관리 </a>
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
							<nav class="sb-sidenav-menu-nested nav">
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
										<a class="nav-link" href="insertMenu_pizza.admdo">피자</a> <a class="nav-link"
											href="insertMenu_side.admdo">사이드디시</a>
											<a class="nav-link" href="insertMenu_drink.admdo">음료&기타</a> <a
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
								<a class="nav-link" href="qna_list.admdo">Q&A</a> <a class="nav-link"
									href="bannerBoardView.admdo">배너관리</a> <a class="nav-link" href="terms_list.admdo">약관관리</a>
							</nav>
						</div>
						<div class="sb-sidenav-footer">
							<div class="small">Logged in as:</div>
							Start Bootstrap
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
				<p class="text-center">이메일 발송하기</p>
				<form>
					<div class="form-row mb-3">
						<label for="to" class="col-2 col-sm-1 col-form-label">To:</label>
						<div class="col-10 col-sm-11">
							<input type="email" class="form-control" id="to"
								placeholder="Type email">
						</div>
					</div>
					<div class="form-row mb-3">
						<label for="cc" class="col-2 col-sm-1 col-form-label">참조:</label>
						<div class="col-10 col-sm-11">
							<input type="email" class="form-control" id="cc"
								placeholder="Type email">
						</div>
					</div>
					<div class="form-row mb-3">
						<label for="bcc" class="col-2 col-sm-1 col-form-label">숨은참조:</label>
						<div class="col-10 col-sm-11">
							<input type="email" class="form-control" id="bcc"
								placeholder="Type email">
						</div>
					</div>
				</form>
				<div class="row">
					<div class="col-sm-11 ml-auto">
						<div class="toolbar" role="toolbar">
							<div class="btn-group">
								<button type="button" class="btn btn-light">
									<span class="fa fa-bold"></span>
								</button>
								<button type="button" class="btn btn-light">
									<span class="fa fa-italic"></span>
								</button>
								<button type="button" class="btn btn-light">
									<span class="fa fa-underline"></span>
								</button>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-light">
									<span class="fa fa-align-left"></span>
								</button>
								<button type="button" class="btn btn-light">
									<span class="fa fa-align-right"></span>
								</button>
								<button type="button" class="btn btn-light">
									<span class="fa fa-align-center"></span>
								</button>
								<button type="button" class="btn btn-light">
									<span class="fa fa-align-justify"></span>
								</button>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-light">
									<span class="fa fa-indent"></span>
								</button>
								<button type="button" class="btn btn-light">
									<span class="fa fa-outdent"></span>
								</button>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-light">
									<span class="fa fa-list-ul"></span>
								</button>
								<button type="button" class="btn btn-light">
									<span class="fa fa-list-ol"></span>
								</button>
							</div>
							<button type="button" class="btn btn-light">
								<span class="fa fa-trash-o"></span>
							</button>
							<button type="button" class="btn btn-light">
								<span class="fa fa-paperclip"></span>
							</button>
							<div class="btn-group">
								<button type="button" class="btn btn-light dropdown-toggle"
									data-toggle="dropdown">
									<span class="fa fa-tags"></span> <span class="caret"></span>
								</button>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">add label <span
										class="badge badge-danger"> Home</span></a> <a
										class="dropdown-item" href="#">add label <span
										class="badge badge-info"> Job</span></a> <a class="dropdown-item"
										href="#">add label <span class="badge badge-success">
											Clients</span></a> <a class="dropdown-item" href="#">add label <span
										class="badge badge-warning"> News</span></a>
								</div>
							</div>
						</div>
						<div class="form-group mt-4">
							<textarea class="form-control" id="message" name="body" rows="12"
								placeholder="Click here to reply"></textarea>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-success">Send</button>
							<button type="submit" class="btn btn-light">Draft</button>
							<button type="submit" class="btn btn-danger">Discard</button>
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