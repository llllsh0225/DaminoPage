<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>가맹점모집(가맹점 개설안내)- 다미노피자</title>
<link rel="shortcut icon" href="https://newcdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/card_add.css' />">

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
					<a href="main.do" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="location active">
						<a href="javascript:void(0);" id="myloc" onclick="gpsLsm(gps_yn);"></a>
					</div>

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
		</header>
		<!-- //header -->
		<link rel="stylesheet" type="text/css"	href="<c:url value='/resources/css/user/as_is.css' />">

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
									<li><a href="main.do">홈</a></li>
									<li><a href="overview.do">회사소개</a></li>
									<li><strong>가맹점모집</strong></li>
								</ol>
							</div>
						</div>
						<article class="company-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="overview.do">한국다미노피자</a></li>
										<li class="active"><a href="chainstore1.do">가맹점모집</a></li>
									</ul>
								</div>
							</div>
							<div class="tab-type4 col5">
								<ul class="btn_tab">
									<li class="active"><a href="chainstore1.do">가맹점 개설안내</a></li>
									<li><a href="chainstore2.do">개설 절차</a></li>
									<li><a href="chainstore3.do">모집 지역</a></li>
									<li><a href="chainstore4.do">개설 문의</a></li>
								</ul>
							</div>
							<div class="tab_content_wrap">

								<div class="tab_content active">

									<div class="franchisee_area">

										<div class="visual_fran">
											<img
												src="<c:url value='/resources/images/user/visual_franchisee.jpg' />"
												alt="">
										</div>
										<div class="fran_section">
											<strong class="tit_fran">매장 개발 전문가가 함께하는 다미노 매장 개발
												전략 Point</strong>
											<ul class="lst_strategy">
												<li><span class="ico_strategy"></span>
													<dl>
														<dt>Point 1</dt>
														<dd>
															점포면적이나 시설을 Dine-in 매장<br>투자비용의 ½만으로 개발해 드립니다.
														</dd>
													</dl></li>
												<li><span class="ico_strategy2"></span>
													<dl>
														<dt>Point 2</dt>
														<dd>
															다각적인 인터뷰 및 교육을 통해 점주 및<br>개개인에게 맞춤형 경영지도를 해드립니다.
														</dd>
													</dl></li>
												<li><span class="ico_strategy3"></span>
													<dl>
														<dt>Point 3</dt>
														<dd>
															체계적인 교육훈련을 통해 점주님들을<br>능숙한 Damino’s Pizza Manager로<br>변신시켜
															드립니다.
														</dd>
													</dl></li>
											</ul>
										</div>
										<div class="fran_section">
											<strong class="tit_fran">가맹점 개설 조건</strong>
											<ul class="lst_condition">
												<li><span class="ico_condition"></span>
													<p>
														1층 점포 기준 실평수 25평 이상<br>(층고 높이 2.7m 이상)
													</p></li>
												<li><span class="ico_condition2"></span>
													<p>편도 2차선 왕복도로 이상</p></li>
												<li><span class="ico_condition3"></span>
													<p>점포전면 길이 6m이상</p></li>
												<li><span class="ico_condition4"></span>
													<p>
														오토바이(5대기준)<br>주차 확보 공간 여부
													</p></li>
											</ul>
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
						<li><a href="law.do">이용약관</a></li>
						<li class="on"><a href="privacy.do">개인정보처리방침</a></li>
						<li><a
							href="faqMain.do">고객센터</a></li>
						<li><a href="groupOrder.do">단체주문</a></li>
					</ul>

					<div class="footer-info">
						<p>03138 서울특별시 종구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현, 정민균,
							정민식, 김진혁</p>
						<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
						<p>문의 : admin@Daminos.co.kr</p>
						<p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

						<p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 사이트(PC, 모바일, 앱)의 일체의
							정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
					</div>

					<div class="footer-cont">

						<dl class="app-box">
							<dt>DOWNLOAD APP</dt>
							<dd>
								<a
									href="https://itunes.apple.com/kr/app/Daminopija-Damino-pizza-korea/id371008429?mt=8"><i
									class="ico-ios"></i>ios 앱다운로드</a> <a
									href="https://play.google.com/store/apps/details?id=kr.co.d2.Daminos"><i
									class="ico-android">안드로이드 앱다운로드</i></a>
							</dd>
						</dl>

						<div class="sns-box">
							<ul>
								<li><a href="http://blog.naver.com/Daminostory"><i
										class="ico-blog"></i>블로그</a></li>
								<li><a href="https://www.instagram.com/Daminostory/"><i
										class="ico-insta"></i>인스타그램</a></li>
								<li><a href="https://www.facebook.com/Daminostory/"><i
										class="ico-facebook"></i>페이스북</a></li>
								<li><a href="https://www.youtube.com/user/Daminostory3082"><i
										class="ico-youtube"></i>유튜브</a></li>
								<li><a href="https://twitter.com/Daminostory"><i
										class="ico-twitter"></i>트위터 </a></li>
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
	</div>
	<!-- //wrap -->
</body>
</html>
