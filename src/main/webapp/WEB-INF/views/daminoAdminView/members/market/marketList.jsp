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

<script type="text/javascript">
var lang_kor = {
        "emptyTable" : "데이터가 없습니다.",
        "info" : "_START_ - _END_ (총 _TOTAL_ 건)",
        "infoEmpty" : "0건",
        "infoFiltered" : "(전체 _MAX_ 건 중 검색결과)",
        "lengthMenu" : "_MENU_ 건씩 보기",
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
        order: [[ 1, 'asc' ]],
        ordering:true,
        language : lang_kor
    } );
} );
</script>
<script>
 window.onload = function(){
/* 	var checkMem = $("select option:selected").val();

	//var checkMem2 = $(':radio[name="size"]:checked').val(); //사이즈에 따른 피자 가격
	console.log("checkMem : " + checkMem);
	 */
	/* if(typeof price == "undefined"){
		price = Number($('#size1').val());
	} */
} 
 
function changeCheckMem(idx, seq){
	 var checkMem = $("#select" + idx).find(":selected").val();
	 
	 $.ajax({
		url : 'changeCheckMem.admdo',
		contentType : "application/json; charset=UTF-8;",
		type: 'post', 
		data : JSON.stringify({
			seq : seq,
			checkMem : checkMem
		}),
		async : false,
		success: function(data) {
			if(data == 'success'){
				alert('success');
				location.reload(true);
			}
		}
		/* error: function() {
			alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
		} */
	})
}

function marketMemDel(seq){
	
	if (confirm("정말로 삭제하시겠습니까?")){
	 $.ajax({
			url : 'marketMemDel.admdo',
			contentType : "application/json; charset=UTF-8;",
			type: 'post', 
			data : JSON.stringify({
				seq : seq
			}),
			async : false,
			success: function(data) {
				if(data == 'success'){
					alert('success');
					location.reload(true);
				}
			}
			/* error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			} */
		})
	}else{
		return;
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
									게시판리스트 </a> 
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
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> 점포관리
						<!--새로고침 버튼-->
						<img src="<c:url value='/resources/images/admin/refresh_icon.png' />" width="20"
							vonClick="window.location.reload()"
							style="margin-left: 15px; cursor: pointer;">
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable1" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input" id="checkAll"
													type="checkbox" /> <label class="custom-control-label"
													for="checkAll"></label>
											</div>
										</th>
										<th>매장 지역</th>
										<th>매장명</th>
										<th>아이디</th>
										<th>비밀번호</th>
										<th>승인여부</th>
										<th>매장관리자 계정변경</th>
									</tr>
								</thead>
								<c:forEach var="marketMemList" items="${marketMemList}" varStatus="status">
								<tbody>
									<tr>
										<td>
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input" id="check1"
													type="checkbox" /> <label class="custom-control-label"
													for="check1"></label>
											</div>
											</label>
											</div>
										</td>
										<td>${marketMemList.storeRegion}</td>
										<td>${marketMemList.storeName}</td>
										<td>${marketMemList.managerName}</td>
										<td>${marketMemList.managerId}</td>
										<td>
										<select id="select${status.index}" name="select">
										<c:if test="${marketMemList.checkMem eq 'N' || marketMemList.checkMem eq 'null'}">
												<option value="Y">승인</option>
												<option value="N" selected>미승인</option>
										</c:if>
										<c:if test="${marketMemList.checkMem eq 'Y'}">
										<option value="Y" selected>승인</option>
										<option value="N" >미승인</option>
										</c:if>
										</select>
										<a class="btn btn-primary"
											href="javascript:changeCheckMem(${status.index},${marketMemList.seq})" role="button" style="margin-left:40px">수정</a>
										</td>
										<td><a class="btn btn-primary"
											href="marketEdit.admdo" role="button">수정</a>
										</button>
											<button class="btn btn-danger" onclick="marketMemDel(${marketMemList.seq})">삭제</button></td>
									</tr>
								</tbody>
								</c:forEach>
								
								
							</table>
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
</body>
</html>