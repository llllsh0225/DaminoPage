<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트러플 리조또 - 사이드 디시- 다미노피자</title>

<script type="text/javascript" src="/resources/js/jquery1.11.1.js"></script>

<script type="text/javascript"
	src="https://cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="/resources/js/selectbox.js"></script>

<script type="text/javascript"
	src="/resources/js/d2CommonUtil.js?ver=1.5"></script>
<script type="text/javascript" src="/resources/js/Cookie.js"></script>
<script type="text/javascript"
	src="https://cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">

<script
	src="https://cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>

<script src="https://cdn.dominos.co.kr/domino/pc/js/ui.js"></script>
<script type="text/javascript" src="/resources/js/gcenmaps/gcenmap.js"></script>
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
	<

	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="/main" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="util-nav">
						<a href="login.do">로그인</a> <a href="login.do">회원가입</a> <a
							href="javascript:void(0);" class="lang">
							<div class="select-type2 language">
								<select id="select-type2">
								</select>
							</div>
						</a>
					</div>
				</div>
			</div>

			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active"><a href="/goods/list?dsp_ctgr=C0101"><span>메뉴</span></a>
						</li>
						<li><a href="/ecoupon/index"><span>e-쿠폰</span></a></li>
						<li><a href="/voucher/list?gubun=M"><span>상품권 선물</span></a></li>
						</li>
						<li><a href="/branch"><span>매장검색</span></a></li>
					</ul>
					<a href="#" class="snb-more">더보기</a>
				</div>

				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="/event/mania">다미노 서비스</a>
								<ul>
									<li><a href="/event/mania">매니아 혜택</a></li>
									<li><a href="/quickOrder/index">퀵 오더</a></li>
									<li><a href="/order/groupOrder">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="/bbs/faqList?view_gubun=W&bbs_cd=online">고객센터</a>
								<ul>
									<li><a href="/bbs/faqList?view_gubun=W&bbs_cd=online">자주하는
											질문</a></li>
									<li><a href="/bbs/qnaForm">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="/company/contents/overview">회사소개</a>
								<ul>
									<li><a href="/company/contents/overview">한국다미노피자</a></li>
									<li><a href="/company/contents/chainstore1">가맹점 모집</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="/bbs/newsList?type=N">공지사항</a>
							<ul>
								<li><a href="/bbs/newsList?type=N">다미노뉴스</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header>
		<!-- //header -->
		<script>
$(document).ready(function() {
	
	// 상품 슬라이드
	$('.menu-slider-view2').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		dots: true,
	});
	
	//전체보기
	$('.btn-text-more').on('click',function(e){
		e.preventDefault();
		if($(this).closest('.step-order').hasClass('active')){
			$(this).closest('.step-order').removeClass('active');
			$(this).removeClass('active');
		}else{
			$(this).addClass('active');
			$(this).closest('.step-order').addClass('active');
		}
		var stepHeight = $('.step-order').innerHeight();
	});
		
	var stepHeight = $('.step-order').innerHeight();
	if ($(".step-order").length == 1) {
		var lastScrollTop = 0;
		$(window).scroll(function (e) {
			e.preventDefault();
			var $footer = $('#footer'),
				$stepOrder = $('.step-order'),
				winScrT = $(window).scrollTop(),
				totH = winScrT + $(window).height(),
				footerTop = $footer.offset().top;

			var st = $(this).scrollTop();
			if (st > lastScrollTop) {
				// down scroll
				//console.log("down");
			} else {
				// up scroll
				//console.log("up");
				$stepOrder.css({
					'position': 'fixed',
					'bottom' : '0'
				});
			}
			lastScrollTop = st;

			//위치
			if (totH >= footerTop) {
				$(".sub-type.menu").css({'padding-bottom': stepHeight+100});
				
			} else {
				$(".sub-type.menu").css({'padding-bottom': '100px'});
			}

			if (totH >= footerTop + 100) {
				$stepOrder.css({
					'position': 'absolute',
					'bottom':-(stepHeight+100)
				});
			}
		});
	}
	
	
		$(".gnb_menu .menu02").addClass("on");
		

	$(".btn-minus.goods").click(function() {
		var cnt = parseInt($("#qty").val()) - 1;
		if(cnt <= 0) cnt = 1;
		
		$(".opt_qty").val(cnt);
		setTotalAmt();
	});
	
	$(".btn-plus.goods").click(function() {
		
		var cnt = parseInt($("#qty").val()) + 1;
		
				if(cnt > 9){
					cnt = 9;
					alert("사이드 디시는 9개 까지만 주문 가능합니다.");
				}
			
		
		$(".opt_qty").val(cnt);
		setTotalAmt();
		
	});
	
	$(".btn-minus.etc").click(function() {	
		setEtcTotalCnt($(this), ".btn-minus.etc");
	});	
	
	$(".btn-plus.etc").click(function() {
		setEtcTotalCnt($(this), ".btn-plus.etc");
	});
	
	$(".btn-minus.side").click(function() {
		setsideTotalCnt($(this), ".btn-minus.side");
	});	
	
	$(".btn-plus.side").click(function() {
		setsideTotalCnt($(this), ".btn-plus.side");
	});
	
	$(".checkboxC").click(function() {
		setTotalAmt();
	});
	
	$(".chk-box.vanvan").change(function (){
		alert($(this));
	});

	$(".total-side").text("트러플 리조또" + "("+ $(':radio[name="option"]:checked').val().cvtNumber() +"원)" + "x" + (parseInt($("#qty").val())).cvtNumber());
	$(".total-count").text((parseInt($("#qty").val())).cvtNumber());
	$(".total-price_sum").text($(':radio[name="option"]:checked').val().cvtNumber()+"원");

	$("#btn_basket").click(function() {
		// 장바구니 확인 벨리데이션 ajax 호출
		sideValidate();
	});
	

	$(".minus").click(function() {
		var cnt = parseInt($("#qty").val()) - 1;
		if(cnt < 1) cnt = 1;

		$(".opt_qty").val(cnt);
		setTotalAmt();
	

	});

	$(".add").click(function() {
		var cnt = parseInt($("#qty").val()) + 1;
		if(cnt > 9) cnt = 9;

		$(".opt_qty").val(cnt);
		setTotalAmt();
	

	});

 	 
});
</script>

		<!-- container -->
		<div id="container">
			<section id="content">
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
											<li class="active"><a
												href="goodsSideList.do">사이드디시</a></li>
											<li><a href="goodsDrinkEtcList.do">음료&기타</a></li>
										</ul>
									</div>

									<div class="sch-box">
										<span>인기순</span>
										<div class="sch-slider"></div>
										<a href="#" class="btn-open"> <span
											class="hidden">열기</span><i></i>
										</a>
									</div>
								</div>
							
							<!-- //menu-list -->

							<div class="menu-info inner-box">
								<div class="img-wrap">
									<div class="view-box">
										<!-- 대표 이미지 슬라이드 -->
										<div class="menu-slider-view2">
											<div>
												<img src="<c:url value=
												'/resources/images/admin/goods/${goodsDetailSide.s_image}' />" />
											</div>
										</div>

										<div class="menu-slider-viewdouble" style="display: none;"></div>

										<!-- //대표 이미지 슬라이드 -->

										<a href="javascript:UI.layerPopUp({selId:'#pop-zoom'});"
											class="btn-detail"> <i class="ico-zoomImg"></i>제품상세 · 원산지
											<span class="hidden">상세버튼</span>
										</a>
									</div>
									<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.</div>
									<div class="guide-box2">원산지 정보는 사진 우측 하단 돋보기 메뉴를 통해 확인
										가능합니다.</div>
								</div>
								<div class="detail-wrap">
									<div class="menu-box">
										<div class="title-box">
											<h3 class="title pizza">${goodsDetailSide.s_name}</h3>

											<div class="hashtag"></div>
										</div>

										<div class="btn-wrap2">
											<a
												href="javascript:UI.layerPopUp({selId:'#pop-allergy', url:'/contents/ingredient'})"
												class="btn-type-left v2">영양성분 및 알레르기 유발성분</a>
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
													<input class="checkboxC" type="radio" id="hotdeal4"
														name="option" value="8800" data-price="8800"
														data-code="RSD155M1" data-pidx="" checked /> <label
														class="checkbox" for="hotdeal4"></label>
														<label for="hotdeal4"></label>
														<fmt:formatNumber value="${goodsDetailSide.s_price}"
															pattern="#,###" />원 
														
												</div>
											</div>
										</div>

										<div class="step-wrap">
											<div class="title-wrap">
												<div class="title-type2">수량 선택</div>
											</div>
											<div class="quantity-box">
												<button class="btn-minus goods"></button>
												<input type="number" class="opt_qty" value="1" id="qty"
													max="99" readonly>
												<button class="btn-plus goods"></button>
											</div>
										</div>
										<div class="step-wrap">
											<div class="title-wrap">
												<div class="title-type2">음료&기타</div>
											</div>

											<div class="promotion-box" id="eventBox2"
												style="display: none;">
												<a
													href="javascript:goLink('', '/event/entry/1238', '_self');">코카콜라
													1.25L <em>500원</em> 이벤트
												</a>
											</div>

											<script>
function setEtcTotalCnt (obj, action) {
	var etcTotalAmount = 0;
	var etcTotalCnt = 0;
	var etcStr = "";
	etcTotalAmount = 0;
	etcTotalCnt = 0;
	var etcDrinkCnt = 0;
	var cnt = 0;
	
	if(action == ".btn-minus.etc") {
		cnt = parseInt( obj.siblings(".setNum").val()) -1;
		if(cnt <= 0) cnt = 0;
		obj.siblings(".setNum").val(cnt);
	} else {
		cnt = parseInt( obj.siblings(".setNum").val()) +1;
		obj.siblings(".setNum").val(cnt);
	}

	$(action).each(function() {
		
		// 리스트 토탈 카운트
		if($(this).siblings(".setNum").val() != "0") {
			etcTotalCnt += parseInt($(this).siblings(".setNum").val());
		}
		
		// 음료 토탈 카운트
		if($(this).siblings(".setNum").val() != "0" 
			&& ($(this).siblings(".setCode").val() == "RDK012L2" || $(this).siblings(".setCode").val() == "RDK013L2" || $(this).siblings(".setCode").val() == "RDK704L1"
			|| $(this).siblings(".setCode").val() == "RDK001L6" || $(this).siblings(".setCode").val() == "RDK001L7" || $(this).siblings(".setCode").val() == "RDK005L1"
			|| $(this).siblings(".setCode").val() == "RDK005L2" || $(this).siblings(".setCode").val() == "RDK003L1" || $(this).siblings(".setCode").val() == "RDK003L3")) {
			etcDrinkCnt += parseInt($(this).siblings(".setNum").val());
		}
	});
	
	
			if(etcDrinkCnt > parseInt($(".opt_qty").val())){
				alert("음료는 사이드디시 1개당 1개 까지 가능 합니다.");
				cnt = parseInt( obj.siblings(".setNum").val()) -1;
				
				if(cnt <= 0) cnt = 0;
				obj.siblings(".setNum").val(cnt);
				etcTotalCnt -= 1;
				etcDrinkCnt -= 1;
				
				$(action).each(function() {
					if($(this).siblings(".setNum").val() != "0") {
						etcTotalAmount = 0;
						etcTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
						
						if($(this).siblings(".setNum").val() != "0" 
							&& ($(this).siblings(".setCode").val() == "RDK012L2" || $(this).siblings(".setCode").val() == "RDK013L2" || $(this).siblings(".setCode").val() == "RDK704L1"
							|| $(this).siblings(".setCode").val() == "RDK001L6" || $(this).siblings(".setCode").val() == "RDK001L7" || $(this).siblings(".setCode").val() == "RDK005L1"
							|| $(this).siblings(".setCode").val() == "RDK005L2" || $(this).siblings(".setCode").val() == "RDK003L1" || $(this).siblings(".setCode").val() == "RDK003L3")) {
							
							etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
							+ "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"+"<input type='hidden' class='etcDrink' value='"+$(this).siblings(".setNum").val()+"'></input>"
							+"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
						}else {
							etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
							+ "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"
							+"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
						}
					}
				});
			} else {
				$(action).each(function() {
					if($(this).siblings(".setNum").val() != "0") {
						etcTotalAmount = 0;
						etcTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
		
						if($(this).siblings(".setNum").val() != "0" 
							&& ($(this).siblings(".setCode").val() == "RDK012L2" || $(this).siblings(".setCode").val() == "RDK013L2" || $(this).siblings(".setCode").val() == "RDK704L1"
							|| $(this).siblings(".setCode").val() == "RDK001L6" || $(this).siblings(".setCode").val() == "RDK001L7" || $(this).siblings(".setCode").val() == "RDK005L1"
							|| $(this).siblings(".setCode").val() == "RDK005L2" || $(this).siblings(".setCode").val() == "RDK003L1" || $(this).siblings(".setCode").val() == "RDK003L3")) {
							
							etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
							+ "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"+"<input type='hidden' class='etcDrink' value='"+$(this).siblings(".setNum").val()+"'></input>"
							+"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
						}else {
							etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
							+ "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"
							+"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
						}
					}
				});
			}
			
			$(".total-etc").html(etcStr);
		
		    sideSum();
		
};
</script>

											<div class="tab-content active etcdelete">
												<div class="menu-list-v2">
													<ul>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_xko4stGP.jpg"
																	alt="코카콜라 1.25L" />
															</div>

															<div class="prd-cont">
																<div class="subject">코카콜라 1.25L</div>
																<div class="price-box">
																	<strong>2,000</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden" value="코카콜라 1.25L">
																	<input class="setCode" type="hidden" value="RDK001L6">
																	<input class="setPrice" type="hidden" value="2000">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_2lmLufa0.jpg"
																	alt="코카콜라 500ml" />
															</div>

															<div class="prd-cont">
																<div class="subject">코카콜라 500ml</div>
																<div class="price-box">
																	<strong>1,400</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden" value="코카콜라 500ml">
																	<input class="setCode" type="hidden" value="RDK001L7">
																	<input class="setPrice" type="hidden" value="1400">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_M4LWEbwg.jpg"
																	alt="코카콜라 제로 1.5L" />
															</div>

															<div class="prd-cont">
																<div class="subject">코카콜라 제로 1.5L</div>
																<div class="price-box">
																	<strong>2,100</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden"
																		value="코카콜라 제로 1.5L"> <input class="setCode"
																		type="hidden" value="RDK005L1"> <input
																		class="setPrice" type="hidden" value="2100">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_Hllio1OV.jpg"
																	alt="코카콜라 제로 500ml" />
															</div>

															<div class="prd-cont">
																<div class="subject">코카콜라 제로 500ml</div>
																<div class="price-box">
																	<strong>1,300</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden"
																		value="코카콜라 제로 500ml"> <input class="setCode"
																		type="hidden" value="RDK005L2"> <input
																		class="setPrice" type="hidden" value="1300">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_kr91ng5H.jpg"
																	alt="스프라이트 1.5L" />
															</div>

															<div class="prd-cont">
																<div class="subject">스프라이트 1.5L</div>
																<div class="price-box">
																	<strong>2,100</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden" value="스프라이트 1.5L">
																	<input class="setCode" type="hidden" value="RDK003L1">
																	<input class="setPrice" type="hidden" value="2100">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_aH0XAR71.jpg"
																	alt="스프라이트 500ml" />
															</div>

															<div class="prd-cont">
																<div class="subject">스프라이트 500ml</div>
																<div class="price-box">
																	<strong>1,300</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden"
																		value="스프라이트 500ml"> <input class="setCode"
																		type="hidden" value="RDK003L3"> <input
																		class="setPrice" type="hidden" value="1300">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_JkG1KaLB.jpg"
																	alt="미닛메이드 스파클링 청포도 1.25L" />
															</div>

															<div class="prd-cont">
																<div class="subject">미닛메이드 스파클링 청포도 1.25L</div>
																<div class="price-box">
																	<strong>2,300</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden"
																		value="미닛메이드 스파클링 청포도 1.25L"> <input
																		class="setCode" type="hidden" value="RDK012L2">
																	<input class="setPrice" type="hidden" value="2300">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_ZiDHxA8U.jpg"
																	alt="우리 피클 L" />
															</div>

															<div class="prd-cont">
																<div class="subject">우리 피클 L</div>
																<div class="price-box">
																	<strong>800</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden" value="우리 피클 L">
																	<input class="setCode" type="hidden" value="RSD152P1">
																	<input class="setPrice" type="hidden" value="800">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_g5R87V5j.jpg"
																	alt="우리 피클 M" />
															</div>

															<div class="prd-cont">
																<div class="subject">우리 피클 M</div>
																<div class="price-box">
																	<strong>500</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden" value="우리 피클 M">
																	<input class="setCode" type="hidden" value="RSD101P1">
																	<input class="setPrice" type="hidden" value="500">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200602_EP1H2m13.jpg"
																	alt="다미노 시리얼" />
															</div>

															<div class="prd-cont">
																<div class="subject">다미노 시리얼</div>
																<div class="price-box">
																	<strong>400</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden" value="다미노 시리얼">
																	<input class="setCode" type="hidden" value="RSD172P1">
																	<input class="setPrice" type="hidden" value="400">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_8eI3CpW8.jpg"
																	alt="스위트 칠리소스 15g" />
															</div>

															<div class="prd-cont">
																<div class="subject">스위트 칠리소스 15g</div>
																<div class="price-box">
																	<strong>300</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden"
																		value="스위트 칠리소스 15g"> <input class="setCode"
																		type="hidden" value="RSD086P1"> <input
																		class="setPrice" type="hidden" value="300">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_H1ApYYz5.jpg"
																	alt="갈릭 디핑 소스 15g" />
															</div>

															<div class="prd-cont">
																<div class="subject">갈릭 디핑 소스 15g</div>
																<div class="price-box">
																	<strong>200</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden"
																		value="갈릭 디핑 소스 15g"> <input class="setCode"
																		type="hidden" value="RSD088P1"> <input
																		class="setPrice" type="hidden" value="200">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
														<li>
															<div class="prd-img">
																<img class="lazyload"
																	src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif"
																	data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_1uKUqRes.jpg"
																	alt="핫소스" />
															</div>

															<div class="prd-cont">
																<div class="subject">핫소스</div>
																<div class="price-box">
																	<strong>100</strong>
																</div>

																<div class="quantity-box">
																	<button class="btn-minus etc"></button>
																	<input class="setNum" type="number" value="0" readonly>
																	<input class="setName" type="hidden" value="핫소스">
																	<input class="setCode" type="hidden" value="RSD017P1">
																	<input class="setPrice" type="hidden" value="100">
																	<button class="btn-plus etc"></button>
																</div>
															</div>
														</li>
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
											<div class="total-side">없음</div>
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
												<a id="btn_basket" href="javascript:;" class="btn-type">
													주문하기 </a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
				<div class="pop-layer" id="pop-sidedish">
					<div class="dim"></div>
					<div class="pop-wrap">
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
							<!-- <div class="title-wrap v2">
				<div class="title-type2">2. 사이드디시 천원 딜 유의사항</div>
			</div>
			<div class="pop-text">
				<ul class="list-text-v2">
					<li>해피위크 이용 고객 대상 할인 적용 가능 (비회원도 할인 적용 가능)</li>
					<li>피자(M,L)에 한해 적용 가능(사이드디시, 음료, 추가토핑, 킹고피자, 싱글피자, 더블팩/트리플팩은 제외)</li>
					<li>제휴 및 여타 할인과 중복 할인 불가 (단, 사이드디시 반값, 해피위크와도 적용 가능)</li>
					<li>사이드디시 1천원딜은 피자 1판당 1회로 제한</li>
					<li>일부 특수 매장(알펜시아점, 대명비발디파크점, 휘닉스 파크점, 잠실 야구장점, 롯데월드점) 제외</li>
					<li>익일 예약 불가</li>
				</ul>
			</div> -->
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<link rel="stylesheet" type="text/css"
					href="https://cdn.dominos.co.kr/domino/pc/css/as_is.css">
				<div class="pop-layer pop-full" id="pop-dough">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title">도우의 특징</h2>
						</div>
						<div class="pop-content pop_dough">
							<div class="dough_info">
								<div class="tit_wrap">
									<strong>다미노피자의 <span>다양한 도우</span>를<br>입맛대로 골라
										드세요!
									</strong>
									<p>
										다양한 소스와 토핑은 기본!<br>국내산 흑미에 세계가 주목하는 6가지 슈퍼시드를 더해 영양과 풍미를
										가득 담은 도우는 물론,<br>담백하고 쫄깃한 오리지널 도우나, 겉은 바삭하고 속은 쫄깃한 나폴리
										도우,<br>얇고 바삭한 씬 도우까지 선택하실 수 있습니다.
									</p>
								</div>
								<div class="lst_dough">
									<div class="grain_dough">
										<img class="lazyload"
											data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough_superseed.jpg"
											alt="슈퍼시드 도우" />
										<dl>
											<dt>
												"더 맛있으면서, 더 건강한 도우를 만들 수는 없을까?"<br>끝없는 질문과 오랜 연구 끝에 탄생한
												다미노 슈퍼시드 도우<br> <br>
											</dt>
											<dt>
												국내산 흑미에 세계가 주목하는 6가지 슈퍼시드를 더해<br>영양과 풍미를 가득 담았습니다.
											</dt>
										</dl>
										<div class="superseed_dough">
											<dl class="superseed_dough_title">
												<dt>1. 영양을 채우다</dt>
												<dd>엄선한 재료, 국내산 흑미와 세계가 주목하는 6가지 슈퍼시드의 특징</dd>
											</dl>
											<dl class="superseed_dough_content large">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_1.jpg"
														alt="100% 국내산 흑미">
												</dt>
												<dd class="cont_title">100% 국내산 흑미</dd>
												<dd class="cont_sub">
													항산화, 항암, 항궤양 효과가 있다고 알려진 안토시아닌이 검은콩보다 4배 이상 함유,<br>철,
													아연, 셀레늄 등의 무기염류는 일반 쌀 대비 5배 이상 함유<br>노화와 여러 질병을 일으키는
													체내의 활성산소를 효과적으로 중화시키며 심장실병, 뇌졸증, 성인병, 암 예방에도 좋은 곡물
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_2.jpg"
														alt="아마씨">
												</dt>
												<dd class="cont_title">아마씨</dd>
												<dd class="cont_sub">
													타임지가 선정한 슈퍼곡물, 노화방지에 좋은 리그난이<br>석류보다 2700배나 많이 함유,<br>또한
													오메가 3가 풍부해 각종 혈관질환 예방에 효과
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_3.jpg"
														alt="퀴노아">
												</dt>
												<dd class="cont_title">퀴노아</dd>
												<dd class="cont_sub">
													페루어로 '곡물의 어미니'라고 불릴 정도로<br>풍부한 영양소 함유,<br>쌀보다 7배
													많은 식이섬유 함유
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_4.jpg"
														alt="병아리콩">
												</dt>
												<dd class="cont_title">병아리콩</dd>
												<dd class="cont_sub">
													클레오파트라도 즐겨먹었던 것으로 알려진 곡물,<br>우유보다 5배 많은 칼슘을 함유하여 비타민E가
													풍부해<br>항노화 기능과 아르기닌 성분으로 신진대사를 활발히 해<br>젊음을 유지하는데
													효과적
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_5.jpg"
														alt="햄프씨드">
												</dt>
												<dd class="cont_title">햄프씨드</dd>
												<dd class="cont_sub">
													타임지가 선정한 슈퍼곡물,<br>불포화지방산이 등푸른 생선보다 10배 많아<br>혈관
													건강에 도움
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_6.jpg"
														alt="귀리">
												</dt>
												<dd class="cont_title">귀리</dd>
												<dd class="cont_sub">
													세계보건기구(WHO)에서 핀란드 등 장수 국가의 대표<br>음식으로 발표될 정도로 영양이 풍부한
													곡물.<br>칼슘, 철분, 인을 비롯한 미네랄과 비타민 다량 함유
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_7.jpg"
														alt="렌틸콩">
												</dt>
												<dd class="cont_title">렌틸콩</dd>
												<dd class="cont_sub">
													풍부한 식이섬유와<br>소고기보다 1.3배 많은 단백질 함유
												</dd>
											</dl>
											<dl class="superseed_dough_title height">
												<dt>2. 맛을 살리다</dt>
												<dd>
													씹을수록 입안 가득 은은하게 퍼지는 고소한 맛과 쫄깃한 식감의 도우<br>토핑의 맛을 더욱 잘
													살려줄 수 있는 도우를 만들기 위해 수천번의 테스트 끝에 찾은 황금 레시피로 피자의 맛에 풍미를
													더해줍니다.
												</dd>
											</dl>
											<dl class="superseed_dough_title">
												<dt>3. 부담은 줄이다</dt>
												<dd>
													어린이, 청소년 및 젊은 남녀, 어르신들까지 모두가 부담 없이 즐길 수 있는 도우<br>칼슘,
													철분 등 다양한 영양소가 함유되어 성장기 어린이, 청소년에게 더욱 좋은 아마씨드, 퀴노아<br>포만감이
													높아 다이어트, 몸매관리에 관심이 많은 분들에게 더욱 좋은 병아리콩, 귀리<br>혈관질환 예방에
													좋은 오메가3, 불포화지방산등이 함유되어 혈관건강에 관심이 많은 분들에게 더욱 좋은 흑미, 햄프시드,
													렌틸콩
												</dd>
											</dl>
										</div>
									</div>
									<ul>
										<li><img class="lazyload"
											data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough2.jpg"
											alt="">
											<dl>
												<dt>
													담백하고 쫄깃한 <strong>오리지널 도우</strong>
												</dt>
												<dd>
													냉장 저온숙성시킨 도우를 손으로 직접 펴서<br>만든 미국 뉴욕 스타일의 도우, 엣지의 두께는<br>2.2CM
													피자 가운데는 1.3CM 내외로 담백하<br>면서도 쫄깃한 도우의 맛이 특징
												</dd>
											</dl></li>
										<li><img class="lazyload"
											data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough3.jpg"
											alt="">
											<dl>
												<dt>
													겉은 바삭, 속은 쫄깃한 <strong>나폴리 도우</strong>
												</dt>
												<dd>
													피자의 원조인 이탈리아 나폴리 스타일의 도우,<br>씬피자와는 다르게 엣지는 살리면서 얇게<br>펴주는
													것이 주요 특징. 엣지의 두께는 1.5CM,<br>피자 가운데는 0.3CM 내외이며, 도우 겉은<br>바삭하고
													속은 쫄깃한 맛을 가지고 있음.
												</dd>
											</dl></li>
										<li><img class="lazyload"
											data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough4.jpg"
											alt="">
											<dl>
												<dt>
													얇고 바삭한 <strong>씬 도우</strong>
												</dt>
												<dd>
													이탈리아 로마식 도우로 일반적인 이탈리아<br>적 지역(나폴리 지역 제외)에서 대중화되어<br>있는
													얇은 도우, 엣지 없이 도우가 얇고<br>평평한 것이 특징이며 바삭함을 즐길 수 있음.
												</dd>
											</dl></li>
									</ul>
								</div>
							</div>
							<div class="topping_info">
								<div class="tit_wrap">
									<strong>도우 끝 <span>엣지</span>까지 숨어있는<br> <span>갖가지
											토핑</span>을 찾아보세요.
									</strong>
								</div>
								<div class="lst_topping">
									<ul>
										<li>
											<div class="lst_tit">
												<img class="lazyload"
													data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_topping.png"
													alt="">
												<dl>
													<dt>더블치즈엣지</dt>
													<dd>카망베르 크림치즈와 스트링치즈로 꽉~채운</dd>
												</dl>
											</div>
											<ul class="lst_view">
												<li><img class="lazyload"
													data-src="https://cdn.dominos.co.kr/renewal2018/w/img/lst_topping.png"
													alt="">
													<dl>
														<dt>카망베르 크림 치즈</dt>
														<dd>
															치즈의 여왕이라고도 불리는 프랑스 대표 숙성<br>치즈로 깊은 맛과 향, 크림처럼 부드러운
															식감을<br>즐길 수 있는 프리미엄 치즈입니다.
														</dd>
													</dl></li>
												<li><img class="lazyload"
													data-src="https://cdn.dominos.co.kr/renewal2018/w/img/lst_topping2.png"
													alt="">
													<dl>
														<dt>스트링 치즈</dt>
														<dd>
															쫄깃한 식감으로 카망베르 크림 치즈의<br>풍미를 더해줍니다.
														</dd>
													</dl></li>
											</ul>
										</li>

									</ul>
								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- 팝업-메뉴 상세보기 -->
				<script>
function getDetailSlide(code_01,dsp_ctgr,dough_gb){
	$.ajax({
		url: '/goods/detailSlide',
		type: 'get',
		data: {
			"code_01" : code_01,
			"dsp_ctgr" : dsp_ctgr,
			"dough_gb" : dough_gb
		},
		success: function(data) {
			$("#detail_main_slide").html(data);
			getDetail(code_01,dsp_ctgr,dough_gb);
		},
		error: function (error){
			alert("다시 시도해주세요.");
		}
	})
}

function getDetail(code_01,dsp_ctgr,dough_gb){

	$.ajax({
		url: '/goods/detailAjax',
		type: 'get',
		data: {
			"code_01" : code_01,
			"dsp_ctgr" : dsp_ctgr,
			"dough_gb" : dough_gb
		},
		
		success: function(data) {
			UI.layerPopUp({selId:'#pop-menu-detail'});
			$(".menu-name").text(data.resultData.detail.name);
			$(".detail_topping").text(data.resultData.detail.topping);
			$(".detail_origin").text(data.resultData.detail.origin);
			$(".detail_contents").html(data.resultData.detail.w_contents);
			$(".hide_code").val(data.resultData.detail.code_01);
			$(".btn_order a").attr("href","detail?dsp_ctgr="+dsp_ctgr+"&code_01="+code_01+"&dough_gb="+dough_gb);
			//$(".zoom-wrap").html("<img src=https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1+" alt="+data.resultData.detail.name+" class='img-zoom' />");
						
			$(".img-zoom-big").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1);
			$(".img-zoom-big1").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1);
			$(".menu-big .zoomImg").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1);
			
			if(data.resultData.detail.file_nm2 != "" && data.resultData.detail.file_nm2 != null){
				$(".subimg2").show();
				$(".img-zoom-big2").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm2);
			}else {
				$(".subimg2").hide();
			}
			
			if(data.resultData.detail.file_nm3 != "" && data.resultData.detail.file_nm3 != null){
				$(".subimg3").show();
				$(".img-zoom-big3").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm3);
			}else {
				$(".subimg3").hide();
			}
		}
	});
}




</script>
				<!-- 팝업-메뉴 상세보기 -->

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
												<!-- //대표 이미지 슬라이드 -->
											</div>
											<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.
											</div>
										</div>
										<div class="detail-wrap">
											<div class="select-box">
												<div class="step-wrap step-detail">
													<div class="title-wrap">
														<div class="title-type">메인 토핑</div>
													</div>
													<div class="js_toggle_box detail_topping"></div>
												</div>
												<div class="step-wrap step-detail">
													<div class="title-wrap">
														<div class="title-type">원산지</div>
													</div>
													<div class="js_toggle_box detail_origin"></div>
												</div>
											</div>
											<div class="btn-wrap2">
												<a href="javascript:UI.layerPopUp({selId:'#pop-allergy'})"
													class="btn-type2-brd">영양성분 및 알레르기 유발성분</a>
												<!-- 사이드 메뉴  시 제거 부분   -->
												<!-- //사이드 메뉴  시 제거 부분   -->
											</div>
										</div>
									</div>
									<div class="select-box">
										<div class="step-wrap step-detail">
											<div class="title-wrap close">
												<div class="title-type">제품 상세보기</div>
												<a href="#" class="btn-toggle-close"> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box detail_contents close ">
												<div class="detail-box">
													<div class="title-box">
														<h3 class="title">
															매콤달콤한 다미노 특제 소스와 핫치킨의 화끈한 만남,<br />매운맛 매니아들을 위한 취향저격 피자
														</h3>
														<div class="guide-box3">어린이 및 매운맛에 민감한 분들에게 다소 매울 수
															있습니다.</div>
													</div>
													<div class="img-box">
														<img src="" alt="블랙타이거 슈림프1" class="img-zoom"
															data-elem="pinchzoomer" />
													</div>
												</div>
											</div>
										</div>

										<div class="step-wrap step-detail">
											<div class="title-wrap close">
												<div class="title-type">메인 토핑</div>
												<a href="#" class="btn-toggle-close"> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box close detail_topping"></div>
										</div>
										<div class="step-wrap step-detail">
											<div class="title-wrap close">
												<div class="title-type">원산지</div>
												<a href="#" class="btn-toggle-close "> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box close detail_origin"></div>
										</div>

										<!-- 사이드 메뉴  시 제거 부분  -->
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
				<!-- <div class="pop-layer pop-full" id="pop-zoom">
	<div class="pop-wrap">
		<div class="pop-title-wrap">
			<h2 class="pop-title">확대</h2>
		</div>
		<div class="pop-content">
			<div class="zoom-wrap">
				<img src="https://cdn.dominos.co.kr/admin/upload/goods/20190529_PrpQRpBP.jpg" alt="블랙타이거 슈림프1" class="img-zoom" />
			</div>
		</div>
		<a href="#" class="btn-close"></a>
	</div>
</div> -->

				<div class="pop-layer" id="pop-zoom">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title">확대</h2>
						</div>
						<div class="pop-content">
							<div class="zoom-wrap">
								<div class="menu-zoom-wrap">
									<div class="menu-big" id="zoom">
										<img
											src="https://cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
											alt="블랙타이거 슈림프1" class="img-zoom-big" />
									</div>
								</div>
								<div class="menu-thumb">
									<div class="item subimg1 active">
										<a href="#"> <img
											src="https://cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
											alt="블랙타이거 슈림프1" class="img-zoom-big1" />
										</a>
									</div>
									<div class="item subimg2">
										<a href="#"> <img
											src="https://cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
											alt="블랙타이거 슈림프2" class="img-zoom-big2" />
										</a>
									</div>
									<div class="item subimg3">
										<a href="#"> <img
											src="https://cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
											alt="블랙타이거 슈림프3" class="img-zoom-big3" />
										</a>
									</div>
								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!--//팝업-확대 이미지 -->
				<script
					src="https://cdn.dominos.co.kr/domino/pc/js/jquery.zoom.min.js"></script>
				<script>
    $(function () {
        $('.menu-thumb .item a').on('click', function (e) {
            e.preventDefault();
            $('.menu-thumb .item').removeClass('active');
            $(this).closest('.item').addClass('active');

            var src = $(this).find("img").attr("src");
            $(".menu-big > img").attr("src", src);
            $(".menu-big .zoomImg").attr("src", src);
            
        });
    });

    $('.zoom-wrap').each(function () {
        $('#zoom').zoom({
            on: 'click',
            magnify: 2
        });
    });
</script>
				<!-- 피자 스토리  -->
				<div class="pop-layer" id="pop-story"></div>
				<!-- 피자 스토리  -->

				<!-- 알레르기 -->
				<!-- 팝업-메인 빅배너 -->
				<div class="pop-layer pop-full" id="pop-allergy">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<div class="pop-title v2">영양성분 및 알레르기 유발성분</div>
						</div>
						<div class="pop-content">
							<div class="tab-type v2 js_tab">
								<ul>
									<li class="active"><a href="#allergy1">영양성분</a></li>
									<li><a href="#allergy2">제품 알레르기 유발성분</a></li>
								</ul>
							</div>
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
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (오리지널 L)</td>
													<td>1041</td>
													<td>1조각</td>
													<td>130</td>
													<td>296</td>
													<td>14</td>
													<td>4</td>
													<td>576</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (오리지널 M)</td>
													<td>639</td>
													<td>1조각</td>
													<td>107</td>
													<td>240</td>
													<td>11</td>
													<td>3</td>
													<td>478</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (나폴리 L)</td>
													<td>832</td>
													<td>1조각</td>
													<td>104</td>
													<td>223</td>
													<td>11</td>
													<td>3</td>
													<td>504</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (나폴리 M)</td>
													<td>530</td>
													<td>2조각</td>
													<td>177</td>
													<td>372</td>
													<td>19</td>
													<td>6</td>
													<td>866</td>
													<td>11</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (씬크러스트 L)</td>
													<td>690</td>
													<td>2조각</td>
													<td>173</td>
													<td>401</td>
													<td>19</td>
													<td>9</td>
													<td>870</td>
													<td>12</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (씬크러스트 M)</td>
													<td>434</td>
													<td>2조각</td>
													<td>145</td>
													<td>324</td>
													<td>16</td>
													<td>8</td>
													<td>745</td>
													<td>10</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (슈퍼시드함유도우 L)</td>
													<td>1033</td>
													<td>1조각</td>
													<td>129</td>
													<td>304</td>
													<td>14</td>
													<td>4</td>
													<td>565</td>
													<td>8</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (슈퍼시드함유도우 M)</td>
													<td>622</td>
													<td>1조각</td>
													<td>104</td>
													<td>241</td>
													<td>11</td>
													<td>4</td>
													<td>452</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (더블치즈엣지 L)</td>
													<td>1235</td>
													<td>1조각</td>
													<td>154</td>
													<td>367</td>
													<td>18</td>
													<td>7</td>
													<td>817</td>
													<td>8</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (더블치즈엣지 M)</td>
													<td>808</td>
													<td>1조각</td>
													<td>135</td>
													<td>319</td>
													<td>16</td>
													<td>7</td>
													<td>724</td>
													<td>6</td>
												</tr>
												<tr>
													<td>복날 콰트로(오리지널L)</td>
													<td>1026</td>
													<td>1조각</td>
													<td>128</td>
													<td>315</td>
													<td>15</td>
													<td>5</td>
													<td>605</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(오리지널L)</td>
													<td>1054</td>
													<td>1조각</td>
													<td>132</td>
													<td>306</td>
													<td>14</td>
													<td>5</td>
													<td>526</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(오리지널M)</td>
													<td>671</td>
													<td>1조각</td>
													<td>112</td>
													<td>255</td>
													<td>11</td>
													<td>4</td>
													<td>465</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(나폴리L)</td>
													<td>866</td>
													<td>1조각</td>
													<td>108</td>
													<td>240</td>
													<td>12</td>
													<td>5</td>
													<td>484</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(나폴리M)</td>
													<td>533</td>
													<td>2조각</td>
													<td>178</td>
													<td>394</td>
													<td>19</td>
													<td>8</td>
													<td>826</td>
													<td>10</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(씬크러스트L)</td>
													<td>714</td>
													<td>2조각</td>
													<td>178</td>
													<td>432</td>
													<td>20</td>
													<td>11</td>
													<td>825</td>
													<td>11</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(씬크러스트M)</td>
													<td>452</td>
													<td>2조각</td>
													<td>151</td>
													<td>352</td>
													<td>16</td>
													<td>9</td>
													<td>677</td>
													<td>10</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(슈퍼시드함유도우L)</td>
													<td>1063</td>
													<td>1조각</td>
													<td>133</td>
													<td>309</td>
													<td>14</td>
													<td>4</td>
													<td>548</td>
													<td>8</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(슈퍼시드함유도우M)</td>
													<td>648</td>
													<td>1조각</td>
													<td>108</td>
													<td>247</td>
													<td>11</td>
													<td>4</td>
													<td>434</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(더블치즈엣지L)</td>
													<td>1282</td>
													<td>1조각</td>
													<td>160</td>
													<td>380</td>
													<td>19</td>
													<td>8</td>
													<td>802</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(더블치즈엣지M)</td>
													<td>833</td>
													<td>1조각</td>
													<td>139</td>
													<td>326</td>
													<td>16</td>
													<td>7</td>
													<td>700</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(오리지널L)</td>
													<td>1100</td>
													<td>1조각</td>
													<td>138</td>
													<td>303</td>
													<td>14</td>
													<td>4</td>
													<td>583</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(오리지널M)</td>
													<td>704</td>
													<td>1조각</td>
													<td>117</td>
													<td>253</td>
													<td>12</td>
													<td>4</td>
													<td>524</td>
													<td>5</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(나폴리L)</td>
													<td>910</td>
													<td>1조각</td>
													<td>114</td>
													<td>231</td>
													<td>12</td>
													<td>3</td>
													<td>530</td>
													<td>5</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(나폴리M)</td>
													<td>582</td>
													<td>2조각</td>
													<td>194</td>
													<td>385</td>
													<td>19</td>
													<td>6</td>
													<td>914</td>
													<td>9</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(씬크러스트L)</td>
													<td>752</td>
													<td>2조각</td>
													<td>188</td>
													<td>399</td>
													<td>21</td>
													<td>9</td>
													<td>919</td>
													<td>10</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(씬크러스트M)</td>
													<td>493</td>
													<td>2조각</td>
													<td>164</td>
													<td>341</td>
													<td>17</td>
													<td>8</td>
													<td>817</td>
													<td>9</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(슈퍼시드함유도우L)</td>
													<td>1119</td>
													<td>1조각</td>
													<td>140</td>
													<td>317</td>
													<td>15</td>
													<td>4</td>
													<td>613</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(슈퍼시드함유도우M)</td>
													<td>663</td>
													<td>1조각</td>
													<td>111</td>
													<td>248</td>
													<td>11</td>
													<td>3</td>
													<td>462</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(더블치즈엣지L)</td>
													<td>1317</td>
													<td>1조각</td>
													<td>165</td>
													<td>371</td>
													<td>19</td>
													<td>8</td>
													<td>864</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(더블치즈엣지M)</td>
													<td>872</td>
													<td>1조각</td>
													<td>145</td>
													<td>326</td>
													<td>17</td>
													<td>7</td>
													<td>766</td>
													<td>5</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(오리지널L)</td>
													<td>996</td>
													<td>1조각</td>
													<td>125</td>
													<td>296</td>
													<td>14</td>
													<td>4</td>
													<td>578</td>
													<td>6</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(오리지널M)-6조각</td>
													<td>608</td>
													<td>1조각</td>
													<td>101</td>
													<td>237</td>
													<td>12</td>
													<td>4</td>
													<td>466</td>
													<td>6</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(나폴리L)</td>
													<td>778</td>
													<td>2조각</td>
													<td>194</td>
													<td>455</td>
													<td>22</td>
													<td>8</td>
													<td>976</td>
													<td>12</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(나폴리M)-6조각</td>
													<td>508</td>
													<td>2조각</td>
													<td>169</td>
													<td>387</td>
													<td>20</td>
													<td>7</td>
													<td>855</td>
													<td>10</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(씬크러스트L)</td>
													<td>637</td>
													<td>2조각</td>
													<td>159</td>
													<td>424</td>
													<td>19</td>
													<td>10</td>
													<td>854</td>
													<td>10</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(씬크러스트M)-6조각</td>
													<td>408</td>
													<td>2조각</td>
													<td>136</td>
													<td>357</td>
													<td>17</td>
													<td>9</td>
													<td>707</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(슈퍼시드함유도우L)</td>
													<td>971</td>
													<td>1조각</td>
													<td>121</td>
													<td>299</td>
													<td>13</td>
													<td>5</td>
													<td>542</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(슈퍼시드함유도우M)-6조각</td>
													<td>614</td>
													<td>1조각</td>
													<td>102</td>
													<td>252</td>
													<td>12</td>
													<td>4</td>
													<td>472</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(더블치즈엣지L)</td>
													<td>1181</td>
													<td>1조각</td>
													<td>148</td>
													<td>364</td>
													<td>19</td>
													<td>7</td>
													<td>792</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(더블치즈엣지M)-6조각</td>
													<td>761</td>
													<td>1조각</td>
													<td>127</td>
													<td>316</td>
													<td>16</td>
													<td>7</td>
													<td>676</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(오리지널L)</td>
													<td>1079</td>
													<td>1조각</td>
													<td>135</td>
													<td>343</td>
													<td>17</td>
													<td>6</td>
													<td>570</td>
													<td>5</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(오리지널M)</td>
													<td>599</td>
													<td>2조각</td>
													<td>150</td>
													<td>383</td>
													<td>19</td>
													<td>7</td>
													<td>613</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(나폴리L)</td>
													<td>885</td>
													<td>1조각</td>
													<td>111</td>
													<td>278</td>
													<td>16</td>
													<td>6</td>
													<td>521</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(나폴리M)</td>
													<td>488</td>
													<td>2조각</td>
													<td>122</td>
													<td>319</td>
													<td>17</td>
													<td>7</td>
													<td>551</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(씬크러스트L)</td>
													<td>751</td>
													<td>2조각</td>
													<td>188</td>
													<td>494</td>
													<td>27</td>
													<td>13</td>
													<td>877</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(씬크러스트M)</td>
													<td>408</td>
													<td>2조각</td>
													<td>102</td>
													<td>271</td>
													<td>14</td>
													<td>7</td>
													<td>475</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(슈퍼시드함유도우L)</td>
													<td>1084</td>
													<td>1조각</td>
													<td>136</td>
													<td>345</td>
													<td>15</td>
													<td>6</td>
													<td>579</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(슈퍼시드함유도우M)</td>
													<td>611</td>
													<td>2조각</td>
													<td>153</td>
													<td>394</td>
													<td>19</td>
													<td>7</td>
													<td>653</td>
													<td>8</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(더블치즈엣지L)</td>
													<td>1224</td>
													<td>1조각</td>
													<td>153</td>
													<td>392</td>
													<td>20</td>
													<td>8</td>
													<td>695</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(더블치즈엣지M)</td>
													<td>703</td>
													<td>2조각</td>
													<td>176</td>
													<td>455</td>
													<td>24</td>
													<td>10</td>
													<td>783</td>
													<td>5</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(오리지널L)</td>
													<td>995</td>
													<td>1조각</td>
													<td>124</td>
													<td>298</td>
													<td>13</td>
													<td>5</td>
													<td>520</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(오리지널M)</td>
													<td>606</td>
													<td>1조각</td>
													<td>101</td>
													<td>241</td>
													<td>11</td>
													<td>4</td>
													<td>422</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(나폴리L)</td>
													<td>788</td>
													<td>2조각</td>
													<td>197</td>
													<td>463</td>
													<td>22</td>
													<td>9</td>
													<td>918</td>
													<td>15</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(나폴리M)</td>
													<td>481</td>
													<td>2조각</td>
													<td>160</td>
													<td>376</td>
													<td>18</td>
													<td>8</td>
													<td>780</td>
													<td>12</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(씬크러스트L)</td>
													<td>652</td>
													<td>2조각</td>
													<td>163</td>
													<td>431</td>
													<td>19</td>
													<td>11</td>
													<td>778</td>
													<td>12</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(씬크러스트M)</td>
													<td>393</td>
													<td>2조각</td>
													<td>131</td>
													<td>331</td>
													<td>14</td>
													<td>9</td>
													<td>616</td>
													<td>11</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(슈퍼시드함유도우L)</td>
													<td>976</td>
													<td>1조각</td>
													<td>122</td>
													<td>295</td>
													<td>13</td>
													<td>4</td>
													<td>502</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(슈퍼시드함유도우M)</td>
													<td>607</td>
													<td>1조각</td>
													<td>101</td>
													<td>240</td>
													<td>11</td>
													<td>4</td>
													<td>426</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(더블치즈엣지L)</td>
													<td>1199</td>
													<td>1조각</td>
													<td>150</td>
													<td>375</td>
													<td>18</td>
													<td>8</td>
													<td>757</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(더블치즈엣지M)</td>
													<td>769</td>
													<td>1조각</td>
													<td>128</td>
													<td>319</td>
													<td>16</td>
													<td>7</td>
													<td>660</td>
													<td>7</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(오리지널L)</td>
													<td>1048</td>
													<td>1조각</td>
													<td>131</td>
													<td>364</td>
													<td>20</td>
													<td>7</td>
													<td>761</td>
													<td>5</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(오리지널M)</td>
													<td>603</td>
													<td>2조각</td>
													<td>151</td>
													<td>415</td>
													<td>22</td>
													<td>8</td>
													<td>846</td>
													<td>8</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(나폴리L)</td>
													<td>849</td>
													<td>1조각</td>
													<td>106</td>
													<td>295</td>
													<td>17</td>
													<td>7</td>
													<td>710</td>
													<td>5</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(나폴리M)</td>
													<td>490</td>
													<td>2조각</td>
													<td>123</td>
													<td>345</td>
													<td>19</td>
													<td>9</td>
													<td>763</td>
													<td>5</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(씬크러스트L)</td>
													<td>682</td>
													<td>2조각</td>
													<td>171</td>
													<td>538</td>
													<td>30</td>
													<td>16</td>
													<td>1158</td>
													<td>8</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(씬크러스트M)</td>
													<td>380</td>
													<td>2조각</td>
													<td>95</td>
													<td>300</td>
													<td>16</td>
													<td>9</td>
													<td>654</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(슈퍼시드함유도우L)</td>
													<td>1036</td>
													<td>1조각</td>
													<td>130</td>
													<td>355</td>
													<td>16</td>
													<td>8</td>
													<td>748</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(슈퍼시드함유도우M)</td>
													<td>610</td>
													<td>2조각</td>
													<td>153</td>
													<td>412</td>
													<td>21</td>
													<td>8</td>
													<td>819</td>
													<td>8</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(더블치즈엣지L)</td>
													<td>1220</td>
													<td>1조각</td>
													<td>153</td>
													<td>422</td>
													<td>23</td>
													<td>10</td>
													<td>930</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(더블치즈엣지M)</td>
													<td>708</td>
													<td>2조각</td>
													<td>177</td>
													<td>488</td>
													<td>27</td>
													<td>12</td>
													<td>1072</td>
													<td>7</td>
												</tr>
												<tr>
													<td>치즈케이크 블랙타이거(L)</td>
													<td>987</td>
													<td>1조각</td>
													<td>123</td>
													<td>332</td>
													<td>15</td>
													<td>6</td>
													<td>622</td>
													<td>9</td>
												</tr>
												<tr>
													<td>치즈케이크 블랙타이거(M)</td>
													<td>582</td>
													<td>2조각</td>
													<td>194</td>
													<td>520</td>
													<td>23</td>
													<td>9</td>
													<td>1012</td>
													<td>14</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (오리지널 L)</td>
													<td>1,003</td>
													<td>1조각</td>
													<td>125</td>
													<td>322</td>
													<td>15</td>
													<td>3</td>
													<td>626</td>
													<td>6</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (오리지널 M)</td>
													<td>615</td>
													<td>2조각</td>
													<td>154</td>
													<td>398</td>
													<td>20</td>
													<td>6</td>
													<td>796</td>
													<td>9</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (나폴리 L)</td>
													<td>817</td>
													<td>1조각</td>
													<td>102</td>
													<td>260</td>
													<td>14</td>
													<td>4</td>
													<td>558</td>
													<td>5</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (나폴리 M)
													<td>496</td>
													<td>2조각</td>
													<td>124</td>
													<td>316</td>
													<td>16</td>
													<td>5</td>
													<td>694</td>
													<td>6</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (씬크러스트 L)</td>
													<td>694</td>
													<td>2조각</td>
													<td>174</td>
													<td>492</td>
													<td>26</td>
													<td>11</td>
													<td>1,020</td>
													<td>12</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (씬크러스트 M)</td>
													<td>404</td>
													<td>2조각</td>
													<td>101</td>
													<td>282</td>
													<td>14</td>
													<td>7</td>
													<td>625</td>
													<td>7</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (슈퍼시드함유도우 L)</td>
													<td>1,044</td>
													<td>1조각</td>
													<td>131</td>
													<td>328</td>
													<td>17</td>
													<td>5</td>
													<td>588</td>
													<td>6</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (슈퍼시드함유도우 M)</td>
													<td>632</td>
													<td>2조각</td>
													<td>158</td>
													<td>413</td>
													<td>20</td>
													<td>7</td>
													<td>735</td>
													<td>10</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (더블치즈엣지 L)</td>
													<td>1,108</td>
													<td>1조각</td>
													<td>139</td>
													<td>350</td>
													<td>19</td>
													<td>6</td>
													<td>763</td>
													<td>5</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (더블치즈엣지 M)</td>
													<td>769</td>
													<td>2조각</td>
													<td>192</td>
													<td>490</td>
													<td>27</td>
													<td>9</td>
													<td>995</td>
													<td>8</td>
												</tr>
												<tr>
													<td>더블크러스트 이베리코(더블 크러스트 L)</td>
													<td>1,038</td>
													<td>1조각</td>
													<td>130</td>
													<td>344</td>
													<td>12</td>
													<td>7</td>
													<td>465</td>
													<td>10</td>
												</tr>
												<tr>
													<td>더블크러스트 이베리코(더블 크러스트 M)</td>
													<td>652</td>
													<td>2조각</td>
													<td>163</td>
													<td>421</td>
													<td>14</td>
													<td>9</td>
													<td>564</td>
													<td>13</td>
												</tr>
												<tr>
													<td>리얼불고기(오리지널 L)</td>
													<td>923</td>
													<td>1조각</td>
													<td>115</td>
													<td>280</td>
													<td>13</td>
													<td>4</td>
													<td>520</td>
													<td>5</td>
												</tr>
												<tr>
													<td>리얼불고기(오리지널 M)</td>
													<td>520</td>
													<td>2조각</td>
													<td>130</td>
													<td>334</td>
													<td>16</td>
													<td>4</td>
													<td>541</td>
													<td>5</td>
												</tr>
												<tr>
													<td>리얼불고기(나폴리L)</td>
													<td>725</td>
													<td>2조각</td>
													<td>181</td>
													<td>430</td>
													<td>23</td>
													<td>7</td>
													<td>946</td>
													<td>8</td>
												</tr>
												<tr>
													<td>리얼불고기(나폴리M)</td>
													<td>396</td>
													<td>3조각</td>
													<td>149</td>
													<td>365</td>
													<td>20</td>
													<td>6</td>
													<td>676</td>
													<td>6</td>
												</tr>
												<tr>
													<td>리얼불고기(씬 L)</td>
													<td>556</td>
													<td>2조각</td>
													<td>139</td>
													<td>396</td>
													<td>22</td>
													<td>9</td>
													<td>838</td>
													<td>6</td>
												</tr>
												<tr>
													<td>리얼불고기(씬 M)</td>
													<td>296</td>
													<td>3조각</td>
													<td>111</td>
													<td>313</td>
													<td>15</td>
													<td>8</td>
													<td>597</td>
													<td>5</td>
												</tr>
												<tr>
													<td>리얼불고기(슈퍼시드 함유 도우L)</td>
													<td>924</td>
													<td>1조각</td>
													<td>116</td>
													<td>292</td>
													<td>14</td>
													<td>4</td>
													<td>561</td>
													<td>6</td>
												</tr>
												<tr>
													<td>리얼불고기(슈퍼시드 함유 도우M)</td>
													<td>533</td>
													<td>2조각</td>
													<td>133</td>
													<td>344</td>
													<td>17</td>
													<td>5</td>
													<td>544</td>
													<td>7</td>
												</tr>
												<tr>
													<td>리얼불고기 더블치즈엣지(오리지널 L)</td>
													<td>1,149</td>
													<td>1조각</td>
													<td>144</td>
													<td>350</td>
													<td>18</td>
													<td>6</td>
													<td>669</td>
													<td>4</td>
												</tr>
												<tr>
													<td>리얼불고기 더블치즈엣지(오리지널 M)</td>
													<td>679</td>
													<td>2조각</td>
													<td>170</td>
													<td>428</td>
													<td>21</td>
													<td>8</td>
													<td>856</td>
													<td>5</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(오리지널 L)</td>
													<td>938</td>
													<td>1조각</td>
													<td>117</td>
													<td>280</td>
													<td>15</td>
													<td>3</td>
													<td>600</td>
													<td>7</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(오리지널 M)</td>
													<td>570</td>
													<td>2조각</td>
													<td>143</td>
													<td>323</td>
													<td>18</td>
													<td>4</td>
													<td>708</td>
													<td>7</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(나폴리L)</td>
													<td>742</td>
													<td>2조각</td>
													<td>186</td>
													<td>430</td>
													<td>22</td>
													<td>6</td>
													<td>1,078</td>
													<td>11</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(나폴리M)</td>
													<td>444</td>
													<td>2조각</td>
													<td>111</td>
													<td>254</td>
													<td>15</td>
													<td>4</td>
													<td>596</td>
													<td>7</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(씬 L)</td>
													<td>613</td>
													<td>2조각</td>
													<td>153</td>
													<td>389</td>
													<td>20</td>
													<td>9</td>
													<td>912</td>
													<td>11</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(씬 M)</td>
													<td>346</td>
													<td>3조각</td>
													<td>130</td>
													<td>333</td>
													<td>19</td>
													<td>7</td>
													<td>794</td>
													<td>8</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(슈퍼시드 함유 도우L)</td>
													<td>944</td>
													<td>1조각</td>
													<td>118</td>
													<td>280</td>
													<td>16</td>
													<td>4</td>
													<td>608</td>
													<td>9</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(슈퍼시드 함유 도우M)</td>
													<td>573</td>
													<td>2조각</td>
													<td>143</td>
													<td>322</td>
													<td>17</td>
													<td>4</td>
													<td>682</td>
													<td>10</td>
												</tr>
												<tr>
													<td>문어밤 슈림프 더블치즈엣지(오리지널 L)</td>
													<td>1,153</td>
													<td>1조각</td>
													<td>144</td>
													<td>347</td>
													<td>18</td>
													<td>7</td>
													<td>784</td>
													<td>6</td>
												</tr>
												<tr>
													<td>문어밤 슈림프 더블치즈엣지(오리지널 M)</td>
													<td>745</td>
													<td>2조각</td>
													<td>186</td>
													<td>460</td>
													<td>25</td>
													<td>9</td>
													<td>1,024</td>
													<td>8</td>
												</tr>
												<tr>
													<td>베스트 콰트로(오리지널 L)</td>
													<td>1,068</td>
													<td>1조각</td>
													<td>134</td>
													<td>312</td>
													<td>13</td>
													<td>5</td>
													<td>598</td>
													<td>6</td>
												</tr>
												<tr>
													<td>베스트 콰트로(오리지널 M)</td>
													<td>627</td>
													<td>2조각</td>
													<td>157</td>
													<td>387</td>
													<td>18</td>
													<td>6</td>
													<td>704</td>
													<td>8</td>
												</tr>
												<tr>
													<td>베스트 콰트로(나폴리L)</td>
													<td>853</td>
													<td>1조각</td>
													<td>107</td>
													<td>259</td>
													<td>12</td>
													<td>5</td>
													<td>499</td>
													<td>5</td>
												</tr>
												<tr>
													<td>베스트 콰트로(나폴리M)</td>
													<td>515</td>
													<td>2조각</td>
													<td>129</td>
													<td>306</td>
													<td>15</td>
													<td>6</td>
													<td>698</td>
													<td>7</td>
												</tr>
												<tr>
													<td>베스트 콰트로(씬 L)</td>
													<td>723</td>
													<td>2조각</td>
													<td>181</td>
													<td>457</td>
													<td>19</td>
													<td>11</td>
													<td>868</td>
													<td>9</td>
												</tr>
												<tr>
													<td>베스트 콰트로(씬 M)</td>
													<td>448</td>
													<td>2조각</td>
													<td>112</td>
													<td>274</td>
													<td>12</td>
													<td>7</td>
													<td>540</td>
													<td>6</td>
												</tr>
												<tr>
													<td>베스트 콰트로(슈퍼시드 함유 도우L)</td>
													<td>1,055</td>
													<td>1조각</td>
													<td>132</td>
													<td>322</td>
													<td>13</td>
													<td>5</td>
													<td>517</td>
													<td>12</td>
												</tr>
												<tr>
													<td>베스트 콰트로(슈퍼시드 함유 도우M)</td>
													<td>634</td>
													<td>2조각</td>
													<td>159</td>
													<td>393</td>
													<td>17</td>
													<td>6</td>
													<td>636</td>
													<td>13</td>
												</tr>
												<tr>
													<td>베스트 콰트로 더블치즈엣지(오리지널 L)</td>
													<td>1,276</td>
													<td>1조각</td>
													<td>160</td>
													<td>384</td>
													<td>19</td>
													<td>8</td>
													<td>732</td>
													<td>7</td>
												</tr>
												<tr>
													<td>베스트 콰트로 더블치즈엣지(오리지널 M)</td>
													<td>777</td>
													<td>2조각</td>
													<td>194</td>
													<td>455</td>
													<td>23</td>
													<td>9</td>
													<td>907</td>
													<td>7</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(오리지널 L)</td>
													<td>912</td>
													<td>1조각</td>
													<td>114</td>
													<td>311</td>
													<td>14</td>
													<td>6</td>
													<td>399</td>
													<td>4</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(오리지널 M)</td>
													<td>516</td>
													<td>2조각</td>
													<td>129</td>
													<td>356</td>
													<td>18</td>
													<td>8</td>
													<td>529</td>
													<td>5</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(나폴리L)</td>
													<td>705</td>
													<td>2조각</td>
													<td>176</td>
													<td>465</td>
													<td>24</td>
													<td>11</td>
													<td>696</td>
													<td>5</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(나폴리M)</td>
													<td>382</td>
													<td>3조각</td>
													<td>143</td>
													<td>382</td>
													<td>21</td>
													<td>9</td>
													<td>606</td>
													<td>5</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(씬 L)</td>
													<td>587</td>
													<td>2조각</td>
													<td>147</td>
													<td>437</td>
													<td>22</td>
													<td>14</td>
													<td>671</td>
													<td>4</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(씬 M)</td>
													<td>334</td>
													<td>3조각</td>
													<td>125</td>
													<td>377</td>
													<td>19</td>
													<td>12</td>
													<td>525</td>
													<td>4</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(슈퍼시드 함유 도우L)</td>
													<td>945</td>
													<td>1조각</td>
													<td>118</td>
													<td>305</td>
													<td>15</td>
													<td>6</td>
													<td>467</td>
													<td>6</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(슈퍼시드 함유 도우M)</td>
													<td>530</td>
													<td>2조각</td>
													<td>133</td>
													<td>355</td>
													<td>15</td>
													<td>7</td>
													<td>481</td>
													<td>7</td>
												</tr>
												<tr>
													<td>베이컨체더치즈 더블치즈엣지(오리지널 L)</td>
													<td>1,083</td>
													<td>1조각</td>
													<td>135</td>
													<td>364</td>
													<td>18</td>
													<td>9</td>
													<td>508</td>
													<td>4</td>
												</tr>
												<tr>
													<td>베이컨체더치즈 더블치즈엣지(오리지널 M)</td>
													<td>632</td>
													<td>2조각</td>
													<td>158</td>
													<td>436</td>
													<td>21</td>
													<td>11</td>
													<td>624</td>
													<td>5</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(오리지널 L)</td>
													<td>1,008</td>
													<td>1조각</td>
													<td>126</td>
													<td>307</td>
													<td>14</td>
													<td>5</td>
													<td>471</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(오리지널 M)</td>
													<td>638</td>
													<td>2조각</td>
													<td>160</td>
													<td>383</td>
													<td>17</td>
													<td>7</td>
													<td>612</td>
													<td>10</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(나폴리L)</td>
													<td>822</td>
													<td>1조각</td>
													<td>103</td>
													<td>248</td>
													<td>12</td>
													<td>6</td>
													<td>440</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(나폴리M)</td>
													<td>484</td>
													<td>2조각</td>
													<td>121</td>
													<td>296</td>
													<td>14</td>
													<td>7</td>
													<td>555</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(씬 L)</td>
													<td>675</td>
													<td>2조각</td>
													<td>169</td>
													<td>459</td>
													<td>20</td>
													<td>12</td>
													<td>736</td>
													<td>11</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(씬 M)</td>
													<td>411</td>
													<td>2조각</td>
													<td>103</td>
													<td>266</td>
													<td>12</td>
													<td>7</td>
													<td>413</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(슈퍼시드 함유 도우L)</td>
													<td>1,006</td>
													<td>1조각</td>
													<td>126</td>
													<td>301</td>
													<td>14</td>
													<td>5</td>
													<td>487</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(슈퍼시드 함유 도우M)</td>
													<td>633</td>
													<td>2조각</td>
													<td>158</td>
													<td>369</td>
													<td>17</td>
													<td>6</td>
													<td>611</td>
													<td>13</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크 더블치즈엣지(오리지널 L)</td>
													<td>1,246</td>
													<td>1조각</td>
													<td>156</td>
													<td>388</td>
													<td>19</td>
													<td>9</td>
													<td>743</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크 더블치즈엣지(오리지널 M)</td>
													<td>793</td>
													<td>2조각</td>
													<td>198</td>
													<td>488</td>
													<td>23</td>
													<td>12</td>
													<td>954</td>
													<td>11</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(오리지널 L)</td>
													<td>982</td>
													<td>1조각</td>
													<td>123</td>
													<td>288</td>
													<td>13</td>
													<td>4</td>
													<td>568</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(오리지널 M)</td>
													<td>574</td>
													<td>2조각</td>
													<td>191</td>
													<td>453</td>
													<td>20</td>
													<td>6</td>
													<td>863</td>
													<td>14</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(나폴리L)</td>
													<td>753</td>
													<td>2조각</td>
													<td>188</td>
													<td>431</td>
													<td>20</td>
													<td>7</td>
													<td>956</td>
													<td>16</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(나폴리M)</td>
													<td>477</td>
													<td>2조각</td>
													<td>159</td>
													<td>358</td>
													<td>18</td>
													<td>6</td>
													<td>819</td>
													<td>13</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(씬 L)</td>
													<td>375</td>
													<td>2조각</td>
													<td>125</td>
													<td>308</td>
													<td>14</td>
													<td>8</td>
													<td>674</td>
													<td>12</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(씬 M)</td>
													<td>628</td>
													<td>2조각</td>
													<td>157</td>
													<td>403</td>
													<td>18</td>
													<td>9</td>
													<td>821</td>
													<td>14</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(슈퍼시드 함유 도우L)</td>
													<td>946</td>
													<td>1조각</td>
													<td>118</td>
													<td>290</td>
													<td>13</td>
													<td>4</td>
													<td>517</td>
													<td>10</td>
												</tr>
												<tr>
													<td>블랙타이거슈림프(슈퍼시드 함유 도우M)</td>
													<td>1,152</td>
													<td>1조각</td>
													<td>144</td>
													<td>363</td>
													<td>18</td>
													<td>7</td>
													<td>770</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 더블치즈엣지(오리지널 L)</td>
													<td>580</td>
													<td>2조각</td>
													<td>193</td>
													<td>468</td>
													<td>21</td>
													<td>8</td>
													<td>884</td>
													<td>18</td>
												</tr>
												<tr>
													<td>블랙타이거슈림프 더블치즈엣지(오리지널 M)</td>
													<td>744</td>
													<td>1조각</td>
													<td>124</td>
													<td>312</td>
													<td>16</td>
													<td>7</td>
													<td>681</td>
													<td>7</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(오리지널 L)</td>
													<td>1,073</td>
													<td>1조각</td>
													<td>134</td>
													<td>307</td>
													<td>17</td>
													<td>5</td>
													<td>439</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(오리지널 M)</td>
													<td>599</td>
													<td>2조각</td>
													<td>150</td>
													<td>386</td>
													<td>19</td>
													<td>7</td>
													<td>481</td>
													<td>4</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(나폴리L)</td>
													<td>856</td>
													<td>1조각</td>
													<td>107</td>
													<td>251</td>
													<td>12</td>
													<td>5</td>
													<td>358</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(나폴리M)</td>
													<td>472</td>
													<td>2조각</td>
													<td>118</td>
													<td>282</td>
													<td>15</td>
													<td>6</td>
													<td>408</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(씬 L)</td>
													<td>744</td>
													<td>2조각</td>
													<td>186</td>
													<td>450</td>
													<td>24</td>
													<td>12</td>
													<td>692</td>
													<td>4</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(씬 M)</td>
													<td>414</td>
													<td>2조각</td>
													<td>104</td>
													<td>262</td>
													<td>14</td>
													<td>7</td>
													<td>361</td>
													<td>2</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(슈퍼시드 함유 도우L)</td>
													<td>1,059</td>
													<td>1조각</td>
													<td>132</td>
													<td>311</td>
													<td>14</td>
													<td>4</td>
													<td>537</td>
													<td>6</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(슈퍼시드 함유 도우M)</td>
													<td>610</td>
													<td>2조각</td>
													<td>153</td>
													<td>349</td>
													<td>16</td>
													<td>6</td>
													<td>621</td>
													<td>6</td>
												</tr>
												<tr>
													<td>슈퍼디럭스 더블치즈엣지(오리지널 L)</td>
													<td>1,272</td>
													<td>1조각</td>
													<td>159</td>
													<td>359</td>
													<td>19</td>
													<td>8</td>
													<td>587</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼디럭스 더블치즈엣지(오리지널 M)</td>
													<td>750</td>
													<td>2조각</td>
													<td>188</td>
													<td>452</td>
													<td>24</td>
													<td>10</td>
													<td>669</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(오리지널 L)</td>
													<td>1,205</td>
													<td>1조각</td>
													<td>151</td>
													<td>321</td>
													<td>17</td>
													<td>5</td>
													<td>462</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(오리지널 M)</td>
													<td>671</td>
													<td>2조각</td>
													<td>168</td>
													<td>366</td>
													<td>20</td>
													<td>6</td>
													<td>461</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(나폴리L)</td>
													<td>983</td>
													<td>1조각</td>
													<td>123</td>
													<td>246</td>
													<td>14</td>
													<td>5</td>
													<td>392</td>
													<td>4</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(나폴리M)</td>
													<td>555</td>
													<td>2조각</td>
													<td>139</td>
													<td>291</td>
													<td>16</td>
													<td>6</td>
													<td>494</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(씬 L)</td>
													<td>889</td>
													<td>1조각</td>
													<td>111</td>
													<td>236</td>
													<td>13</td>
													<td>6</td>
													<td>353</td>
													<td>4</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(씬 M)</td>
													<td>479</td>
													<td>2조각</td>
													<td>120</td>
													<td>251</td>
													<td>15</td>
													<td>7</td>
													<td>376</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(슈퍼시드 함유 도우L)</td>
													<td>1,180</td>
													<td>1조각</td>
													<td>148</td>
													<td>322</td>
													<td>14</td>
													<td>4</td>
													<td>540</td>
													<td>9</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(슈퍼시드 함유 도우M)</td>
													<td>660</td>
													<td>2조각</td>
													<td>165</td>
													<td>373</td>
													<td>17</td>
													<td>5</td>
													<td>629</td>
													<td>10</td>
												</tr>
												<tr>
													<td>슈퍼슈프림 더블치즈엣지(오리지널 L)</td>
													<td>1,372</td>
													<td>1조각</td>
													<td>172</td>
													<td>374</td>
													<td>21</td>
													<td>7</td>
													<td>518</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림 더블치즈엣지(오리지널 M)</td>
													<td>773</td>
													<td>2조각</td>
													<td>193</td>
													<td>433</td>
													<td>24</td>
													<td>9</td>
													<td>587</td>
													<td>5</td>
												</tr>
												<tr>
													<td>우리 고구마(오리지널 L)</td>
													<td>1,026</td>
													<td>1조각</td>
													<td>128</td>
													<td>321</td>
													<td>13</td>
													<td>6</td>
													<td>441</td>
													<td>9</td>
												</tr>
												<tr>
													<td>우리 고구마(오리지널 M)</td>
													<td>626</td>
													<td>2조각</td>
													<td>157</td>
													<td>372</td>
													<td>15</td>
													<td>6</td>
													<td>552</td>
													<td>14</td>
												</tr>
												<tr>
													<td>우리 고구마(나폴리L)</td>
													<td>858</td>
													<td>1조각</td>
													<td>107</td>
													<td>273</td>
													<td>11</td>
													<td>6</td>
													<td>406</td>
													<td>9</td>
												</tr>
												<tr>
													<td>우리 고구마(나폴리M)</td>
													<td>537</td>
													<td>2조각</td>
													<td>134</td>
													<td>311</td>
													<td>12</td>
													<td>7</td>
													<td>475</td>
													<td>12</td>
												</tr>
												<tr>
													<td>우리 고구마(씬 L)</td>
													<td>699</td>
													<td>2조각</td>
													<td>175</td>
													<td>482</td>
													<td>19</td>
													<td>13</td>
													<td>682</td>
													<td>17</td>
												</tr>
												<tr>
													<td>우리 고구마(씬 M)</td>
													<td>437</td>
													<td>2조각</td>
													<td>109</td>
													<td>277</td>
													<td>10</td>
													<td>7</td>
													<td>389</td>
													<td>13</td>
												</tr>
												<tr>
													<td>우리 고구마(슈퍼시드 함유 도우L)</td>
													<td>1,041</td>
													<td>1조각</td>
													<td>130</td>
													<td>338</td>
													<td>13</td>
													<td>6</td>
													<td>494</td>
													<td>10</td>
												</tr>
												<tr>
													<td>우리 고구마(슈퍼시드 함유 도우M)</td>
													<td>663</td>
													<td>2조각</td>
													<td>166</td>
													<td>399</td>
													<td>15</td>
													<td>7</td>
													<td>529</td>
													<td>17</td>
												</tr>
												<tr>
													<td>우리 고구마 더블치즈엣지(오리지널 L)</td>
													<td>1,251</td>
													<td>1조각</td>
													<td>156</td>
													<td>399</td>
													<td>18</td>
													<td>8</td>
													<td>696</td>
													<td>9</td>
												</tr>
												<tr>
													<td>우리 고구마 더블치즈엣지(오리지널 M)</td>
													<td>771</td>
													<td>2조각</td>
													<td>193</td>
													<td>482</td>
													<td>22</td>
													<td>11</td>
													<td>829</td>
													<td>14</td>
												</tr>
												<tr>
													<td>직화 스테이크(오리지널 L)</td>
													<td>1,010</td>
													<td>1조각</td>
													<td>126</td>
													<td>304</td>
													<td>14</td>
													<td>5</td>
													<td>587</td>
													<td>5</td>
												</tr>
												<tr>
													<td>직화 스테이크(오리지널 M)</td>
													<td>641</td>
													<td>2조각</td>
													<td>160</td>
													<td>370</td>
													<td>20</td>
													<td>6</td>
													<td>752</td>
													<td>6</td>
												</tr>
												<tr>
													<td>직화 스테이크(나폴리L)</td>
													<td>802</td>
													<td>1조각</td>
													<td>100</td>
													<td>240</td>
													<td>12</td>
													<td>4</td>
													<td>497</td>
													<td>4</td>
												</tr>
												<tr>
													<td>직화 스테이크(나폴리M)</td>
													<td>538</td>
													<td>2조각</td>
													<td>135</td>
													<td>313</td>
													<td>16</td>
													<td>6</td>
													<td>667</td>
													<td>5</td>
												</tr>
												<tr>
													<td>직화 스테이크(씬 L)</td>
													<td>646</td>
													<td>2조각</td>
													<td>162</td>
													<td>444</td>
													<td>20</td>
													<td>11</td>
													<td>887</td>
													<td>6</td>
												</tr>
												<tr>
													<td>직화 스테이크(씬 M)</td>
													<td>441</td>
													<td>2조각</td>
													<td>110</td>
													<td>308</td>
													<td>15</td>
													<td>8</td>
													<td>552</td>
													<td>4</td>
												</tr>
												<tr>
													<td>직화 스테이크(슈퍼시드 함유 도우L)</td>
													<td>995</td>
													<td>1조각</td>
													<td>124</td>
													<td>308</td>
													<td>14</td>
													<td>5</td>
													<td>568</td>
													<td>6</td>
												</tr>
												<tr>
													<td>직화 스테이크(슈퍼시드 함유 도우M)</td>
													<td>647</td>
													<td>2조각</td>
													<td>162</td>
													<td>406</td>
													<td>19</td>
													<td>7</td>
													<td>755</td>
													<td>8</td>
												</tr>
												<tr>
													<td>직화 스테이크 더블치즈엣지(오리지널 L)</td>
													<td>777</td>
													<td>2조각</td>
													<td>194</td>
													<td>480</td>
													<td>25</td>
													<td>10</td>
													<td>1,006</td>
													<td>6</td>
												</tr>
												<tr>
													<td>직화 스테이크 더블치즈엣지(오리지널 M)</td>
													<td>1,209</td>
													<td>1조각</td>
													<td>151</td>
													<td>364</td>
													<td>20</td>
													<td>7</td>
													<td>815</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(오리지널 L)</td>
													<td>764</td>
													<td>2조각</td>
													<td>191</td>
													<td>466</td>
													<td>24</td>
													<td>6</td>
													<td>638</td>
													<td>7</td>
												</tr>
												<tr>
													<td>치즈(오리지널 M)</td>
													<td>447</td>
													<td>2조각</td>
													<td>112</td>
													<td>285</td>
													<td>15</td>
													<td>4</td>
													<td>403</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(나폴리L)</td>
													<td>544</td>
													<td>2조각</td>
													<td>136</td>
													<td>352</td>
													<td>19</td>
													<td>7</td>
													<td>574</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈(나폴리M)</td>
													<td>308</td>
													<td>3조각</td>
													<td>116</td>
													<td>305</td>
													<td>18</td>
													<td>6</td>
													<td>460</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(씬 L)</td>
													<td>441</td>
													<td>2조각</td>
													<td>110</td>
													<td>314</td>
													<td>17</td>
													<td>9</td>
													<td>423</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(씬 M)</td>
													<td>247</td>
													<td>4조각</td>
													<td>124</td>
													<td>374</td>
													<td>20</td>
													<td>11</td>
													<td>572</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(슈퍼시드 함유 도우L)</td>
													<td>764</td>
													<td>2조각</td>
													<td>191</td>
													<td>504</td>
													<td>21</td>
													<td>6</td>
													<td>690</td>
													<td>11</td>
												</tr>
												<tr>
													<td>치즈(슈퍼시드 함유 도우M)</td>
													<td>426</td>
													<td>2조각</td>
													<td>107</td>
													<td>289</td>
													<td>14</td>
													<td>4</td>
													<td>406</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈 더블치즈엣지(오리지널 L)</td>
													<td>970</td>
													<td>1조각</td>
													<td>121</td>
													<td>301</td>
													<td>15</td>
													<td>6</td>
													<td>452</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈 더블치즈엣지(오리지널 M)</td>
													<td>581</td>
													<td>2조각</td>
													<td>145</td>
													<td>379</td>
													<td>20</td>
													<td>8</td>
													<td>539</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈가든(오리지널 L)</td>
													<td>870</td>
													<td>1조각</td>
													<td>109</td>
													<td>250</td>
													<td>10</td>
													<td>3</td>
													<td>353</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈가든(오리지널 M)</td>
													<td>527</td>
													<td>2조각</td>
													<td>132</td>
													<td>287</td>
													<td>14</td>
													<td>4</td>
													<td>412</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈가든(나폴리L)</td>
													<td>685</td>
													<td>2조각</td>
													<td>171</td>
													<td>363</td>
													<td>16</td>
													<td>5</td>
													<td>591</td>
													<td>7</td>
												</tr>
												<tr>
													<td>치즈가든(나폴리M)</td>
													<td>401</td>
													<td>2조각</td>
													<td>100</td>
													<td>209</td>
													<td>9</td>
													<td>3</td>
													<td>338</td>
													<td>3</td>
												</tr>
												<tr>
													<td>치즈가든(씬 L)</td>
													<td>549</td>
													<td>2조각</td>
													<td>137</td>
													<td>303</td>
													<td>12</td>
													<td>7</td>
													<td>432</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈가든(씬 M)</td>
													<td>305</td>
													<td>3조각</td>
													<td>114</td>
													<td>249</td>
													<td>10</td>
													<td>6</td>
													<td>375</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈가든(슈퍼시드 함유 도우L)</td>
													<td>875</td>
													<td>1조각</td>
													<td>109</td>
													<td>245</td>
													<td>11</td>
													<td>3</td>
													<td>372</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈가든(슈퍼시드 함유 도우M)</td>
													<td>514</td>
													<td>2조각</td>
													<td>129</td>
													<td>296</td>
													<td>11</td>
													<td>3</td>
													<td>433</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈가든 더블치즈엣지(오리지널 L)</td>
													<td>1,103</td>
													<td>1조각</td>
													<td>138</td>
													<td>316</td>
													<td>15</td>
													<td>5</td>
													<td>536</td>
													<td>4</td>
												</tr>
												<tr>
													<td>치즈가든 더블치즈엣지(오리지널 M)</td>
													<td>673</td>
													<td>2조각</td>
													<td>168</td>
													<td>380</td>
													<td>19</td>
													<td>7</td>
													<td>681</td>
													<td>5</td>
												</tr>
												<tr>
													<td>페퍼로니(오리지널 L)</td>
													<td>812</td>
													<td>1조각</td>
													<td>102</td>
													<td>271</td>
													<td>14</td>
													<td>5</td>
													<td>401</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(오리지널 M)</td>
													<td>470</td>
													<td>2조각</td>
													<td>118</td>
													<td>327</td>
													<td>16</td>
													<td>6</td>
													<td>445</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(나폴리L)</td>
													<td>590</td>
													<td>2조각</td>
													<td>148</td>
													<td>426</td>
													<td>24</td>
													<td>9</td>
													<td>680</td>
													<td>5</td>
												</tr>
												<tr>
													<td>페퍼로니(나폴리M)</td>
													<td>338</td>
													<td>3조각</td>
													<td>127</td>
													<td>384</td>
													<td>20</td>
													<td>8</td>
													<td>558</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(씬 L)</td>
													<td>525</td>
													<td>2조각</td>
													<td>131</td>
													<td>386</td>
													<td>22</td>
													<td>11</td>
													<td>567</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(씬 M)</td>
													<td>291</td>
													<td>3조각</td>
													<td>109</td>
													<td>336</td>
													<td>18</td>
													<td>10</td>
													<td>503</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(슈퍼시드 함유 도우L)</td>
													<td>832</td>
													<td>1조각</td>
													<td>104</td>
													<td>288</td>
													<td>13</td>
													<td>4</td>
													<td>413</td>
													<td>6</td>
												</tr>
												<tr>
													<td>페퍼로니(슈퍼시드 함유 도우M)</td>
													<td>494</td>
													<td>2조각</td>
													<td>124</td>
													<td>345</td>
													<td>15</td>
													<td>6</td>
													<td>505</td>
													<td>6</td>
												</tr>
												<tr>
													<td>페퍼로니 더블치즈엣지(오리지널 L)</td>
													<td>995</td>
													<td>1조각</td>
													<td>124</td>
													<td>341</td>
													<td>16</td>
													<td>7</td>
													<td>480</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니 더블치즈엣지(오리지널 M)</td>
													<td>588</td>
													<td>2조각</td>
													<td>147</td>
													<td>403</td>
													<td>20</td>
													<td>9</td>
													<td>576</td>
													<td>4</td>
												</tr>
												<tr>
													<td>포테이토(오리지널 L)</td>
													<td>1,110</td>
													<td>1조각</td>
													<td>139</td>
													<td>322</td>
													<td>15</td>
													<td>4</td>
													<td>380</td>
													<td>4</td>
												</tr>
												<tr>
													<td>포테이토(오리지널 M)</td>
													<td>594</td>
													<td>2조각</td>
													<td>149</td>
													<td>352</td>
													<td>16</td>
													<td>5</td>
													<td>380</td>
													<td>4</td>
												</tr>
												<tr>
													<td>포테이토(나폴리L)</td>
													<td>921</td>
													<td>1조각</td>
													<td>115</td>
													<td>260</td>
													<td>15</td>
													<td>4</td>
													<td>332</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토(나폴리M)</td>
													<td>486</td>
													<td>2조각</td>
													<td>122</td>
													<td>292</td>
													<td>16</td>
													<td>5</td>
													<td>338</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토(씬 L)</td>
													<td>820</td>
													<td>1조각</td>
													<td>103</td>
													<td>224</td>
													<td>12</td>
													<td>5</td>
													<td>298</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토(씬 M)</td>
													<td>436</td>
													<td>2조각</td>
													<td>109</td>
													<td>243</td>
													<td>12</td>
													<td>5</td>
													<td>296</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토(슈퍼시드 함유 도우L)</td>
													<td>1,132</td>
													<td>1조각</td>
													<td>142</td>
													<td>335</td>
													<td>14</td>
													<td>4</td>
													<td>409</td>
													<td>6</td>
												</tr>
												<tr>
													<td>포테이토(슈퍼시드 함유 도우M)</td>
													<td>611</td>
													<td>2조각</td>
													<td>153</td>
													<td>376</td>
													<td>17</td>
													<td>5</td>
													<td>487</td>
													<td>7</td>
												</tr>
												<tr>
													<td>포테이토 더블치즈엣지(오리지널 L)</td>
													<td>1,228</td>
													<td>1조각</td>
													<td>154</td>
													<td>362</td>
													<td>18</td>
													<td>6</td>
													<td>459</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토 더블치즈엣지(오리지널 M)</td>
													<td>697</td>
													<td>2조각</td>
													<td>174</td>
													<td>422</td>
													<td>21</td>
													<td>8</td>
													<td>495</td>
													<td>4</td>
												</tr>
												<tr>
													<td>핫치킨(오리지널 L)</td>
													<td>948</td>
													<td>1조각</td>
													<td>119</td>
													<td>287</td>
													<td>13</td>
													<td>3</td>
													<td>601</td>
													<td>9</td>
												</tr>
												<tr>
													<td>핫치킨(오리지널 M)</td>
													<td>576</td>
													<td>2조각</td>
													<td>144</td>
													<td>346</td>
													<td>15</td>
													<td>3</td>
													<td>684</td>
													<td>13</td>
												</tr>
												<tr>
													<td>핫치킨(나폴리L)</td>
													<td>752</td>
													<td>2조각</td>
													<td>188</td>
													<td>466</td>
													<td>22</td>
													<td>7</td>
													<td>1,066</td>
													<td>15</td>
												</tr>
												<tr>
													<td>핫치킨(나폴리M)</td>
													<td>455</td>
													<td>2조각</td>
													<td>114</td>
													<td>274</td>
													<td>14</td>
													<td>4</td>
													<td>588</td>
													<td>8</td>
												</tr>
												<tr>
													<td>핫치킨(씬 L)</td>
													<td>607</td>
													<td>2조각</td>
													<td>152</td>
													<td>410</td>
													<td>20</td>
													<td>7</td>
													<td>942</td>
													<td>18</td>
												</tr>
												<tr>
													<td>핫치킨(씬 M)</td>
													<td>353</td>
													<td>3조각</td>
													<td>132</td>
													<td>323</td>
													<td>15</td>
													<td>6</td>
													<td>736</td>
													<td>14</td>
												</tr>
												<tr>
													<td>핫치킨(슈퍼시드 함유 도우L)</td>
													<td>953</td>
													<td>1조각</td>
													<td>119</td>
													<td>297</td>
													<td>13</td>
													<td>3</td>
													<td>563</td>
													<td>10</td>
												</tr>
												<tr>
													<td>핫치킨(슈퍼시드 함유 도우M)</td>
													<td>584</td>
													<td>2조각</td>
													<td>146</td>
													<td>361</td>
													<td>16</td>
													<td>3</td>
													<td>632</td>
													<td>10</td>
												</tr>
												<tr>
													<td>핫치킨 더블치즈엣지(오리지널 L)</td>
													<td>1,147</td>
													<td>1조각</td>
													<td>143</td>
													<td>356</td>
													<td>18</td>
													<td>6</td>
													<td>757</td>
													<td>8</td>
												</tr>
												<tr>
													<td>핫치킨 더블치즈엣지(오리지널 M)</td>
													<td>726</td>
													<td>2조각</td>
													<td>182</td>
													<td>441</td>
													<td>22</td>
													<td>7</td>
													<td>873</td>
													<td>9</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div id="allergy1-2" class="tab-content-v2">
									<div class="allergy-group">
										<div class="title-type3">1. 사이드디시</div>
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
													<tr>
														<td>치캉스 팩</td>
														<td>538</td>
														<td>1037</td>
														<td>77</td>
														<td>12</td>
														<td>2263</td>
														<td>15</td>
													</tr>
													<tr>
														<td>크리스피 핫 순살 치킨(8조각)</td>
														<td>127</td>
														<td>262</td>
														<td>25</td>
														<td>2</td>
														<td>966</td>
														<td>1</td>
													</tr>
													<tr>
														<td>한돈 빠에야</td>
														<td>344</td>
														<td>555</td>
														<td>21</td>
														<td>12</td>
														<td>1742</td>
														<td>13</td>
													</tr>
													<tr>
														<td>갈릭&허브윙스(8조각)</td>
														<td>315</td>
														<td>595</td>
														<td>47</td>
														<td>9</td>
														<td>964</td>
														<td>3</td>
													</tr>
													<tr>
														<td>샐러드 가든</td>
														<td>141</td>
														<td>52</td>
														<td>2</td>
														<td>0</td>
														<td>301</td>
														<td>5</td>
													</tr>
													<tr>
														<td>슈퍼곡물 치킨(10조각)</td>
														<td>178</td>
														<td>481</td>
														<td>36</td>
														<td>4</td>
														<td>1,025</td>
														<td>4</td>
													</tr>
													<tr>
														<td>트러플 리조또</td>
														<td>285</td>
														<td>650</td>
														<td>17</td>
														<td>26</td>
														<td>1,123</td>
														<td>8</td>
													</tr>
													<tr>
														<td>펜네 파스타</td>
														<td>366</td>
														<td>723</td>
														<td>25</td>
														<td>23</td>
														<td>1,270</td>
														<td>8</td>
													</tr>
													<tr>
														<td>프레시 콘샐러드</td>
														<td>100</td>
														<td>115</td>
														<td>2</td>
														<td>1</td>
														<td>430</td>
														<td>11</td>
													</tr>
													<tr>
														<td>프레시 코울슬로</td>
														<td>100</td>
														<td>105</td>
														<td>1</td>
														<td>1</td>
														<td>200</td>
														<td>10</td>
													</tr>
													<tr>
														<td>하프&amp;하프 스파게티 (NEW 치즈 &amp; 화이트 크림)</td>
														<td>395</td>
														<td>705</td>
														<td>28</td>
														<td>18</td>
														<td>1,347</td>
														<td>11</td>
													</tr>
													<tr>
														<td>화이트 크림 스파게티</td>
														<td>392</td>
														<td>851</td>
														<td>29</td>
														<td>29</td>
														<td>1,258</td>
														<td>9</td>
													</tr>
													<tr>
														<td>NEW 치즈 볼로네즈 스파게티</td>
														<td>399</td>
														<td>559</td>
														<td>27</td>
														<td>7</td>
														<td>1,444</td>
														<td>13</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div id="allergy1-2" class="tab-content-v2">
										<div class="allergy-group">
											<div class="title-type3">1. 사이드디시</div>
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
															<th rowspan="2">제품명</th>
															<th rowspan="2">총 중량(g)</th>
															<th rowspan="2">열량<br>(kcal/1회분)
															</th>
															<th rowspan="2">단백질<br>(g/1회분)
															</th>
															<th rowspan="2">포화지방<br>(g/1회분)
															</th>
															<th rowspan="2">나트륨<br>(mg/1회분)
															</th>
															<th rowspan="2">당류<br>(g/1회분)
															</th>
														</tr>
													</thead>
													<tbody id="ingredientList1">
														<tr>
															<td>치캉스 팩</td>
															<td>538</td>
															<td>1037</td>
															<td>77</td>
															<td>12</td>
															<td>2263</td>
															<td>15</td>
														</tr>
														<tr>
															<td>크리스피 핫 순살 치킨(8조각)</td>
															<td>127</td>
															<td>262</td>
															<td>25</td>
															<td>2</td>
															<td>966</td>
															<td>1</td>
														</tr>
														<tr>
															<td>한돈 빠에야</td>
															<td>344</td>
															<td>555</td>
															<td>21</td>
															<td>12</td>
															<td>1742</td>
															<td>13</td>
														</tr>
														<tr>
															<td>갈릭&허브윙스(8조각)</td>
															<td>315</td>
															<td>595</td>
															<td>47</td>
															<td>9</td>
															<td>964</td>
															<td>3</td>
														</tr>
														<tr>
															<td>샐러드 가든</td>
															<td>141</td>
															<td>52</td>
															<td>2</td>
															<td>0</td>
															<td>301</td>
															<td>5</td>
														</tr>
														<tr>
															<td>슈퍼곡물 치킨(10조각)</td>
															<td>178</td>
															<td>481</td>
															<td>36</td>
															<td>4</td>
															<td>1,025</td>
															<td>4</td>
														</tr>
														<tr>
															<td>트러플 리조또</td>
															<td>285</td>
															<td>650</td>
															<td>17</td>
															<td>26</td>
															<td>1,123</td>
															<td>8</td>
														</tr>
														<tr>
															<td>펜네 파스타</td>
															<td>366</td>
															<td>723</td>
															<td>25</td>
															<td>23</td>
															<td>1,270</td>
															<td>8</td>
														</tr>
														<tr>
															<td>프레시 콘샐러드</td>
															<td>100</td>
															<td>115</td>
															<td>2</td>
															<td>1</td>
															<td>430</td>
															<td>11</td>
														</tr>
														<tr>
															<td>프레시 코울슬로</td>
															<td>100</td>
															<td>105</td>
															<td>1</td>
															<td>1</td>
															<td>200</td>
															<td>10</td>
														</tr>
														<tr>
															<td>하프&amp;하프 스파게티 (NEW 치즈 &amp; 화이트 크림)</td>
															<td>395</td>
															<td>705</td>
															<td>28</td>
															<td>18</td>
															<td>1,347</td>
															<td>11</td>
														</tr>
														<tr>
															<td>화이트 크림 스파게티</td>
															<td>392</td>
															<td>851</td>
															<td>29</td>
															<td>29</td>
															<td>1,258</td>
															<td>9</td>
														</tr>
														<tr>
															<td>NEW 치즈 볼로네즈 스파게티</td>
															<td>399</td>
															<td>559</td>
															<td>27</td>
															<td>7</td>
															<td>1,444</td>
															<td>13</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="allergy-group">
											<div class="title-type3">2. 음료</div>
											<div class="table-type v2">
												<table class="bg-table">
													<caption>음료 영양성분</caption>
													<colgroup>
														<col width="25%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
													</colgroup>
													<thead>
														<tr>
															<th rowspan="2">제품명</th>
															<th rowspan="2">열량<br>(kcal/1회분)
															</th>
															<th rowspan="2">단백질<br>(g/1회분)
															</th>
															<th rowspan="2">포화지방<br>(g/1회분)
															</th>
															<th rowspan="2">나트륨<br>(mg/1회분)
															</th>
															<th rowspan="2">당류<br>(g/1회분)
															</th>
														</tr>
													</thead>
													<tbody id="ingredientList2">
														<tr>
															<td>미닛메이드 스파클링 청포도 1.25L</td>
															<td>450</td>
															<td>0</td>
															<td>0</td>
															<td>38</td>
															<td>113</td>
														</tr>
														<tr>
															<td>스프라이트 1.5L</td>
															<td>700</td>
															<td>0</td>
															<td>0</td>
															<td>150</td>
															<td>170</td>
														</tr>
														<tr>
															<td>스프라이트 500ml</td>
															<td>233</td>
															<td>0</td>
															<td>0</td>
															<td>50</td>
															<td>57</td>
														</tr>
														<tr>
															<td>씨그램(레몬맛) 350ml</td>
															<td>0</td>
															<td>0</td>
															<td>0</td>
															<td>11</td>
															<td>0</td>
														</tr>
														<tr>
															<td>코카콜라 1.25L</td>
															<td>550</td>
															<td>0</td>
															<td>0</td>
															<td>37.5</td>
															<td>137.5</td>
														</tr>
														<tr>
															<td>코카콜라 500ml</td>
															<td>216</td>
															<td>0</td>
															<td>0</td>
															<td>15</td>
															<td>54</td>
														</tr>
														<tr>
															<td>코카콜라 제로 1.5L</td>
															<td>0</td>
															<td>0</td>
															<td>0</td>
															<td>100</td>
															<td>0</td>
														</tr>
														<tr>
															<td>코카콜라 제로 500ml</td>
															<td>0</td>
															<td>0</td>
															<td>0</td>
															<td>33</td>
															<td>0</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div id="allergy2" class="tab-content">
								<div class="tab-type2 js_tab">
									<ul>
										<li class="active"><a href="#allergy2-1">피자</a></li>
										<li><a href="#allergy2-2">사이드</a></li>
									</ul>
								</div>
								<div id="allergy2-1" class="tab-content-v2 active">
									<div class="allergy_guide">
										<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와
											같이 제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능
											식품)</p>
										<dl>
											<dt>* 알레르기 유발 가능 식품 :</dt>
											<dd>난류(가금류에 한한다), 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기,
												복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합포함), 잣</dd>
										</dl>
									</div>
									<div class="allergy-group">
										<div class="title-type3">피자</div>
										<div class="guide-box3">피자 공통: 오리지널,나폴리, 슈퍼시드함유, 샌드
											도우(우유, 밀, 대두), 씬, 더블 도우(밀), 더블치즈엣지(스트링 치즈(우유, 대두, 밀), 카망베르
											크림치즈(우유))</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>피자 재료중 알레르기 유발 가능 식품</caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th>NO</th>
														<th>피자</th>
														<th>알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>시리얼칠리크랩+블랙타이거슈림프</td>
														<td>모차렐라, 페터크림, 로마노크림, 체더, 파르메산, 콰트로치즈퐁듀 치즈(우유), 토마토
															소스(토마토, 대두), 갈릭 크림 소스(계란, 우유, 대두, 밀), 로스트 포테이토(대두),
															베이컨칩(돼지고기), 호스래디시 스퀴드(오징어, 계란, 우유, 대두), 스위트 칠리크랩(게, 대두,
															밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)), 오리엔탈 통새우(새우, 우유, 대두, 밀,
															토마토, 닭고기, 쇠고기, 조개류(굴)), 리얼불고기(대두,밀,쇠고기,조개류(굴)), 블랙타이거
															슈림프(새우)</td>
													</tr>
													<tr>
														<td>2</td>
														<td>복날 콰트로</td>
														<td>모차렐라, 페터크림, 프로볼로네, 체더, 크리미 고르곤졸라, 파르메산 치즈(우유),
															15가지 믹스 슈레드 치즈(우유, 대두), 11가지 믹스 옐로우 치즈(우유, 대두, 계란), 토마토
															소스(토마토, 대두), 갈릭 크림 소스(계란, 우유, 대두, 밀), 로스트 포테이토(대두),
															베이컨칩(돼지고기), 호스래디시 스퀴드(오징어, 계란, 우유, 대두), 스위트 칠리크랩(게, 대두,
															밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)), 오리엔탈 통새우(새우, 우유, 대두, 밀,
															토마토, 닭고기, 쇠고기, 조개류(굴)), 스파이시 치킨(닭고기, 토마토, 대두, 밀, 우유,
															아황산류), 호스래디시소스(계란, 우유, 대두), 선드라이토마토(토마토), 블랙앵거스 비프 (쇠고기,
															대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>3</td>
														<td>시리얼 칠리크랩+블랙앵거스 스테이크</td>
														<td>모차렐라, 페터크림, 리코타 치즈(우유), 토마토 소스(토마토, 대두), 갈릭 크림
															소스(계란, 우유, 대두, 밀), 로스트 포테이토(대두), 베이컨칩(돼지고기), 호스래디시
															스퀴드(오징어, 계란, 우유, 대두), 스위트 칠리크랩(게, 대두, 밀, 새우, 토마토, 닭고기,
															오징어, 조개류(굴)), 오리엔탈 통새우(새우, 우유, 대두, 밀, 토마토, 닭고기, 쇠고기,
															조개류(굴)), 호스래디시소스(계란, 우유, 대두),
															아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 선드라이토마토(토마토), 블랙앵거스 비프
															(쇠고기, 대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>4</td>
														<td>시리얼 칠리크랩</td>
														<td>모차렐라, 페터크림 치즈(우유), 토마토 소스(토마토, 대두), 갈릭 크림 소스(계란,
															우유, 대두, 밀), 로스트 포테이토(대두), 베이컨칩(돼지고기), 호스래디시 스퀴드(오징어, 계란,
															우유, 대두), 스위트 칠리크랩(게, 대두, 밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)),
															오리엔탈 통새우(새우, 우유, 대두, 밀, 토마토, 닭고기, 쇠고기, 조개류(굴))</td>
													</tr>
													<tr>
														<td>5</td>
														<td>블랙타이거슈림프+직화스테이크</td>
														<td>모차렐라, 페터크림, 리코타 치즈, 로마노크림, 체더, 파르메산, 콰트로치즈퐁듀
															치즈(우유), 로스트포테이토(대두), 호스래디시소스(계란, 우유, 대두),
															리얼불고기(대두,밀,쇠고기,조개류(굴)), 블랙타이거 슈림프(새우),
															아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 선드라이토마토(토마토), 블랙앵거스
															비프(쇠고기, 대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>6</td>
														<td>30치즈&뉴욕 스트립 스테이크+포테이토</td>
														<td>갈릭 크림 소스(계란, 우유, 대두, 밀), 뉴욕 스트립 스테이크(대두, 밀, 쇠고기),
															모차렐라, 프로볼로네, 체더, 크리미 고르곤졸라(우유), 15가지 믹스 슈레드 치즈(우유, 대두),
															11가지 믹스 옐로우 치즈(우유, 대두, 계란), 감자(대두,이산화황), 마요네즈(난류,대두),
															베이컨(돼지고기), 토마토소스, 토마토 콩피(토마토)</td>
													</tr>
													<tr>
														<td>7</td>
														<td>블랙타이거 슈림프+블랙앵거스 스테이크</td>
														<td>모차렐라, 페터크림, 리코타 치즈, 로마노크림, 체더, 파르메산, 콰트로치즈퐁듀
															치즈(우유), 로스트포테이토(대두), 호스래디시소스(계란, 우유, 대두),
															리얼불고기(대두,밀,쇠고기,조개류(굴)), 블랙타이거 슈림프(새우),
															아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 선드라이토마토(토마토), 블랙앵거스
															비프(쇠고기, 대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>8</td>
														<td>30치즈&뉴욕 스트립 스테이크</td>
														<td>갈릭 크림 소스(계란, 우유, 대두, 밀), 토마토 콩피(토마토), 뉴욕 스트립
															스테이크(대두, 밀, 토마토, 쇠고기), 프로볼로네, 체더, 크리미 고르곤졸라(우유), 15가지 믹스
															치즈(우유, 대두), 11가지 옐로우 치즈(우유, 대두, 계란)</td>
													</tr>
													<tr>
														<td>9</td>
														<td>치즈케이크 블랙타이거</td>
														<td>파르메산,모차렐라(우유), 선드라이토마토(토마토), 베이컨칩(돼지고기),
															치즈케이크무스(계란,우유), 블랙타이거 슈림프(새우), 호스래디시소스(계란, 우유, 대두)</td>
													</tr>
													<tr>
														<td>10</td>
														<td>미트미트미트</td>
														<td>모차렐라, 페터크림 치즈, 체더 치즈(우유),
															아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 리얼불고기(대두,밀,쇠고기,조개류(굴)), 비프
															스테이크(대두, 밀, 토마토, 쇠고기), BBQ포크(대두, 밀, 토마토, 돼지고기, 쇠고기),
															트러플크림(계란,우유,대두)</td>
													</tr>
													<tr>
														<td>11</td>
														<td>핫치킨</td>
														<td>스파이시 치킨(닭고기, 토마토, 대두, 밀, 우유, 아황산류),
															스파이시마요(계란,우유,대두,밀), 특제 바비큐 소스(대두, 토마토), 체더, 파르메산, 모차렐라
															치즈(우유), 베이컨칩(돼지고기),</td>
													</tr>
													<tr>
														<td>12</td>
														<td>리얼불고기</td>
														<td>리얼불고기(대두,밀,쇠고기,조개류(굴)),
															불고기소스(우유,대두,밀,토마토,쇠고기,조개류(굴)), 체더, 모차렐라 치즈(우유)</td>
													</tr>
													<tr>
														<td>13</td>
														<td>치즈가든</td>
														<td>토마토 슬라이스(토마토), 리코타, 프로볼로네, 모차렐라 치즈(우유),
															토마토소스(토마토, 대두)</td>
													</tr>
													<tr>
														<td>14</td>
														<td>문어밤 슈림프</td>
														<td>페터크림, 파르메산, 모차렐라 치즈(우유), 토마토소스(토마토, 대두),
															호스래디시소스(계란, 우유, 대두), 딥치즈소스(우유, 대두), 문어(대두, 밀, 우유, 새우,
															쇠고기, 조개류), 통새우(새우)</td>
													</tr>
													<tr>
														<td>15</td>
														<td>베스트 콰트로</td>
														<td>모차렐라, 페터크림, 리코타, 로마노크림치즈(우유), 로스트포테이토(대두),
															호스래디시소스(계란,우유,대두), 아라비아타소스(계란,대두,밀,돼지고기, 닭고기,토마토), 블랙앵거스
															비프 (쇠고기,대두,밀,계란), 리얼불고기(대두,밀,쇠고기,조개류(굴)), 블랙타이거 슈림프(새우),
															감자(대두,이산화황), 마요네즈(난류,대두), 베이컨(돼지고기), 불고기(쇠고기,대두,밀,아황산류),
															페퍼로니(돼지고기,쇠고기), 포크(돼지고기,쇠고기,대두,밀,계란), 햄(돼지고기,쇠고기,대두,계란)</td>
													</tr>
													<tr>
														<td>16</td>
														<td>더블크러스트 이베리코</td>
														<td>모차렐라, 리코타, 로마노크림치즈, 콰트로 치즈퐁듀(우유), 베이컨(돼지고기), New
															고구마 무스(계란, 우유, 대두, 밀), 감자(대두,이산화황),마요네즈(난류,대두),
															토마토소스(토마토, 대두), 선드라이토마토(토마토), 코코넛 허니버터 파우더(대두,밀,우유),이베리코
															스테이크 (돼지고기,대두,밀)</td>
													</tr>
													<tr>
														<td>17</td>
														<td>우리 고구마</td>
														<td>모차렐라, 리코타, 체더, 카망베르 크림 치즈(우유), 트러플크림(계란,우유,대두),
															리얼불고기(대두,밀,쇠고기,조개류(굴)), 베이컨(돼지고기), 고구마 무스(계란, 우유, 대두, 밀)</td>
													</tr>
													<tr>
														<td>18</td>
														<td>블랙앵거스 스테이크</td>
														<td>모차렐라, 페터크림, 리코타 치즈 (우유), 로스트포테이토(대두), 호스래디시소스(계란,
															우유, 대두), 아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 선드라이토마토(토마토),
															앵거스비프 (쇠고기, 대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>19</td>
														<td>블랙타이거 슈림프</td>
														<td>모차렐라, 로마노크림, 체더, 파르메산, 콰트로치즈퐁듀 치즈(우유),
															로스트포테이토(대두), 호스래디시소스(계란, 우유, 대두), 리얼불고기(대두,밀,쇠고기,조개류(굴)),
															블랙타이거 슈림프(새우)</td>
													</tr>
													<tr>
														<td>20</td>
														<td>직화스테이크</td>
														<td>갈릭올리브소스(계란,우유,대두),감자(대두),모차렐라,프로볼로네,파르메산(우유),베이컨(돼지고기),새우(새우),토마토,토마토소스(토마토),케이준소스(대두,토마토,닭고기,조개류(굴)),그릴드비프(쇠고기,대두,밀)</td>
													</tr>
													<tr>
														<td>21</td>
														<td>포테이토</td>
														<td>모차렐라(우유),감자(대두,이산화황),마요네즈(난류,대두),베이컨(돼지고기),토마토소스(토마토)</td>
													</tr>
													<tr>
														<td>22</td>
														<td>슈퍼디럭스</td>
														<td>모차렐라(우유),불고기(쇠고기,대두,밀,아황산류),페퍼로니(돼지고기,쇠고기),포크(돼지고기,쇠고기,대두,밀,계란),토마토소스(토마토),햄(돼지고기,쇠고기,대두,계란)</td>
													</tr>
													<tr>
														<td>23</td>
														<td>슈퍼슈프림</td>
														<td>모차렐라(우유),불고기(쇠고기,대두,밀,아황산류),포크(돼지고기,쇠고기,대두,밀,계란),토마토소스(토마토),햄(돼지고기,쇠고기,대두,계란)</td>
													</tr>
													<tr>
														<td>24</td>
														<td>베이컨체더치즈</td>
														<td>모차렐라, 체더(우유), 베이컨(돼지고기), 불고기(쇠고기, 대두, 밀, 아황산류),
															토마토소스(토마토)</td>
													</tr>
													<tr>
														<td>25</td>
														<td>리얼불고기</td>
														<td>모차렐라(우유), 불고기(쇠고기, 대두, 밀, 아황산류), 불고기소스(우유, 대두, 밀,
															토마토, 쇠고기, 조개류(굴))</td>
													</tr>
													<tr>
														<td>26</td>
														<td>페퍼로니</td>
														<td>모차렐라(우유), 페퍼로니(돼지고기, 쇠고기), 토마토소스(토마토)</td>
													</tr>
													<tr>
														<td>27</td>
														<td>치즈</td>
														<td>모차렐라(우유),토마토소스(토마토)</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div id="allergy2-2" class="tab-content-v2">
									<div class="allergy_guide">
										<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와
											같이 제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능
											식품)</p>
										<dl>
											<dt>* 알레르기 유발 가능 식품 :</dt>
											<dd>난류(가금류에 한한다), 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기,
												복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합포함), 잣</dd>
										</dl>
									</div>
									<div class="allergy-group">
										<div class="title-type3">1. 사이드디시</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>사이드디시 재료중 알레르기 유발 가능 식품</caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">NO</th>
														<th scope="col">사이드디시</th>
														<th scope="col">알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>치캉스 팩</td>
														<td>갈릭&허브윙스 : 닭고기,대두,밀,우유,토마토 / 슈퍼곡물 치킨 : 밀, 우유, 대두,
															계란, 땅콩, 토마토, 닭고기, 쇠고기 / 크리스피 핫 순살 치킨 : 닭고기,대두,밀,쇠고기,계란 /
															코울슬로 : 계란,대두</td>
													</tr>
													<tr>
														<td>2</td>
														<td>갈릭&amp;허브윙스</td>
														<td>닭고기,대두,밀,우유,토마토</td>
													</tr>
													<tr>
														<td>3</td>
														<td>코울슬로</td>
														<td>계란,대두</td>
													</tr>
													<tr>
														<td>4</td>
														<td>콘샐러드</td>
														<td>계란,대두</td>
													</tr>
													<tr>
														<td>5</td>
														<td>화이트 크림 스파게티</td>
														<td>스파게티면(밀),크림소스(계란,우유,대두,밀,돼지고기,닭고기,조개류(굴)),베이컨(돼지고기),베이컨칩(돼지고기),모차렐라(우유)</td>
													</tr>
													<tr>
														<td>6</td>
														<td>New 치즈볼로네즈 스파게티</td>
														<td>스파게티면(밀),볼로네즈소스(우유,대두,밀,토마토,조개류(굴),쇠고기),모차렐라(우유)</td>
													</tr>
													<tr>
														<td>7</td>
														<td>H&amp;H(New 치볼_화이트크림)</td>
														<td>스파게티면(밀),볼로네즈소스(우유,대두,밀,토마토,조개류(굴),쇠고기),모차렐라(우유),
															크림소스(계란,우유,대두,밀,돼지고기,닭고기,조개류(굴)),베이컨(돼지고기)</td>
													</tr>
													<tr>
														<td>8</td>
														<td>트러플 크림 리조또</td>
														<td>베이컨칩(돼지고기), 풍기크림소스(조개류(굴,바지락)), 우유, 밀, 대두), 쌀
															(우유, 대두), 모차렐라치즈(우유)</td>
													</tr>
													<tr>
														<td>9</td>
														<td>슈퍼곡물 치킨</td>
														<td>밀, 우유, 대두, 계란, 땅콩, 토마토, 닭고기, 쇠고기</td>
													</tr>
													<tr>
														<td>10</td>
														<td>펜네 파스타</td>
														<td>펜네파스타면(밀), 크림소스(계란,우유,대두,밀,돼지고기,닭고기,조개류(굴)),
															베이컨칩(돼지고기), 모차렐라, 파르메산 치즈(우유)</td>
													</tr>
													<tr>
														<td>11</td>
														<td>샐러드 가든</td>
														<td>혼합간장(대두), 발효식초(밀), 방울 토마토, 치킨엑기스분말(닭고기)</td>
													</tr>
													<tr>
														<td>12</td>
														<td>한돈 빠에야</td>
														<td>쌀(우유, 대두), 토마토 빠에야 소스(계란, 우유, 대두, 밀), 한돈 포크(대두,
															돼지고기, 토마토, 쇠고기), 모차렐라 치즈(우유)</td>
													</tr>
													<tr>
														<td>13</td>
														<td>크리스피 핫 순살치킨</td>
														<td>닭고기,대두,밀,쇠고기,계란</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="allergy-group">
										<div class="title-type3">2. 시리얼&소스</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption></caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">NO</th>
														<th scope="col">제품명</th>
														<th scope="col">알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>갈릭 디핑 소스</td>
														<td>계란,우유,대두</td>
													</tr>
													<tr>
														<td>2</td>
														<td>다미노 시리얼</td>
														<td>계란,우유,대두</td>
													</tr>
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
				<!-- //알레르기 -->

				<!-- 피자스토리 -->
				<!-- 피자스토리 -->

				<script>
/* var showLayer = function(layerNm) {
	UI.layerPopUp({selId:'#pop-story', url:'/contents/'+layerNm});
	
	$.ajax({
		type: "GET",
		url: "/contents/"+layerNm,
		success:function(data) {
			UI.layerPopUp({selId:'#pop-story'});
			pizza_story();
		},
		error: function (error){
			alert("다시시도해주세요.");
		}
	});
}; 

var pizza_story = function(){
	var code_01 = $(".hide_code").val();
	$(".story-content").removeClass("active");
	$(".story-content"+"#"+code_01).addClass("active");
} */
</script>
				<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  
  ga('create', 'UA-40278626-1', 'auto', {'allowLinker': true});
  ga('require', 'linker');
  ga('linker:autoLink', ['cdn.dominos.co.kr'] );
  ga('send', 'pageview');

</script>
				<!-- LOGGER(TM) TRACKING SCRIPT V.40 FOR logger.co.kr / 21550 : COMBINE TYPE / DO NOT ALTER THIS SCRIPT. -->
				<script type="text/javascript">var _TRK_LID="21550";var _L_TD="ssl.logger.co.kr";var _TRK_CDMN=".dominos.co.kr";</script>
				<script type="text/javascript">var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net" : "http://fs.bizspring.net";
	(function(b,s){var f=b.getElementsByTagName(s)[0],j=b.createElement(s);j.async=true;j.src='//fs.bizspring.net/fs4/bstrk.1.js';f.parentNode.insertBefore(j,f);})(document,'script');</script>
				<noscript>
					<img alt="Logger Script" width="1" height="1"
						src="http://ssl.logger.co.kr/tracker.tsp?u=21550&amp;js=N" />
				</noscript>
				<!-- END OF LOGGER TRACKING SCRIPT -->

				<!-- BS CTS TRACKING SCRIPT V.20 / 15484 : CTS / DO NOT ALTER THIS SCRIPT. -->
				<!-- COPYRIGHT (C) 2002-2020 BIZSPRING INC. L4AD ALL RIGHTS RESERVED. -->
				<script type="text/javascript">
	(function(b,s,t,c,k){b[k]=s;b[s]=b[s]||function(){(b[s].q=b[s].q||[]).push(arguments)};  var f=t.getElementsByTagName(c)[0],j=t.createElement(c);j.async=true;j.src='//fs.bizspring.net/fs4/l4cts.v4.2.js';f.parentNode.insertBefore(j,f);})(window,'_tcts_m',document,'script','BSAnalyticsObj');
	_tcts_m('15484','BCTS');
	</script>
				<!-- END OF BS CTS TRACKING SCRIPT -->

				<!-- Naver Anlytics 공통-->
				<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
				<script type="text/javascript">
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_273c36e36e8a";
	if (!_nasa) var _nasa={};
	wcs.inflow("dominos.co.kr");
	wcs_do(_nasa);
	</script>
				<!-- // Naver Anlytics 공통 -->

				<!-- Google Tag Manager : dominos_web -->
				<noscript>
					<iframe src="//www.googletagmanager.com/ns.html?id=GTM-TR97KL"
						height="0" width="0" style="display: none; visibility: hidden"></iframe>
				</noscript>
				<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-TR97KL');</script>
				<!-- End Google Tag Manager -->

				<div class="pop-layer" id="pop-allergy2">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title">토핑 알레르기 유발성분</h2>
						</div>
						<div class="pop-content">
							<div class="allergy_guide">
								<p class="text-type">
									한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와 같이 제품별 상세 내용을 표기하여
									안내해드립니다.<br>(괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발 가능식품)
								</p>
								<dl>
									<dt>* 알레르기 유발 가능 식품 :</dt>
									<dd>토마토, 아황산류(이를 첨가하여 최종제품에 SO2로 10mg/kg 이상 함유한 경우에 한한다),
										호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합 포함)</dd>
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
											<td>포크</td>
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
											<td>케이준새우살</td>
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
				</div>
				<!-- 팝업-메인 빅배너 -->
				<div class="pop-layer pop-full" id="pop-allergy">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<div class="pop-title v2">영양성분 및 알레르기 유발성분</div>
						</div>
						<div class="pop-content">
							<div class="tab-type v2 js_tab">
								<ul>
									<li class="active"><a href="#allergy1">영양성분</a></li>
									<li><a href="#allergy2">제품 알레르기 유발성분</a></li>
								</ul>
							</div>
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
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (오리지널 L)</td>
													<td>1041</td>
													<td>1조각</td>
													<td>130</td>
													<td>296</td>
													<td>14</td>
													<td>4</td>
													<td>576</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (오리지널 M)</td>
													<td>639</td>
													<td>1조각</td>
													<td>107</td>
													<td>240</td>
													<td>11</td>
													<td>3</td>
													<td>478</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (나폴리 L)</td>
													<td>832</td>
													<td>1조각</td>
													<td>104</td>
													<td>223</td>
													<td>11</td>
													<td>3</td>
													<td>504</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (나폴리 M)</td>
													<td>530</td>
													<td>2조각</td>
													<td>177</td>
													<td>372</td>
													<td>19</td>
													<td>6</td>
													<td>866</td>
													<td>11</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (씬크러스트 L)</td>
													<td>690</td>
													<td>2조각</td>
													<td>173</td>
													<td>401</td>
													<td>19</td>
													<td>9</td>
													<td>870</td>
													<td>12</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (씬크러스트 M)</td>
													<td>434</td>
													<td>2조각</td>
													<td>145</td>
													<td>324</td>
													<td>16</td>
													<td>8</td>
													<td>745</td>
													<td>10</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (슈퍼시드함유도우 L)</td>
													<td>1033</td>
													<td>1조각</td>
													<td>129</td>
													<td>304</td>
													<td>14</td>
													<td>4</td>
													<td>565</td>
													<td>8</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (슈퍼시드함유도우 M)</td>
													<td>622</td>
													<td>1조각</td>
													<td>104</td>
													<td>241</td>
													<td>11</td>
													<td>4</td>
													<td>452</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (더블치즈엣지 L)</td>
													<td>1235</td>
													<td>1조각</td>
													<td>154</td>
													<td>367</td>
													<td>18</td>
													<td>7</td>
													<td>817</td>
													<td>8</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩 피자+블랙타이거 슈림프 (더블치즈엣지 M)</td>
													<td>808</td>
													<td>1조각</td>
													<td>135</td>
													<td>319</td>
													<td>16</td>
													<td>7</td>
													<td>724</td>
													<td>6</td>
												</tr>
												<tr>
													<td>복날 콰트로(오리지널L)</td>
													<td>1026</td>
													<td>1조각</td>
													<td>128</td>
													<td>315</td>
													<td>15</td>
													<td>5</td>
													<td>605</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(오리지널L)</td>
													<td>1054</td>
													<td>1조각</td>
													<td>132</td>
													<td>306</td>
													<td>14</td>
													<td>5</td>
													<td>526</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(오리지널M)</td>
													<td>671</td>
													<td>1조각</td>
													<td>112</td>
													<td>255</td>
													<td>11</td>
													<td>4</td>
													<td>465</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(나폴리L)</td>
													<td>866</td>
													<td>1조각</td>
													<td>108</td>
													<td>240</td>
													<td>12</td>
													<td>5</td>
													<td>484</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(나폴리M)</td>
													<td>533</td>
													<td>2조각</td>
													<td>178</td>
													<td>394</td>
													<td>19</td>
													<td>8</td>
													<td>826</td>
													<td>10</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(씬크러스트L)</td>
													<td>714</td>
													<td>2조각</td>
													<td>178</td>
													<td>432</td>
													<td>20</td>
													<td>11</td>
													<td>825</td>
													<td>11</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(씬크러스트M)</td>
													<td>452</td>
													<td>2조각</td>
													<td>151</td>
													<td>352</td>
													<td>16</td>
													<td>9</td>
													<td>677</td>
													<td>10</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(슈퍼시드함유도우L)</td>
													<td>1063</td>
													<td>1조각</td>
													<td>133</td>
													<td>309</td>
													<td>14</td>
													<td>4</td>
													<td>548</td>
													<td>8</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(슈퍼시드함유도우M)</td>
													<td>648</td>
													<td>1조각</td>
													<td>108</td>
													<td>247</td>
													<td>11</td>
													<td>4</td>
													<td>434</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(더블치즈엣지L)</td>
													<td>1282</td>
													<td>1조각</td>
													<td>160</td>
													<td>380</td>
													<td>19</td>
													<td>8</td>
													<td>802</td>
													<td>7</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩+블랙앵거스 스테이크(더블치즈엣지M)</td>
													<td>833</td>
													<td>1조각</td>
													<td>139</td>
													<td>326</td>
													<td>16</td>
													<td>7</td>
													<td>700</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(오리지널L)</td>
													<td>1100</td>
													<td>1조각</td>
													<td>138</td>
													<td>303</td>
													<td>14</td>
													<td>4</td>
													<td>583</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(오리지널M)</td>
													<td>704</td>
													<td>1조각</td>
													<td>117</td>
													<td>253</td>
													<td>12</td>
													<td>4</td>
													<td>524</td>
													<td>5</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(나폴리L)</td>
													<td>910</td>
													<td>1조각</td>
													<td>114</td>
													<td>231</td>
													<td>12</td>
													<td>3</td>
													<td>530</td>
													<td>5</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(나폴리M)</td>
													<td>582</td>
													<td>2조각</td>
													<td>194</td>
													<td>385</td>
													<td>19</td>
													<td>6</td>
													<td>914</td>
													<td>9</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(씬크러스트L)</td>
													<td>752</td>
													<td>2조각</td>
													<td>188</td>
													<td>399</td>
													<td>21</td>
													<td>9</td>
													<td>919</td>
													<td>10</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(씬크러스트M)</td>
													<td>493</td>
													<td>2조각</td>
													<td>164</td>
													<td>341</td>
													<td>17</td>
													<td>8</td>
													<td>817</td>
													<td>9</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(슈퍼시드함유도우L)</td>
													<td>1119</td>
													<td>1조각</td>
													<td>140</td>
													<td>317</td>
													<td>15</td>
													<td>4</td>
													<td>613</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(슈퍼시드함유도우M)</td>
													<td>663</td>
													<td>1조각</td>
													<td>111</td>
													<td>248</td>
													<td>11</td>
													<td>3</td>
													<td>462</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(더블치즈엣지L)</td>
													<td>1317</td>
													<td>1조각</td>
													<td>165</td>
													<td>371</td>
													<td>19</td>
													<td>8</td>
													<td>864</td>
													<td>6</td>
												</tr>
												<tr>
													<td>시리얼 칠리크랩(더블치즈엣지M)</td>
													<td>872</td>
													<td>1조각</td>
													<td>145</td>
													<td>326</td>
													<td>17</td>
													<td>7</td>
													<td>766</td>
													<td>5</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(오리지널L)</td>
													<td>996</td>
													<td>1조각</td>
													<td>125</td>
													<td>296</td>
													<td>14</td>
													<td>4</td>
													<td>578</td>
													<td>6</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(오리지널M)-6조각</td>
													<td>608</td>
													<td>1조각</td>
													<td>101</td>
													<td>237</td>
													<td>12</td>
													<td>4</td>
													<td>466</td>
													<td>6</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(나폴리L)</td>
													<td>778</td>
													<td>2조각</td>
													<td>194</td>
													<td>455</td>
													<td>22</td>
													<td>8</td>
													<td>976</td>
													<td>12</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(나폴리M)-6조각</td>
													<td>508</td>
													<td>2조각</td>
													<td>169</td>
													<td>387</td>
													<td>20</td>
													<td>7</td>
													<td>855</td>
													<td>10</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(씬크러스트L)</td>
													<td>637</td>
													<td>2조각</td>
													<td>159</td>
													<td>424</td>
													<td>19</td>
													<td>10</td>
													<td>854</td>
													<td>10</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(씬크러스트M)-6조각</td>
													<td>408</td>
													<td>2조각</td>
													<td>136</td>
													<td>357</td>
													<td>17</td>
													<td>9</td>
													<td>707</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(슈퍼시드함유도우L)</td>
													<td>971</td>
													<td>1조각</td>
													<td>121</td>
													<td>299</td>
													<td>13</td>
													<td>5</td>
													<td>542</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(슈퍼시드함유도우M)-6조각</td>
													<td>614</td>
													<td>1조각</td>
													<td>102</td>
													<td>252</td>
													<td>12</td>
													<td>4</td>
													<td>472</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(더블치즈엣지L)</td>
													<td>1181</td>
													<td>1조각</td>
													<td>148</td>
													<td>364</td>
													<td>19</td>
													<td>7</td>
													<td>792</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프+직화 스테이크(더블치즈엣지M)-6조각</td>
													<td>761</td>
													<td>1조각</td>
													<td>127</td>
													<td>316</td>
													<td>16</td>
													<td>7</td>
													<td>676</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(오리지널L)</td>
													<td>1079</td>
													<td>1조각</td>
													<td>135</td>
													<td>343</td>
													<td>17</td>
													<td>6</td>
													<td>570</td>
													<td>5</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(오리지널M)</td>
													<td>599</td>
													<td>2조각</td>
													<td>150</td>
													<td>383</td>
													<td>19</td>
													<td>7</td>
													<td>613</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(나폴리L)</td>
													<td>885</td>
													<td>1조각</td>
													<td>111</td>
													<td>278</td>
													<td>16</td>
													<td>6</td>
													<td>521</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(나폴리M)</td>
													<td>488</td>
													<td>2조각</td>
													<td>122</td>
													<td>319</td>
													<td>17</td>
													<td>7</td>
													<td>551</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(씬크러스트L)</td>
													<td>751</td>
													<td>2조각</td>
													<td>188</td>
													<td>494</td>
													<td>27</td>
													<td>13</td>
													<td>877</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(씬크러스트M)</td>
													<td>408</td>
													<td>2조각</td>
													<td>102</td>
													<td>271</td>
													<td>14</td>
													<td>7</td>
													<td>475</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(슈퍼시드함유도우L)</td>
													<td>1084</td>
													<td>1조각</td>
													<td>136</td>
													<td>345</td>
													<td>15</td>
													<td>6</td>
													<td>579</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(슈퍼시드함유도우M)</td>
													<td>611</td>
													<td>2조각</td>
													<td>153</td>
													<td>394</td>
													<td>19</td>
													<td>7</td>
													<td>653</td>
													<td>8</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(더블치즈엣지L)</td>
													<td>1224</td>
													<td>1조각</td>
													<td>153</td>
													<td>392</td>
													<td>20</td>
													<td>8</td>
													<td>695</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크 + 포테이토(더블치즈엣지M)</td>
													<td>703</td>
													<td>2조각</td>
													<td>176</td>
													<td>455</td>
													<td>24</td>
													<td>10</td>
													<td>783</td>
													<td>5</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(오리지널L)</td>
													<td>995</td>
													<td>1조각</td>
													<td>124</td>
													<td>298</td>
													<td>13</td>
													<td>5</td>
													<td>520</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(오리지널M)</td>
													<td>606</td>
													<td>1조각</td>
													<td>101</td>
													<td>241</td>
													<td>11</td>
													<td>4</td>
													<td>422</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(나폴리L)</td>
													<td>788</td>
													<td>2조각</td>
													<td>197</td>
													<td>463</td>
													<td>22</td>
													<td>9</td>
													<td>918</td>
													<td>15</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(나폴리M)</td>
													<td>481</td>
													<td>2조각</td>
													<td>160</td>
													<td>376</td>
													<td>18</td>
													<td>8</td>
													<td>780</td>
													<td>12</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(씬크러스트L)</td>
													<td>652</td>
													<td>2조각</td>
													<td>163</td>
													<td>431</td>
													<td>19</td>
													<td>11</td>
													<td>778</td>
													<td>12</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(씬크러스트M)</td>
													<td>393</td>
													<td>2조각</td>
													<td>131</td>
													<td>331</td>
													<td>14</td>
													<td>9</td>
													<td>616</td>
													<td>11</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(슈퍼시드함유도우L)</td>
													<td>976</td>
													<td>1조각</td>
													<td>122</td>
													<td>295</td>
													<td>13</td>
													<td>4</td>
													<td>502</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(슈퍼시드함유도우M)</td>
													<td>607</td>
													<td>1조각</td>
													<td>101</td>
													<td>240</td>
													<td>11</td>
													<td>4</td>
													<td>426</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(더블치즈엣지L)</td>
													<td>1199</td>
													<td>1조각</td>
													<td>150</td>
													<td>375</td>
													<td>18</td>
													<td>8</td>
													<td>757</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 + 블랙앵거스 스테이크(더블치즈엣지M)</td>
													<td>769</td>
													<td>1조각</td>
													<td>128</td>
													<td>319</td>
													<td>16</td>
													<td>7</td>
													<td>660</td>
													<td>7</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(오리지널L)</td>
													<td>1048</td>
													<td>1조각</td>
													<td>131</td>
													<td>364</td>
													<td>20</td>
													<td>7</td>
													<td>761</td>
													<td>5</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(오리지널M)</td>
													<td>603</td>
													<td>2조각</td>
													<td>151</td>
													<td>415</td>
													<td>22</td>
													<td>8</td>
													<td>846</td>
													<td>8</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(나폴리L)</td>
													<td>849</td>
													<td>1조각</td>
													<td>106</td>
													<td>295</td>
													<td>17</td>
													<td>7</td>
													<td>710</td>
													<td>5</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(나폴리M)</td>
													<td>490</td>
													<td>2조각</td>
													<td>123</td>
													<td>345</td>
													<td>19</td>
													<td>9</td>
													<td>763</td>
													<td>5</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(씬크러스트L)</td>
													<td>682</td>
													<td>2조각</td>
													<td>171</td>
													<td>538</td>
													<td>30</td>
													<td>16</td>
													<td>1158</td>
													<td>8</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(씬크러스트M)</td>
													<td>380</td>
													<td>2조각</td>
													<td>95</td>
													<td>300</td>
													<td>16</td>
													<td>9</td>
													<td>654</td>
													<td>4</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(슈퍼시드함유도우L)</td>
													<td>1036</td>
													<td>1조각</td>
													<td>130</td>
													<td>355</td>
													<td>16</td>
													<td>8</td>
													<td>748</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(슈퍼시드함유도우M)</td>
													<td>610</td>
													<td>2조각</td>
													<td>153</td>
													<td>412</td>
													<td>21</td>
													<td>8</td>
													<td>819</td>
													<td>8</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(더블치즈엣지L)</td>
													<td>1220</td>
													<td>1조각</td>
													<td>153</td>
													<td>422</td>
													<td>23</td>
													<td>10</td>
													<td>930</td>
													<td>6</td>
												</tr>
												<tr>
													<td>30치즈&뉴욕 스트립 스테이크(더블치즈엣지M)</td>
													<td>708</td>
													<td>2조각</td>
													<td>177</td>
													<td>488</td>
													<td>27</td>
													<td>12</td>
													<td>1072</td>
													<td>7</td>
												</tr>
												<tr>
													<td>치즈케이크 블랙타이거(L)</td>
													<td>987</td>
													<td>1조각</td>
													<td>123</td>
													<td>332</td>
													<td>15</td>
													<td>6</td>
													<td>622</td>
													<td>9</td>
												</tr>
												<tr>
													<td>치즈케이크 블랙타이거(M)</td>
													<td>582</td>
													<td>2조각</td>
													<td>194</td>
													<td>520</td>
													<td>23</td>
													<td>9</td>
													<td>1012</td>
													<td>14</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (오리지널 L)</td>
													<td>1,003</td>
													<td>1조각</td>
													<td>125</td>
													<td>322</td>
													<td>15</td>
													<td>3</td>
													<td>626</td>
													<td>6</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (오리지널 M)</td>
													<td>615</td>
													<td>2조각</td>
													<td>154</td>
													<td>398</td>
													<td>20</td>
													<td>6</td>
													<td>796</td>
													<td>9</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (나폴리 L)</td>
													<td>817</td>
													<td>1조각</td>
													<td>102</td>
													<td>260</td>
													<td>14</td>
													<td>4</td>
													<td>558</td>
													<td>5</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (나폴리 M)
													<td>496</td>
													<td>2조각</td>
													<td>124</td>
													<td>316</td>
													<td>16</td>
													<td>5</td>
													<td>694</td>
													<td>6</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (씬크러스트 L)</td>
													<td>694</td>
													<td>2조각</td>
													<td>174</td>
													<td>492</td>
													<td>26</td>
													<td>11</td>
													<td>1,020</td>
													<td>12</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (씬크러스트 M)</td>
													<td>404</td>
													<td>2조각</td>
													<td>101</td>
													<td>282</td>
													<td>14</td>
													<td>7</td>
													<td>625</td>
													<td>7</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (슈퍼시드함유도우 L)</td>
													<td>1,044</td>
													<td>1조각</td>
													<td>131</td>
													<td>328</td>
													<td>17</td>
													<td>5</td>
													<td>588</td>
													<td>6</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (슈퍼시드함유도우 M)</td>
													<td>632</td>
													<td>2조각</td>
													<td>158</td>
													<td>413</td>
													<td>20</td>
													<td>7</td>
													<td>735</td>
													<td>10</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (더블치즈엣지 L)</td>
													<td>1,108</td>
													<td>1조각</td>
													<td>139</td>
													<td>350</td>
													<td>19</td>
													<td>6</td>
													<td>763</td>
													<td>5</td>
												</tr>
												<tr>
													<td>미트미트미트 피자 (더블치즈엣지 M)</td>
													<td>769</td>
													<td>2조각</td>
													<td>192</td>
													<td>490</td>
													<td>27</td>
													<td>9</td>
													<td>995</td>
													<td>8</td>
												</tr>
												<tr>
													<td>더블크러스트 이베리코(더블 크러스트 L)</td>
													<td>1,038</td>
													<td>1조각</td>
													<td>130</td>
													<td>344</td>
													<td>12</td>
													<td>7</td>
													<td>465</td>
													<td>10</td>
												</tr>
												<tr>
													<td>더블크러스트 이베리코(더블 크러스트 M)</td>
													<td>652</td>
													<td>2조각</td>
													<td>163</td>
													<td>421</td>
													<td>14</td>
													<td>9</td>
													<td>564</td>
													<td>13</td>
												</tr>
												<tr>
													<td>리얼불고기(오리지널 L)</td>
													<td>923</td>
													<td>1조각</td>
													<td>115</td>
													<td>280</td>
													<td>13</td>
													<td>4</td>
													<td>520</td>
													<td>5</td>
												</tr>
												<tr>
													<td>리얼불고기(오리지널 M)</td>
													<td>520</td>
													<td>2조각</td>
													<td>130</td>
													<td>334</td>
													<td>16</td>
													<td>4</td>
													<td>541</td>
													<td>5</td>
												</tr>
												<tr>
													<td>리얼불고기(나폴리L)</td>
													<td>725</td>
													<td>2조각</td>
													<td>181</td>
													<td>430</td>
													<td>23</td>
													<td>7</td>
													<td>946</td>
													<td>8</td>
												</tr>
												<tr>
													<td>리얼불고기(나폴리M)</td>
													<td>396</td>
													<td>3조각</td>
													<td>149</td>
													<td>365</td>
													<td>20</td>
													<td>6</td>
													<td>676</td>
													<td>6</td>
												</tr>
												<tr>
													<td>리얼불고기(씬 L)</td>
													<td>556</td>
													<td>2조각</td>
													<td>139</td>
													<td>396</td>
													<td>22</td>
													<td>9</td>
													<td>838</td>
													<td>6</td>
												</tr>
												<tr>
													<td>리얼불고기(씬 M)</td>
													<td>296</td>
													<td>3조각</td>
													<td>111</td>
													<td>313</td>
													<td>15</td>
													<td>8</td>
													<td>597</td>
													<td>5</td>
												</tr>
												<tr>
													<td>리얼불고기(슈퍼시드 함유 도우L)</td>
													<td>924</td>
													<td>1조각</td>
													<td>116</td>
													<td>292</td>
													<td>14</td>
													<td>4</td>
													<td>561</td>
													<td>6</td>
												</tr>
												<tr>
													<td>리얼불고기(슈퍼시드 함유 도우M)</td>
													<td>533</td>
													<td>2조각</td>
													<td>133</td>
													<td>344</td>
													<td>17</td>
													<td>5</td>
													<td>544</td>
													<td>7</td>
												</tr>
												<tr>
													<td>리얼불고기 더블치즈엣지(오리지널 L)</td>
													<td>1,149</td>
													<td>1조각</td>
													<td>144</td>
													<td>350</td>
													<td>18</td>
													<td>6</td>
													<td>669</td>
													<td>4</td>
												</tr>
												<tr>
													<td>리얼불고기 더블치즈엣지(오리지널 M)</td>
													<td>679</td>
													<td>2조각</td>
													<td>170</td>
													<td>428</td>
													<td>21</td>
													<td>8</td>
													<td>856</td>
													<td>5</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(오리지널 L)</td>
													<td>938</td>
													<td>1조각</td>
													<td>117</td>
													<td>280</td>
													<td>15</td>
													<td>3</td>
													<td>600</td>
													<td>7</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(오리지널 M)</td>
													<td>570</td>
													<td>2조각</td>
													<td>143</td>
													<td>323</td>
													<td>18</td>
													<td>4</td>
													<td>708</td>
													<td>7</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(나폴리L)</td>
													<td>742</td>
													<td>2조각</td>
													<td>186</td>
													<td>430</td>
													<td>22</td>
													<td>6</td>
													<td>1,078</td>
													<td>11</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(나폴리M)</td>
													<td>444</td>
													<td>2조각</td>
													<td>111</td>
													<td>254</td>
													<td>15</td>
													<td>4</td>
													<td>596</td>
													<td>7</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(씬 L)</td>
													<td>613</td>
													<td>2조각</td>
													<td>153</td>
													<td>389</td>
													<td>20</td>
													<td>9</td>
													<td>912</td>
													<td>11</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(씬 M)</td>
													<td>346</td>
													<td>3조각</td>
													<td>130</td>
													<td>333</td>
													<td>19</td>
													<td>7</td>
													<td>794</td>
													<td>8</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(슈퍼시드 함유 도우L)</td>
													<td>944</td>
													<td>1조각</td>
													<td>118</td>
													<td>280</td>
													<td>16</td>
													<td>4</td>
													<td>608</td>
													<td>9</td>
												</tr>
												<tr>
													<td>문어밤 슈림프(슈퍼시드 함유 도우M)</td>
													<td>573</td>
													<td>2조각</td>
													<td>143</td>
													<td>322</td>
													<td>17</td>
													<td>4</td>
													<td>682</td>
													<td>10</td>
												</tr>
												<tr>
													<td>문어밤 슈림프 더블치즈엣지(오리지널 L)</td>
													<td>1,153</td>
													<td>1조각</td>
													<td>144</td>
													<td>347</td>
													<td>18</td>
													<td>7</td>
													<td>784</td>
													<td>6</td>
												</tr>
												<tr>
													<td>문어밤 슈림프 더블치즈엣지(오리지널 M)</td>
													<td>745</td>
													<td>2조각</td>
													<td>186</td>
													<td>460</td>
													<td>25</td>
													<td>9</td>
													<td>1,024</td>
													<td>8</td>
												</tr>
												<tr>
													<td>베스트 콰트로(오리지널 L)</td>
													<td>1,068</td>
													<td>1조각</td>
													<td>134</td>
													<td>312</td>
													<td>13</td>
													<td>5</td>
													<td>598</td>
													<td>6</td>
												</tr>
												<tr>
													<td>베스트 콰트로(오리지널 M)</td>
													<td>627</td>
													<td>2조각</td>
													<td>157</td>
													<td>387</td>
													<td>18</td>
													<td>6</td>
													<td>704</td>
													<td>8</td>
												</tr>
												<tr>
													<td>베스트 콰트로(나폴리L)</td>
													<td>853</td>
													<td>1조각</td>
													<td>107</td>
													<td>259</td>
													<td>12</td>
													<td>5</td>
													<td>499</td>
													<td>5</td>
												</tr>
												<tr>
													<td>베스트 콰트로(나폴리M)</td>
													<td>515</td>
													<td>2조각</td>
													<td>129</td>
													<td>306</td>
													<td>15</td>
													<td>6</td>
													<td>698</td>
													<td>7</td>
												</tr>
												<tr>
													<td>베스트 콰트로(씬 L)</td>
													<td>723</td>
													<td>2조각</td>
													<td>181</td>
													<td>457</td>
													<td>19</td>
													<td>11</td>
													<td>868</td>
													<td>9</td>
												</tr>
												<tr>
													<td>베스트 콰트로(씬 M)</td>
													<td>448</td>
													<td>2조각</td>
													<td>112</td>
													<td>274</td>
													<td>12</td>
													<td>7</td>
													<td>540</td>
													<td>6</td>
												</tr>
												<tr>
													<td>베스트 콰트로(슈퍼시드 함유 도우L)</td>
													<td>1,055</td>
													<td>1조각</td>
													<td>132</td>
													<td>322</td>
													<td>13</td>
													<td>5</td>
													<td>517</td>
													<td>12</td>
												</tr>
												<tr>
													<td>베스트 콰트로(슈퍼시드 함유 도우M)</td>
													<td>634</td>
													<td>2조각</td>
													<td>159</td>
													<td>393</td>
													<td>17</td>
													<td>6</td>
													<td>636</td>
													<td>13</td>
												</tr>
												<tr>
													<td>베스트 콰트로 더블치즈엣지(오리지널 L)</td>
													<td>1,276</td>
													<td>1조각</td>
													<td>160</td>
													<td>384</td>
													<td>19</td>
													<td>8</td>
													<td>732</td>
													<td>7</td>
												</tr>
												<tr>
													<td>베스트 콰트로 더블치즈엣지(오리지널 M)</td>
													<td>777</td>
													<td>2조각</td>
													<td>194</td>
													<td>455</td>
													<td>23</td>
													<td>9</td>
													<td>907</td>
													<td>7</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(오리지널 L)</td>
													<td>912</td>
													<td>1조각</td>
													<td>114</td>
													<td>311</td>
													<td>14</td>
													<td>6</td>
													<td>399</td>
													<td>4</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(오리지널 M)</td>
													<td>516</td>
													<td>2조각</td>
													<td>129</td>
													<td>356</td>
													<td>18</td>
													<td>8</td>
													<td>529</td>
													<td>5</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(나폴리L)</td>
													<td>705</td>
													<td>2조각</td>
													<td>176</td>
													<td>465</td>
													<td>24</td>
													<td>11</td>
													<td>696</td>
													<td>5</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(나폴리M)</td>
													<td>382</td>
													<td>3조각</td>
													<td>143</td>
													<td>382</td>
													<td>21</td>
													<td>9</td>
													<td>606</td>
													<td>5</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(씬 L)</td>
													<td>587</td>
													<td>2조각</td>
													<td>147</td>
													<td>437</td>
													<td>22</td>
													<td>14</td>
													<td>671</td>
													<td>4</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(씬 M)</td>
													<td>334</td>
													<td>3조각</td>
													<td>125</td>
													<td>377</td>
													<td>19</td>
													<td>12</td>
													<td>525</td>
													<td>4</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(슈퍼시드 함유 도우L)</td>
													<td>945</td>
													<td>1조각</td>
													<td>118</td>
													<td>305</td>
													<td>15</td>
													<td>6</td>
													<td>467</td>
													<td>6</td>
												</tr>
												<tr>
													<td>베이컨체더치즈(슈퍼시드 함유 도우M)</td>
													<td>530</td>
													<td>2조각</td>
													<td>133</td>
													<td>355</td>
													<td>15</td>
													<td>7</td>
													<td>481</td>
													<td>7</td>
												</tr>
												<tr>
													<td>베이컨체더치즈 더블치즈엣지(오리지널 L)</td>
													<td>1,083</td>
													<td>1조각</td>
													<td>135</td>
													<td>364</td>
													<td>18</td>
													<td>9</td>
													<td>508</td>
													<td>4</td>
												</tr>
												<tr>
													<td>베이컨체더치즈 더블치즈엣지(오리지널 M)</td>
													<td>632</td>
													<td>2조각</td>
													<td>158</td>
													<td>436</td>
													<td>21</td>
													<td>11</td>
													<td>624</td>
													<td>5</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(오리지널 L)</td>
													<td>1,008</td>
													<td>1조각</td>
													<td>126</td>
													<td>307</td>
													<td>14</td>
													<td>5</td>
													<td>471</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(오리지널 M)</td>
													<td>638</td>
													<td>2조각</td>
													<td>160</td>
													<td>383</td>
													<td>17</td>
													<td>7</td>
													<td>612</td>
													<td>10</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(나폴리L)</td>
													<td>822</td>
													<td>1조각</td>
													<td>103</td>
													<td>248</td>
													<td>12</td>
													<td>6</td>
													<td>440</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(나폴리M)</td>
													<td>484</td>
													<td>2조각</td>
													<td>121</td>
													<td>296</td>
													<td>14</td>
													<td>7</td>
													<td>555</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(씬 L)</td>
													<td>675</td>
													<td>2조각</td>
													<td>169</td>
													<td>459</td>
													<td>20</td>
													<td>12</td>
													<td>736</td>
													<td>11</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(씬 M)</td>
													<td>411</td>
													<td>2조각</td>
													<td>103</td>
													<td>266</td>
													<td>12</td>
													<td>7</td>
													<td>413</td>
													<td>7</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(슈퍼시드 함유 도우L)</td>
													<td>1,006</td>
													<td>1조각</td>
													<td>126</td>
													<td>301</td>
													<td>14</td>
													<td>5</td>
													<td>487</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크(슈퍼시드 함유 도우M)</td>
													<td>633</td>
													<td>2조각</td>
													<td>158</td>
													<td>369</td>
													<td>17</td>
													<td>6</td>
													<td>611</td>
													<td>13</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크 더블치즈엣지(오리지널 L)</td>
													<td>1,246</td>
													<td>1조각</td>
													<td>156</td>
													<td>388</td>
													<td>19</td>
													<td>9</td>
													<td>743</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙앵거스 스테이크 더블치즈엣지(오리지널 M)</td>
													<td>793</td>
													<td>2조각</td>
													<td>198</td>
													<td>488</td>
													<td>23</td>
													<td>12</td>
													<td>954</td>
													<td>11</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(오리지널 L)</td>
													<td>982</td>
													<td>1조각</td>
													<td>123</td>
													<td>288</td>
													<td>13</td>
													<td>4</td>
													<td>568</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(오리지널 M)</td>
													<td>574</td>
													<td>2조각</td>
													<td>191</td>
													<td>453</td>
													<td>20</td>
													<td>6</td>
													<td>863</td>
													<td>14</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(나폴리L)</td>
													<td>753</td>
													<td>2조각</td>
													<td>188</td>
													<td>431</td>
													<td>20</td>
													<td>7</td>
													<td>956</td>
													<td>16</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(나폴리M)</td>
													<td>477</td>
													<td>2조각</td>
													<td>159</td>
													<td>358</td>
													<td>18</td>
													<td>6</td>
													<td>819</td>
													<td>13</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(씬 L)</td>
													<td>375</td>
													<td>2조각</td>
													<td>125</td>
													<td>308</td>
													<td>14</td>
													<td>8</td>
													<td>674</td>
													<td>12</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(씬 M)</td>
													<td>628</td>
													<td>2조각</td>
													<td>157</td>
													<td>403</td>
													<td>18</td>
													<td>9</td>
													<td>821</td>
													<td>14</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(슈퍼시드 함유 도우L)</td>
													<td>946</td>
													<td>1조각</td>
													<td>118</td>
													<td>290</td>
													<td>13</td>
													<td>4</td>
													<td>517</td>
													<td>10</td>
												</tr>
												<tr>
													<td>블랙타이거슈림프(슈퍼시드 함유 도우M)</td>
													<td>1,152</td>
													<td>1조각</td>
													<td>144</td>
													<td>363</td>
													<td>18</td>
													<td>7</td>
													<td>770</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 더블치즈엣지(오리지널 L)</td>
													<td>580</td>
													<td>2조각</td>
													<td>193</td>
													<td>468</td>
													<td>21</td>
													<td>8</td>
													<td>884</td>
													<td>18</td>
												</tr>
												<tr>
													<td>블랙타이거슈림프 더블치즈엣지(오리지널 M)</td>
													<td>744</td>
													<td>1조각</td>
													<td>124</td>
													<td>312</td>
													<td>16</td>
													<td>7</td>
													<td>681</td>
													<td>7</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(오리지널 L)</td>
													<td>1,073</td>
													<td>1조각</td>
													<td>134</td>
													<td>307</td>
													<td>17</td>
													<td>5</td>
													<td>439</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(오리지널 M)</td>
													<td>599</td>
													<td>2조각</td>
													<td>150</td>
													<td>386</td>
													<td>19</td>
													<td>7</td>
													<td>481</td>
													<td>4</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(나폴리L)</td>
													<td>856</td>
													<td>1조각</td>
													<td>107</td>
													<td>251</td>
													<td>12</td>
													<td>5</td>
													<td>358</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(나폴리M)</td>
													<td>472</td>
													<td>2조각</td>
													<td>118</td>
													<td>282</td>
													<td>15</td>
													<td>6</td>
													<td>408</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(씬 L)</td>
													<td>744</td>
													<td>2조각</td>
													<td>186</td>
													<td>450</td>
													<td>24</td>
													<td>12</td>
													<td>692</td>
													<td>4</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(씬 M)</td>
													<td>414</td>
													<td>2조각</td>
													<td>104</td>
													<td>262</td>
													<td>14</td>
													<td>7</td>
													<td>361</td>
													<td>2</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(슈퍼시드 함유 도우L)</td>
													<td>1,059</td>
													<td>1조각</td>
													<td>132</td>
													<td>311</td>
													<td>14</td>
													<td>4</td>
													<td>537</td>
													<td>6</td>
												</tr>
												<tr>
													<td>슈퍼디럭스(슈퍼시드 함유 도우M)</td>
													<td>610</td>
													<td>2조각</td>
													<td>153</td>
													<td>349</td>
													<td>16</td>
													<td>6</td>
													<td>621</td>
													<td>6</td>
												</tr>
												<tr>
													<td>슈퍼디럭스 더블치즈엣지(오리지널 L)</td>
													<td>1,272</td>
													<td>1조각</td>
													<td>159</td>
													<td>359</td>
													<td>19</td>
													<td>8</td>
													<td>587</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼디럭스 더블치즈엣지(오리지널 M)</td>
													<td>750</td>
													<td>2조각</td>
													<td>188</td>
													<td>452</td>
													<td>24</td>
													<td>10</td>
													<td>669</td>
													<td>3</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(오리지널 L)</td>
													<td>1,205</td>
													<td>1조각</td>
													<td>151</td>
													<td>321</td>
													<td>17</td>
													<td>5</td>
													<td>462</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(오리지널 M)</td>
													<td>671</td>
													<td>2조각</td>
													<td>168</td>
													<td>366</td>
													<td>20</td>
													<td>6</td>
													<td>461</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(나폴리L)</td>
													<td>983</td>
													<td>1조각</td>
													<td>123</td>
													<td>246</td>
													<td>14</td>
													<td>5</td>
													<td>392</td>
													<td>4</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(나폴리M)</td>
													<td>555</td>
													<td>2조각</td>
													<td>139</td>
													<td>291</td>
													<td>16</td>
													<td>6</td>
													<td>494</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(씬 L)</td>
													<td>889</td>
													<td>1조각</td>
													<td>111</td>
													<td>236</td>
													<td>13</td>
													<td>6</td>
													<td>353</td>
													<td>4</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(씬 M)</td>
													<td>479</td>
													<td>2조각</td>
													<td>120</td>
													<td>251</td>
													<td>15</td>
													<td>7</td>
													<td>376</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(슈퍼시드 함유 도우L)</td>
													<td>1,180</td>
													<td>1조각</td>
													<td>148</td>
													<td>322</td>
													<td>14</td>
													<td>4</td>
													<td>540</td>
													<td>9</td>
												</tr>
												<tr>
													<td>슈퍼슈프림(슈퍼시드 함유 도우M)</td>
													<td>660</td>
													<td>2조각</td>
													<td>165</td>
													<td>373</td>
													<td>17</td>
													<td>5</td>
													<td>629</td>
													<td>10</td>
												</tr>
												<tr>
													<td>슈퍼슈프림 더블치즈엣지(오리지널 L)</td>
													<td>1,372</td>
													<td>1조각</td>
													<td>172</td>
													<td>374</td>
													<td>21</td>
													<td>7</td>
													<td>518</td>
													<td>5</td>
												</tr>
												<tr>
													<td>슈퍼슈프림 더블치즈엣지(오리지널 M)</td>
													<td>773</td>
													<td>2조각</td>
													<td>193</td>
													<td>433</td>
													<td>24</td>
													<td>9</td>
													<td>587</td>
													<td>5</td>
												</tr>
												<tr>
													<td>우리 고구마(오리지널 L)</td>
													<td>1,026</td>
													<td>1조각</td>
													<td>128</td>
													<td>321</td>
													<td>13</td>
													<td>6</td>
													<td>441</td>
													<td>9</td>
												</tr>
												<tr>
													<td>우리 고구마(오리지널 M)</td>
													<td>626</td>
													<td>2조각</td>
													<td>157</td>
													<td>372</td>
													<td>15</td>
													<td>6</td>
													<td>552</td>
													<td>14</td>
												</tr>
												<tr>
													<td>우리 고구마(나폴리L)</td>
													<td>858</td>
													<td>1조각</td>
													<td>107</td>
													<td>273</td>
													<td>11</td>
													<td>6</td>
													<td>406</td>
													<td>9</td>
												</tr>
												<tr>
													<td>우리 고구마(나폴리M)</td>
													<td>537</td>
													<td>2조각</td>
													<td>134</td>
													<td>311</td>
													<td>12</td>
													<td>7</td>
													<td>475</td>
													<td>12</td>
												</tr>
												<tr>
													<td>우리 고구마(씬 L)</td>
													<td>699</td>
													<td>2조각</td>
													<td>175</td>
													<td>482</td>
													<td>19</td>
													<td>13</td>
													<td>682</td>
													<td>17</td>
												</tr>
												<tr>
													<td>우리 고구마(씬 M)</td>
													<td>437</td>
													<td>2조각</td>
													<td>109</td>
													<td>277</td>
													<td>10</td>
													<td>7</td>
													<td>389</td>
													<td>13</td>
												</tr>
												<tr>
													<td>우리 고구마(슈퍼시드 함유 도우L)</td>
													<td>1,041</td>
													<td>1조각</td>
													<td>130</td>
													<td>338</td>
													<td>13</td>
													<td>6</td>
													<td>494</td>
													<td>10</td>
												</tr>
												<tr>
													<td>우리 고구마(슈퍼시드 함유 도우M)</td>
													<td>663</td>
													<td>2조각</td>
													<td>166</td>
													<td>399</td>
													<td>15</td>
													<td>7</td>
													<td>529</td>
													<td>17</td>
												</tr>
												<tr>
													<td>우리 고구마 더블치즈엣지(오리지널 L)</td>
													<td>1,251</td>
													<td>1조각</td>
													<td>156</td>
													<td>399</td>
													<td>18</td>
													<td>8</td>
													<td>696</td>
													<td>9</td>
												</tr>
												<tr>
													<td>우리 고구마 더블치즈엣지(오리지널 M)</td>
													<td>771</td>
													<td>2조각</td>
													<td>193</td>
													<td>482</td>
													<td>22</td>
													<td>11</td>
													<td>829</td>
													<td>14</td>
												</tr>
												<tr>
													<td>직화 스테이크(오리지널 L)</td>
													<td>1,010</td>
													<td>1조각</td>
													<td>126</td>
													<td>304</td>
													<td>14</td>
													<td>5</td>
													<td>587</td>
													<td>5</td>
												</tr>
												<tr>
													<td>직화 스테이크(오리지널 M)</td>
													<td>641</td>
													<td>2조각</td>
													<td>160</td>
													<td>370</td>
													<td>20</td>
													<td>6</td>
													<td>752</td>
													<td>6</td>
												</tr>
												<tr>
													<td>직화 스테이크(나폴리L)</td>
													<td>802</td>
													<td>1조각</td>
													<td>100</td>
													<td>240</td>
													<td>12</td>
													<td>4</td>
													<td>497</td>
													<td>4</td>
												</tr>
												<tr>
													<td>직화 스테이크(나폴리M)</td>
													<td>538</td>
													<td>2조각</td>
													<td>135</td>
													<td>313</td>
													<td>16</td>
													<td>6</td>
													<td>667</td>
													<td>5</td>
												</tr>
												<tr>
													<td>직화 스테이크(씬 L)</td>
													<td>646</td>
													<td>2조각</td>
													<td>162</td>
													<td>444</td>
													<td>20</td>
													<td>11</td>
													<td>887</td>
													<td>6</td>
												</tr>
												<tr>
													<td>직화 스테이크(씬 M)</td>
													<td>441</td>
													<td>2조각</td>
													<td>110</td>
													<td>308</td>
													<td>15</td>
													<td>8</td>
													<td>552</td>
													<td>4</td>
												</tr>
												<tr>
													<td>직화 스테이크(슈퍼시드 함유 도우L)</td>
													<td>995</td>
													<td>1조각</td>
													<td>124</td>
													<td>308</td>
													<td>14</td>
													<td>5</td>
													<td>568</td>
													<td>6</td>
												</tr>
												<tr>
													<td>직화 스테이크(슈퍼시드 함유 도우M)</td>
													<td>647</td>
													<td>2조각</td>
													<td>162</td>
													<td>406</td>
													<td>19</td>
													<td>7</td>
													<td>755</td>
													<td>8</td>
												</tr>
												<tr>
													<td>직화 스테이크 더블치즈엣지(오리지널 L)</td>
													<td>777</td>
													<td>2조각</td>
													<td>194</td>
													<td>480</td>
													<td>25</td>
													<td>10</td>
													<td>1,006</td>
													<td>6</td>
												</tr>
												<tr>
													<td>직화 스테이크 더블치즈엣지(오리지널 M)</td>
													<td>1,209</td>
													<td>1조각</td>
													<td>151</td>
													<td>364</td>
													<td>20</td>
													<td>7</td>
													<td>815</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(오리지널 L)</td>
													<td>764</td>
													<td>2조각</td>
													<td>191</td>
													<td>466</td>
													<td>24</td>
													<td>6</td>
													<td>638</td>
													<td>7</td>
												</tr>
												<tr>
													<td>치즈(오리지널 M)</td>
													<td>447</td>
													<td>2조각</td>
													<td>112</td>
													<td>285</td>
													<td>15</td>
													<td>4</td>
													<td>403</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(나폴리L)</td>
													<td>544</td>
													<td>2조각</td>
													<td>136</td>
													<td>352</td>
													<td>19</td>
													<td>7</td>
													<td>574</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈(나폴리M)</td>
													<td>308</td>
													<td>3조각</td>
													<td>116</td>
													<td>305</td>
													<td>18</td>
													<td>6</td>
													<td>460</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(씬 L)</td>
													<td>441</td>
													<td>2조각</td>
													<td>110</td>
													<td>314</td>
													<td>17</td>
													<td>9</td>
													<td>423</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(씬 M)</td>
													<td>247</td>
													<td>4조각</td>
													<td>124</td>
													<td>374</td>
													<td>20</td>
													<td>11</td>
													<td>572</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈(슈퍼시드 함유 도우L)</td>
													<td>764</td>
													<td>2조각</td>
													<td>191</td>
													<td>504</td>
													<td>21</td>
													<td>6</td>
													<td>690</td>
													<td>11</td>
												</tr>
												<tr>
													<td>치즈(슈퍼시드 함유 도우M)</td>
													<td>426</td>
													<td>2조각</td>
													<td>107</td>
													<td>289</td>
													<td>14</td>
													<td>4</td>
													<td>406</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈 더블치즈엣지(오리지널 L)</td>
													<td>970</td>
													<td>1조각</td>
													<td>121</td>
													<td>301</td>
													<td>15</td>
													<td>6</td>
													<td>452</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈 더블치즈엣지(오리지널 M)</td>
													<td>581</td>
													<td>2조각</td>
													<td>145</td>
													<td>379</td>
													<td>20</td>
													<td>8</td>
													<td>539</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈가든(오리지널 L)</td>
													<td>870</td>
													<td>1조각</td>
													<td>109</td>
													<td>250</td>
													<td>10</td>
													<td>3</td>
													<td>353</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈가든(오리지널 M)</td>
													<td>527</td>
													<td>2조각</td>
													<td>132</td>
													<td>287</td>
													<td>14</td>
													<td>4</td>
													<td>412</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈가든(나폴리L)</td>
													<td>685</td>
													<td>2조각</td>
													<td>171</td>
													<td>363</td>
													<td>16</td>
													<td>5</td>
													<td>591</td>
													<td>7</td>
												</tr>
												<tr>
													<td>치즈가든(나폴리M)</td>
													<td>401</td>
													<td>2조각</td>
													<td>100</td>
													<td>209</td>
													<td>9</td>
													<td>3</td>
													<td>338</td>
													<td>3</td>
												</tr>
												<tr>
													<td>치즈가든(씬 L)</td>
													<td>549</td>
													<td>2조각</td>
													<td>137</td>
													<td>303</td>
													<td>12</td>
													<td>7</td>
													<td>432</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈가든(씬 M)</td>
													<td>305</td>
													<td>3조각</td>
													<td>114</td>
													<td>249</td>
													<td>10</td>
													<td>6</td>
													<td>375</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈가든(슈퍼시드 함유 도우L)</td>
													<td>875</td>
													<td>1조각</td>
													<td>109</td>
													<td>245</td>
													<td>11</td>
													<td>3</td>
													<td>372</td>
													<td>5</td>
												</tr>
												<tr>
													<td>치즈가든(슈퍼시드 함유 도우M)</td>
													<td>514</td>
													<td>2조각</td>
													<td>129</td>
													<td>296</td>
													<td>11</td>
													<td>3</td>
													<td>433</td>
													<td>6</td>
												</tr>
												<tr>
													<td>치즈가든 더블치즈엣지(오리지널 L)</td>
													<td>1,103</td>
													<td>1조각</td>
													<td>138</td>
													<td>316</td>
													<td>15</td>
													<td>5</td>
													<td>536</td>
													<td>4</td>
												</tr>
												<tr>
													<td>치즈가든 더블치즈엣지(오리지널 M)</td>
													<td>673</td>
													<td>2조각</td>
													<td>168</td>
													<td>380</td>
													<td>19</td>
													<td>7</td>
													<td>681</td>
													<td>5</td>
												</tr>
												<tr>
													<td>페퍼로니(오리지널 L)</td>
													<td>812</td>
													<td>1조각</td>
													<td>102</td>
													<td>271</td>
													<td>14</td>
													<td>5</td>
													<td>401</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(오리지널 M)</td>
													<td>470</td>
													<td>2조각</td>
													<td>118</td>
													<td>327</td>
													<td>16</td>
													<td>6</td>
													<td>445</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(나폴리L)</td>
													<td>590</td>
													<td>2조각</td>
													<td>148</td>
													<td>426</td>
													<td>24</td>
													<td>9</td>
													<td>680</td>
													<td>5</td>
												</tr>
												<tr>
													<td>페퍼로니(나폴리M)</td>
													<td>338</td>
													<td>3조각</td>
													<td>127</td>
													<td>384</td>
													<td>20</td>
													<td>8</td>
													<td>558</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(씬 L)</td>
													<td>525</td>
													<td>2조각</td>
													<td>131</td>
													<td>386</td>
													<td>22</td>
													<td>11</td>
													<td>567</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(씬 M)</td>
													<td>291</td>
													<td>3조각</td>
													<td>109</td>
													<td>336</td>
													<td>18</td>
													<td>10</td>
													<td>503</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니(슈퍼시드 함유 도우L)</td>
													<td>832</td>
													<td>1조각</td>
													<td>104</td>
													<td>288</td>
													<td>13</td>
													<td>4</td>
													<td>413</td>
													<td>6</td>
												</tr>
												<tr>
													<td>페퍼로니(슈퍼시드 함유 도우M)</td>
													<td>494</td>
													<td>2조각</td>
													<td>124</td>
													<td>345</td>
													<td>15</td>
													<td>6</td>
													<td>505</td>
													<td>6</td>
												</tr>
												<tr>
													<td>페퍼로니 더블치즈엣지(오리지널 L)</td>
													<td>995</td>
													<td>1조각</td>
													<td>124</td>
													<td>341</td>
													<td>16</td>
													<td>7</td>
													<td>480</td>
													<td>4</td>
												</tr>
												<tr>
													<td>페퍼로니 더블치즈엣지(오리지널 M)</td>
													<td>588</td>
													<td>2조각</td>
													<td>147</td>
													<td>403</td>
													<td>20</td>
													<td>9</td>
													<td>576</td>
													<td>4</td>
												</tr>
												<tr>
													<td>포테이토(오리지널 L)</td>
													<td>1,110</td>
													<td>1조각</td>
													<td>139</td>
													<td>322</td>
													<td>15</td>
													<td>4</td>
													<td>380</td>
													<td>4</td>
												</tr>
												<tr>
													<td>포테이토(오리지널 M)</td>
													<td>594</td>
													<td>2조각</td>
													<td>149</td>
													<td>352</td>
													<td>16</td>
													<td>5</td>
													<td>380</td>
													<td>4</td>
												</tr>
												<tr>
													<td>포테이토(나폴리L)</td>
													<td>921</td>
													<td>1조각</td>
													<td>115</td>
													<td>260</td>
													<td>15</td>
													<td>4</td>
													<td>332</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토(나폴리M)</td>
													<td>486</td>
													<td>2조각</td>
													<td>122</td>
													<td>292</td>
													<td>16</td>
													<td>5</td>
													<td>338</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토(씬 L)</td>
													<td>820</td>
													<td>1조각</td>
													<td>103</td>
													<td>224</td>
													<td>12</td>
													<td>5</td>
													<td>298</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토(씬 M)</td>
													<td>436</td>
													<td>2조각</td>
													<td>109</td>
													<td>243</td>
													<td>12</td>
													<td>5</td>
													<td>296</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토(슈퍼시드 함유 도우L)</td>
													<td>1,132</td>
													<td>1조각</td>
													<td>142</td>
													<td>335</td>
													<td>14</td>
													<td>4</td>
													<td>409</td>
													<td>6</td>
												</tr>
												<tr>
													<td>포테이토(슈퍼시드 함유 도우M)</td>
													<td>611</td>
													<td>2조각</td>
													<td>153</td>
													<td>376</td>
													<td>17</td>
													<td>5</td>
													<td>487</td>
													<td>7</td>
												</tr>
												<tr>
													<td>포테이토 더블치즈엣지(오리지널 L)</td>
													<td>1,228</td>
													<td>1조각</td>
													<td>154</td>
													<td>362</td>
													<td>18</td>
													<td>6</td>
													<td>459</td>
													<td>3</td>
												</tr>
												<tr>
													<td>포테이토 더블치즈엣지(오리지널 M)</td>
													<td>697</td>
													<td>2조각</td>
													<td>174</td>
													<td>422</td>
													<td>21</td>
													<td>8</td>
													<td>495</td>
													<td>4</td>
												</tr>
												<tr>
													<td>핫치킨(오리지널 L)</td>
													<td>948</td>
													<td>1조각</td>
													<td>119</td>
													<td>287</td>
													<td>13</td>
													<td>3</td>
													<td>601</td>
													<td>9</td>
												</tr>
												<tr>
													<td>핫치킨(오리지널 M)</td>
													<td>576</td>
													<td>2조각</td>
													<td>144</td>
													<td>346</td>
													<td>15</td>
													<td>3</td>
													<td>684</td>
													<td>13</td>
												</tr>
												<tr>
													<td>핫치킨(나폴리L)</td>
													<td>752</td>
													<td>2조각</td>
													<td>188</td>
													<td>466</td>
													<td>22</td>
													<td>7</td>
													<td>1,066</td>
													<td>15</td>
												</tr>
												<tr>
													<td>핫치킨(나폴리M)</td>
													<td>455</td>
													<td>2조각</td>
													<td>114</td>
													<td>274</td>
													<td>14</td>
													<td>4</td>
													<td>588</td>
													<td>8</td>
												</tr>
												<tr>
													<td>핫치킨(씬 L)</td>
													<td>607</td>
													<td>2조각</td>
													<td>152</td>
													<td>410</td>
													<td>20</td>
													<td>7</td>
													<td>942</td>
													<td>18</td>
												</tr>
												<tr>
													<td>핫치킨(씬 M)</td>
													<td>353</td>
													<td>3조각</td>
													<td>132</td>
													<td>323</td>
													<td>15</td>
													<td>6</td>
													<td>736</td>
													<td>14</td>
												</tr>
												<tr>
													<td>핫치킨(슈퍼시드 함유 도우L)</td>
													<td>953</td>
													<td>1조각</td>
													<td>119</td>
													<td>297</td>
													<td>13</td>
													<td>3</td>
													<td>563</td>
													<td>10</td>
												</tr>
												<tr>
													<td>핫치킨(슈퍼시드 함유 도우M)</td>
													<td>584</td>
													<td>2조각</td>
													<td>146</td>
													<td>361</td>
													<td>16</td>
													<td>3</td>
													<td>632</td>
													<td>10</td>
												</tr>
												<tr>
													<td>핫치킨 더블치즈엣지(오리지널 L)</td>
													<td>1,147</td>
													<td>1조각</td>
													<td>143</td>
													<td>356</td>
													<td>18</td>
													<td>6</td>
													<td>757</td>
													<td>8</td>
												</tr>
												<tr>
													<td>핫치킨 더블치즈엣지(오리지널 M)</td>
													<td>726</td>
													<td>2조각</td>
													<td>182</td>
													<td>441</td>
													<td>22</td>
													<td>7</td>
													<td>873</td>
													<td>9</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div id="allergy1-2" class="tab-content-v2">
									<div class="allergy-group">
										<div class="title-type3">1. 사이드디시</div>
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
													<tr>
														<td>치캉스 팩</td>
														<td>538</td>
														<td>1037</td>
														<td>77</td>
														<td>12</td>
														<td>2263</td>
														<td>15</td>
													</tr>
													<tr>
														<td>크리스피 핫 순살 치킨(8조각)</td>
														<td>127</td>
														<td>262</td>
														<td>25</td>
														<td>2</td>
														<td>966</td>
														<td>1</td>
													</tr>
													<tr>
														<td>한돈 빠에야</td>
														<td>344</td>
														<td>555</td>
														<td>21</td>
														<td>12</td>
														<td>1742</td>
														<td>13</td>
													</tr>
													<tr>
														<td>갈릭&허브윙스(8조각)</td>
														<td>315</td>
														<td>595</td>
														<td>47</td>
														<td>9</td>
														<td>964</td>
														<td>3</td>
													</tr>
													<tr>
														<td>샐러드 가든</td>
														<td>141</td>
														<td>52</td>
														<td>2</td>
														<td>0</td>
														<td>301</td>
														<td>5</td>
													</tr>
													<tr>
														<td>슈퍼곡물 치킨(10조각)</td>
														<td>178</td>
														<td>481</td>
														<td>36</td>
														<td>4</td>
														<td>1,025</td>
														<td>4</td>
													</tr>
													<tr>
														<td>트러플 리조또</td>
														<td>285</td>
														<td>650</td>
														<td>17</td>
														<td>26</td>
														<td>1,123</td>
														<td>8</td>
													</tr>
													<tr>
														<td>펜네 파스타</td>
														<td>366</td>
														<td>723</td>
														<td>25</td>
														<td>23</td>
														<td>1,270</td>
														<td>8</td>
													</tr>
													<tr>
														<td>프레시 콘샐러드</td>
														<td>100</td>
														<td>115</td>
														<td>2</td>
														<td>1</td>
														<td>430</td>
														<td>11</td>
													</tr>
													<tr>
														<td>프레시 코울슬로</td>
														<td>100</td>
														<td>105</td>
														<td>1</td>
														<td>1</td>
														<td>200</td>
														<td>10</td>
													</tr>
													<tr>
														<td>하프&amp;하프 스파게티 (NEW 치즈 &amp; 화이트 크림)</td>
														<td>395</td>
														<td>705</td>
														<td>28</td>
														<td>18</td>
														<td>1,347</td>
														<td>11</td>
													</tr>
													<tr>
														<td>화이트 크림 스파게티</td>
														<td>392</td>
														<td>851</td>
														<td>29</td>
														<td>29</td>
														<td>1,258</td>
														<td>9</td>
													</tr>
													<tr>
														<td>NEW 치즈 볼로네즈 스파게티</td>
														<td>399</td>
														<td>559</td>
														<td>27</td>
														<td>7</td>
														<td>1,444</td>
														<td>13</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div id="allergy1-2" class="tab-content-v2">
										<div class="allergy-group">
											<div class="title-type3">1. 사이드디시</div>
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
															<th rowspan="2">제품명</th>
															<th rowspan="2">총 중량(g)</th>
															<th rowspan="2">열량<br>(kcal/1회분)
															</th>
															<th rowspan="2">단백질<br>(g/1회분)
															</th>
															<th rowspan="2">포화지방<br>(g/1회분)
															</th>
															<th rowspan="2">나트륨<br>(mg/1회분)
															</th>
															<th rowspan="2">당류<br>(g/1회분)
															</th>
														</tr>
													</thead>
													<tbody id="ingredientList1">
														<tr>
															<td>치캉스 팩</td>
															<td>538</td>
															<td>1037</td>
															<td>77</td>
															<td>12</td>
															<td>2263</td>
															<td>15</td>
														</tr>
														<tr>
															<td>크리스피 핫 순살 치킨(8조각)</td>
															<td>127</td>
															<td>262</td>
															<td>25</td>
															<td>2</td>
															<td>966</td>
															<td>1</td>
														</tr>
														<tr>
															<td>한돈 빠에야</td>
															<td>344</td>
															<td>555</td>
															<td>21</td>
															<td>12</td>
															<td>1742</td>
															<td>13</td>
														</tr>
														<tr>
															<td>갈릭&허브윙스(8조각)</td>
															<td>315</td>
															<td>595</td>
															<td>47</td>
															<td>9</td>
															<td>964</td>
															<td>3</td>
														</tr>
														<tr>
															<td>샐러드 가든</td>
															<td>141</td>
															<td>52</td>
															<td>2</td>
															<td>0</td>
															<td>301</td>
															<td>5</td>
														</tr>
														<tr>
															<td>슈퍼곡물 치킨(10조각)</td>
															<td>178</td>
															<td>481</td>
															<td>36</td>
															<td>4</td>
															<td>1,025</td>
															<td>4</td>
														</tr>
														<tr>
															<td>트러플 리조또</td>
															<td>285</td>
															<td>650</td>
															<td>17</td>
															<td>26</td>
															<td>1,123</td>
															<td>8</td>
														</tr>
														<tr>
															<td>펜네 파스타</td>
															<td>366</td>
															<td>723</td>
															<td>25</td>
															<td>23</td>
															<td>1,270</td>
															<td>8</td>
														</tr>
														<tr>
															<td>프레시 콘샐러드</td>
															<td>100</td>
															<td>115</td>
															<td>2</td>
															<td>1</td>
															<td>430</td>
															<td>11</td>
														</tr>
														<tr>
															<td>프레시 코울슬로</td>
															<td>100</td>
															<td>105</td>
															<td>1</td>
															<td>1</td>
															<td>200</td>
															<td>10</td>
														</tr>
														<tr>
															<td>하프&amp;하프 스파게티 (NEW 치즈 &amp; 화이트 크림)</td>
															<td>395</td>
															<td>705</td>
															<td>28</td>
															<td>18</td>
															<td>1,347</td>
															<td>11</td>
														</tr>
														<tr>
															<td>화이트 크림 스파게티</td>
															<td>392</td>
															<td>851</td>
															<td>29</td>
															<td>29</td>
															<td>1,258</td>
															<td>9</td>
														</tr>
														<tr>
															<td>NEW 치즈 볼로네즈 스파게티</td>
															<td>399</td>
															<td>559</td>
															<td>27</td>
															<td>7</td>
															<td>1,444</td>
															<td>13</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="allergy-group">
											<div class="title-type3">2. 음료</div>
											<div class="table-type v2">
												<table class="bg-table">
													<caption>음료 영양성분</caption>
													<colgroup>
														<col width="25%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
													</colgroup>
													<thead>
														<tr>
															<th rowspan="2">제품명</th>
															<th rowspan="2">열량<br>(kcal/1회분)
															</th>
															<th rowspan="2">단백질<br>(g/1회분)
															</th>
															<th rowspan="2">포화지방<br>(g/1회분)
															</th>
															<th rowspan="2">나트륨<br>(mg/1회분)
															</th>
															<th rowspan="2">당류<br>(g/1회분)
															</th>
														</tr>
													</thead>
													<tbody id="ingredientList2">
														<tr>
															<td>미닛메이드 스파클링 청포도 1.25L</td>
															<td>450</td>
															<td>0</td>
															<td>0</td>
															<td>38</td>
															<td>113</td>
														</tr>
														<tr>
															<td>스프라이트 1.5L</td>
															<td>700</td>
															<td>0</td>
															<td>0</td>
															<td>150</td>
															<td>170</td>
														</tr>
														<tr>
															<td>스프라이트 500ml</td>
															<td>233</td>
															<td>0</td>
															<td>0</td>
															<td>50</td>
															<td>57</td>
														</tr>
														<tr>
															<td>씨그램(레몬맛) 350ml</td>
															<td>0</td>
															<td>0</td>
															<td>0</td>
															<td>11</td>
															<td>0</td>
														</tr>
														<tr>
															<td>코카콜라 1.25L</td>
															<td>550</td>
															<td>0</td>
															<td>0</td>
															<td>37.5</td>
															<td>137.5</td>
														</tr>
														<tr>
															<td>코카콜라 500ml</td>
															<td>216</td>
															<td>0</td>
															<td>0</td>
															<td>15</td>
															<td>54</td>
														</tr>
														<tr>
															<td>코카콜라 제로 1.5L</td>
															<td>0</td>
															<td>0</td>
															<td>0</td>
															<td>100</td>
															<td>0</td>
														</tr>
														<tr>
															<td>코카콜라 제로 500ml</td>
															<td>0</td>
															<td>0</td>
															<td>0</td>
															<td>33</td>
															<td>0</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div id="allergy2" class="tab-content">
								<div class="tab-type2 js_tab">
									<ul>
										<li class="active"><a href="#allergy2-1">피자</a></li>
										<li><a href="#allergy2-2">사이드</a></li>
									</ul>
								</div>
								<div id="allergy2-1" class="tab-content-v2 active">
									<div class="allergy_guide">
										<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와
											같이 제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능
											식품)</p>
										<dl>
											<dt>* 알레르기 유발 가능 식품 :</dt>
											<dd>난류(가금류에 한한다), 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기,
												복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합포함), 잣</dd>
										</dl>
									</div>
									<div class="allergy-group">
										<div class="title-type3">피자</div>
										<div class="guide-box3">피자 공통: 오리지널,나폴리, 슈퍼시드함유, 샌드
											도우(우유, 밀, 대두), 씬, 더블 도우(밀), 더블치즈엣지(스트링 치즈(우유, 대두, 밀), 카망베르
											크림치즈(우유))</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>피자 재료중 알레르기 유발 가능 식품</caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th>NO</th>
														<th>피자</th>
														<th>알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>시리얼칠리크랩+블랙타이거슈림프</td>
														<td>모차렐라, 페터크림, 로마노크림, 체더, 파르메산, 콰트로치즈퐁듀 치즈(우유), 토마토
															소스(토마토, 대두), 갈릭 크림 소스(계란, 우유, 대두, 밀), 로스트 포테이토(대두),
															베이컨칩(돼지고기), 호스래디시 스퀴드(오징어, 계란, 우유, 대두), 스위트 칠리크랩(게, 대두,
															밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)), 오리엔탈 통새우(새우, 우유, 대두, 밀,
															토마토, 닭고기, 쇠고기, 조개류(굴)), 리얼불고기(대두,밀,쇠고기,조개류(굴)), 블랙타이거
															슈림프(새우)</td>
													</tr>
													<tr>
														<td>2</td>
														<td>복날 콰트로</td>
														<td>모차렐라, 페터크림, 프로볼로네, 체더, 크리미 고르곤졸라, 파르메산 치즈(우유),
															15가지 믹스 슈레드 치즈(우유, 대두), 11가지 믹스 옐로우 치즈(우유, 대두, 계란), 토마토
															소스(토마토, 대두), 갈릭 크림 소스(계란, 우유, 대두, 밀), 로스트 포테이토(대두),
															베이컨칩(돼지고기), 호스래디시 스퀴드(오징어, 계란, 우유, 대두), 스위트 칠리크랩(게, 대두,
															밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)), 오리엔탈 통새우(새우, 우유, 대두, 밀,
															토마토, 닭고기, 쇠고기, 조개류(굴)), 스파이시 치킨(닭고기, 토마토, 대두, 밀, 우유,
															아황산류), 호스래디시소스(계란, 우유, 대두), 선드라이토마토(토마토), 블랙앵거스 비프 (쇠고기,
															대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>3</td>
														<td>시리얼 칠리크랩+블랙앵거스 스테이크</td>
														<td>모차렐라, 페터크림, 리코타 치즈(우유), 토마토 소스(토마토, 대두), 갈릭 크림
															소스(계란, 우유, 대두, 밀), 로스트 포테이토(대두), 베이컨칩(돼지고기), 호스래디시
															스퀴드(오징어, 계란, 우유, 대두), 스위트 칠리크랩(게, 대두, 밀, 새우, 토마토, 닭고기,
															오징어, 조개류(굴)), 오리엔탈 통새우(새우, 우유, 대두, 밀, 토마토, 닭고기, 쇠고기,
															조개류(굴)), 호스래디시소스(계란, 우유, 대두),
															아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 선드라이토마토(토마토), 블랙앵거스 비프
															(쇠고기, 대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>4</td>
														<td>시리얼 칠리크랩</td>
														<td>모차렐라, 페터크림 치즈(우유), 토마토 소스(토마토, 대두), 갈릭 크림 소스(계란,
															우유, 대두, 밀), 로스트 포테이토(대두), 베이컨칩(돼지고기), 호스래디시 스퀴드(오징어, 계란,
															우유, 대두), 스위트 칠리크랩(게, 대두, 밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)),
															오리엔탈 통새우(새우, 우유, 대두, 밀, 토마토, 닭고기, 쇠고기, 조개류(굴))</td>
													</tr>
													<tr>
														<td>5</td>
														<td>블랙타이거슈림프+직화스테이크</td>
														<td>모차렐라, 페터크림, 리코타 치즈, 로마노크림, 체더, 파르메산, 콰트로치즈퐁듀
															치즈(우유), 로스트포테이토(대두), 호스래디시소스(계란, 우유, 대두),
															리얼불고기(대두,밀,쇠고기,조개류(굴)), 블랙타이거 슈림프(새우),
															아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 선드라이토마토(토마토), 블랙앵거스
															비프(쇠고기, 대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>6</td>
														<td>30치즈&뉴욕 스트립 스테이크+포테이토</td>
														<td>갈릭 크림 소스(계란, 우유, 대두, 밀), 뉴욕 스트립 스테이크(대두, 밀, 쇠고기),
															모차렐라, 프로볼로네, 체더, 크리미 고르곤졸라(우유), 15가지 믹스 슈레드 치즈(우유, 대두),
															11가지 믹스 옐로우 치즈(우유, 대두, 계란), 감자(대두,이산화황), 마요네즈(난류,대두),
															베이컨(돼지고기), 토마토소스, 토마토 콩피(토마토)</td>
													</tr>
													<tr>
														<td>7</td>
														<td>블랙타이거 슈림프+블랙앵거스 스테이크</td>
														<td>모차렐라, 페터크림, 리코타 치즈, 로마노크림, 체더, 파르메산, 콰트로치즈퐁듀
															치즈(우유), 로스트포테이토(대두), 호스래디시소스(계란, 우유, 대두),
															리얼불고기(대두,밀,쇠고기,조개류(굴)), 블랙타이거 슈림프(새우),
															아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 선드라이토마토(토마토), 블랙앵거스
															비프(쇠고기, 대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>8</td>
														<td>30치즈&뉴욕 스트립 스테이크</td>
														<td>갈릭 크림 소스(계란, 우유, 대두, 밀), 토마토 콩피(토마토), 뉴욕 스트립
															스테이크(대두, 밀, 토마토, 쇠고기), 프로볼로네, 체더, 크리미 고르곤졸라(우유), 15가지 믹스
															치즈(우유, 대두), 11가지 옐로우 치즈(우유, 대두, 계란)</td>
													</tr>
													<tr>
														<td>9</td>
														<td>치즈케이크 블랙타이거</td>
														<td>파르메산,모차렐라(우유), 선드라이토마토(토마토), 베이컨칩(돼지고기),
															치즈케이크무스(계란,우유), 블랙타이거 슈림프(새우), 호스래디시소스(계란, 우유, 대두)</td>
													</tr>
													<tr>
														<td>10</td>
														<td>미트미트미트</td>
														<td>모차렐라, 페터크림 치즈, 체더 치즈(우유),
															아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 리얼불고기(대두,밀,쇠고기,조개류(굴)), 비프
															스테이크(대두, 밀, 토마토, 쇠고기), BBQ포크(대두, 밀, 토마토, 돼지고기, 쇠고기),
															트러플크림(계란,우유,대두)</td>
													</tr>
													<tr>
														<td>11</td>
														<td>핫치킨</td>
														<td>스파이시 치킨(닭고기, 토마토, 대두, 밀, 우유, 아황산류),
															스파이시마요(계란,우유,대두,밀), 특제 바비큐 소스(대두, 토마토), 체더, 파르메산, 모차렐라
															치즈(우유), 베이컨칩(돼지고기),</td>
													</tr>
													<tr>
														<td>12</td>
														<td>리얼불고기</td>
														<td>리얼불고기(대두,밀,쇠고기,조개류(굴)),
															불고기소스(우유,대두,밀,토마토,쇠고기,조개류(굴)), 체더, 모차렐라 치즈(우유)</td>
													</tr>
													<tr>
														<td>13</td>
														<td>치즈가든</td>
														<td>토마토 슬라이스(토마토), 리코타, 프로볼로네, 모차렐라 치즈(우유),
															토마토소스(토마토, 대두)</td>
													</tr>
													<tr>
														<td>14</td>
														<td>문어밤 슈림프</td>
														<td>페터크림, 파르메산, 모차렐라 치즈(우유), 토마토소스(토마토, 대두),
															호스래디시소스(계란, 우유, 대두), 딥치즈소스(우유, 대두), 문어(대두, 밀, 우유, 새우,
															쇠고기, 조개류), 통새우(새우)</td>
													</tr>
													<tr>
														<td>15</td>
														<td>베스트 콰트로</td>
														<td>모차렐라, 페터크림, 리코타, 로마노크림치즈(우유), 로스트포테이토(대두),
															호스래디시소스(계란,우유,대두), 아라비아타소스(계란,대두,밀,돼지고기, 닭고기,토마토), 블랙앵거스
															비프 (쇠고기,대두,밀,계란), 리얼불고기(대두,밀,쇠고기,조개류(굴)), 블랙타이거 슈림프(새우),
															감자(대두,이산화황), 마요네즈(난류,대두), 베이컨(돼지고기), 불고기(쇠고기,대두,밀,아황산류),
															페퍼로니(돼지고기,쇠고기), 포크(돼지고기,쇠고기,대두,밀,계란), 햄(돼지고기,쇠고기,대두,계란)</td>
													</tr>
													<tr>
														<td>16</td>
														<td>더블크러스트 이베리코</td>
														<td>모차렐라, 리코타, 로마노크림치즈, 콰트로 치즈퐁듀(우유), 베이컨(돼지고기), New
															고구마 무스(계란, 우유, 대두, 밀), 감자(대두,이산화황),마요네즈(난류,대두),
															토마토소스(토마토, 대두), 선드라이토마토(토마토), 코코넛 허니버터 파우더(대두,밀,우유),이베리코
															스테이크 (돼지고기,대두,밀)</td>
													</tr>
													<tr>
														<td>17</td>
														<td>우리 고구마</td>
														<td>모차렐라, 리코타, 체더, 카망베르 크림 치즈(우유), 트러플크림(계란,우유,대두),
															리얼불고기(대두,밀,쇠고기,조개류(굴)), 베이컨(돼지고기), 고구마 무스(계란, 우유, 대두, 밀)</td>
													</tr>
													<tr>
														<td>18</td>
														<td>블랙앵거스 스테이크</td>
														<td>모차렐라, 페터크림, 리코타 치즈 (우유), 로스트포테이토(대두), 호스래디시소스(계란,
															우유, 대두), 아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 선드라이토마토(토마토),
															앵거스비프 (쇠고기, 대두, 밀, 계란)</td>
													</tr>
													<tr>
														<td>19</td>
														<td>블랙타이거 슈림프</td>
														<td>모차렐라, 로마노크림, 체더, 파르메산, 콰트로치즈퐁듀 치즈(우유),
															로스트포테이토(대두), 호스래디시소스(계란, 우유, 대두), 리얼불고기(대두,밀,쇠고기,조개류(굴)),
															블랙타이거 슈림프(새우)</td>
													</tr>
													<tr>
														<td>20</td>
														<td>직화스테이크</td>
														<td>갈릭올리브소스(계란,우유,대두),감자(대두),모차렐라,프로볼로네,파르메산(우유),베이컨(돼지고기),새우(새우),토마토,토마토소스(토마토),케이준소스(대두,토마토,닭고기,조개류(굴)),그릴드비프(쇠고기,대두,밀)</td>
													</tr>
													<tr>
														<td>21</td>
														<td>포테이토</td>
														<td>모차렐라(우유),감자(대두,이산화황),마요네즈(난류,대두),베이컨(돼지고기),토마토소스(토마토)</td>
													</tr>
													<tr>
														<td>22</td>
														<td>슈퍼디럭스</td>
														<td>모차렐라(우유),불고기(쇠고기,대두,밀,아황산류),페퍼로니(돼지고기,쇠고기),포크(돼지고기,쇠고기,대두,밀,계란),토마토소스(토마토),햄(돼지고기,쇠고기,대두,계란)</td>
													</tr>
													<tr>
														<td>23</td>
														<td>슈퍼슈프림</td>
														<td>모차렐라(우유),불고기(쇠고기,대두,밀,아황산류),포크(돼지고기,쇠고기,대두,밀,계란),토마토소스(토마토),햄(돼지고기,쇠고기,대두,계란)</td>
													</tr>
													<tr>
														<td>24</td>
														<td>베이컨체더치즈</td>
														<td>모차렐라, 체더(우유), 베이컨(돼지고기), 불고기(쇠고기, 대두, 밀, 아황산류),
															토마토소스(토마토)</td>
													</tr>
													<tr>
														<td>25</td>
														<td>리얼불고기</td>
														<td>모차렐라(우유), 불고기(쇠고기, 대두, 밀, 아황산류), 불고기소스(우유, 대두, 밀,
															토마토, 쇠고기, 조개류(굴))</td>
													</tr>
													<tr>
														<td>26</td>
														<td>페퍼로니</td>
														<td>모차렐라(우유), 페퍼로니(돼지고기, 쇠고기), 토마토소스(토마토)</td>
													</tr>
													<tr>
														<td>27</td>
														<td>치즈</td>
														<td>모차렐라(우유),토마토소스(토마토)</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div id="allergy2-2" class="tab-content-v2">
									<div class="allergy_guide">
										<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와
											같이 제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능
											식품)</p>
										<dl>
											<dt>* 알레르기 유발 가능 식품 :</dt>
											<dd>난류(가금류에 한한다), 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기,
												복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합포함), 잣</dd>
										</dl>
									</div>
									<div class="allergy-group">
										<div class="title-type3">1. 사이드디시</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>사이드디시 재료중 알레르기 유발 가능 식품</caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">NO</th>
														<th scope="col">사이드디시</th>
														<th scope="col">알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>치캉스 팩</td>
														<td>갈릭&허브윙스 : 닭고기,대두,밀,우유,토마토 / 슈퍼곡물 치킨 : 밀, 우유, 대두,
															계란, 땅콩, 토마토, 닭고기, 쇠고기 / 크리스피 핫 순살 치킨 : 닭고기,대두,밀,쇠고기,계란 /
															코울슬로 : 계란,대두</td>
													</tr>
													<tr>
														<td>2</td>
														<td>갈릭&amp;허브윙스</td>
														<td>닭고기,대두,밀,우유,토마토</td>
													</tr>
													<tr>
														<td>3</td>
														<td>코울슬로</td>
														<td>계란,대두</td>
													</tr>
													<tr>
														<td>4</td>
														<td>콘샐러드</td>
														<td>계란,대두</td>
													</tr>
													<tr>
														<td>5</td>
														<td>화이트 크림 스파게티</td>
														<td>스파게티면(밀),크림소스(계란,우유,대두,밀,돼지고기,닭고기,조개류(굴)),베이컨(돼지고기),베이컨칩(돼지고기),모차렐라(우유)</td>
													</tr>
													<tr>
														<td>6</td>
														<td>New 치즈볼로네즈 스파게티</td>
														<td>스파게티면(밀),볼로네즈소스(우유,대두,밀,토마토,조개류(굴),쇠고기),모차렐라(우유)</td>
													</tr>
													<tr>
														<td>7</td>
														<td>H&amp;H(New 치볼_화이트크림)</td>
														<td>스파게티면(밀),볼로네즈소스(우유,대두,밀,토마토,조개류(굴),쇠고기),모차렐라(우유),
															크림소스(계란,우유,대두,밀,돼지고기,닭고기,조개류(굴)),베이컨(돼지고기)</td>
													</tr>
													<tr>
														<td>8</td>
														<td>트러플 크림 리조또</td>
														<td>베이컨칩(돼지고기), 풍기크림소스(조개류(굴,바지락)), 우유, 밀, 대두), 쌀
															(우유, 대두), 모차렐라치즈(우유)</td>
													</tr>
													<tr>
														<td>9</td>
														<td>슈퍼곡물 치킨</td>
														<td>밀, 우유, 대두, 계란, 땅콩, 토마토, 닭고기, 쇠고기</td>
													</tr>
													<tr>
														<td>10</td>
														<td>펜네 파스타</td>
														<td>펜네파스타면(밀), 크림소스(계란,우유,대두,밀,돼지고기,닭고기,조개류(굴)),
															베이컨칩(돼지고기), 모차렐라, 파르메산 치즈(우유)</td>
													</tr>
													<tr>
														<td>11</td>
														<td>샐러드 가든</td>
														<td>혼합간장(대두), 발효식초(밀), 방울 토마토, 치킨엑기스분말(닭고기)</td>
													</tr>
													<tr>
														<td>12</td>
														<td>한돈 빠에야</td>
														<td>쌀(우유, 대두), 토마토 빠에야 소스(계란, 우유, 대두, 밀), 한돈 포크(대두,
															돼지고기, 토마토, 쇠고기), 모차렐라 치즈(우유)</td>
													</tr>
													<tr>
														<td>13</td>
														<td>크리스피 핫 순살치킨</td>
														<td>닭고기,대두,밀,쇠고기,계란</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="allergy-group">
										<div class="title-type3">2. 시리얼&소스</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption></caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">NO</th>
														<th scope="col">제품명</th>
														<th scope="col">알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>갈릭 디핑 소스</td>
														<td>계란,우유,대두</td>
													</tr>
													<tr>
														<td>2</td>
														<td>다미노 시리얼</td>
														<td>계란,우유,대두</td>
													</tr>
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