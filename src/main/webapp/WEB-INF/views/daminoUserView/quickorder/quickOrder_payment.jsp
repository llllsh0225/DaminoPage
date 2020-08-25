<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>퀵 오더 설정- 다미노피자</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/card_add.css' />">

<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<!-- 더보기 슬라이드로 내려오는 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/ui.js'/>"></script>

<script type="text/javascript">
	// 현재 시각
	var timeNow = new Date();
	
	window.onload = function() {
		if($('#sessionMsg').val() == 'login'){
			$('#recipient').prop('checked', true);
		}else{
			$('#recipient').prop('checked', false);
		}
		
		deliverTimeSet();
		todayReserveSet();
		tomorrowReserveSet();
		setUserinfoForm();
		changeReserveGubun(1);
		setDeliveryTime(1);
		
		// 오늘예약, 익일예약 div 숨김
		$('#orderTime2').hide();
		$('#orderTime3').hide();
		
		// 컨트롤러에서 넘겨받은 값
		var goodsName = $('#goodsName').val();
		var goodsNameArr = goodsName.split(",");

		var goodsPrice = $('#goodsPrice').val();
		var goodsPriceArr = goodsPrice.split(",");

		var goodsQty = $('#goodsQty').val();
		var goodsQtyArr = goodsQty.split(",");

		var couponName = $('#couponName').val();
		var couponNameArr = couponName.split(",");
		
		var discountRate = $('#discountRate').val();
		var discountRateArr = discountRate.split(",");
		
		var toppingMenu = "";
		var pizzaNameArr = []; // 피자제품명만 담는 배열
		var toppingNameArr = []; // 토핑제품명을 담는 배열
		var etcNameArr = []; // 사이드, 음료&기타 제품명을 담는 배열
		var goodsArr = []; // 제품명 (피자&사이드&음료) 배열
		var couponArr = []; // 사용가능 쿠폰을 담는 배열
		

		// 제품명 배열, 피자메뉴 배열, 토핑 배열 세팅
		for (var i = 0; i < goodsNameArr.length; i++) {
			if (goodsNameArr[i].includes("<br>")) {
				var pizzaMenu = goodsNameArr[i].split("<br>");
				pizzaNameArr[i] = pizzaMenu[0];
				goodsArr[i] = pizzaMenu[0];
				console.log(pizzaNameArr[i]);
				pizzaMenu.splice(0, 1);

				for (var j = 0; j < pizzaMenu.length; j++) {
					pizzaMenu[j] = pizzaMenu[j].replace("-", "");
					toppingMenu += pizzaMenu[j];
					if(j != pizzaMenu.length - 1){
						toppingMenu += "<br>&nbsp;&nbsp;&nbsp;&nbsp;";
					}
					
					toppingNameArr[i] = toppingMenu;
					console.log(toppingNameArr[i]);
				}
				toppingMenu = "";
			} else {
				goodsArr[i] = goodsNameArr[i];
			}
		}

		// 주문내역 요약 세팅
		if (goodsArr.length != 1) {
			$('.goods_name').text(
					goodsArr[0] + " x " + goodsQty[0] + " 외 "
							+ String(goodsArr.length - 1) + "건");
		} else {
			$('.goods_name').text(goodsArr[0]);
		}

		toppingMenu = toppingMenu.replace("-", "");

		// 주문 제품명 & 토핑이 있다면 토핑이름 세팅
		for (var i = 0; i < goodsArr.length; i++) {
			$('#goodsNameQty' + i).text(goodsArr[i] + " x " + goodsQtyArr[i]);
			$('#goodsTotalPrice' + i).text(goodsPriceArr[i].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
			if (pizzaNameArr[i] != null) {
				var newli = document.createElement("li");
				newli.innerHTML = toppingNameArr[i];
				var toppingul = document.getElementById("topping" + i);
				toppingul.appendChild(newli);
				//$('#pizzaTopping' + i).html(toppingNameArr[i]);
			}
			
		}
		
		// 할인쿠폰 셀렉트박스 세팅
		var target = document.getElementById("couponList");
		target += ('<option value="">할인쿠폰 선택</option>');
		for(var i=0; i<couponNameArr.length; i++){
			target += ('<option value="' + discountRateArr[i] + '">' + couponNameArr[i] + '</option>');
			console.log(discountRateArr[i]);
		}
		$('#couponList').html(target);
		
		// 총 상품금액 세팅
		var totalPrice = Number($('#totalGoodsPrice').val());
		$('#totalPrice').text(totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
		
		// 총 결제금액 세팅
		$('#totalPayment').text((totalPrice - Number($('#totalDiscount').text())).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
		
	}
	
	function setUserinfoForm(){
		var tel1 = $('#userphone').val().substring(0, 3);
		var tel2 = $('#userphone').val().substring(3, 7);
		var tel3 = $('#userphone').val().substring(7, 11);
		
		if($('#recipient').prop('checked')){ // '주문자와 동일'이 체크 되었을 때 세션의 사용자 정보를 세팅
			$('#customerName').attr('disabled', true);
			$('#customerName').val($('#username').val());
			
			$('#tel1').attr('disabled', true);
			$('#tel1').val(tel1).prop("selected", true);
			
			$('#tel2').attr('disabled', true);
			$('#tel2').val(tel2);
			
			$('#tel3').attr('disabled', true);
			$('#tel3').val(tel3);
		}else{
			$('#customerName').attr('disabled', false);
			$('#customerName').val("");
			
			$('#tel1').attr('disabled', false);
			$('#tel1').val("010").prop("selected", true);
			
			$('#tel2').attr('disabled', false);
			$('#tel2').val("");
			
			$('#tel3').attr('disabled', false);
			$('#tel3').val("");
		}
	}
	
	function directMessage(){ // 직접입력을 선택했을 때 텍스트박스가 나타남
		if($('#more_req_box').val() == "direct"){
			$('#more_req').show();
		}else{
			$('#more_req').hide();
			$('#more_req').val("");
		}
	}
	
	function deliverTimeSet(){
		var openTime = Number($('#storeOpenTime').val().substring(0,2));
		var endTime = Number($('#storeEndTime').val().substring(0,2));
		
		if(timeNow.getHours() < openTime || timeNow.getHours() > endTime){
			// 현재 시간이 매장의 오픈타임 이전이거나, 마감시간 이후일 때
			$('#orderNow').text("현재는 주문 가능 시간이 아닙니다. 예약 시스템을 이용해주세요.");
		}else{
			// 주문 가능 시간일 때
			timeNow.setMinutes(timeNow.getMinutes() + 30); // 현재 시간 + 30분
			$('#deliverHour').text(timeNow.getHours());
			$('#deliverMinutes').text(timeNow.getMinutes());	
		}
	}
	
	function todayReserveSet(){ // 오늘 예약 연월일 텍스트, 시간분 셀렉트박스 세팅
		var year = String(timeNow.getFullYear());
		$('#todayYear').text(year);
		
		var month = String(timeNow.getMonth() + 1);
		if(month.length < 2){
			month = '0' + month;
		}
		$('#todayMonth').text(month);
		
		var date = String(timeNow.getDate());
		
		if(date.length < 2){
			date = '0' + date;
		}
		
		$('#todayDay').text(date);
		
		var hour = String(timeNow.getHours());
		
		if(hour.length < 2){
			hour = '0' + hour;
		}
		
		var target1 = document.getElementById("reserve_time11");
		var target2 = document.getElementById("reserve_time12");
		
		var openTime = Number($('#storeOpenTime').val().substring(0,2)); // 매장 오픈시간
		var endTime = Number($('#storeEndTime').val().substring(0,2)); // 마감시간
		
		var calHour = Number(hour);
		
		target1 += ('<option value="">시간</option>');

		target2 += ('<option value="">분</option>');
		$('#reserve_time12').html(target2);
		
		for(var i=0; i<endTime - openTime; i++){
			if(calHour <= endTime){
				target1 += ('<option value="' + year + month + date + calHour + '">' + calHour +'시</option>');
				$('#reserve_time11').html(target1);
				++calHour;
			}else{
				return;
			}
		}
		
	}
	
	function setTodayReserveMinutes() {
		var openTime = Number($('#storeOpenTime').val().substring(0,2)); // 매장 오픈시간
		var endTime = Number($('#storeEndTime').val().substring(0,2)); // 마감시간(시간)
		var endMinutes = Number($('#storeEndTime').val().substring(3,5)); // 마감시간(분)
		var reserveHour = Number($('#reserve_time11').val().slice(-2)); // 선택한 예약 시간
		var hour = String(timeNow.getHours()); // 현재 시간
		var minutesArr = [ 00, 05, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55 ]; // 분 저장 배열
		
		var target2 = document.getElementById("reserve_time12");
		
		if(hour.length < 2){
			hour = '0' + hour;
		}
		
		var minutes = String(timeNow.getMinutes()); // 현재 분
		
		if(minutes.length < 2){
			minutes = '0' + minutes;
		}
		
		target2 += ('<option value="">분</option>');
		
		if(reserveHour == Number(hour)){
			for(var i=0; i<minutesArr.length; i++){
				if(minutesArr[i] > Number(minutes)){
					target2 += ('<option value="' + minutesArr[i] + '00' + '">' + minutesArr[i] + '분</option>');
				}
			}
		}else if(reserveHour == endTime){
			for(var i=0; i<minutesArr.length; i++){
				if(minutesArr[i] <= endMinutes){
					target2 += ('<option value="' + minutesArr[i] + '00' + '">' + minutesArr[i] + '분</option>');
				}
			}
		}else{
			for(var i=0; i<minutesArr.length; i++){
				target2 += ('<option value="' + minutesArr[i] + '00' + '">' + minutesArr[i] + '분</option>');
			}
		}
		
		$('#reserve_time12').html(target2);
		
	}
	
	function tomorrowReserveSet(){
		var todayDate = new Date();
		
		var year = String(todayDate.getFullYear());
		$('#t_year').text(year);
		
		var month = String(todayDate.getMonth() + 1);
		if(month.length < 2){
			month = '0' + month;
		}
		$('#t_month').text(month);
		
		todayDate.setDate(todayDate.getDate() + 1);
		
		var date = String(todayDate.getDate());
		
		if(date.length < 2){
			date = '0' + date;
		}
		
		$('#t_day').text(date);
		
		var hour = String(todayDate.getHours());
		
		if(hour.length < 2){
			hour = '0' + hour;
		}
		
		var target3 = document.getElementById("reserve_time21");
		var target4 = document.getElementById("reserve_time22");
		
		var openTime = Number($('#storeOpenTime').val().substring(0,2)); // 매장 오픈시간
		var endTime = Number($('#storeEndTime').val().substring(0,2)); // 마감시간
		
		target3 += ('<option value="">시간</option>');

		target4 += ('<option value="">분</option>');
		$('#reserve_time22').html(target4);
		
		var businessHour = endTime - openTime;
		
		for(var i=0; i<=businessHour; i++){
			target3 += ('<option value="' + year + month + date + openTime + '">' + openTime +'시</option>');
			$('#reserve_time21').html(target3);
			++openTime;
		}
	}
	
	function setTomorrowReserveTime(){
		var endTime = Number($('#storeEndTime').val().substring(0,2)); // 마감시간(시간)
		var endMinutes = Number($('#storeEndTime').val().substring(3,5)); // 마감시간(분)
		var reserveHour = Number($('#reserve_time21').val().slice(-2)); // 선택한 예약 시간
		var minutesArr = [ 00, 05, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55 ]; // 분 저장 배열
		
		var target4 = document.getElementById("reserve_time22");
		
		target4 += ('<option value="">분</option>');
		
		if(reserveHour == endTime){
			for(var i=0; i<minutesArr.length; i++){
				if(minutesArr[i] <= endMinutes){
					target4 += ('<option value="' + minutesArr[i] + '00' + '">' + minutesArr[i] + '분</option>');
				}
			}
		}else{
			for(var i=0; i<minutesArr.length; i++){
				target4 += ('<option value="' + minutesArr[i] + '00' + '">' + minutesArr[i] + '분</option>');
			}
		}
		
		$('#reserve_time22').html(target4);
	}
	
	function setDiscountRate(){
		var selectDiscountRate = Number($('#couponList').val());
		var totalPrice = $('#totalPrice').text().replace(",","");
		var totalDiscount = Math.floor(Number(totalPrice) * (selectDiscountRate / 100));
		
		console.log(totalPrice);
		console.log(totalDiscount);
		
		$('#totalDiscount').text(totalDiscount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
		$('#totalPayment').text((Number(totalPrice) - totalDiscount).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	}
	
	function changeReserveGubun(idx){ // 바로주문, 오늘예약, 내일예약 div show
		if(idx == 1){
			$('#orderTime1').show();
			$('#orderTime2').hide();
			$('#orderTime3').hide();
			
			setDeliveryTime(1);
			
		}else if(idx == 2){
			$('#orderTime2').show();
			$('#orderTime1').hide();
			$('#orderTime3').hide();
			
			setDeliveryTime(2);
			
		}else if(idx == 3){
			$('#orderTime3').show();
			$('#orderTime1').hide();
			$('#orderTime2').hide();
			
			setDeliveryTime(3);
		}
	}
	
	function setDeliveryTime(idx){
		if(idx == 1){
			var month = String(timeNow.getMonth() + 1);
			if(month.length < 2){
				month = '0' + month;
			}
			var date = String(timeNow.getDate());
			if(date.length < 2){
				date = '0' + date;
			}
			
			var hours = $('#deliverHour').text();
			if(hours.length < 2){
				hours = '0' + hours;
			}
			
			var minutes = $('#deliverMinutes').text();
			if(minutes.length < 2){
				minutes = '0' + minutes;
			}
			
			var seconds = String(timeNow.getSeconds());
			if(seconds.length < 2){
				seconds = '0' + seconds;
			}
			
			$('#deliveryTime').val(timeNow.getFullYear() + month + date + hours + minutes + seconds);
			console.log($('#deliveryTime').val());
		}else if(idx == 2){
			$('#deliveryTime').val($('#reserve_time11').val() + $('#reserve_time12').val());
			console.log($('#deliveryTime').val());
		}else if(idx == 3){
			$('#deliveryTime').val($('#reserve_time21').val() + $('#reserve_time22').val());
			console.log($('#deliveryTime').val());
		}
	}
	
	function doOrder(){
		var orderTime = new Date();
		var orderMonth = String(orderTime.getMonth() + 1);
		if(orderMonth.length < 2){
			orderMonth = '0' + orderMonth;
		}
		var orderDate = String(orderTime.getDate());
		if(orderDate.length < 2){
			orderDate = '0' + orderDate;
		}
		var orderHours = String(orderTime.getHours());
		if(orderHours.length < 2){
			orderHours = '0' + orderHours;
		}
		var orderMinutes = String(orderTime.getMinutes());
		if(orderMinutes.length < 2){
			orderMinutes = '0' + orderMinutes;
		}
		var orderSeconds = String(orderTime.getSeconds());
		if(orderSeconds.length < 2){
			orderSeconds = '0' + orderSeconds;
		}
		
		var orderTimeStr = orderTime.getFullYear() + orderMonth + orderDate + orderHours + orderMinutes + orderSeconds;
		var userid = $('#userid').val();
		var username = $('#customerName').val();
		var deliveryTime = $('#deliveryTime').val();
		var deliverAddress = $('#deliverAddress').val();
		var userphone = $('#tel1').val() + $('#tel2').val() + $('#tel3').val();
		var goodsName = $('#goodsName').val();
		var totalPayment = Number($('#totalPayment').text().replace(',', ''));
		var take = '배달';
		var storename = $('#deliverStore').val();
		var storephone = $('#storePhone').val();
		var paytool = "";
		var paystatus = '결제완료'; // 결제 과정에서 변동이 있을 수 있음.
		var status = '주문완료';
		var requirement = "";
		
		// 선택한 쿠폰 인덱스
		var couponCode = $('#couponCode').val();
		var couponCodeArr = couponCode.split(",");
		
		var couponIdx = $('#couponList option').index($('#couponList option:selected'));
		var selectCouponCode = couponCodeArr[couponIdx - 1];
		console.log(couponIdx + " : " + selectCouponCode);
		
		// 결제수단 세팅
		if($('#pay1').prop('checked')){
			paytool = $('#pay1').val();
			
			// ======== 카드결제 선택했을 때 ========
			// 이 부분에 결제 function 들어가면 될 것 같습니다!
			
		}else if($('#pay2').prop('checked')){
			paytool = $('#pay2').val();
		}else if($('#pay3').val()){
			paytool = $('#pay3').val();
		}
		
		// 요청사항 세팅
		var selectReq = $('#more_req_box').val();
		if(selectReq != "direct"){
			requirement = selectReq;
		}else{
			requirement = $('#more_req').val();
		}
		
		$.ajax({
			url: 'doQuickOrder.do',
			contentType : "application/json; charset=UTF-8;",
			type: 'post',  
			data : JSON.stringify({
				orderTimeStr : orderTimeStr,
				userid : userid,
				username : username,
				deliveryTime : deliveryTime,
				deliverAddress : deliverAddress,
				userphone : userphone,
				goodsName : goodsName,
				totalPayment : totalPayment,
				take : take,
				storename : storename,
				storephone : storephone,
				paytool : paytool,
				paystatus : paystatus,
				status : status,
				requirement : requirement,
				selectCouponCode : selectCouponCode,
			}),
			success: function(data) {
				// 결과 페이지로 이동
				location.href="getOrderResultPage.do";
			},
			error: function() {
				alert('처리도중 오류가 발생했습니다.');
			}
		});
	}
</script>
</head>
<body>
	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="main.do" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<c:choose>
						<c:when test="${msg != 'login' }">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="login.do">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인 -->
							<div class="util-nav">
								${user.username } 님 &nbsp; <a href="logout.do">로그아웃</a> <a
									href="mylevel.do">나의정보</a> <a href="#" class="btn-cart"> <i
									class="ico-cart"></i>
								</a>
							</div>
						</c:otherwise>
					</c:choose>
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
		</header>
		<!-- //header -->

		<div id="container"">
			<iframe id="inicisFrame" name="inicisFrame" title="시스템용" src=""
				style="display: none; width: 0px; height: 0px;"></iframe>
			<form id="orderFrm" name="orderFrm" action="" target="" method="post">
				<div id="hidden_info">
					<input type="hidden" id="sessionMsg" value="${msg }" />
					<input type="hidden" id="userid" value="${user.userid }" />
					<input type="hidden" id="username" value="${user.username }" />
					<input type="hidden" id="userphone" value="${user.phone }" />
					<input type="hidden" id="deliverAddress" value="${defaultAddress.address }" />
					<input type="hidden" id="deliverStore" value="${defaultAddress.storename }" />
					<input type="hidden" id="storePhone" value="${defaultAddress.storephone }" />
					<input type="hidden" id="goodsName" value="${goodsName }" /> 
					<input type="hidden" id="goodsPrice" value="${goodsPrice }" /> 
					<input type="hidden" id="goodsQty" value="${goodsQty }" />
					<input type="hidden" id="totalGoodsPrice" value="${totalPrice }" />
					<input type="hidden" id="couponName" value="${couponName }" />
					<input type="hidden" id="couponCode" value="${couponCode }" />
					<input type="hidden" id="discountRate" value="${discountRate }" />
					<input type="hidden" id="storeOpenTime" value="${hourInfo.opentime }" />
					<input type="hidden" id="storeEndTime" value="${hourInfo.endtime }" />
					<input type="hidden" id="deliveryTime" value="" />
				</div>

				<section id="content">
					<div class="sub-type order">
						<div class="inner-box">
							<!-- 1depth 메뉴명 & 네비게이션 -->
							<div class="page-title-wrap">
								<h2 class="page-title">결제하기</h2>
								<div class="depth-area">
									<ol>
										<li><a href="/main">홈</a></li>
										<li><a href="/basket/detail">장바구니</a></li>
										<li><strong>결제하기</strong></li>
									</ol>
								</div>
							</div>
							<!-- //1depth 메뉴명 & 네비게이션 -->

							<article class="pay">
								<div class="step-wrap">
									<div class="title-wrap">
										<h3 class="title-type">
											<strong>수령인 정보</strong>
										</h3>
									</div>
									<!-- 배달 -->
									<div class="deli-info">
										<div class="address">${defaultAddress.address }</div>
										<div class="store">
											<span>${defaultAddress.storename }</span>${defaultAddress.storephone }</div>
									</div>
									<!-- // 배달 -->

									<!-- 포장 -->
									<!-- // 포장 -->

									<div class="deli-info form">
										<dl class="chk-wrap">
											<dt></dt>
											<dd>
												<div class="form-group">
													<div class="form-item">
														<div class="chk-box v3">
															<input type="checkbox" name="order_type" id="recipient" onChange="setUserinfoForm();"> 
															<label class="checkbox" for="recipient"></label> 
															<label for="recipient">주문자와 동일</label>
														</div>
													</div>
												</div>
											</dd>
										</dl>

										<dl>
											<dl>
												<dt>이름</dt>
												<dd>
													<div class="form-item">
														<input type="text" id="customerName" name="customerName"
															value="" maxlength="30">
													</div>
												</dd>
											</dl>
										</dl>

										<dl>
											<dt>연락처</dt>
											<dd>
												<div class="form">
													<div class="form-group2 select-group">
														<div class="form-item">
															<div class="select-type2">
																<select id="tel1" name="tel1" title="휴대전화번호">
																	<option value="010">010</option>
																	<option value="011">011</option>
																	<option value="016">016</option>
																	<option value="017">017</option>
																	<option value="018">018</option>
																	<option value="019">019</option>
																</select>
															</div>
															<input type="text" id="tel2" name="tel2" maxlength="4"
																class="i_text" title="휴대전화번호"> <input
																type="text" id="tel3" name="tel3" maxlength="4"
																class="i_text" title="휴대전화번호">
														</div>
													</div>

													<!-- 선물하기 -->
													<div class="form-item form-gift gift_msg_box gift_area"
														style="display: none;">
														<input type="text" name="sms_msg" id="sms_msg"
															onkeyup="checkByte(this, 50)" value=""
															placeholder="선물메시지입력창">
														<div class="guide-box3">선물메세지는 SMS로 전송됩니다.</div>
													</div>
													<!-- //선물하기 -->
												</div>
											</dd>
										</dl>
										<dl>
											<dt>요청사항</dt>
											<dd>
												<div class="form">
													<div class="form-item">
														<div class="select-type2">
															<select id="more_req_box" name="more_req_box" onChange="directMessage()";>
																<option value="">요청사항을 선택하세요.</option>
																<option value="문 앞에 놓아 주세요.">문 앞에 놓아 주세요.</option>
																<option value="피클은 빼주세요.">피클은 빼주세요.</option>
																<option value="벨은 누르지 말아주세요.">벨은 누르지 말아주세요.</option>
																<option value="direct">직접 입력</option>
															</select>
														</div>
													</div>
													<!-- 직접 입력 -->
													<div id="directTextForm" class="form-item form-text">
														<input style="display: none;" name="more_req"
															id="more_req" type="text"
															placeholder="주문시 요청사항을 입력하세요.">
													</div>
												</div>
											</dd>
										</dl>
									</div>
								</div>
								<!-- //step-wrap -->

								<!-- 주문내역 -->
								<div class="step-wrap">
									<div class="title-wrap">
										<div class="title-type">
											<strong>주문내역</strong>
										</div>
									</div>
									<div class="order-step">
										<ul>
											<li>
												<div class="menu">
													<!-- 피자 명  -->
													<strong class="goods_name"></strong>
													<!-- //피자 명  -->
												</div>
												<div class="topping">
													<span style="display: none;" id="goods_name_brief"></span>

													<div class="item">
														<c:forEach var="goods" items="${quickOrderGoodsList }" varStatus="status">
															<span id="goodsNameQty${status.index }"></span>
												/&nbsp;<span id="goodsTotalPrice${status.index }"></span>원
												
															<!-- 토핑 -->
															<ul class="addition" id="topping${status.index }">
															</ul>
															<!-- //토핑 -->
														</c:forEach>
													</div>
												</div> <!-- 할인적용 -->
												<div class="step-wrap" id="dc_info">
													<div class="title-wrap">
														<h3 class="title-type">
															<strong>할인 적용</strong>
														</h3>
													</div>
													<div class="guide-box3">할인쿠폰을 선택해주세요.</div>
													
													<div class="discount-step">
														<ul>
															<select id="couponList" style="width:30%;" onChange="setDiscountRate();">
															</select>
														</ul>
													</div>
													<!-- //discount-step -->
													<!-- 도착 예정 시간 -->
													<div class="step-wrap" id="time_info">

														<div class="title-wrap">
															<div class="title-type">
																<strong>도착 예정시간</strong>
															</div>
														</div>
														<div class="time-step">
															<div class="tab-type2 js_tab" id="time_info_gubun_btn">

																<ul class="col-free">
																	<li class="active">
																		<a onclick="changeReserveGubun(1);" style="cursor:pointer;">바로주문</a>
																	</li>
																	<li>
																		<a onclick="changeReserveGubun(2);" style="cursor:pointer;">오늘예약</a>
																	</li>
																	<li>
																		<a onclick="changeReserveGubun(3);" style="cursor:pointer;">내일예약</a>
																	</li>
																</ul>
															</div>
															<!-- 바로주문 -->
															<div id="orderTime1" class="tab-content active" style="">
																<div class="time-info">
																	<p class="text" id="orderNow"><span id="deliverHour">0</span>시 <span id="deliverMinutes">0</span>분 도착 예정입니다.</p>
																
																</div>
															</div>
															<!-- // 바로주문 -->
															<!-- 오늘예약 -->
															<div id="orderTime2" class="tab-content" style="display: block;">
			
																<div class="time-select">
																	<div class="select-box">
																		<p><span id="todayYear">0</span>년 <span id="todayMonth">0</span>월 <span id="todayDay">0</span>일</p>
																		<div class="select-type2">
																			<select class="select2" id="reserve_time11" name="reserve_time11" onChange="setTodayReserveMinutes();">
																			</select>
																		</div>
																		<div class="select-type2">
																			<select class="select2" id="reserve_time12" name="reserve_time12" onChange="setDeliveryTime(2);">
																			</select>
																		</div>
																	</div>
																	<p class="text2">* 매장 상황에 따라 배달시간이 상이할 수 있습니다.</p>
																</div>
															
																<p class="text"></p>
															</div>
															<!-- //오늘예약 -->

															<!-- 내일예약 -->
															<div id="orderTime3" class="tab-content" style="display: block;">
																<div class="time-select">
																	<div class="select-box">
																		<p><span id="t_year">0</span>년 <span id="t_month">0</span>월 <span id="t_day">0</span>일</p>
																		<div class="select-type2">
																			<select class="select2" id="reserve_time21" name="reserve_time21" onChange="setTomorrowReserveTime();">
																			</select>
																		</div>
																		<div class="select-type2">
																			<select class="select2" id="reserve_time22" name="reserve_time22" onChange="setDeliveryTime(3);">
																			</select>
																		</div>
																	</div>
																	<p class="text2">* 매장 상황에 따라 배달시간이 상이할 수 있습니다.</p>
																</div>
															</div>
															<!-- //내일예약 -->
														</div>
													</div>
													<div class="step-wrap" id="pay_info">
														
														<div class="title-wrap">
															<h3 class="title-type">
																<strong>결제수단 선택</strong>
															</h3>
														</div>

														<div class="pay-step">
															<div class="pay-info">
																<div class="title-type2">미리결제</div>
																<div class="form">
																	<div class="form-item">
																		<div class="chk-box" id="pay_method_1">
																			<input type="radio" id="pay1" name="pay" value="카드결제">
																			<label class="checkbox" for="pay1"></label>
																			<label for="pay1">카드결제</label>
																		</div>
																	</div>
																	
																</div>
																<div class="list-text v2 pay_method_guide">
																	
																</div>
															</div>
															<div class="pay-info pay-info2 after_pay">
																<div class="title-type2">
																	현장결제 <br>
																</div>
																<div class="form">
																	<div class="form-item">
																		<div class="chk-box" id="pay_method_2">
																			<input type="radio" id="pay2" name="pay" value="현장카드결제"> <label
																				class="checkbox" for="pay2"></label> <label
																				for="pay2">현장카드결제</label>
																		</div>
																		<div class="chk-box" id="pay_method_3">
																			<input type="radio" id="pay3" name="pay" value="현장현금결제">
																			<label class="checkbox" for="pay3"></label> <label
																				for="pay3">현장현금결제</label>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="step-wrap" id="final_pay_info">
														<div class="step-wrap">
															<div class="title-wrap">
																<h3 class="title-type">
																	<strong>최종결제금액</strong>
																</h3>
															</div>

															<div class="total-step">
																<ul>
																	<li>
																		<p class="tit">총 상품 금액</p>
																		<p class="price">
																			<em id="totalPrice">0</em>원
																		</p>
																	</li>
																	<li class="discount">
																		<p class="tit">총 할인 금액</p>
																		<p class="price">
																			<em id="totalDiscount">0</em>원
																		</p>
																	</li>
																	<li class="total">
																		<p class="tit">총 결제 금액</p>
																		<p class="price">
																			<em id="totalPayment">0</em>원
																		</p>
																	</li>
																</ul>
															</div>
														</div>
													</div>


													<!-- 주문하기 버튼 -->
													<div class="btn-wrap">
														<a href="javascript:;" id="doOrder" onclick="doOrder()"
															class="btn-type">결제하기</a>
													</div>
													<!-- //주문하기 버튼 -->
							</article>
						</div>
						<!-- //inner-box -->
					</div>
					<!-- //sub-type order -->
				</section>
			</form>

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
					<a href="javascript:;" onclick="setBasketCnt();"
						class="btn_ico btn_close">닫기</a>
				</div>
			</div>
			<!-- //장바구니(e) -->

			<footer id="footer">
				<div class="footer-area">
					<div class="inner-box">
						<div class="footer-order">
							<i class="ico-logo2"></i> <span class="tel">1577-3082</span>
						</div>

						<ul class="footer-contact">
							<li><a href="law.do">이용약관</a></li>
							<li class="on"><a href="privacy.do">개인정보처리방침</a></li>
							<li><a href="faqMain.do">고객센터</a></li>
							<li><a href="groupOrder.do">단체주문</a></li>
						</ul>

						<div class="footer-info">
							<p>03138 서울특별시 중구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현,
								정민균, 정민식, 김진혁</p>
							<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
							<p>문의 : admin@daminos.co.kr</p>
							<p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

							<p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 피자(PC, 모바일, 앱)의 일체의
								정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
						</div>

						<div class="footer-cont">

							<dl class="app-box">
								<dt>DOWNLOAD APP</dt>
								<dd>
									<a
										href="https://itunes.apple.com/kr/app/dominopija-domino-pizza-korea/id371008429?mt=8"><i
										class="ico-ios"></i>ios 앱다운로드</a> <a
										href="https://play.google.com/store/apps/details?id=kr.co.d2.dominos"><i
										class="ico-android">안드로이드 앱다운로드</i></a>
								</dd>
							</dl>

							<div class="sns-box">
								<ul>
									<li><a href="http://blog.naver.com/dominostory"><i
											class="ico-blog"></i>블로그</a></li>
									<li><a href="https://www.instagram.com/dominostory/"><i
											class="ico-insta"></i>인스타그램</a></li>
									<li><a href="https://www.facebook.com/dominostory/"><i
											class="ico-facebook"></i>페이스북</a></li>
									<li><a href="https://www.youtube.com/user/dominostory3082"><i
											class="ico-youtube"></i>유튜브</a></li>
									<li><a href="https://twitter.com/dominostory"><i
											class="ico-twitter"></i>트위터 </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="awards-area">
					<div class="inner-box">
						<ul>
							<li><img
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards.png"
								alt="">
								<p>
									식품안전<br>경영시스템 인증
								</p></li>
							<li><img
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards2.png"
								alt="">
								<p>
									지식경제부<br>우수디자인 선정
								</p></li>
							<li><img
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards3.png"
								alt="">
								<p>
									고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
								</p></li>
							<li><img
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards4.png"
								alt="">
								<p>
									2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
								</p></li>
							<li><img
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards5.png"
								alt="">
								<p>
									2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
								</p></li>
							<li><img
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards6.png"
								alt="">
								<p>
									대학생 1000명이 선택한<br>2019 올해의 핫 브랜드 캠퍼스 잡앤조이 선정
								</p></li>
						</ul>
					</div>
				</div>
			</footer>
			<!-- //footer -->
		</div>
		<!-- //wrap -->
</html>
