<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>

<link rel="shortcut icon" href="https://cdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />

<script type="text/javascript" src="https://cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="https://cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/card_add.css' />">

<script src="https://cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>
<script src="https://cdn.dominos.co.kr/domino/pc/js/ui.js"></script>

<script type="text/javascript" src="<c:url value='/resources/js/user/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<!-- 더보기 슬라이드로 내려오는 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>

</head>
<body>

	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="/main" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="util-nav">
						<!-- and AUTH.memberYn eq 'Y' -->
						<a href="/global/logout">로그아웃</a> <a href="/mypage/myLevel">나의정보</a>
						<a href="javascript:goCart();" class="btn-cart"> <i
							class="ico-cart"></i> <span class="hidden ">장바구니</span> <strong
							class="cart_count"></strong>
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
									<li><a href="/main">홈</a></li>
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
									<div class="address">배송지 주소</div>
									<div class="store">
										<span>월계점</span>&nbsp;02-915-3082
									</div>
									<div class="btn-wrap">
										<a href="javascript:goBranch();" class="btn-type4-brd">수정</a>
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
								<div class="cart-list">
									<ul>
										<li class="category">
											<div>상품정보</div>
											<div>추가토핑</div>
											<div>수량</div>
											<div>금액</div>
											<div></div>
										</li>
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
													<!-- 제품 이미-->
												</div>
												<div class="prd-cont">
													<div class="subject">제품명</div>
													<div class="option">도우 종류/사이즈</div>
													<div class="price">가격</div>
												</div>
											</div>

											<div class="prd-option"></div>
											<div class="prd-quantity">
												<div class="quantity-box v2">
													<a href="javascript:void(0);"
														onclick="changeGoodsCnt('minus',0,'RPZ190GL', '1', 1, -1);"
														class="minus"><button class="btn-minus"></button></a> <input
														type="number" class="qty0" id="qty0" value="1" readonly />
													<a href="javascript:void(0);"
														onclick="changeGoodsCnt('plus',0,'RPZ190GL', '1', 1, 1);"
														class="plus"><button class="btn-plus"></button></a>
												</div>
											</div>
											<div class="prd-total">
												<em>가격</em>원
											</div>
											<div class="prd-delete">
												<a
													href="javascript:changeGoodsCnt('delete',0,'RPZ190GL', '1', 1, 0);"
													class="btn-close"> <span class="hidden">삭제</span>
												</a>
											</div>
										</li>
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
										총 금액 <em>36,900원</em>
									</p>
								</div>
							</div>
							<!-- //총 주문 금액 -->
							<!-- 주문하기 버튼 -->

							<div class="btn-wrap">
								<a
									href="/order/menuList?order_gubun=O&branch_code=86376&addr_sn=8402081"
									class="btn-type-brd"><i class="ico-plus"></i>메뉴 추가하기</a> <a
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
						<li><a href="/contents/law">이용약관</a></li>
						<li class="on"><a href="/contents/privacy">개인정보처리방침</a></li>
						<li><a href="/bbs/faqList?view_gubun=W&bbs_cd=online">고객센터</a></li>>
						<li><a href="/company/contents/chainstore1">가맹점모집</a></li>
						<li><a href="/order/groupOrder">단체주문</a></li>
					</ul>

					<div class="footer-info">
						<p>03138 서울특별시 중구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현, 정민균,
							정민식, 김진혁</p>
						<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
						<p>문의 : admin@daminos.co.kr</p>
						<p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

						<p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 피자(PC, 모바일, 앱)의 일체의
							정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
					</div>

					<div class="footer-cont">
						<div class="select-type language">
							<select id="select-type">
								<option value="/main?locale=ko">KOR</option>
								<option value="/main?locale=en">ENG</option>
							</select>
						</div>

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
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards.png"
							alt="">
							<p>
								식품안전<br>경영시스템 인증
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards2.png"
							alt="">
							<p>
								지식경제부<br>우수디자인 선정
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards3.png"
							alt="">
							<p>
								고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards4.png"
							alt="">
							<p>
								2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards5.png"
							alt="">
							<p>
								2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards6.png"
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
