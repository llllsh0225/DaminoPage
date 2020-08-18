<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>다미노피자 테스트점 주문검색</title>
<link href="<c:url value='/resources/css/admin/styles.css' />" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
	crossorigin="anonymous"></script>
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
<script src="<c:url value='/resources/js/admin/datatables-demo.js'/>.js"></script>
<script type="text/javascript">
var lang_kor = {
        "emptyTable" : "데이터가 없습니다.",
        "info" : "_START_ - _END_ (총 _TOTAL_ 건)",
        "infoEmpty" : "0건",
        "infoFiltered" : "(전체 _MAX_ 건 중 검색결과)",
        "lengthMenu" : "_MENU_ 개씩 보기",
        "search" : "빠른 검색 : ",
        "zeroRecords" : "검색된 데이터가 없습니다.",
        "paginate" : {
            "first" : "첫 페이지",
            "last" : "마지막 페이지",
            "next" : "다음",
            "previous" : "이전"
        }
    };
$(document).ready(function() {
    $('#dataTable1').DataTable( {
        order: [[ 0, 'desc' ]],
        ordering:true,
        language : lang_kor
    } );
} );
</script>
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
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="orderList.smdo"> 주문목록 </a>
								<a class="nav-link collapse" href="orderSearch.smdo"> 주문검색
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
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="card mb-1">

					<div class="card-header">
						<i class="fas fa-table mr-1"></i> <strong>주문 검색</strong>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<div class="card-header">
								<div class="card-body">
									<strong>상세검색</strong>
									<hr>
									<div class="input-group">
										<input class="text-kjh" type="date" placeholder="날짜 입력" />
										<p style="margin-top: 10px">&nbsp; &nbsp; ~ &nbsp; &nbsp;
										</p>
										<input class="text-kjh" type="date" placeholder="날짜 입력" />
									</div>
									<div class="input-group">
										<select class="form-control-kjh" style="margin: 5px">
											<option>수령방식</option>
											<option>배달</option>
											<option>포장</option>
										</select> <select class="form-control-kjh" style="margin: 5px">
											<option>결제방식</option>
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
							<hr>
							<table class="table table-bordered" id="dataTable1" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>주문번호</th>
										<th>이름</th>
										<th>주문 날짜</th>
										<th>도착시간</th>
										<th>주소</th>
										<th>연락처</th>
										<th>제품</th>
										<th>금액</th>
										<th>배달/포장</th>
										<th>결제방식</th>
										<th>결제상태</th>
										<th>확인상태</th>
										<th>요청사항</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="storeorderlist" items="${storeorderlist }" varStatus="status">
										<tr>
											<td>${storeorderlist.orderseq }</td>
											<td>${storeorderlist.username }</td>
											<td><fmt:formatDate value="${storeorderlist.orderdate }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
											<td><fmt:formatDate value="${storeorderlist.deliverytime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
											<td>${storeorderlist.address }</td>
											<td>${storeorderlist.tel }</td>
											<td>${storeorderlist.menus }</td>
											<td>${storeorderlist.price }</td>
											<td>${storeorderlist.take }</td>
											<td>${storeorderlist.paytool }</td>
											<td>${storeorderlist.paystatus }</td>
											<td>${storeorderlist.status}</td>
											<td>${storeorderlist.requirement }</td>
										</tr>
									</c:forEach>
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
</body>
</html>