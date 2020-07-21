<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>
<link rel="shortcut icon"
	href="https://newcdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />

<script type="text/javascript" src="../resources/js/jquery1.11.1.js"></script>

<script type="text/javascript" src="../../newcdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="../resources/js/selectbox.js"></script>
<script type="text/javascript" src="../resources/js/d2CommonUtil7ef2.js?ver=1.5"></script>
<script type="text/javascript" src="../resources/js/Cookie.js"></script>
<script type="text/javascript" src="../resources/js/basket_w62ea.js?ver=1.2"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">

<script src="../../newcdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
<script src="../../newcdn.dominos.co.kr/domino/asset/js/slick.js"></script>
<script src="../../newcdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
<script src="../../newcdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>

<script src="../../newcdn.dominos.co.kr/domino/pc/js/ui.js"></script>
<script type="text/javascript" src="../resources/js/gcenmaps/gcenmap.js"></script>

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
		url(../../newcdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png)
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

</head>
<body>

	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="../main.html" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="util-nav">
						<a href="../global/login.html">로그인</a> <a
							href="../global/login7837.html?L=L">회원가입</a>
					</div>
				</div>
			</div>

			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active"><a
							href="../goods/list985d.html?dsp_ctgr=C0101"><span>메뉴</span></a>
						</li>
						<li><a href="../ecoupon/index.html"><span>e-쿠폰</span></a></li>
						<li><a href="../branch.html"><span>매장검색</span></a></li>
					</ul>
					<a href="#" class="snb-more">더보기</a>
				</div>

				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="../event/mania.html">다미노 서비스</a>
								<ul>
									<li><a href="../event/mania.html">매니아 혜택</a></li>
									<li><a href="../quickOrder/index.html">퀵 오더</a></li>
									<li><a href="../order/groupOrder.html">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a>
								<ul>
									<li><a
										href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">자주하는
											질문</a></li>
									<li><a href="../bbs/qnaForm.html">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="../company/contents/overview.html">회사소개</a>
								<ul>
									<li><a href="../company/contents/overview.html">한국다미노피자</a></li>
									<li><a href="../company/contents/chainstore1.html">가맹점
											모집</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="../bbs/newsList91ef.html?type=N">공지사항</a>
							<ul>
								<li><a href="../bbs/newsList91ef.html?type=N">다미노뉴스</a></li>
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
									<li><a href="../main.html">홈</a></li>
									<li><strong>장바구니</strong></li>
								</ol>
							</div>
						</div>
						<article class="cart-area pay">
							<div class="step-wrap"></div>
							<div class="no-data">
								장바구니가 비어 있습니다.
								<p class="text-type">다미노피자의 맛있는 메뉴를 마음껏 골라 담으세요</p>
								<!-- 메뉴 추가 버튼 -->
								<div class="btn-wrap">
									<a href="../goods/list1829.html?dsp_ctgr_C0101"
										class="btn-type-brd"><i class="ico-plus"></i>메뉴 추가하기</a>
								</div>
								<!-- //메뉴 추가 버튼 -->
							</div>
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
						<li><a href="../contents/law.html">이용약관</a></li>
						<li class="on"><a href="../contents/privacy.html">개인정보처리방침</a></li>
						<li><a
							href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
						<li><a href="../company/contents/chainstore1.html">가맹점모집</a></li>
						<li><a href="../order/groupOrder.html">단체주문</a></li>
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
</body>
</html>