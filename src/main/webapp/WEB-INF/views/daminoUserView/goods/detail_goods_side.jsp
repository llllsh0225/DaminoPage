<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${goodsDetailSide.s_name} - 사이드 디시 - 다미노피자</title>

<script type="text/javascript"
	src="<c:url value='/resources/js/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<script type="text/javascript" src="/resources/js/selectbox.js"></script>

<script type="text/javascript"
	src="/resources/js/d2CommonUtil.js?ver=1.5"></script>
<script type="text/javascript" src="/resources/js/Cookie.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">


<script type="text/javascript"
	src="<c:url value='/resources/js/user/ui.js'/>"></script>

<script>
$(document).ready(function(){
	$('.btn-close').click(function(){ // 제품 상세보기 pop-layer 숨기기
		$('.pop-layer').hide();
	});
});

window.onload = function() {
$("input[type='radio']").change(function () {
	
	$('input:radio[name=' + $(this).attr('name') + ']').parent().removeClass('selected');
	$(this).parent().addClass('selected');
	
	});
	
	sum();
} 

</script>
<script>
function expireSession(){
	  alert("세션이 만료되었습니다");
	  
	  var userid = $('#userid').val(); // 유저 아이디
	  
	  $.ajax({
		  url:'allDelete.do',
		  contentType : "application/json; charset=UTF-8;",
		  type: 'post',
		  data : JSON.stringify({
			  userid : userid
		  }),
		  async : false,
		  success : function(data){
			  if(data == 'success'){
				  alert("성공");
				  location.href = "login.do";
			  }
		  },
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
	  })
	  
	  
	}
	setTimeout('expireSession()',<%= request.getSession().getMaxInactiveInterval() * 1000 %>);
</script>
<script>
//--------음료-----------------------
//하단 선택목록에 추가할 내용을 담을 변수 
var etcStr = "";
//음료 합계정보 내용을 담을 변수
var totalEtcSum = 0; 
//음료 총 개수
var etcTotalAmount = 0;
//음료 가격
var etcPrice = 0;
//음료 카운트
var etcCnt = 0;
//음료 이름
var sideName = ""; 

//음료 정보 배열에 저장하여 반영
var etcCntArr = [];
var etcPriceArr = [];
var etcNameArr = [];
var etcSumArr = []; //음료 총 합계 정보


function sum(){
	var etcSum = 0;
	
	totalEtcSum = 0;
	totalSideSum = 0;
	
	 var price = ($(':radio[name="size"]:checked').val());
	
	 
	if(typeof price == "undefined"){
		price = $('#sideNomalSetNum').val();
	} 	
	
	//음료 합계 가격 배열 정보를 Number로 변환하여 전역변수 totalEtcSum에 저장
	for(var i=0; i<etcSumArr.length; i++){											
		totalEtcSum += Number(etcSumArr[i]) * Number(etcCntArr[i]) ;
	}
	
	 //사이드디시 합계 가격 배열 정보를 Number로 변환하여 전역변수 totalSideSum에 저장
	for(var i=0; i<sideSumArr.length; i++){											
		totalSideSum += Number(sideSumArr[i]) * Number(sideCntArr[i]);
	}
	
	var sideAmt = Number(price) * Number($("#sideNomalSetNum").val());
	//$(".total-price_sum").text(Number(totalEtcSum + totalSideSum) + "원");
		
	$(".total-price_sum").text(Number(sideAmt + totalEtcSum) + "원");

	var s_total = $(".total-price_sum").text();
	s_total = s_total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	$(".total-price_sum").html(s_total);

}
function saveBasket(){
	// 세션 정보 확인
	var userid = $('#userid').val(); // 유저 아이디
	var gubun = sessionStorage.getItem("gubun"); // 주문 구분 (D=배달, W=포장)
	var address = sessionStorage.getItem("address"); // 배달지 주소
	var storename = sessionStorage.getItem("storename"); // 배달매장명
	var storephone = sessionStorage.getItem("storephone"); // 배달매장 전화번호

	if(userid == ""){
		alert("다미노 회원전용 서비스입니다. 로그인 해주세요.");
		location.href="login.do";
		return false;
	}
	
	sum();
	
	//사이드 정보 String에 넣기
	var sideCounts = "";
	if(sideCntArr != 0){
		for (var i = 0; i < sideCntArr.length; i++) {
			
			if (i != sideCntArr.length-1) {
				sideCntArr[i] += ",";
			}
			sideCounts += sideCntArr[i];
		}
	}
	var sideName = "";
	if(sideNameArr != 0){
		for (var i = 0; i < sideNameArr.length; i++) {
			
			if (i != sideNameArr.length-1) {
				sideNameArr[i] += ",";
			}
			sideName += sideNameArr[i];
		}
	}
	var sidePrices="";
	if(sidePriceArr != 0){
		for (var i = 0; i < sidePriceArr.length; i++) {
			 
			if (i != sidePriceArr.length-1) {
				sidePriceArr[i] += ",";
			}
			sidePrices += sidePriceArr[i];
		}
	}
	//음료 정보 String에 넣기
	var etcCounts = "";
	if(etcCntArr != 0){
		for (var i = 0; i < etcCntArr.length; i++) {
			
			if (i != etcCntArr.length-1) {
				etcCntArr[i] += ",";
			}
			etcCounts += etcCntArr[i];
		}
	}
	var etcName = "";
	if(etcNameArr != 0){
		for (var i = 0; i < etcNameArr.length; i++) {
			if (i != etcNameArr.length-1) {
				etcNameArr[i] += ",";
			}
			etcName += etcNameArr[i];
		}
	}
	var etcPrices="";
	if(etcPriceArr != 0){
		for (var i = 0; i < etcPriceArr.length; i++) {
			
			if (i != etcPriceArr.length-1) {
				etcPriceArr[i] += ",";
			}
			etcPrices += etcPriceArr[i];
		}
	}
	var gubunDB = Number($('#gubunDB').val());
	if(!gubunDB){
		gubunDB = 0;
	}
	
	 $.ajax({
		url : 'side_insert_basket.do',
		contentType : "application/json; charset=UTF-8;",
		type: 'post', 
		data : JSON.stringify({
			userId : userid,
			
			sidePrice : sidePrices,
			sideName : sideName,
			sideCount : sideCounts,
			
			etcPrice : etcPrices, 
			etcName : etcName,
			etcCount : etcCounts,
			
			gubun : gubun,
			gubunDB : gubunDB
		}),
		async : false,
		success: function(data) {
			
				if(data == 'success'){
					alert('success');
					$("#myBasket").submit();
				}else if(data == 'noSession'){
					sessionStorage.setItem("addBasket", "Y"); // 장바구니 추가 여부
					location.href = "getOrderPage.do?gubun=D";
				}
		},
		error: function() {
			alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
		}
	}) 
	
}//END saveBasket()

function totalEtcValue(){
	etcStr = ""; //사이드 정보 초기화
	
	if(!etcNameArr){
		etcNameArr = null;
	}else if(etcCnt <= sideCnt){
		
		for(var i=0; i<etcNameArr.length; i++){
			etcStr += "<p>"+ etcNameArr[i] +  "(" + etcPriceArr[i] + "원)" + "x"
			+ "<span class='etcCnt'>" + etcCntArr[i] + "</span>"
			+ "<input type='hidden' class='etcSum' value='" + Number(etcPriceArr[i])*Number(etcCntArr[i]) + "'></input>" + "</p>";
		}
		
		$(".total-etc").html("<div></div>" + etcStr);
		
	}else if(etcCnt > sideCnt){
		alert("음료는 사이드디시와 1:1 비율로 선택 가능합니다");
		
	}
	sum();
}

//음료 카운트(사이드디시와 1:1 비율)
function plusDrinkEtc(idx){
var drinkSetNum = Number($('#drinkSetNum' + idx).val());
var etcName = $('#etcName' + idx).val();
var etcPrice = Number($('#etcPrice' + idx).val());
var etcNameIdx = etcNameArr.indexOf(etcName);

if(drinkSetNum < Number($('#sideNomalSetNum').val())){
	drinkSetNum = Number($('#drinkSetNum' + idx).val());
	drinkSetNum += 1;
	etcCnt += 1;
	$('#drinkSetNum' + idx).val(drinkSetNum);
}else if(drinkSetNum == Number($('#sideNomalSetNum').val())){
	alert("음료는 사이드디시와 1:1 비율로 선택 가능합니다.");
}
	if(!etcNameArr.includes(etcName)){
		etcNameArr.push(etcName);
		etcCntArr.push(drinkSetNum);
		etcPriceArr.push(etcPrice);
		etcSumArr.push(etcPrice);
	}else{		
		etcCntArr.splice(etcNameIdx, 1, drinkSetNum);
	}
	
	totalEtcValue();
}

function minusDrinkEtc(idx){			
var drinkSetNum = Number($('#drinkSetNum' + idx).val());
var etcName = $('#etcName' + idx).val();
var etcPrice = Number($('#etcPrice' + idx).val());
var etcNameIdx = etcNameArr.indexOf(etcName);

drinkSetNum -= 1;

$('#drinkSetNum' + idx).val(drinkSetNum);
		
if(drinkSetNum == 0){
	$('#drinkSetNum' + idx).val(0);
	drinkSetNum = Number($('#drinkSetNum' + idx).val());
	etcCnt -= 1;
	
	etcCntArr.splice(etcNameIdx, 1);
	etcNameArr.splice(etcNameIdx, 1);
	etcPriceArr.splice(etcNameIdx, 1);
	etcSumArr.splice(etcNameIdx, 1);
	}else if(drinkSetNum < 0){
	$('#drinkSetNum' + idx).val(0);	
}else{	
	drinkSetNum = Number($('#drinkSetNum' + idx).val());
	
	etcCnt -= 1;
	
	etcCntArr.splice(etcNameIdx, 1, drinkSetNum);
	
}
	totalEtcValue();

}

//------------사이드------------------	
//하단 선택목록에 추가할 내용을 담을 변수 
var sideStr = "";
var totalSideSum = 0; //사이드디시 합계 금액을 담을 변수
//사이드디시 총 개수
var sideTotalAmount = 0;
//사이드디시 가격
var sidePrice = 0;
//사이드디시 카운트
var sideCnt = 1;
//사이드디시 이름
var sideName = ""; 

//사이드 정보 배열에 저장하여 반영
var sideCntArr = [];
var sidePriceArr = [];
var sideNameArr = [];
var sideSumArr = []; //이드디시 합계 금액을 담을 배열

function totalSideValue(){
	sideStr = ""; //사이드 정보 초기화
	
	if(!sideNameArr){
		sideNameArr = null;
	}
	
	else if(sideCntArr < 10 && sideCntArr > 1){
		for(var i=0; i<sideNameArr.length; i++){
			sideStr += "<p>"+ sideNameArr[i] +  "(" + sidePriceArr[i] + "원)" + "x"
			+ "<span class='sideCnt'>" + sideCntArr[i] + "</span>"
			+ "<input type='hidden' class='sideSum' value='" + Number(sidePriceArr[i])*Number(sideCntArr[i]) + "'></input>" + "</p>";
		}
		$(".total-side").html("<div></div>" + sideStr);
		
	}
	else{
		var sideName = $(".title.side").text();
		var price = ($(':radio[name="size"]:checked').val());
		
		$(".total-side").text( sideName + "("
					+ Number(price) +"원)" + "x1");
	}
	
	sum();
}


 //사이드디시 일반 카운트

function plusNomalSide(){
	var sideNomalSetNum = Number($('#sideNomalSetNum').val());
	var sideName = $('#sideName').val();
	var sidePrice = Number($('#sidePrice').val());
	var sideNameIdx = sideNameArr.indexOf(sideName);

	sideNomalSetNum += 1;
	sideCnt += 1;
	$('#sideNomalSetNum').val(sideNomalSetNum);
			
	if(sideCnt > 9){
		alert("사이드메뉴는 9개까지 선택 가능합니다.");
		sideCnt = 9;
		$('#sideNomalSetNum').val(sideNomalSetNum-1);
		
	}
	
	if(!sideNameArr.includes(sideName)){
		sideNameArr.push(sideName);
		sideCntArr.push(sideNomalSetNum);
		sidePriceArr.push(sidePrice);
		sideSumArr.push(sidePrice);
	}else{
		sideCntArr.splice(sideNameIdx, 1, sideNomalSetNum);
		
	}
	totalSideValue();
}

function minusNomalSide(){			
	
	var sideNomalSetNum = Number($('#sideNomalSetNum').val());
	var sideName = $('#sideName').val();
	var sidePrice = Number($('#sidePrice').val());
	var sideNameIdx = sideNameArr.indexOf(sideName);
	
	sideNomalSetNum -= 1;
	
	$('#sideNomalSetNum').val(sideNomalSetNum);
			
	if(sideNomalSetNum == 1){
		$('#sideNomalSetNum').val(1);
		sideNomalSetNum = Number($('#sideNomalSetNum').val());
		sideCnt -= 1;
		
		sideCntArr.splice(sideNameIdx, 1);
		sideNameArr.splice(sideNameIdx, 1);
		sidePriceArr.splice(sideNameIdx, 1);
		sideSumArr.splice(sideNameIdx, 1);
	}else if(sideNomalSetNum < 1){
		$('#sideNomalSetNum').val(1);
	}else{
		sideNomalSetNum = Number($('#sideNomalSetNum').val());
		sideCnt -= 1;
		
		sideCntArr.splice(sideNameIdx, 1, sideNomalSetNum);
	}
	totalSideValue();
}
</script>
</head>


<style>
#card_add .pop_wrap {
	position: fixed;
	top: 50%;
	width: 490px;
	margin-left: -245px;
	margin-top: -35px;
}

#card_add .pop_wrap .pop_content p {
	font-size: 18px;
	color: #fff;
	text-align: center
}

.pop_toast {
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 100;
}

.pop_toast.open {
	display: block
}

.pop_toast .bg {
	position: fixed;
	width: 100%;
	height: 100%;
}

.pop_toast .pop_wrap {
	overflow: hidden;
	position: absolute;
	top: 100px;
	left: 50%;
	min-width: 400px;
	min-height: 70px;
	margin-left: -200px;
	padding: 20px;
	background:
		url(https://cdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png)
		repeat 0 0;
	border-radius: 12px;
}

.pop_toast .pop_wrap .btn_close3 {
	position: absolute;
	top: 15px;
	right: 20px;
}

.pop_toast .pop_header {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 66px;
	padding: 0 40px;
	background-color: #eeece9;
	line-height: 66px;
}

.pop_toast .pop_header h2 {
	font-size: 30px;
	font-weight: 500;
	color: #38474f;
}

.pop_toast .pop_content {
	position: relative;
	width: 100%;
	padding: 0;
}

.pop_type2 .pop_wrap .btn_close3 {
	position: absolute;
	top: 15px;
	right: 20px;
}
</style>
<body>


	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="main.do" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>
					<c:choose>
						<c:when test="${guest == 'guest' }">
							<!-- 비회원 로그인시 -->
							<div class="util-nav">
								guest 님&nbsp; <a href="regForm.do">회원가입</a><a href="logout.do">로그아웃</a> 
							</div>
						</c:when>
						<c:when test="${msg != 'login'}">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="regForm.do">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인 -->
							<div class="util-nav">
								${sessionScope.username } 님 &nbsp; <a href="logout.do">로그아웃</a>
								<a href="mylevel.do">나의정보</a> <a href="my_basket.do" class="btn-cart">
									<i class="ico-cart"></i>
								</a>
							</div>
						</c:otherwise>
					</c:choose>
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


		<!-- container -->
		<div id="container">
			<section id="content">
				<input type="hidden" id="userid" name="userid" value="${userid}" />
				<input type="hidden" id="gubunDB" value="${gubunDB}" />
			<form name="myBasket" id="myBasket" method="post" action="my_baskets.do" >
				<div class="sub-type menu">
					<div class="">
						<!-- inner-box -->
						<!-- 1depth 메뉴명 & 네비게이션 -->
						<!-- //1depth 메뉴명 & 네비게이션 -->

						<div class="page-title-wrap inner-box">
							<h2 class="page-title">메뉴</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a href="goodslist.do">메뉴</a></li>
									<li><strong>${goodsDetailSide.s_name}</strong></li>
								</ol>
							</div>
						</div>

						<article class="menu-list-area menu-detail-area">
							<!-- menu-list -->
							<div class="inner-box">
								<div class="menu-nav-wrap">
									<div class="menu-nav">
										<ul>
											<li><a href="goodslist.do">피자</a></li>
											<li class="active"><a href="goodsSideList.do">사이드디시</a></li>
											<li><a href="goodsDrinkEtcList.do">음료&기타</a></li>
										</ul>
									</div>
 
									<!-- <div class="sch-box">
										<span>인기순</span>
										<div class="sch-slider"></div>
										<a href="#" class="btn-open"> <span class="hidden">열기</span><i></i>
										</a>
									</div>  -->
								</div>

								<!-- //menu-list -->

								<div class="menu-info inner-box">
									<div class="img-wrap">
										<div class="view-box">
											<!-- 대표 이미지 슬라이드 -->
											<div class="menu-slider-view2">
												<div>
													<img
														src="<c:url value=
												'/resources/images/admin/goods/${goodsDetailSide.s_image}' />" />
												</div>
											</div>

											<div class="menu-slider-viewdouble" style="display: none;"></div>

											<!-- //대표 이미지 슬라이드 -->

											<a href="javascript:UI.layerPopUp({selId:'#pop-zoom'});"
												class="btn-detail"> <i class="ico-sch2"></i> <span class="hidden">상세버튼</span>
											</a>
										</div>
										<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.</div>
										<div class="guide-box2">원산지 정보는 사진 우측 하단 돋보기 메뉴를 통해 확인
											가능합니다.</div>
									</div>
									<div class="detail-wrap">
										<div class="menu-box">
											<div class="title-box">
												<h3 class="title side">${goodsDetailSide.s_name}</h3>

												<div class="hashtag"></div>
											</div>

											<div class="btn-wrap2">
												<a
													href="javascript:UI.layerPopUp({selId:'#pop-allergy', url:'/contents/ingredient'})"
													class="btn-type-left v2">피자 및 사이드메뉴 영양성분</a>
											</div>
										</div>

										<!-- 주문 옵션 선택 -->
										<div class="select-box">
											<div class="step-wrap">
												<div class="title-wrap">
													<div class="title-type2">옵션 선택</div>
												</div>
												<div class="option-box">
													<div class="chk-box">
														<input type="radio" id="hotdeal" name="size" class="checkboxC"
															value="${goodsDetailSide.s_price}" onclick="totalSideValue()"
															
															checked /> <label class="checkbox" for="hotdeal"></label>
														<label for="hotdeal"> <fmt:formatNumber
																value="${goodsDetailSide.s_price}" pattern="#,###" />원
														</label>

													</div>
												</div>
											</div>

											<div class="step-wrap">
												<div class="title-wrap">
													<div class="title-type2">수량 선택</div>
												</div>
												<div class="quantity-box">
													<button type="button" class="btn-minus side"
														onclick="minusNomalSide()"></button>
													<input class="setNum" id="sideNomalSetNum"
														type="number" value="1" readonly> <input
														class="setName" type="hidden" id="sideName"
														value="${goodsDetailSide.s_name}"> <input
														class="setCode" type="hidden"
														value="${goodsDetailSide.s_code}"> <input
														class="setPrice" type="hidden"
														id="sidePrice"
														value="${goodsDetailSide.s_price}">
													<button type="button" class="btn-plus side"
														onclick="plusNomalSide()"></button>
												</div>
											</div>
											<div class="step-wrap">
												<div class="title-wrap">
													<div class="title-type2">음료&기타</div>
												</div>
												<div class="tab-content active etcdelete">
													<div class="menu-list-v2">
														<ul>
															<c:forEach var="goodsDrinkEtcList"
																items="${goodsDrinkEtcList}" varStatus="status">
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="<c:url value= '/resources/images/admin/goods/${goodsDrinkEtcList.d_image}' />"
																			alt="${goodsDrinkEtcList.d_name}" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">${goodsDrinkEtcList.d_name}</div>
																		<div class="price-box">
																			<strong><fmt:formatNumber value="${goodsDrinkEtcList.d_price}" pattern="#,###" />원</strong>
																		</div>

																		<div class="quantity-box">
																			<button type="button" class="btn-minus etc"
																				onclick="minusDrinkEtc(${status.index})"></button>
																			<input class="setNum" id="drinkSetNum${status.index}"
																				type="number" value="0" readonly>
																				<input class="setName" id="etcName${status.index}"
																				type="hidden" value="${goodsDrinkEtcList.d_name}">
																			<input class="setCode" type="hidden"
																				value="${goodsDrinkEtcList.d_code}"> <input
																				class="setPrice" type="hidden"
																				id="etcPrice${status.index}"
																				value="${goodsDrinkEtcList.d_price}">
																			<button type="button" class="btn-plus etc"
																				onclick="plusDrinkEtc(${status.index})"></button>
																		</div>
																	</div>
																</li>
															</c:forEach>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<!-- //주문 옵션 선택 -->
									</div>
								</div>
								<div class="step-wrap step-order">
									<div class="order-wrap inner-box">
										<dl>
											<dt>사이드디시</dt>
											<dd>
												<div class="total-side">
												<p>${goodsDetailSide.s_name}(<fmt:formatNumber value="${goodsDetailSide.s_price}" pattern="#,###,###" />원)x1</p></div>
											</dd>
										</dl>
										<dl>
											<dt>음료 & 기타</dt>
											<dd>
												<div class="total-etc">없음</div>
											</dd>
										</dl>
										<div class="total-price">
											<div id="login_order_btn">
												<span>총 금액</span> <strong class="total-price_sum">0원</strong>
												<div class="btn-wrap">
													<a id="btn_basket" href="javascript:saveBasket();" class="btn-type">
														주문하기 </a>
												</div>
											</div>
										</div>
									</div>
								</div>
								</div>
						</article>
					</div>
				</div>
				</form>
				<div class="pop-layer" id="pop-sidedish">
					<div class="dim"></div>
					<div class="pop-wrap" style="top:0px; left:30%;">
						<div class="pop-title-wrap">
							<h2 class="pop-title v2">특가 사이드디시 유의사항</h2>
						</div>
						<div class="pop-content">
							<div class="title-wrap">
								<div class="title-type2">프리미엄 피자 주문 시, 모든 사이드디시 반값</div>
							</div>
							<div class="pop-text">
								<ul class="list-text-v2">
									<li>전화 및 온라인(홈페이지, 모바일웹, 어플) 주문 모두 적용 가능</li>
									<li>함께 주문하는 피자에 대해 제휴 및 쿠폰 등 여타 할인과 중복 할인 가능(단,
										하나SK패밀리/TOUCH 1, 현대M포인트, 삼성카드 보너스포인트, 신한카드 하이포인트, 스페셜세트, 희망나눔
										캠페인과는 중복 불가)</li>
									<li>피자 1판당 반값 프로모션 1회 이용 가능 (단, 1+1에 한해 주문당 1회 가능)</li>
									<li>내일예약가능</li>
								</ul>
							</div>
						
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				
				<div class="pop-layer pop-menu" id="pop-menu-detail">
					<input type="hidden" value="" class="hide_code" />
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<div class="pop-title menu-name"></div>
						</div>
						<div class="pop-content">
							<div class="menu">
								<article class="menu-detail-area">
									<div class="menu-info">
										<div class="img-wrap">
											<div class="view-box">
												<!-- 대표 이미지 슬라이드 -->
												<div id="detail_main_slide">
													<div class="menu-slider-view" id="pinchzoom"></div>
												</div>

												<a href="javascript:UI.layerPopUp({selId:'#pop-zoom'})"
													class="btn-zoom"> <i class="ico-zoom"></i> <span
													class="hidden">확대버튼</span>
												</a>
											</div>
											</div>
									</div>
									<!-- 구매하기 버튼 -->
									<!-- //구매하기 버튼 -->
								</article>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- //팝업-메뉴 상세보기 -->


				<!--팝업-확대 이미지 -->

				<div class="pop-layer" id="pop-zoom">
					<div class="dim"></div>
					<div class="pop-wrap" style="top:0px; left:20%;">
						<div class="pop-title-wrap">
							<h2 class="pop-title">확대</h2>
						</div>
						<div class="pop-content">
							<div class="zoom-wrap">
								<div class="menu-zoom-wrap">
									<div class="menu-big" id="zoom">
									<img
										src="<c:url value= '/resources/images/admin/goods/${goodsDetailSide.s_image}' />"
										alt="${goodsDetailSide.s_name}" class="img-zoom-big" />
							</div>
									</div>
								</div>
								<div class="menu-thumb">
									<div class="item subimg1 active">
										<a href="#"> 
										</a>
									</div>
								</div>
							</div>
							<a class="btn-close" style="cursor:pointer;"></a>
						</div>
						
					</div>
				</div>
				<!--//팝업-확대 이미지 -->
				<script
					src="https://cdn.dominos.co.kr/domino/pc/js/jquery.zoom.min.js"></script>
				<script>
					$(function() {
						$('.menu-thumb .item a').on('click', function(e) {
							e.preventDefault();
							$('.menu-thumb .item').removeClass('active');
							$(this).closest('.item').addClass('active');

							var src = $(this).find("img").attr("src");
							$(".menu-big > img").attr("src", src);
							$(".menu-big .zoomImg").attr("src", src);

						});
					});

					$('.zoom-wrap').each(function() {
						$('#zoom').zoom({
							on : 'click',
							magnify : 2
						});
					});
				</script>
				<!-- 피자 스토리  -->
				<div class="pop-layer" id="pop-story"></div>
				<!-- 피자 스토리  -->
				
				<!-- 팝업-메인 빅배너 -->
				<div class="pop-layer pop-full" id="pop-allergy">
					<div class="dim"></div>
					<div class="pop-wrap" style="top:0px; left:20%;">
						<div class="pop-title-wrap">
							<div class="pop-title v2">영양성분</div>
						</div>
						<div class="pop-content">
							<div id="allergy1" class="tab-content active">
								<div class="tab-type2 js_tab">
									<ul>
										<li class="active"><a href="#allergy1-1">피자</a></li>
										<li><a href="#allergy1-2">사이드</a></li>
									</ul>
								</div>
								<div id="allergy1-1" class="tab-content-v2 active">
									<div class="table-type v2">
										<table class="bg-table">
											<caption>피자 영양성분</caption>
											<colgroup>
												<col width="20%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
											</colgroup>
											<thead>
												<tr>
													<th>제품명</th>
													<th>총 중량(g)</th>
													<th>1회분 기준</th>
													<th>1회분<br>중량 (g)
													</th>
													<th>열량<br>(kcal/1회분)
													</th>
													<th>단백질<br>(g/1회분)
													</th>
													<th>포화지방<br>(g/1회분)
													</th>
													<th>나트륨<br>(mg/1회분)
													</th>
													<th>당류<br>(g/1회분)
													</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="pizza" items="${pizzaNutrients }">
													<tr>
														<td>${pizza.p_name }(L사이즈)</td>
														<td>${pizza.gross_weight_l }</td>
														<td>${pizza.onetime_basis_l }</td>
														<td>${pizza.onetime_weight_l }</td>
														<td>${pizza.kcal_l }</td>
														<td>${pizza.protein_l }</td>
														<td>${pizza.fat_l }</td>
														<td>${pizza.natrium_l }</td>
														<td>${pizza.sugars_l }</td>
													</tr>
													<tr>
														<td>${pizza.p_name }(M사이즈)</td>
														<td>${pizza.gross_weight_m }</td>
														<td>${pizza.onetime_basis_m }</td>
														<td>${pizza.onetime_weight_m }</td>
														<td>${pizza.kcal_m }</td>
														<td>${pizza.protein_m }</td>
														<td>${pizza.fat_m }</td>
														<td>${pizza.natrium_m }</td>
														<td>${pizza.sugars_m }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<div id="allergy1-2" class="tab-content-v2">
									<div class="allergy-group">
										<div class="title-type3">사이드디시</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>사이드디시 영양성분</caption>
												<colgroup>
													<col width="28%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
												</colgroup>
												<thead>
													<tr>
														<th>제품명</th>
														<th>총 중량(g)</th>
														<th>열량<br>(kcal/1회분)
														</th>
														<th>단백질<br>(g/1회분)
														</th>
														<th>포화지방<br>(g/1회분)
														</th>
														<th>나트륨<br>(mg/1회분)
														</th>
														<th>당류<br>(g/1회분)
														</th>
													</tr>
												</thead>
												<tbody id="ingredientList1">
													<c:forEach var="side" items="${sideNutrients }">
														<tr>
															<td>${side.s_name }</td>
															<td>${side.gross_weight }</td>
															<td>${side.kcal }</td>
															<td>${side.protein }</td>
															<td>${side.fat }</td>
															<td>${side.natrium }</td>
															<td>${side.sugars }</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- //팝업-메인 빅배너 -->
		</section>
		<!-- //content -->
	</div>
	<!-- //container -->

	<!-- // LOGGER 환경변수 설정 -->
</body>
</html>