<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>FAQ- 다미노피자</title>
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

					<div class="util-nav">
						<a href="login.do">로그인</a> 
						<a href="login.do">회원가입</a>
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
		<link rel="stylesheet" type="text/css" media="screen"
			href="<c:url value='/resources/css/user/jquery-ui.css' />" />
		<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-ui.js' />"></script>
		<!-- container -->
		<div id="container">
			<!-- content -->
			<section id="content">
				<div class="sub-type faq">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">고객센터</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a
										href="faqMain.do">고객센터</a></li>
									<li><strong>자주하는 질문</strong></li>
								</ol>
							</div>
						</div>
						<article class="faq-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="faqMain.do">자주하는 질문</a></li>
										<li><a href="qnaForm.do">온라인 신문고</a></li>
									</ul>
								</div>
							</div>
							<div class="tab-content active" id="faq">
								<form id="searchForm" name="searchForm" method="get"
									action="https://web.dominos.co.kr/bbs/faqList">
									<input type="hidden" id="view_gubun" name="view_gubun"
										value="W" /> <input type="hidden" id="pageNo" name="pageNo"
										value="1" />

									<div class="top">
										<p>다미노피자에 대한 궁금증을 바로 확인하실 수 있습니다.</p>
										<p class="txt_faq">
											다미노피자 고객만족센터 <a href="tel:080-860-3082">080-860-3082</a>
										</p>
									</div>

									<div class="tab-type4 btn_tab_faq">
										<ul>
											<li class="active"><a
												href="faqHowToOrder.do">피자
													주문하기</a></li>
											<li><a
												href="faqOrderCheck.do">주문확인</a></li>
											<li><a
												href="faqWrapOrder.do">포장
													주문</a></li>
											<li><a
												href="faqSendPresent.do">피자
													선물하기</a></li>
											<li><a
												href="faqHomePage.do">홈페이지
													관련</a></li>
										</ul>
									</div>
									<div class="lst_faq_wrap">
										<ul>
											<li>
												<dl id="active_245" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(245);">예약주문만 가능한 경우는 왜
															그런가요?</a>
													</dt>
													<dd>
														배달사원부족, 주문폭주 등으로 부득이 하게 예약주문만 가능한 경우가 있습니다. 이 경우 매장이나
														콜센터(1577-3082)로 전화하셔도 예약주문만 가능하기 때문에 고객님의 많은 양해 <br />부탁
														드립니다. 또한, 매장 오픈시간 전이나, 영업 종료 후에는 예약 주문만 가능합니다.
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_180" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(180);">매장상태에 따른 주문불가는
															무엇인가요?</a>
													</dt>
													<dd>
														"주문불가" 인 경우 현재 매장이 불가피한 사정으로 인해 온라인주문이 불가능한 상황입니다. 가령
														식자재부족이나 리뉴얼, 임시휴무 등으로 당일 온라인주문을 받을 수 없는 경우 <br />입니다. 이런
														경우 온라인주문은 불가능하고, 매장이나 콜센터(1577-3082)로 전화하시면 매장상태를 다시 한번
														확인한 후 방문포장의 경우 다른 매장으로 변경 가능합니다. <br />(배달주문은 매장을 변경할 수
														없습니다.) <br />
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_177" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(177);">피자를 다량으로 주문하고
															싶습니다. </a>
													</dt>
													<dd>
														온라인 주문으로는 한 주문 당 피자 9판까지 주문이 가능합니다. <br /> <br /> <br>그
														이상의 주문을 원하시는 고객께서는 매장이나 콜센터(1577-3082)를 이용하여 주시기 바랍니다.
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_176" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(176);">주문 한 메뉴를 변경하거나
															취소해야 할 경우에는 어떻게 하나요?</a>
													</dt>
													<dd>
														주문 접수 후 바로 피자 메이킹이 이루어져 주문 변경이나 취소가 어렵습니다. <br /> <br>주문변경이나
														취소는 반드시 해당 매장으로 전화하셔야 가능하며, 해당매장 전화번호는 주문완료 후 주문내역조회로
														들어가시면 확인할 수 있습니다. <br /> <br /> <br>매장에 전화하셔서 반드시
														주문내역조회에 나와있는 주문아이디를 말씀해 주셔야 신속한 처리가 이루어집니다. <br /> <br>메뉴를
														변경해야 할 경우 해당매장에 전화하여 기존 주문을 취소하고 주문을 다시 해주셔야 합니다. <br /> <br>주문이
														취소되면 기존 결제정보도 취소되며 재주문을 하실 경우 결제도 다시 하셔야 합니다.
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_175" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(175);">홈페이지 주문으로 피자는 몇
															판까지 주문할 수 있나요?</a>
													</dt>
													<dd>
														따뜻한 피자를 배달해 드리기 위해 홈페이지 온라인 주문 으로는 최대 9판까지 주문이 가능합니다. <br />
														<br>주문완료 후 해당매장에서 고객님께 연락을 드려 배달가능시간을 알려드립니다.
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_172" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(172);">음료만 주문도 가능한가요?</a>
													</dt>
													<dd>
														음료는 피자나 사이드디쉬와 함께 주문 시 다미노피자의 메뉴를 좀 더 맛있게 드실 수 있도록 제공하는
														메뉴로, <br /> <br>음료만 주문 시에는 배달이 불가합니다. <br />
													</dd>
												</dl>
											</li>
										</ul>
									</div>
								</form>
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