<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="utf-8">
	
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>
	
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
					<a href="main.do" class="btn-logo">
						<i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>
					
					<div class="util-nav">
						<a href="login.do">로그인</a>
								<a href="login.do">회원가입</a>
					</div>
				</div>
			</div>
				
			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active">
							<a href="goodslist.do"><span>메뉴</span></a>
						</li>
						<li>
							<a href="ecouponInput.do"><span>e-쿠폰</span></a>
						</li>
						
						<li>
							<a href="branch.do"><span>매장검색</span></a>
						</li>
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
									<li><a
										href="faqMain.do">자주하는
											질문</a></li>
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

<div id="container">
	<section id="content">
		<div class="sub-type quick">
			<div class="inner-box">
				<div class="page-title-wrap">
					<h2 class="page-title">다미노 서비스</h2>
					<div class="depth-area">
						<ol>
							<li><a href="main.do">홈</a></li>
							<li><a href="mania.do">다미노 서비스</a></li>
							<li><strong>단체주문 서비스</strong></li>
						</ol>
					</div>
				</div>
				<article class="quick-area">
					<div class="menu-nav-wrap">
						<div class="menu-nav">
							<ul>
								<li><a href="mania.do">매니아 혜택</a></li>
								<li><a href="quickOrder.do">퀵오더</a></li>
								<li class="active"><a href="groupOrder.do">단체주문 서비스</a></li>
							</ul>
						</div>
					</div>
					<div class="group-order">
						<div class="group-text">
							<p>
								다양한 행사, 모임, 파티, 이벤트 등에서 소중한 사람들과 함께 누리는 즐거움을 위해<br> 맛있는 다미노
								피자를 다량으로 주문하고 싶으시면,
							</p>
							<i class="ico-delivery"></i>
							<p class="v2">
								주문부터 결제까지 간편한<br> <em>다미노피자 단체주문 서비스를 이용해보세요.</em> <span
									class="tel">02-555-3874</span>
							</p>
						</div>
						<div class="step-wrap">
							<div class="title-wrap-center">
								<h3 class="title-type">다미노피자 단체주문 혜택</h3>
							</div>
							<ol>
								<li>01. <em>한번의 결제로 여러곳의 배달지로</em> 전국 다미노피자 어느곳에서도 배달가능
								</li>
								<li>02. <em>고객님만의 특별한 메세지를 레터로 제작</em>하여 선물 받으실 고객님께 전달
								</li>
								<li>03. <em>고객님께서 원하시는 날짜 및 시간에 맞춰</em> 최상의 상태로 배달
								</li>
							</ol>
							<div class="title-wrap-center">
								<h3 class="title-type">이용안내</h3>
							</div>
							<ul class="list-text-v2">
								<li>30판 이상 주문시 이용해 주세요</li>
								<li>주문은 02-555-3874(단체주문 담당자)로 해주세요</li>
								<li class="point"><strong>최소 2~3일전 주문신청 필수</strong></li>
								<li>주문 접수시간은 평일은 09:00~18:00/ 주말 및 공휴일 휴무</li>
								<li>현금 및 신용카드(법인/개인) 모두 가능(세금계산서/현금영수증 발급가능)</li>
								<li>쿠폰,제휴 및 여타 할인 중복 불가</li>
								<li>할인금액은 주문수량,배달지역당 피자 수량 등 조건에 따라 차등적용</li>
							</ul>
						</div>
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
						<li><a
							href="faqMain.do">고객센터</a></li>
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
