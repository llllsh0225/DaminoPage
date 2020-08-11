<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "org.json.simple.*" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="utf-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's</title>
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/card_add.css' />">
	
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery1.11.1.js'/>" ></script>
	<!-- 메인페이지 슬라이드 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>" ></script>
	<!-- 더보기 슬라이드로 내려오는 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>
	
	<script type="text/javascript">
	var toppingCnt = 0; 
		$(document).ready(function(){
			if($('#dsp_ctgr').val() == ""){
				$('.pizza_option').hide();
			}
			
			$('.topping-wrap').hide();
			
		});
		function selectBoxControl(){
			var optValue = $('#dsp_ctgr').val();
			if(optValue == "PIZZA"){
				$('.pizza_option').show();
				getPizzaName();
			}else if(optValue == "SIDE"){
				$('.pizza_option').hide();
				getSideName();
			}else if(optValue == "DRINK"){
				$('.pizza_option').hide();
				getDrinkName();
			}
		}

		function getPizzaName(callbackFunc){
			var target = document.getElementById("goods_code"); // 제품명 셀렉트박스
			var ctgr = $('#dsp_ctgr').val(); // 제품 카테고리명
			
			$.ajax({
				url: 'getPizzaNames.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post',
				dataType: 'json',   
				data : JSON.stringify({
					ctgr : ctgr, // 컨트롤러로 보낼 제품 카테고리 명
				}),
				success: function(data) {
					if (data != null) {
						target += ('<option value="">제품</option>');
						for(var i=0; i<data.length; i++){
							target += ('<option value="'+ data[i] +'">'+ data[i] + '</option>');
						}
						$('#goods_code').html(target);
					}else if (typeof callbackFunc === 'function') {
						callbackFunc();
					}else {
						alert("다시 시도해주세요");
					}		 
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다.');
				}
			});
		}
		function getPizzaDough(){
			var target = document.getElementById("dough"); // 선택 가능 도우 셀렉트박스
			var p_name = $('#goods_code').val(); // 컨트롤러로 보낼 피자 제품명
			var ctgr = $('#dsp_ctgr').val(); // 제품 카테고리명
			
			$('#dough option:eq(1)').prop("selected", "selected"); // 선택된 제품이 바뀔 때 도우 셀렉트박스의 첫번째 값("도우")을 셀렉트
			$('#size option:eq(0)').prop("selected", "selected"); // 선택된 도우가 바뀔 때 사이즈 셀렉트박스의 첫번째 값("사이즈")을 셀렉트
			$('.topping-wrap').hide();
			
			if(ctgr != "PIZZA"){
				return;
			}else{
				$.ajax({
					url: 'getPizzaDough.do',
					contentType : "application/json; charset=UTF-8;",
					type: 'post',
					dataType: 'json',   
					data : JSON.stringify({
						p_name : p_name,
					}),
					success: function(data) {
						if (data != null) {
							target += ('<option value="">도우</option>');
							for(var i=0; i<data.length; i++){
								target += ('<option value="'+ data[i] +'">'+ data[i] + '</option>');
							}
							$('#dough').html(target);
						}else if (typeof callbackFunc === 'function') {
							callbackFunc();
						}else {
							alert("다시 시도해주세요");
						}		 
					},
					error: function() {
						alert('처리도중 오류가 발생했습니다.');
					}
				});
			}
		}
		function getSize(){
			var target = document.getElementById("size"); // 사이즈 선택 셀렉트박스
			$('#size option:eq(1)').prop("selected", "selected"); // 선택된 도우가 바뀔 때 사이즈 셀렉트박스의 첫번째 값("사이즈")을 셀렉트
			$('.topping-wrap').hide();
			
			target += ('<option value="">사이즈</option>');
			target += ('<option value="L">L</option>');
			target += ('<option value="M">M</option>');
			
			$('#size').html(target);
			
		}
		
		function getSideName(){
			var target = document.getElementById("goods_code"); // 제품명 셀렉트박스
			var ctgr = $('#dsp_ctgr').val(); // 제품 카테고리명
			
			$.ajax({
				url: 'getSideNames.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post',
				dataType: 'json',   
				data : JSON.stringify({
					ctgr : ctgr, // 컨트롤러로 보낼 제품 카테고리 명
				}),
				success: function(data) {
					if (data != null) {
						target += ('<option value="">제품</option>');
						for(var i=0; i<data.length; i++){
							target += ('<option value="'+ data[i] +'">'+ data[i] + '</option>');
						}
						$('#goods_code').html(target);
					}else if (typeof callbackFunc === 'function') {
						callbackFunc();
					}else {
						alert("다시 시도해주세요");
					}		 
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다.');
				}
			});
		}
		function getDrinkName(){
			var target = document.getElementById("goods_code"); // 제품명 셀렉트박스
			var ctgr = $('#dsp_ctgr').val(); // 제품 카테고리명
			
			$.ajax({
				url: 'getDrinkNames.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post',
				dataType: 'json',   
				data : JSON.stringify({
					ctgr : ctgr, // 컨트롤러로 보낼 제품 카테고리 명
				}),
				success: function(data) {
					if (data != null) {
						target += ('<option value="">제품</option>');
						for(var i=0; i<data.length; i++){
							target += ('<option value="'+ data[i] +'">'+ data[i] + '</option>');
						}
						$('#goods_code').html(target);
					}else if (typeof callbackFunc === 'function') {
						callbackFunc();
					}else {
						alert("다시 시도해주세요");
					}		 
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다.');
				}
			});
		}
		
		function toppingShowOrHide(){
			var size = $('#size').val();
			if(size != ""){
				$('.topping-wrap').show();
			}else{
				$('.topping-wrap').hide();
			}
		}
		function qtyMinus(){
			var qty = Number($('#qty').val());
			
			qty -= 1;
			$('#qty').val(qty);
			
			if(qty == 0){
				$('#qty').val(1);
			}
		}
		
		function qtyPlus(){
			var qty = Number($('#qty').val());
			
			qty += 1;
			$('#qty').val(qty);
			
			if(qty == 10){
				alert("수량은 최대 9개 까지 선택 가능합니다.");
				$('#qty').val(9);
			}
		}
		
		function mainToppingQtyMinus(idx){
			var mainToppingQty = Number($('#mainToppingQty' + idx).val());
			mainToppingQty -= 1;
			$('#mainToppingQty' + idx).val(mainToppingQty);
			
			if(mainToppingQty <= 0){
				$('#mainToppingQty' + idx).val(0);
				mainToppingQty = Number($('#mainToppingQty' + idx).val());
				if(mainToppingQty == 0){
					toppingCnt -= 1;
				}
			}else{
				toppingCnt -= 1;
			}
			alert(toppingCnt);
		}
		
		function mainToppingQtyPlus(idx){
			var mainToppingQty = Number($('#mainToppingQty' + idx).val());
			mainToppingQty += 1;
			$('#mainToppingQty' + idx).val(mainToppingQty);
			
			if(mainToppingQty > 5){
				alert("토핑은 최대 5개 까지 선택 가능합니다.");
				$('#mainToppingQty' + idx).val(5);
				mainToppingQty = Number($('#mainToppingQty' + idx).val());
			}else{
				toppingCnt += 1;
			}
			alert(toppingCnt);
		}
		
		function cheezeToppingQtyMinus(idx){
			var cheezeToppingQty = Number($('#cheezeToppingQty' + idx).val());
			cheezeToppingQty -= 1;
			$('#cheezeToppingQty' + idx).val(cheezeToppingQty);
			
			if(cheezeToppingQty <= 0){
				$('#cheezeToppingQty' + idx).val(0);
				cheezeToppingQty = Number($('#cheezeToppingQty' + idx).val());
			}else{
				toppingCnt -= 1;
			}
			alert(toppingCnt);
		}
		
		function cheezeToppingQtyPlus(idx){
			var cheezeToppingQty = Number($('#cheezeToppingQty' + idx).val());
			cheezeToppingQty += 1;
			$('#cheezeToppingQty' + idx).val(cheezeToppingQty);
			
			if(cheezeToppingQty > 5){
				alert("토핑은 최대 5개 까지 선택 가능합니다.");
				$('#cheezeToppingQty' + idx).val(5);
				cheezeToppingQty = Number($('#cheezeToppingQty' + idx).val());
			}else{
				toppingCnt += 1;
			}
			alert(toppingCnt);
		}
		
		function afterToppingQtyMinus(idx){
			var afterToppingQty = Number($('#afterToppingQty' + idx).val());
			afterToppingQty -= 1;
			$('#afterToppingQty' + idx).val(afterToppingQty);
			
			if(afterToppingQty <= 0){
				$('#afterToppingQty' + idx).val(1);
			}else{
				toppingCnt -= 1;
			}
			alert(toppingCnt);
		}
		
		function afterToppingQtyPlus(idx){
			var afterToppingQty = Number($('#afterToppingQty' + idx).val());
			afterToppingQty += 1;
			$('#afterToppingQty' + idx).val(afterToppingQty);
			
			if(afterToppingQty > 5){
				alert("토핑은 최대 5개 까지 선택 가능합니다.");
				$('#afterToppingQty' + idx).val(5);
			}else{
				toppingCnt += 1;
			}
			alert(toppingCnt);
		}
	</script>
</head>
<body>	
<div id="wrap">
	<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="/main" class="btn-logo">
						<i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>
					
					<div class="util-nav">
						<!-- and AUTH.memberYn eq 'Y' -->
								<a href="main.do">로그아웃</a>
								<a href="mylevel.do">나의정보</a>
								<a href="javascript:goCart();"  class="btn-cart">
									<i class="ico-cart"></i>
									<span class="hidden ">장바구니</span>
									<strong class="cart_count"></strong> <!-- count -->
								</a>
					</div>
				</div>
			</div>
				
			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active"><a href="goodslist.do"><span>메뉴</span></a></li>
						<li><a href="ecouponInput.do"><span>e-쿠폰</span></a></li>
						<li><a href="branch.do"><span>매장검색</span></a></li>
					</ul>
					<a href="#" class="snb-more">더보기</a>
				</div>
				
				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="mania.do">다미노 서비스</a>
								<ul>
									<li><a href="mania.do">매니아 혜택</a></li>
									<li><a href="quickOrder.do">퀵 오더</a></li>
									<li><a href="groupOrder.do">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="faqMain.do">고객센터</a>
								<ul>
									<li><a href="faqMain.do">자주하는 질문</a></li>
									<li><a href="qnaForm.do">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="overview.do">회사소개</a>
								<ul>
									<li><a href="overview.do">한국다미노피자</a></li>
									<li><a href="chainstore1.do">가맹점 모집</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="noticeList.do">공지사항</a>
							<ul>
								<li><a href="noticeList.do">다미노뉴스</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header><!-- //header -->
<style>
.order_adr_wrap .order_adr{display: none}
.order_adr_wrap .order_adr.open{display: block}
.order_adr_wrap .lately_adr{display: none}
.order_adr_wrap .lately_adr.active{display: block}
</style>

<!-- container -->
<div id="container">
	<form name="f" id="f" method="post" action="/quickOrder/save">
	<!-- content -->
		<section id="content">
			<div class="sub-type quick">
				<div class="inner-box">
					<div class="page-title-wrap">
						<h2 class="page-title">다미노 서비스</h2>
						<div class="depth-area">
							<ol>
								<li><a href="main.do">홈</a></li>
								<li><a href="damino.do">다미노 서비스</a></li>
								<li><strong>퀵오더</strong></li>
							</ol>
						</div>
					</div>
					<article class="quick-area">
						<div class="menu-nav-wrap">
							<div class="menu-nav">
								<ul>
									<li><a href="mania.do">매니아 혜택</a></li>
									<li><a href="quickOrder.do">퀵 오더</a></li>
									<li><a href="groupOrder.do">단체주문 서비스</a></li>
								</ul>
							</div>
						</div>
						<div class="quick-setting">
							<div class="step-wrap">
								<div class="title-wrap">
									<h3 class="title-type2">제품설정</h3>
								</div>
								<div class="form-group2">
									<div class="form-field">
										<div class="select-type type2">
											<select id="dsp_ctgr" class="" onchange="selectBoxControl()">
												<option value="">카테고리</option>
												<option value="PIZZA">피자</option>
												<option value="SIDE">사이드디시</option>
												<option value="DRINK">음료&amp;기타</option>
											</select>
										</div>
									</div>
									<div class="form-field">
										<div class="select-type type2 v2">
											<select class="" id="goods_code" onchange="getPizzaDough()">
												<option value="">제품</option>
											</select>
										</div>
									</div>
									<div class="form-field pizza_option">
										<div class="select-type type2">
											<select class="pizza_option" id="dough" onchange="getSize()">
												<option value="">도우</option>
											</select>
										</div>
									</div>
									<div class="form-field pizza_option">
										<div class="select-type type2">
											<select class="pizza_option" id="size" onchange="toppingShowOrHide()">
												<option value="">사이즈</option>
											</select>
										</div>
									</div>
									<div class="form-field">
										<div class="quantity-box v2">
											<button type="button" class="btn-minus goods" onclick="qtyMinus()"></button>
											<input type="number" class="opt_qty" value="1" id="qty" max="9">
											<button type="button" class="btn-plus goods" onclick="qtyPlus()"></button>
										</div>
									</div>
									<a href="javascript:addGoods();" class="btn-type-brd"><i class="ico-plus"></i>제품 추가하기</a>
								</div>
								<div class="topping-wrap topping">
									<div class="topping-menu close topping" onclick="javascript:addTopping();">
										<a href="#" class="btn-toggle-close">
											토핑 추가하기
											<span class="hidden">열기</span>
										</a>
									</div>
									<div class="js_toggle_box close">
										<div class="title-wrap">
											<div class="text-type3">
												* 토핑추가는 피자 한판 당 5개까지 추가 가능
											</div>
											<div class="notice-text side">
												<a href="javascript:UI.layerPopUp({selId:'#pop-allergy2'})">토핑 알레르기 유발성분</a>
											</div>
										</div>
										<div class="tab-type js_tab">
											<ul>
												<li class="active"><a href="#topping1">메인</a></li>
												<li><a href="#topping2">치즈</a></li>
												<li><a href="#topping3">애프터</a></li>
											</ul>
										</div>
										
										<div id="allQuickToppingLayer">
											<div id="topping1" class="tab-content active">
											<div class="menu-list-v2">
												<ul>
													<c:forEach var="mainToppingList" items="${mainToppingList}" varStatus="status">
													<li>
														<div class="prd-img">
															<img class="lazyload"
															src="<c:url value= '/resources/images/admin/goods/${mainToppingList.t_image}'/>"
															data-src="<c:url value= '/resources/images/admin/goods/${mainToppingList.t_image}'
															 />" />
														</div>
						
														<div class="prd-cont">
															<div class="subject">${mainToppingList.t_name}</div>
															<div class="price-box">
																<strong><fmt:formatNumber value="${mainToppingList.t_price}" pattern="#,###" />원</strong>
															</div>
							
														<div class="quantity-box">
															<button type="button" class="btn-minus topping" onclick="mainToppingQtyMinus(${status.index})"></button>
															<input class="setNum" type="number" id="mainToppingQty${status.index }" value="0" readonly="">
															<input class="setName" type="hidden" value="${mainToppingList.t_name}">
															<input class="setCode" type="hidden" value="${mainToppingList.t_code}">
															<input class="setPrice" type="hidden" value="${mainToppingList.t_price}">
															<button type="button" class="btn-plus topping" onclick="mainToppingQtyPlus(${status.index})"></button>
														</div>
														</div>
													</li>
													</c:forEach>
				 							</ul>	
										</div>
									</div>
		
									<div id="topping2" class="tab-content">
										<div class="menu-list-v2">
											<ul>
												<c:forEach var="cheezeToppingList" items="${cheezeToppingList}" varStatus="status">
												<li>
													<div class="prd-img">
														<img class="lazyload" 
														src="<c:url value= '/resources/images/admin/goods/${cheezeToppingList.t_image}'/>"
														data-src="<c:url value= '/resources/images/admin/goods/${cheezeToppingList.t_image}'/>">
													</div>
							
													<div class="prd-cont">
														<div class="subject">${cheezeToppingList.t_name}</div>
															<div class="price-box">
																<strong><fmt:formatNumber value="${cheezeToppingList.t_price}" pattern="#,###" />원</strong>
															</div>
							
														<div class="quantity-box">
															<button type="button" class="btn-minus topping" onclick="cheezeToppingQtyMinus(${status.index})"></button>
															<input class="setNum" type="number" id="cheezeToppingQty${status.index }" value="0" readonly="">
															<input class="setName" type="hidden" value="${cheezeToppingList.t_name}">
															<input class="setCode" type="hidden" value="${cheezeToppingList.t_code}">
															<input class="setPrice" type="hidden" value="${cheezeToppingList.t_price}">
															<button type="button" class="btn-plus topping" onclick="cheezeToppingQtyPlus(${status.index})"></button>
														</div>
													</div>
												</li>
												</c:forEach>
				 							</ul>	
										</div>
									</div> 
			
									<div id="topping3" class="tab-content">
										<div class="menu-list-v2">
											<ul>
												<c:forEach var="afterToppingList" items="${afterToppingList}" varStatus="status">
												<li>
													<div class="prd-img">
														<img class="lazyload" 
														src="<c:url value= '/resources/images/admin/goods/${afterToppingList.t_image}'/>"
														data-src="<c:url value= '/resources/images/admin/goods/${afterToppingList.t_image}'/>">
													</div>
						
													<div class="prd-cont">
														<div class="subject">${afterToppingList.t_name}</div>
														<div class="price-box">
															<strong><fmt:formatNumber value="${afterToppingList.t_price}" pattern="#,###" />원</strong>
														</div>
														
														<div class="quantity-box">
															<button type="button" class="btn-minus topping" onclick="afterToppingQtyMinus(${status.index})"></button>
															<input class="setNum" type="number" id="afterToppingQty${status.index }" value="0" readonly="">
															<input class="setName" type="hidden" value="${afterToppingList.t_name}">
															<input class="setCode" type="hidden" value="${afterToppingList.t_code}">
															<input class="setPrice" type="hidden" value="${afterToppingList.t_price}">
															<button type="button" class="btn-plus topping" onclick="afterToppingQtyPlus(${status.index})"></button>
														</div>
													</div>
												</li>
												</c:forEach>
				 							</ul>	
										</div>
									</div> 		
										</div>
									</div>
								</div>
								<div class="table-type3">
									<table>
										<caption>제품설정</caption>
										<colgroup>
											<col style="width:420px">
											<col style="width:250px">
											<col style="width:265px">
											<col style="width:264px">
										</colgroup>
										<thead>
											<tr>
												<th>주문제품</th>
												<th>수량</th>
												<th>가격</th>
												<th>수정</th>
											</tr>
										</thead>
										<tbody id="goods_list">
											</tbody>
										<tfoot>
											<tr>
												<td colspan="4">총 주문 금액 <em id="totalPrice">0</em>원</td>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
							<div class="step-wrap">
								<div class="title-wrap">
									<h3 class="title-type2">배송방법 및 배송지/매장 설정</h3>
								</div>
								
								<div class="form">
									<div class="chk-box">
										<input type="radio" name="order_gubun" value="O" id="order_deli" checked>
										<label class="checkbox" for="order_deli"></label>
										<label for="order_deli">배달주문</label>
									</div>
									<div class="chk-box">
										<input type="radio" name="order_gubun" value="W" id="order_visit" >
										<label class="checkbox" for="order_visit"></label>
										<label for="order_visit">방문포장</label>
									</div>
								</div>
								
								<div class="toggle-wrap">
									<div class="toggle-menu">
										<div class="order_adr_wrap">
											<div class="order_adr open">
													<div class="menu-wrap close">
														<dl>
															<dt>배달주소</dt>
															<dd id="addr_O">배달주소를 선택해주세요.</dd>
														</dl>
														<a href="javascript:;" class="btn-toggle-close">
															배달주소 변경
															<span class="hidden">열기</span>
														</a>
													</div>
												</div>
												<div class="order_adr order_adr_none">
													<p>포장매장을 선택해주세요.</p>
													<a href="javascript:addBranch();" class="btn"><span class="btn_txt">신규 매장 등록</span></a>
												</div>
												<div class="js_toggle_box1 close">
												<div class="table-type2">
													<div class="order_lately_wrap">
														<!--배달주문-->
														<div class="order_lately lately_adr">
															<table>
																<caption>배송방법 및 배송지/매장 설정</caption>
																<colgroup>
																	<col style="width:530px">
																	<col style="width:370px">
																	<col>
																</colgroup>
																<thead>
																	<tr>
																		<th>최근 배송지</th>
																		<th>배달매장</th>
																		<th></th>
																	</tr>
																</thead>
																<tbody id="addr_list_o">
																	<tr id="o_25315910">
																			<td class="address">서울특별시 영등포구 여의동 84-0  빛의카페 앞 DOMINO SPOT</td>
																			<td>여의도점</td>
																			<td>
																				<div class="btn-wrap">
																					<a href="javascript:setDelivery('25315910', '86284', '여의도점', '02-780-2012');" class="btn-type4-brd3">선택</a>
																					<a href="javascript:deleteDelivery('25315910');" class="btn-type4-brd2">삭제</a>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																<tfoot>
																	<tr>
																		<td colspan="3">
																			<a href="javascript:addDelivery();" class="btn-type-brd">
																				<i class="ico-plus"></i>신규 배송지 등록
																			</a>
																		</td>
																	</tr>
																</tfoot>
															</table>
														</div>
														<!--//배달주문-->
															
														<!--방문포장-->
														<div class="order_lately lately_adr">
															<table>
																<caption>배송방법 및 배송지/매장 설정</caption>
																<colgroup>
																	<col style="width:395px">
																	<col style="width:420px">
																	<col>
																</colgroup>
																<thead>
																	<tr>
																		<th>매장명</th>
																		<th>매장정보</th>
																		<th></th>
																	</tr>
																</thead>
																<tbody id="addr_list_w">
																	</tbody>
																<tfoot>
																	<tr>
																		<td colspan="3">
																			<a href="javascript:addBranch();" class="btn-type-brd">
																				<i class="ico-plus"></i>포장매장 등록
																			</a>
																		</td>
																	</tr>
																</tfoot>
															</table>
														</div>
														<!--//방문포장-->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="text-type2">
									<p>- 추가하신 제품 중 내맘대로 피자/반값/특가/세트제품은 제외됩니다.</p>
								</div>
							</div>
							<div class="btn-wrap">
								<a href="index" class="btn-type-brd3">취소</a>
								<a href="javascript:goSave();" class="btn-type v3">저장</a>
							</div>
						</div>
					</article>
				</div>
			</div>
			<div class="pop-layer" id="pop-allergy2">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title">토핑 알레르기 유발성분</h2>
        </div>
        <div class="pop-content">
            <div class="allergy_guide">
                <p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와 같이 제품별 상세 내용을 표기하여 안내해드립니다.<br>(괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발 가능식품)</p>
                <dl>
                    <dt>* 알레르기 유발 가능 식품 : </dt>
                    <dd>토마토, 아황산류(이를 첨가하여 최종제품에 SO2로 10mg/kg 이상 함유한 경우에 한한다), 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합 포함)</dd>
                </dl>
            </div>
            <div class="table-type v2">
                <table class="tbl_type">
                    <caption>유발성분 표</caption>
                    <colgroup>
                        <col width="5%">
                        <col width="25%">
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>NO</th>
                        <th>토핑</th>
                        <th>알레르기 유발성분 표기</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
							<td>1</td>
							<td>치즈류</td>
							<td>우유</td>
						</tr>
						<tr>
							<td>2</td>
							<td>베이컨</td>
							<td>돼지고기</td>
						</tr>
						<tr>
							<td>3</td>
							<td>페퍼로니</td>
							<td>돼지고기, 쇠고기</td>
						</tr>
						<tr>
							<td>4</td>
							<td>감자</td>
							<td>대두, 이산화황</td>
						</tr>
						<tr>
							<td>5</td>
							<td>햄</td>
							<td>돼지고기, 쇠고기, 대두, 계란</td>
						</tr>
						<tr>
							<td>6</td>
							<td>불고기</td>
							<td>쇠고기,대두,밀,아황산류</td>
						</tr>
						<tr>
							<td>7</td>
							<td>로스트 포테이토</td>
							<td>대두</td>
						</tr>
						<tr>
							<td>8</td>
							<td>포크 </td>
							<td>돼지고기,쇠고기,대두,밀,계란</td>
						</tr>
						<tr>
							<td>9</td>
							<td>호스래디시 소스</td>
							<td>계란,우유,대두</td>
						</tr>
						<tr>
							<td>10</td>
							<td>베이컨칩</td>
							<td>돼지고기</td>
						</tr>
						<tr>
							<td>11</td>
							<td>선드라이 토마토</td>
							<td>토마토</td>
						</tr>
						<tr>
							<td>12</td>
							<td>마요네즈</td>
							<td>난류,대두</td>
						</tr>
						<tr>
							<td>13</td>
							<td>갈릭올리브믹스</td>
							<td>계란,우유,대두</td>
						</tr>
						<tr>
							<td>14</td>
							<td>케이준새우살 </td>
							<td>케이준소스(대두,토마토,닭고기,조개류(굴)),새우(새우)</td>
						</tr>
						<tr>
							<td>15</td>
							<td>새송이 버섯</td>
							<td>대두</td>
						</tr>
						<tr>
							<td>16</td>
							<td>와규 크럼블</td>
							<td>쇠고기,대두,밀</td>
						</tr>
						<tr>
							<td>17</td>
							<td>비스테카 스테이크</td>
							<td>쇠고기,밀,대두,토마토</td>
						</tr>	
						<tr>
							<td>18</td>
							<td>그릴드비프</td>
							<td>쇠고기,대두,밀</td>
						</tr>		
						<tr>
							<td>19</td>
							<td>블랙타이거 슈림프</td>
							<td>새우</td>
						</tr>
						<tr>
							<td>20</td>
							<td>블랙앵거스 비프</td>
							<td>쇠고기, 대두, 밀, 계란</td>
						</tr>
						<tr>
							<td>21</td>
							<td>랍스터살</td>
							<td></td>
						</tr>
						<tr>
							<td>22</td>
							<td>고구마 무스</td>
							<td>계란,우유,대두,밀</td>
						</tr>
						<tr>
							<td>23</td>
							<td>고구마 큐브</td>
							<td></td>
						</tr>
						<tr>
							<td>24</td>
							<td>New 고구마 무스</td>
							<td>계란,우유,대두,밀</td>
						</tr>
						<tr>
							<td>25</td>
							<td>머쉬룸</td>
							<td></td>
						</tr>
						<tr>
							<td>26</td>
							<td>이베리코 스테이크</td>
							<td>돼지고기,대두,밀</td>
						</tr>
						<tr>
							<td>27</td>
							<td>통새우</td>
							<td>새우</td>
						</tr>
						<tr>
							<td>28</td>
							<td>문어</td>
							<td>대두,밀,우유,새우,쇠고기,조개류</td>
						</tr>					
						<tr>
							<td>29</td>
							<td>비프 스테이크</td>
							<td>대두,밀,토마토,쇠고기</td>
						</tr>
						<tr>
							<td>30</td>
							<td>BBQ포크</td>
							<td>대두,밀,토마토,돼지고기,쇠고기</td>
						</tr>
						<tr>
							<td>31</td>
							<td>호스래디시 스퀴드</td>
							<td>오징어, 계란, 우유, 대두</td>
						</tr>
						<tr>
							<td>32</td>
							<td>스위트 칠리크랩</td>
							<td>게, 대두, 밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)</td>
						</tr>
						<tr>
							<td>33</td>
							<td>오리엔탈 통새우</td>
							<td>새우, 우유, 대두, 밀, 토마토, 닭고기, 쇠고기, 조개류(굴)</td>
						</tr>
                    </tbody>
                </table>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div></section>
	</form>
	<!-- //content -->
</div>
<!-- //container -->

<div class="map-area" id="map_detail_canvas" style="display:none">
				
</div>

<!-- 팝업 배달주소조회  -->
<div class="pop-layer" id="pop-address">
</div>
<!--// 팝업 배달주소조회  -->

<!-- 팝업 배달주소등록  -->
<div class="pop-layer" id="pop-address3">
</div>	
<!--// 팝업 배달주소등록  -->
<!-- 팝업 포장매장등록   -->
<div class="pop-layer" id="pop-store-takeout">
</div>

	<!-- 장바구니 담기 토스트 팝업(s) -->
	<div class="pop_toast" id="card_add" style="display: none;">
		<div class="bg"></div>
		<div class="pop_wrap">
			<div class="pop_content">
				<p>장바구니에 담았습니다.</p>
			</div>
		</div>
	</div>

	<!-- //장바구니 담기 토스트 팝업(e) -->

	<!-- 장바구니(s) -->
	<div class="pop_layer pop_type" id="cart_pop" style="display: none;">
		<div class="bg"></div>
		<div class="pop_wrap">
			<div class="pop_header">
				<h2>장바구니</h2>
			</div>
			<!-- iframe src="100_cart_pop_frame.html" width="1000" height="832" frameborder="0"></iframe><!-- 2016-10-05//아이프레임대체 -->
			<a href="javascript:;" onclick="setBasketCnt();" class="btn_ico btn_close">닫기</a>
		</div>
	</div>
	<!-- //장바구니(e) -->

	<footer id="footer">
		<div class="footer-area">
			<div class="inner-box">
				<div class="footer-order">
					<i class="ico-logo2"></i>
					<span class="tel">1577-3082</span>
				</div>
	
				<ul class="footer-contact">
						<li><a href="law.do">이용약관</a></li>
						<li class="on"><a href="privacy.do">개인정보처리방침</a></li>
						<li><a href="faqMain.do">고객센터</a></li>
						<li><a href="groupOrder.do">단체주문</a></li>
				</ul>
	
				<div class="footer-info">
               		<p>03138 서울특별시 중구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현, 정민균, 정민식, 김진혁</p>
               		<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
               		<p>문의 : admin@daminos.co.kr</p>
               		<p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

               		<p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 피자(PC, 모바일, 앱)의 일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
              	</div>
	
				<div class="footer-cont">
				
					<dl class="app-box">
						<dt>DOWNLOAD APP</dt>
						<dd>
							<a href="https://itunes.apple.com/kr/app/dominopija-domino-pizza-korea/id371008429?mt=8"><i class="ico-ios"></i>ios 앱다운로드</a>
							<a href="https://play.google.com/store/apps/details?id=kr.co.d2.dominos"><i class="ico-android">안드로이드 앱다운로드</i></a>
						</dd>
					</dl>
	
					<div class="sns-box">
						<ul>
							<li><a href="http://blog.naver.com/dominostory"><i class="ico-blog"></i>블로그</a></li>
							<li><a href="https://www.instagram.com/dominostory/"><i class="ico-insta"></i>인스타그램</a></li>
							<li><a href="https://www.facebook.com/dominostory/"><i class="ico-facebook"></i>페이스북</a></li>
							<li><a href="https://www.youtube.com/user/dominostory3082"><i class="ico-youtube"></i>유튜브</a></li>
							<li><a href="https://twitter.com/dominostory"><i class="ico-twitter"></i>트위터 </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="awards-area">
			<div class="inner-box">
				<ul>
					<li><img src="<c:url value='/resources/images/user/list_awards.png' />" alt="">
						<p>
							식품안전<br>경영시스템 인증
						</p></li>
					<li><img src="<c:url value='/resources/images/user/list_awards2.png' />" alt="">
						<p>
							지식경제부<br>우수디자인 선정
						</p></li>
					<li><img src="<c:url value='/resources/images/user/list_awards3.png' />" alt="">
						<p>
							고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
						</p></li>
					<li><img src="<c:url value='/resources/images/user/list_awards4.png' />" alt="">
						<p>
							2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
						</p></li>
					<li><img src="<c:url value='/resources/images/user/list_awards5.png' />" alt="">
						<p>
							2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
						</p></li>
					<li><img src="<c:url value='/resources/images/user/list_awards6.png' />" alt="">
						<p>
							대학생 1000명이 선택한<br>2019 올해의 핫 브랜드 캠퍼스 잡앤조이 선정
						</p></li>
				</ul>
			</div>
		</div>
	</footer>
	<!-- //footer -->
</div><!-- //wrap -->
</body>
</html>