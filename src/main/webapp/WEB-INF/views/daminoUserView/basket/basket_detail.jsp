<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>

<link rel="shortcut icon"
	href="https://cdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />

<script type="text/javascript"
	src="https://cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="https://cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/card_add.css' />">


<script src="https://cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>
<script src="https://cdn.dominos.co.kr/domino/pc/js/ui.js"></script>

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

<!-- 다음 주소 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
	window.onload = function() {
		//토핑 가격
		var toppingP = $('#totalT').val();
		//피자 가격
		var pizzaP = $('#totalP').val();
		console.log("toppingP : " + toppingP);
		console.log("pizzaP : " + pizzaP);
		
		var toppingPrice = 0;
		
		var t_price = $('#totalT').val();
		
		console.log("t_priceArr : " + t_priceArr);
		
		//토핑 합계 계산
		var toppingPrice = 0;
		if(t_price != null){
			var t_priceArr = t_price.split(",");
			for (var i = 0; i < t_priceArr.length; i++){
				toppingPrice += parseInt(t_priceArr[i], 10);
			 }
			var totalPizzaPrice = toppingPrice + Number(pizzaP);
			 console.log("totalPizzaPrice : " + totalPizzaPrice);
			$('#pizza-total').html(totalPizzaPrice);
			var a = $('#pizza-total').text();
			//천단위 구분 - 정규표현식
		    a = a.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		  	 $('#pizza-total').html( a );
		}
		
	
		/* for(i=0; i<t_priceArr.length; i++){
			toppingPrice += Number(t_priceArr[i]);
			if (i != t_priceArr.length - 1) {
				toppingPrice += "+";
			}
			//toppingPrice += Number(t_priceArr[i]);
			console.log("toppingPrice : " + toppingPrice);
		} */
		
	var pizzaImage = "";
	if(t_price != null){
		var t_name = $('#toppingName').val();
		var t_nameArr = t_name.split(",");
		
		var t_priceArr = toppingP.split(",");
		
		var t_count = $('#toppingCount').val();
		var t_countArr = t_count.split(","); 
		
	    var index = $('#toppingIdx').val();
		 for(i=0; i<t_nameArr.length; i++ ){
			$('#topping').append('<li>' + t_nameArr[i] + "(" + t_priceArr[i] 
			 + "원)"+ "x" + t_countArr[i]
			 + '<a href="javascript:toppingDelete(' + t_nameArr[i]+ ',' + t_countArr[i] + ',' + index
				+ ');" class="close"><span class="hidden">삭제</span></a></li>');
		} 
	}
		
		
		/* id="delBtn' + goodsNextRowSeq + '" */
		
		
		 /* var index = $('#toppingIdx').val();
		 var t_name = $('#t_name').val();
		 console.log("t_name : " + t_name);
		 for(i=0; i<t_nameArr.length; i++ ){
			$('#topping').append('<li id="delBtn">' + t_nameArr[i] +"(" + t_priceArr[i] 
			 + "원)"+ "x" + t_countArr[i]
			 + '<a href="javascript:toppingDelete(' + index
				+ ');" class="close"><span class="hidden">삭제</span></a></li>');
		} */
		//console.log("토핑 인덱스 : " + $('#toppingIdx').val());
		   
		var p_name = $('#p_name').val();
		
		//총 합계 금액 구하기
		var etcPrice = $('#etcPrice').val();
		etcPrice *= 1;
		var sidePrice = $('#sidePrice').val();
		sidePrice *= 1;
		
		
		 if(totalPizzaPrice>0 && etcPrice>0 && sidePrice>0){
			$('#total-price').text(Number(totalPizzaPrice + etcPrice + sidePrice));	 
			var total = $('#total-price').text();
			total = total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$('#total-price').html(total);
		}else if(totalPizzaPrice>0 && etcPrice>0){
			$('#total-price').text(Number(totalPizzaPrice + etcPrice));	 
			var total = $('#total-price').text();
			total = total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$('#total-price').html(total);
		}else if(totalPizzaPrice>0 && sidePrice>0){
			$('#total-price').text(Number(totalPizzaPrice + sidePrice));	 
			var total = $('#total-price').text();
			total = total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$('#total-price').html(total);
		}else if(sidePrice>0){
			$('#total-price').text(Number(sidePrice));	 
			var total = $('#total-price').text();
			total = total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$('#total-price').html(total);
		}else if(etcPrice>0){
			$('#total-price').text(Number(etcPrice));	 
			var total = $('#total-price').text();
			total = total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$('#total-price').html(total);
		}else if(totalPizzaPrice>0){
			$('#total-price').text(Number(totalPizzaPrice));	 
			var total = $('#total-price').text();
			total = total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$('#total-price').html(total);
		} 
		
		
		console.log("total : " + total);
		//$('#total-price').html(total);
		
  	 
		//console.log("b : " + b);
		/* var test = "";
		for (var i = 0; i < t_name.length; i++) {
			test += t_name[i];
			if (i != t_name.length - 1) {
				test += ",";
			}
		} 
		/*
		
		$('.subject').text(goodsName);
		$('.option').text(goodsDough + "/" + selectSize);
		$('.price').text(selectPrice);
		$('#pizza-total').html("<em>" + selectPrice + "</em>" + "원");
	
		  $.ajax({ 
			url : 'getPizzaName.do',
			contentType : "application/json; charset=UTF-8;",
			type : 'post',
			traditional : true,
			data : JSON.stringify({
				p_name : goodsName
			// 컨트롤러로 보낼 제품 카테고리 명
			}),
			async : false,
			success : function(data) {
				if (data != null) {
						console.log(data);
					
						pizzaImage = data;
						$('#pizzaImage').append(pizzaImage);
				}

				else if (typeof callbackFunc === 'function') {
					callbackFunc();
				} else {
					alert("다시 시도해주세요");
				}
			},
			error : function() {
				alert('처리도중 오류가 발생했습니다.');
			}
		);}  */
		
		 /* if (t_name != null) {
			$.ajax({
				url : 'getToppingNames.do',
				contentType : "application/json; charset=UTF-8;",
				type : 'post',
				traditional : true,
				data : JSON.stringify({
					t_name : test
				// 컨트롤러로 보낼 제품 카테고리 명
				}),
				success : function(data) {
					if (data != null) {
						//t_image_list 가 console에 찍히는가
						//alert("${toppingList}");
						console.log(data);
						
						 for (i = 0; i < data.length; i++) {
							var toppingList = data[i].t_name;
							$('#topping').append("<div>" + data[i].t_name + "("
							+ data[i].t_price + "원)"+ "</div>");
							console.log("toppingList : " + toppingList);
								
					}

						
					}

					else if (typeof callbackFunc === 'function') {
						callbackFunc();
					} else {
						alert("다시 시도해주세요");
					}
				},
				error : function() {
					alert('처리도중 오류가 발생했습니다.');
				}
			});
		} */
} 
function toppingDelete(toppingName, toppingCount, idx){
		
		var userid = $('#userid').val();
		/* var toppingName = $(this).toppingName;
		var toppingCount = $(this).toppingCount;
		var idx = $(this).idx; */
		
		$.ajax({
			url : 'deleteTopping.do',
			contentType : "application/json; charset=UTF-8;",
			type: 'post', 
			data : JSON.stringify({
				userid : userid,
				toppingName : toppingName,
				toppingCount : toppingCount,
				seq : idx
			}),
			async : false, 
			success: function(data) {
				alert("삭제 성공");
			 },
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
		})
			
} 

function pizzaDelete(idx){
	
	var con_test = confirm("해당 정보를 삭제하시겠습니까?");
	if(con_test == true){
		var userid = $('#userid').val();
		/* var toppingName = $(this).toppingName;
		var toppingCount = $(this).toppingCount;
		var idx = $(this).idx; */
		var goodsName = $('#pizzaName').val();
		alert("goodsName : " + goodsName);
		$.ajax({
			url : 'pizzaDelete.do',
			contentType : "application/json; charset=UTF-8;",
			type: 'post', 
			data : JSON.stringify({
				userid : userid,
				goodsName : goodsName,
				toppingCount : toppingCount,
				seq : idx
			}),
			async : false, 
			success: function(data) {
				alert("삭제 성공");
				//var selectRemoveTr = $('#row' + idx).closest('li');
				var selectRemoveTr = $('#row' + idx).style.visibility = "hidden";
				
				var parent = document.getElementById("cart-list");
			    var delRow = document.getElementById("row" + idx);
			 
			    parent.removeChild(delRow);
				//document.getElementById("row" + idx).style.visibility = "hidden";
			 },
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
		})
	}
	else if(con_test == false){
	  alert("취소되었습니다");
	}
} 
function sideDelete(idx){
	
	var con_test = confirm("해당 정보를 삭제하시겠습니까?");
	if(con_test == true){
		var userid = $('#userid').val();
		/* var toppingName = $(this).toppingName;
		var toppingCount = $(this).toppingCount;
		var idx = $(this).idx; */
		var goodsName = $('#sideName' + idx).val();
		
		alert("goodsName : " + goodsName);
		$.ajax({
			url : 'sideDelete.do',
			contentType : "application/json; charset=UTF-8;",
			type: 'post', 
			data : JSON.stringify({
				userid : userid,
				goodsName : goodsName,
				toppingCount : toppingCount,
				seq : idx
			}),
			async : false, 
			success: function(data) {
				alert("삭제 성공");
				//var selectRemoveTr = $('#row' + idx).closest('li');
				//var selectRemoveTr = $('#row' + idx).style.visibility = "hidden";
				
				//var parent = document.getElementById("cart-list");
			   // var delRow = document.getElementById("row" + idx);
			    //$('#row' + idx).('li').remove();
			    //var selectRemove = $(this).closest('li');
			   // var selectRemovePriceHTML = selectRemoveTr.find('li').eq(idx).html();
			    
			    document.getElementById("row" + idx).innerHTML = '';
			   // $('#row' + idx).empty();
			   // selectRemovePriceHTML.empty();
			    
			  //  parent.removeChild(delRow);
				//document.getElementById("row" + idx).style.visibility = "hidden";
			 },
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
		})
	}
	else if(con_test == false){
	  alert("취소되었습니다");
	}
} 
/* function toppingDelete(index){
	
	var userid = $('#userid').val();
	var idx = $(this).idx;
	
	$.ajax({
		url : 'deleteTopping.do',
		contentType : "application/json; charset=UTF-8;",
		type: 'post', 
		data : JSON.stringify({
			userid : userid,
			toppingName : toppingName,
			toppingCount : toppingCount,
			seq : idx
		}),
		
		success: function(data) {
			alert("삭제 성공");
		 },
		error: function() {
			alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
		}
	})
		
}	 */
	var addressSeq = 0; // 주소 테이블 seq 값

	function addAddress() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 시,구,동까지의 주소 정보를 hidden에 저장
						$('#addrVal').val(fullRoadAddr);
						console.log("주소 : " + $('#addrVal').val());

						// 구 정보를 hidden에 저장
						var addrArr = fullRoadAddr.split(" "); // 스페이스바 구분자로 주소를 분리
						$('#guVal').val(addrArr[1]);
						var guName = $('#guVal').val();

						// '구'에 해당하는 매장명 목록을 받아오기
						$
								.ajax({
									url : 'getStoreRegion.do',
									contentType : "application/json; charset=UTF-8;",
									type : 'post',
									data : JSON.stringify({
										guName : guName,
									}),
									async : false,
									success : function(data) {
										if (data == 'success') {
											console.log(data);
											// 상세주소 입력 페이지 열기

											window
													.open(
															"openDetailAddress.do",
															"상세주소 & 배달매장 입력",
															"top=50, left=60, width=450, height=580, directories='no', location='no', menubar='no', resizable='no', status='yes', toolbar='no'");
										} else {
											alert('배달 불가 주소입니다.');
											return;
										}
									},
									error : function() {
										alert('처리도중 오류가 발생했습니다.');
									}

								})
					}
				}).open();
	}

	function receiveDetailAddr(addr, selectStore) {
		$('#detailAddrVal').val(addr);
		$('#selectStore').val(selectStore);
	}

	function addAddr() {
		++addressSeq;

		alert(addressSeq);
		//var deliveryAddrList = document.getElementById("addr_list_o");
		var address = $('#addrVal').val() + ' ' + $('#detailAddrVal').val(); // 배달 주소
		$('#address').text(address);

		var storeName = $('#selectStore').val(); // 배달 매장명
		$('#store').html("<span>" + storeName + "</span>");

		//var userid = $('#userid').val(); //컨트롤러에서 세션 아이디값을 추가해줘야함!

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

					<div class="location active">
						<a href="javascript:void(0);" id="myloc" onclick="gpsLsm(gps_yn);"></a>
					</div>

					<div class="util-nav">
						<a href="login.do">로그인</a> <a href="login.do">회원가입</a>
						<a href="javascript:goCart();" class="btn-cart">
							<i class="ico-cart"></i>
							<span class="hidden ">장바구니</span>
								<strong class="cart_count cart-count"></strong> <!-- count -->
						</a>
					</div>
				</div>
			</div>

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
		</header>
		<!-- //header -->
		<style>
.gate-popup {
	width: 360px;
	height: auto;
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -60%);
	background: #fff
}

.gate-popup h1 img {
	width: 102px;
}

.gate-popup .title {
	margin-top: 28px;
	font-size: 24px;
	font-weight: 600;
}

.gate-popup .sub-txt {
	margin-top: 16px;
	line-height: 21px;
	font-size: 15px;
	color: #888888;
}

.gate-popup .info {
	margin-top: 30px;
	font-size: 17px;
	font-weight: 600;
	line-height: 27px;
}

.gate-popup .info .focus {
	color: #ff143c;
}

.gate-popup .progress {
	margin: 14px auto 15px;
	width: 220px;
	height: 8px;
	font-size: 0;
	background: #eee;
	border-radius: 7.5px;
	position: relative;
}

.gate-popup .progress .bar {
	display: block;
	position: absolute;
	left: 0;
	top: 0;
	height: 100%;
	background: #238ece;
	border-radius: 7.5px;
}

.gate-popup .notice {
	font-size: 14px;
	color: #888888;
}

.gate-popup .notice .ico {
	width: 14px;
	height: 14px;
	display: inline-block;
	border: 1px solid #888;
	border-radius: 100%;
	vertical-align: middle;
	margin-right: 4px;
	margin-bottom: 2px;
	position: relative
}

.gate-popup .notice .ico:before {
	content: '';
	display: inline-block;
	position: absolute;
	top: 3px;
	left: 5px;
	width: 1px;
	height: 1px;
	background: #888;
}

.gate-popup .notice .ico:after {
	display: inline-block;
	content: '';
	position: absolute;
	top: 6px;
	left: 5px;
	width: 1px;
	height: 4px;
	background: #888;
}

.gate-popup .btn-close {
	position: absolute;
	top: -20px;
	right: 20px;
	display: block;
	width: 27px;
	height: 27px;
	font-size: 0;
}

.gate-popup .btn-close:before, .gate-popup .btn-close:after {
	content: "";
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%) rotate(45deg);
	transform: translate(-50%, -50%) rotate(45deg);
	background: #111;
}

.gate-popup .btn-close:before {
	width: 2px;
	height: 27px;
}

.gate-popup .btn-close:after {
	width: 27px;
	height: 2px;
}
</style>
		<div id="container">
			<section id="content">
				<div class="sub-type cart">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">장바구니</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><strong>장바구니</strong></li>
								</ol>
							</div>
						</div>
						<article class="cart-area pay">
							<!-- 주소 -->
							<div class="step-wrap">
								<div class="title-wrap">
									<h3 class="title-type">
										<strong>배달주문</strong>
									</h3>
								</div>
								<div class="deli-info">
									<input type="hidden" id="addrVal" value="" /> <input
										type="hidden" id="detailAddrVal" value="" /> <input
										type="hidden" id="guVal" value="" /> <input type="hidden"
										id="selectStore" value="" />
									<div class="address" id="address">배송지 주소</div>
									<div class="store" id="store">
										<span>월계점</span>&nbsp;02-915-3082
									</div>
									<div class="btn-wrap">
										<a href="javascript:addAddress();" class="btn-type4-brd">수정</a>
									</div>
								</div>
							</div>
							<!-- //주소 -->
							<!-- 주문 내역 -->
							<div class="step-wrap">
								<div class="title-wrap">
									<h3 class="title-type">
										<strong>주문내역</strong>
									</h3>
									<span class="summary side"> <a
										href="javascript:allDelete();">전체 삭제</a>
									</span>
								</div>
								<div class="cart-list" id="cart-list">
									<ul>
								
										<li class="category">
											<div>상품정보</div>
											<div>추가토핑</div>
											<div>수량</div>
											<div>금액</div>
											<div></div>
										</li>
										
								<c:forEach var="pizza" items="${basketList}" varStatus="status">
									<div class="hidden-info">
									<input type="hidden" id="toppingName" value="${pizza.toppingName}"/>
									<input type="hidden" id="toppingCount" value="${pizza.toppingCount}"/>
									<input type="hidden" id="toppingPrice" value="${pizza.toppingPrice}"/>	
									<input type="hidden" id="pizzaName" value="${pizza.pizzaName}"/>
									<input type="hidden" id="userid" value="${userid}"/>	
									<input type="hidden" id="toppingIdx" value="row${status.index}"/>							
									</div>
										<c:if test="${pizza.pizzaName != null }">
										<li class="row" id="row${status.index}">
										
											<div class="sold-out-btn" id="sold-out-btn0"
												style="display: none">
												<p>Sold Out</p>
												<a href="javascript:pizzaDelete(${status.index});"
													class="btn-type4-brd3">삭제</a>
											</div>									
											<div class="prd-info">
												<div class="prd-img">
												  <img src="<c:url value= '/resources/images/admin/goods/${pizza.pizzaImage}' />"/>
												</div>
												<div class="prd-cont">
													<div class="subject">${pizza.pizzaName}</div>
													<div class="option">${pizza.pizzaDough}/${pizza.pizzaSize}</div>
													<div class="price"><fmt:formatNumber value="${pizza.pizzaPrice}" pattern="#,###"/>원</div>
												</div>
											</div>
										
											<div class="prd-option" style="width=300">
												<ul>
													<li id="topping">
													 </li>

												</ul>

											</div>
											<div class="prd-quantity">
												<div class="quantity-box v2">
													<a href="javascript:void(0);"
														onclick="changeGoodsCnt('minus',0,'RPZ190GL', '1', 1, -1);"
														class="minus"><button class="btn-minus"></button></a> <input
														type="number" class="qty0" id="qty0" value="${pizza.pizzaCount}" readonly />
													<a href="javascript:void(0);"
														onclick="changeGoodsCnt('plus',0,'RPZ190GL', '1', 1, 1);"
														class="plus"><button class="btn-plus"></button></a>
												</div>
											</div>
											<input type="hidden" id="totalP" value="${pizza.pizzaPrice}">
											<input type="hidden" id="totalT" value="${pizza.toppingPrice}">
											<div class="prd-total" >
												<fmt:formatNumber value="" pattern="#,###"/><em id="pizza-total"></em>원
											</div>
											<div class="prd-delete">
												<a href="javascript:pizzaDelete(${status.index});" id="delPizza"
													class="btn-close"> <span class="hidden">삭제</span>
												</a>
											</div>
										</li>
										</c:if>
										<!-- end 피자 -->
										<c:if test="${pizza.sideName != null }">
										<li class="row" id="row${status.index+1}">
											<div class="sold-out-btn" id="sold-out-btn0"
												style="display: none">
												<p>Sold Out</p>
												<a
													href="javascript:changeGoodsCnt('delete',0,'RPZ190GL', '1', 1, 0);"
													class="btn-type4-brd3">삭제</a>
											</div>
		
										
											<div class="prd-info">
												<div class="prd-img">
												 <%-- <img id="pizzaI" src="<c:url value= '/resources/images/admin/goods/${goodsDetail.p_image}' />"/> --%>
												 <input type="hidden" id="pizzaImage" value="" />
												</div>
												<div class="prd-cont">
													<div class="subject" >${pizza.sideName}</div>
													<input class="setName" id="sideName${status.index}" type="hidden" value="${pizza.sideName}">
													<div class="option"></div>
													<div class="price"><fmt:formatNumber value="${pizza.sidePrice}" pattern="#,###" />원</div>
												</div>
											</div>
											<div class="prd-option">
											</div>
											<div class="prd-quantity">
												<div class="quantity-box v2">
													<a href="javascript:void(0);"
														onclick="changeGoodsCnt('minus',0,'RPZ190GL', '1', 1, -1);"
														class="minus"><button class="btn-minus"></button></a> <input
														type="number" class="qty0" id="qty0" value="${pizza.sideCount}" readonly />
													<a href="javascript:void(0);"
														onclick="changeGoodsCnt('plus',0,'RPZ190GL', '1', 1, 1);"
														class="plus"><button class="btn-plus"></button></a>
												</div>
											</div>
											<div class="prd-total">
												<em id="side-total"><fmt:formatNumber value="${pizza.sidePrice}" pattern="#,###" /></em>원
												<input type="hidden" id="sidePrice" value="${pizza.sidePrice}"/>
											</div>
											<div class="prd-delete">
												<a
													href="javascript:sideDelete(${status.index});"
													class="btn-close"> <span class="hidden">삭제</span>
												</a>
											</div>
										</li>
										</c:if>
										<c:if test="${pizza.etcName != null }">
										<li class="row" id="sold-out0">
											<div class="sold-out-btn" id="sold-out-btn0"
												style="display: none">
												<p>Sold Out</p>
												<a
													href="javascript:changeGoodsCnt('delete',0,'RPZ190GL', '1', 1, 0);"
													class="btn-type4-brd3">삭제</a>
											</div>
		
										
											<div class="prd-info">
												<div class="prd-img">
												 <%-- <img id="pizzaI" src="<c:url value= '/resources/images/admin/goods/${goodsDetail.p_image}' />"/> --%>
												 <input type="hidden" id="pizzaImage" value="" />
												</div>
												<div class="prd-cont">
													<div class="subject">${pizza.etcName}</div>
													<div class="option"></div>
													<div class="price"><fmt:formatNumber value="${pizza.etcPrice}" pattern="#,###" />원</div>
												</div>
											</div>
											<div class="prd-option">
											</div>
											<div class="prd-quantity">
												<div class="quantity-box v2">
													<a href="javascript:void(0);"
														onclick="changeGoodsCnt('minus',0,'RPZ190GL', '1', 1, -1);"
														class="minus"><button class="btn-minus"></button></a> <input
														type="number" class="qty0" id="qty0" value="${pizza.etcCount}" readonly />
													<a href="javascript:void(0);"
														onclick="changeGoodsCnt('plus',0,'RPZ190GL', '1', 1, 1);"
														class="plus"><button class="btn-plus"></button></a>
												</div>
											</div>
											<div class="prd-total">
												<em id="etc-total"><fmt:formatNumber value="${pizza.etcPrice}" pattern="#,###" /></em>원
												<input type="hidden" id="etcPrice" value="${pizza.etcPrice}"/>
											</div>
											<div class="prd-delete">
												<a href="javascript:etcDelete(${status.index});"
													class="btn-close"> <span class="hidden">삭제</span>
												</a>
											</div>
										</li>
										</c:if>
											<c:if test="${pizza.etcName eq null && pizza.sideName eq null && pizza.pizzaName eq null}">
												<article class="cart-area pay">
													<div class="step-wrap"></div>
													<div class="no-data">
														장바구니가 비어 있습니다.
														<p class="text-type">다미노피자의 맛있는 메뉴를 마음껏 골라 담으세요</p>
														<!-- 메뉴 추가 버튼 -->
														<div class="btn-wrap">
															<a href="goodslist.do" class="btn-type-brd"><i
																class="ico-plus"></i>메뉴 추가하기</a>
														</div>
														<!-- //메뉴 추가 버튼 -->
													</div>
												</article>
											</c:if>
										</c:forEach>

									</ul>
								</div>
							</div>

							<!-- //주문 내역 -->
							<!-- 총 주문 금액 -->
							<div class="step-wrap total-wrap">
								<div class="text-type">
									* 할인 적용은 다음 단계에서 가능합니다.<br /> * 피클&소스 기본 제공 안내<br /> - L : 피클
									L (120g) 1개 / 핫소스 2개 / 갈릭디핑소스 15g 2개, M : 피클 M (75g) 1개 / 핫소스
									1개 / 갈릭디핑소스 15g 1개<br /> - 씬 도우, 더블크러스트 이베리코, 치즈케이크 블랙타이거 피자는
									갈릭디핑소스 미 제공<br /> - 메뉴 > 음료&기타 추가 구매 가능
								</div>
								<div class="total-price2 side">
									<p>
										총 금액 <em id="total-price"></em>원
									</p>
								</div>
							</div>
							<!-- //총 주문 금액 -->
							<!-- 주문하기 버튼 -->

							<div class="btn-wrap">
								<!-- <a href="goodslist.do" class="btn-type-brd"> -->
								<a href="getToppingNames.do" class="btn-type-brd"><i
									class="ico-plus"></i>메뉴 추가하기</a> <a
									href="javascript:myCouponDown('O', '36900');"
									class="btn-type v3">주문하기</a>
							</div>
							<!-- //주문하기 버튼 -->
						</article>
					</div>
				</div>
			</section>
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
						<p>03138 서울특별시 종구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현, 정민균,
							정민식, 김진혁</p>
						<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
						<p>문의 : admin@daminos.co.kr</p>
						<p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

						<p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 사이트(PC, 모바일, 앱)의 일체의
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
							src="<c:url value='/resources/images/user/list_awards.png' />"
							alt="">
							<p>
								식품안전<br>경영시스템 인증
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards2.png' />"
							alt="">
							<p>
								지식경제부<br>우수디자인 선정
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards3.png' />"
							alt="">
							<p>
								고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards4.png' />"
							alt="">
							<p>
								2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards5.png' />"
							alt="">
							<p>
								2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards6.png' />"
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
</body>
</html>
