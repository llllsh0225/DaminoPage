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
<link href="<c:url value='/resources/css/admin/styles.css' />" rel="stylesheet" />
<link rel="stylesheet"
	href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css' />" crossorigin="anonymous">

<script type="text/javascript"
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>" crossorigin="anonymous"></script>

<script>
window.onload = function(){
	// 페이지 로드 시 셀렉트박스에 DB에 저장된 피자구분값 세팅
	var p_type_db = $('#p_type_db').val();
	$("#p_type").val(p_type_db).prop("selected", true);
	
	// 페이지 로드 시 체크박스에 DB에 저장된 도우 확인하여 체크
	var splitDoughCode = $("#dough_db").val().split(","); // DB에 저장된 선택가능 도우 입력값을 ',' 구분자로 split한 배열
	var chkbox = $('.p_dough'); // 체크박스 클래스로 가져옴 (체크박스들을 배열로 저장)

	for(var i=0; i<splitDoughCode.length; i++) {
		console.log(i);
		for(var j=0; j<chkbox.length; j++) {
			console.log(j);
			if(splitDoughCode[i]==chkbox[j].value) {
				chkbox[j].checked=true;
			}
		}
	}
}
</script>

<script type="text/javascript">
	function pizzaAction(index){
		if(index==1){
			console.log("수정");
			document.pizzaInfoForm.action='updatePizza.admdo'; 
		}
		if(index==2){
			console.log("삭제");
			document.pizzaInfoForm.action='deletePizza.admdo';
		}
		document.pizzaInfoForm.submit();
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
				<!-- 메뉴관리 -> 메뉴 상세정보 조회 페이지 -->
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> <strong>메뉴 관리</strong>
					</div>
					<div class="card-body">
						<h6>
							<strong>메뉴 상세정보</strong>
						</h6>
						<div class="for-margin-height-div"></div>
						<form id="pizzaInfoForm" name="pizzaInfoForm" method="post" enctype="multipart/form-data">
							<input type="hidden" name="seq" id="seq" value="${pizza.seq }" />
							<input type="button" class="btn btn-primary" value="글수정" onclick="pizzaAction(1)" style="float: right" /> 
							<input type="button" class="btn-delete" value="글삭제" onclick="pizzaAction(2)" style="float: right" /> 
							<input type="button" class="btn-delete" value="전체 목록" onclick="location.href='menuList.admdo'" style="float: right"/>
							<input type="hidden" id="p_type_db" value="${pizza.p_type }" />
							<input type="hidden" id="dough_db" value="${pizza.p_dough }" />
							<div id="table-reponsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<tr>
										<th>제품명</th>
										<td><input type="text" name="p_name" id="p_name" value="${pizza.p_name }"/></td>
									</tr>
									<tr>
										<th>카테고리</th>
										<td>피자</td>
									</tr>
									<tr>
										<th>구분</th>
										<c:set var="type" value="${pizza.p_type }" />
										<td><select name="p_type" id="p_type">
												<option value="프리미엄">프리미엄</option>
												<option value="클래식">클래식</option>
										</select></td>
									</tr>
									<tr>
										<th>가격</th>
										<td>
										M
										<input type="text" style="margin-left:5px" name="p_price_m" id="p_price_m" value="${pizza.p_price_m }"/>
										&nbsp;&nbsp;&nbsp;&nbsp;L
										<input type="text" style="margin-left:5px" name="p_price_l" id="p_price_l" value="${pizza.p_price_l }"/>
										</td>
									</tr>
									<tr>
										<th>선택 가능 도우</th>
										<td><input type="checkbox" name="p_dough" class="p_dough" value="슈퍼 시드 함유 도우"/> 슈퍼 시드 함유 도우&nbsp; 
											<input type="checkbox" name="p_dough" class="p_dough" value="더블 치즈 엣지" /> 더블 치즈 엣지&nbsp; 
											<input type="checkbox" name="p_dough" class="p_dough" value="오리지널" /> 오리지널&nbsp; 
											<input type="checkbox" name="p_dough" class="p_dough" value="나폴리" /> 나폴리&nbsp; 
											<input type="checkbox" name="p_dough" class="p_dough" value="씬" /> 씬&nbsp;</td>
									</tr>
									<tr>
										<th>총 중량(g)</th>
										<td>
										M
										<input type="text" style="margin-left:5px" name="gross_weight_m" id="gross_weight_m" value="${pizza.gross_weight_m }"/>
										&nbsp;&nbsp;&nbsp;&nbsp;L 
										<input type="text" style="margin-left:5px" name="gross_weight_l" id="gross_weight_m" value="${pizza.gross_weight_l }"/>
										</td>
									</tr>
									<tr>
										<th>1회분 기준</th>
										<td>
										M
										<input type="text" style="margin-left:5px" name="onetime_basis_m" id="onetime_basis_m" value="${pizza.onetime_basis_m }"/>
										&nbsp;&nbsp;&nbsp;&nbsp;L 
										<input type="text" style="margin-left:5px" name="onetime_basis_l" id="onetime_basis_l" value="${pizza.onetime_basis_l }"/>
										</td>
									</tr>
									<tr>
										<th>1회분 중량(g)</th>
										<td>
										M
										<input type="text" style="margin-left:5px" name="onetime_weight_m" id="onetime_weight_m" value="${pizza.onetime_weight_m }"/>
										&nbsp;&nbsp;&nbsp;&nbsp;L 
										<input type="text" style="margin-left:5px" name="onetime_weight_l" id="onetime_weight_l" value="${pizza.onetime_weight_l }"/>
										</td>
									</tr>
									<tr>
										<th>열량(kcal/1회분)</th>
										<td>
										M
										<input type="text" style="margin-left:5px" name="kcal_m" id="kcal_m" value="${pizza.kcal_m }"/>
										&nbsp;&nbsp;&nbsp;&nbsp;L 
										<input type="text" style="margin-left:5px" name="kcal_l" id="kcal_l" value="${pizza.kcal_l }"/>
										</td>
									</tr>
									<tr>
										<th>단백질(g/1회분)</th>
										<td>
										M
										<input type="text" style="margin-left:5px" name="protein_m" id="protein_m" value="${pizza.protein_m }"/>
										&nbsp;&nbsp;&nbsp;&nbsp;L 
										<input type="text" style="margin-left:5px" name="protein_l" id="protein_l" value="${pizza.protein_l }"/>
										</td>
									</tr>
									<tr>
										<th>포화지방(g/1회분)</th>
										<td>
										M
										<input type="text" style="margin-left:5px" name="fat_m" id="fat_m" value="${pizza.fat_m }"/>
										&nbsp;&nbsp;&nbsp;&nbsp;L 
										<input type="text" style="margin-left:5px" name="fat_l" id="fat_l" value="${pizza.fat_l }"/>
										</td>
									</tr>
									<tr>
										<th>나트륨(mg/1회분)</th>
										<td>
										M
										<input type="text" style="margin-left:5px" name="natrium_m" id="natrium_m" value="${pizza.natrium_m }"/>
										&nbsp;&nbsp;&nbsp;&nbsp;L 
										<input type="text" style="margin-left:5px" name="natrium_l" id="natrium_l" value="${pizza.natrium_l }"/>
										</td>
									</tr>
									<tr>
										<th>당류(g/1회분)</th>
										<td>
										M
										<input type="text" style="margin-left:5px" name="sugars_m" id="sugars_m" value="${pizza.sugars_m }"/>
										&nbsp;&nbsp;&nbsp;&nbsp;L 
										<input type="text" style="margin-left:5px" name="sugars_l" id="sugars_l" value="${pizza.sugars_l }"/>
										</td>
									</tr>
									<tr>
										<th>제품 이미지</th>
										<td>
										<input type="file" name="uploadFile" />
										<input type="text" name="p_originalFileName" value="${pizza.p_originalFileName }" disabled="disabled" />
										</td>
									</tr>
								</table>
							</div>
						</form>
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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/datatables-demo.js"></script>

</body>
</html>