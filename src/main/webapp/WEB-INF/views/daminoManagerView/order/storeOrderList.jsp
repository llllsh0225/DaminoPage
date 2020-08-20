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
<title>다미노피자 ${storename } 주문목록</title>
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
<script src="<c:url value='/resources/js/admin/datatables-demo.js'/>"></script>	
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
function updateOrderList(idx){
	var status = $('#status' + idx).val();
	var orderseq = $('#orderseq' + idx).val();
	
	$.ajax({
		url : 'updateOrderList.smdo',
		contentType:"application/json; charset=UTF-8;",
		type:'post',
		data : JSON.stringify({
			status : status,
			orderseq : orderseq,
		}),
		success: function(data){
			if(data == "success"){
				location.reload(true);
			}
		},
		error : function(err){
			alert('에러');
		}
	})
	//document.updateForm.submit();
}
</script>
<script type="text/javascript">
	window.setTimeout('window.location.reload()', 10000); //10초마다 새로고침
</script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="main.smdo">다미노피자 ${storename }</a>
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
					<a class="dropdown-item" href="logout.smdo">Logout</a>
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
					<div class="small">로그인 : &nbsp; ${managername }님</div>
					 ${storeregion } / ${storename }
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
						<img src="<c:url value='/resources/images/admin/refresh_icon.png' />" width="20"
							onClick="div_refresh()"
							style="margin-left: 15px; cursor: pointer;">
					</div>
					<form name="updateForm" action="updateOrderList.smdo" method="post">
					<div class="card-body">
						<div class="table-responsive">
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
											<input type="hidden" name="orderseq" id="orderseq${status.index }" value="${storeorderlist.orderseq }"/>
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
											<td>
											<select name="status" id="status${status.index }" onchange="updateOrderList(${status.index })">
											
												<c:choose>
													<c:when test="${storeorderlist.status eq '주문완료'}">
														<option value="주문완료" selected>주문완료</option>
														<option value="요리중">요리중</option>
														<option value="배달중">배달중</option>
														<option value="배달완료">배달완료</option>
														<option value="주문취소">주문취소</option>
													</c:when>
													<c:when test="${storeorderlist.status eq '요리중'}">
														<option value="주문완료">주문완료</option>
														<option value="요리중" selected>요리중</option>
														<option value="배달중">배달중</option>
														<option value="배달완료">배달완료</option>
														<option value="주문취소">주문취소</option>
													</c:when>
													<c:when test="${storeorderlist.status eq '배달중'}">
														<option value="주문완료">주문완료</option>
														<option value="요리중">요리중</option>
														<option value="배달중" selected>배달중</option>
														<option value="배달완료">배달완료</option>
														<option value="주문취소">주문취소</option>
													</c:when>
													<c:when test="${storeorderlist.status eq '배달완료'}">
														<option value="주문완료">주문완료</option>
														<option value="요리중">요리중</option>
														<option value="배달중">배달중</option>
														<option value="배달완료" selected>배달완료</option>
														<option value="주문취소">주문취소</option>
													</c:when>
													<c:otherwise>
														<option value="주문완료">주문완료</option>
														<option value="요리중">요리중</option>
														<option value="배달중">배달중</option>
														<option value="배달완료">배달완료</option>
														<option value="주문취소" selected>주문취소</option>
													</c:otherwise>
												</c:choose>
											</select>
											</td>
											<td>${storeorderlist.requirement }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					</form>
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