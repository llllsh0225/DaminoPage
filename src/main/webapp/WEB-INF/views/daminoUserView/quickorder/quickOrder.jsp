<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>퀵 오더 설정- 다미노피자</title>
	
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
							class="cart_count"></strong> <!-- count -->
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
		<!-- container -->
		<div id="container">
			<!-- content -->
			<section id="content">
				<div class="sub-type quick">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">다미노 서비스</h2>
							<div class="depth-area">
								<ol>
									<li><a href="/main">홈</a></li>
									<li><a href="/event/mania">다미노 서비스</a></li>
									<li><strong>퀵오더</strong></li>
								</ol>
							</div>
						</div>
						<article class="quick-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="/event/mania">매니아 혜택</a></li>
										<li class="active"><a href="/quickOrder/index">퀵오더</a></li>
										<li><a href="/goods/groupOrderService">단체주문 서비스</a></li>
									</ul>
								</div>
							</div>
							<div class="quick-order">
								<!--퀵 오더-->
								<div class="quick-guide">
									<p>
										자주 이용하시는 제품을 더 빨리 주문할 수 있는 다미노피자의 회원전용 서비스입니다.<br> 온라인 회원
										로그인 후 아래 두가지 방법 중 하나로 퀵 오더를 설정하시고 이용하시기 바랍니다.
									</p>
									<div class="guide-btn">
										<div class="item">
											<i class="ico-order"></i> 주문내역에서 선택
										</div>
										<div class="item">
											<i class="ico-quick2"></i> 퀵 오더 페이지에서 설정
										</div>
										<a href="javascript:UI.layerPopUp({selId:'#pop-quick-howto'})"
											class="btn-detail"><i class="ico-sch"></i><span
											class="hidden">설정방법 및 자세히보기</span></a>
									</div>
								</div>
								<!--//퀵 오더-->
							</div>

							<div class="btn-wrap">
								<a href="javascript:goEdit();" class="btn-type v3">퀵 오더 설정하기</a>
							</div>
							<div class="pop-layer" id="pop-quick-howto">
								<div class="dim"></div>
								<div class="pop-wrap">
									<div class="pop-title-wrap">
										<div class="pop-title">퀵 오더 설정방법</div>
									</div>
									<div class="pop-content">
										<div class="step-cont">
											<p class="title-type">주문내역에서 선택</p>
											<ol>
												<li>
													<p class="title-type4">
														<span class="number">01.</span>나의 정보 > 주문 내역에서 자주 이용하시는
														주문내역의 상세보기를 클릭하세요.
													</p>
													<figure>
														<img
															src="https://cdn.dominos.co.kr/domino/pc/images/quick/quick_howto1.png"
															alt="" />
													</figure>
												</li>
												<li>
													<p class="title-type4">
														<span class="number">02.</span>상세내역 페이지 아래의 &lsquo;퀵 오더
														등록&rsquo;버튼을 누르시면 해당주문의 제품과 배송방법 및 배송지/매장이 저장됩니다. <br>(할인은
														주문하실 때 마다 자동으로 추천됩니다.)
													</p>
													<figure>
														<img
															src="https://cdn.dominos.co.kr/domino/pc/images/quick/quick_howto2.png"
															alt="" />
													</figure>
												</li>
											</ol>
										</div>
										<div class="step-cont">
											<p class="title-type">퀵 오더 페이지에서 설정</p>
											<ol>
												<li>
													<p class="title-type4">
														<span class="number">01.</span>다미노 서비스 > 퀵 오더 페이지에서
														&lsquo;퀵 오더 설정하기&rsquo; 버튼을 클릭하세요.
													</p>
													<figure>
														<img
															src="https://cdn.dominos.co.kr/domino/pc/images/quick/quick_howto3.png"
															alt="" />
													</figure>
												</li>
												<li>
													<p class="title-type4">
														<span class="number">02.</span>퀵 오더 설정 페이지에서 원하는 내용으로 퀵
														오더를 설정합니다. <br>(할인은 주문하실 때 마다 자동으로 추천됩니다.)
													</p>
													<figure>
														<img
															src="https://cdn.dominos.co.kr/domino/pc/images/quick/quick_howto4.png"
															alt="" />
													</figure>
												</li>
											</ol>
										</div>
									</div>
									<a href="#" class="btn-close"></a>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
			<!-- //content -->
		</div>

		<!-- 로딩 이미지 -->
		<!-- 장바구니 담기 토스트 팝업(s) -->
		<div class="pop_toast" id="card_add" style="display: none;">
			<div class="bg"></div>
			<div class="pop_wrap">
				<div class="pop_content">
					<p>장바구니에 담았습니다.</p>
				</div>
			</div>
		</div>

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
						<li><img src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards.png" alt="">
								<p>
									식품안전<br>경영시스템 인증
								</p></li>
							<li><img src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards2.png" alt="">
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
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards5.png" alt="">
								<p>
									2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
								</p></li>
							<li><img src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards6.png" alt="">
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
