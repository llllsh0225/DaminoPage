<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>회사소개(CEO)- 다미노피자</title>
<link rel="shortcut icon" href="https://newcdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">

<script type="text/javascript" src="<c:url value='/resources/js/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<!-- 더보기 슬라이드로 내려오는 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>

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
		url(../../../newcdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png)
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
					<a href="../../main.html" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="util-nav">
						<a href="../../global/login.html">로그인</a> <a
							href="../../global/login7837.html?L=L">회원가입</a>
					</div>
				</div>
			</div>

			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active"><a
							href="../../goods/list985d.html?dsp_ctgr=C0101"><span>메뉴</span></a>
						</li>
						<li><a href="../../ecoupon/index.html"><span>e-쿠폰</span></a>
						</li>
						<li><a href="../../branch.html"><span>매장검색</span></a></li>
					</ul>
					<a href="#" class="snb-more">더보기</a>
				</div>

				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="../../event/mania.html">다미노 서비스</a>
								<ul>
									<li><a href="../../event/mania.html">매니아 혜택</a></li>
									<li><a href="../../quickOrder/index.html">퀵 오더</a></li>
									<li><a href="../../order/groupOrder.html">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a
									href="../../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a>
								<ul>
									<li><a
										href="../../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">자주하는
											질문</a></li>
									<li><a href="../../bbs/qnaForm.html">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="overview.html">회사소개</a>
								<ul>
									<li><a href="overview.html">한국다미노피자</a></li>
									<li><a href="chainstore1.html">가맹점 모집</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="../../bbs/newsList91ef.html?type=N">공지사항</a>
							<ul>
								<li><a href="../../bbs/newsList91ef.html?type=N">다미노뉴스</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header>
		<!-- //header -->
		<link rel="stylesheet" type="text/css"
			href="<c:url value='/resources/css/user/as_is.css' />">


		<!-- container -->
		<div id="container">
			<!-- content -->
			<section id="content">
				<div class="sub-type company">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">회사소개</h2>
							<div class="depth-area">
								<ol>
									<li><a href="../../main.html">홈</a></li>
									<li><a href="overview.html">회사소개</a></li>
									<li><strong>한국다미노피자</strong></li>
								</ol>
							</div>
						</div>
						<article class="company-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="overview.html">한국다미노피자</a></li>
										<li><a href="chainstore1.html">가맹점모집</a></li>
									</ul>
								</div>
							</div>
							<div class="tab-type4">
								<ul class="btn_tab">
									<li><a href="overview.html">Overview</a></li>
									<li class="active"><a href="ceo.html">CEO</a></li>
									<li><a href="international.html">International</a></li>
									<li><a href="location.html">Location</a></li>
								</ul>
							</div>
							<div class="tab_content_wrap">
								<div class="tab_content active">
									<div class="ceo_area">
										<div class="ceo_lft">
											<strong>고객 여러분 안녕하십니까?<br>한국다미노피자 회장 오광현입니다.
											</strong>
											<p>세계 배달 피자 리더인 한국다미노피자는 배달 피자 개념이 전무했던 1990년에 1호점 오금점
												오픈을 시작으로 한국 시장에 진출한 이후 지난 30년간 피자 대중화를 선도하였습니다.</p>
											<p>“고객들에게 최고로 맛있고 영양 많은 피자를 제공”한다는 원칙 아래, 최고급 식자재와
												크리에이티브한 맛을 선보이며 프리미엄 피자 시장을 개척하였습니다. 또한 업계최초로 국내산 오이로 만든 우리
												피클 도입, 흑미와 6가지 슈퍼시드가 함유된 슈퍼시드 도우 등 웰빙 건강 식재료를 출시, 건강한 피자를
												만들기 위해 최선을 다했습니다. 또한 “고객들이 편하고 쉽게 주문할 수 있도록 최상의 서비스를 제공”하기
												위해 주문 혁신, 배달 혁신에도 최선을 다했습니다. 2010년 업계 최초로 주문형 애플리케이션을 출시하고
												주문 채널을 확대, 2015년에는 피자업계 최초로 고객 맞춤형 DIY 주문 서비스인 “마이키친(My
												Kitchen)”애플리케이션, 2016년에는 음성인식 주문 서비스 SKT 누구(NUGU)도입, 2017년에는
												업계 최초로 인공지능(A.I) 채팅 주문서비스 “도미챗(Domichat)”을 런칭하였습니다.</p>
											<p>2018년에는 배달업계 최초로 “GPS 트래커”를 선보이며 안심, 안전 배달을 위해 앞장서고
												있으며 야외에서도 피자 시식이 가능하도록 “다미노 스팟” 런칭, 현재 전국 1,000개 지역에서 서비스를
												실시하였습니다.</p>
											<p>2019년 다미노피자는 완벽한 조리법과 배달 서비스를 통해 남녀노소 모두가 일상 속에서 즐길 수
												있는 가장 완벽한 한 끼로 Life food를 만들어 나아가겠다는 의지를 반영한 새로운 브랜드 슬로건
												'Life Food, Domino's.'(라이프 푸드, 다미노)를 발표했습니다. 또한 차량 이용 매장 방문
												포장 시 고객의 차량까지 매장 직원이 직접 피자를 전달하는 `다미노 드라이빙 픽업 서비스`와 알림벨 서비스등
												혁식적인 IT 서비를 런칭하였으며, 업계최초로 방문포장 보증제도를 도입하여 고객 만족도를 더욱 높였습니다.</p>
											<p>이러한 성과를 인정받아, &lt;고객이 가장 추천하는 기업(KNPS) 7년 연속 1위
												수상&gt;, &lt;한국 산업의 고객 만족도(KCSI)피자부문 1위 5년 연속 수상&gt;, &lt;
												Korean Standard 프리미엄 브랜드 지수 4년 연속 1위&gt; &lt;앱어워드 코리아 2019
												올해의 앱&gt;, &lt;대학생이 뽑은 올해의 핫 브랜드&gt; 수상으로 2019년 관왕을 달성하는 쾌거를
												거두었습니다.</p>
										</div>
										<div class="ceo_rgt">
											<p>앞으로도 한국다미노피자는 세계 배달피자 리더로써 건강한 외식문화를 리드하기 위해 최상의 식재료,
												제품, 주문 및 배달 서비스를 제공하며, 언제나 고객들이 믿고 먹을 수 있는 웰빙 먹거리 문화를 만들 수
												있도록 최선을 다할 것입니다.</p>
											<p>
												고객 여러분의 많은 사랑과 관심 부탁 드립니다.<br>감사합니다.
											</p>
											<div class="txt_sign">
												<span>한국다미노피자 회장 오광현</span> <img
													src="../../../newcdn.dominos.co.kr/renewal2018/w/img/img_ceo_sign.jpg">
											</div>
										</div>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
			<!-- //content -->
		</div>
		<!-- //container -->

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
						<li><a href="../../contents/law.html">이용약관</a></li>
						<li class="on"><a href="../../contents/privacy.html">개인정보처리방침</a></li>
						<li><a
							href="../../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
						<li><a href="chainstore1.html">가맹점모집</a></li>
						<li><a href="../../order/groupOrder.html">단체주문</a></li>
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
							src="../../../newcdn.dominos.co.kr/domino/pc/images/list_awards.png"
							alt="">
							<p>
								식품안전<br>경영시스템 인증
							</p></li>
						<li><img
							src="../../../newcdn.dominos.co.kr/domino/pc/images/list_awards2.png"
							alt="">
							<p>
								지식경제부<br>우수디자인 선정
							</p></li>
						<li><img
							src="../../../newcdn.dominos.co.kr/domino/pc/images/list_awards3.png"
							alt="">
							<p>
								고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
							</p></li>
						<li><img
							src="../../../newcdn.dominos.co.kr/domino/pc/images/list_awards4.png"
							alt="">
							<p>
								2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
							</p></li>
						<li><img
							src="../../../newcdn.dominos.co.kr/domino/pc/images/list_awards5.png"
							alt="">
							<p>
								2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
							</p></li>
						<li><img
							src="../../../newcdn.dominos.co.kr/domino/pc/images/list_awards6.png"
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