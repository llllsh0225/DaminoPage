<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
								guest 님&nbsp; <a href="login.do">회원가입</a><a href="logout.do">로그아웃</a> 
							</div>
						</c:when>
						<c:when test="${msg != 'login'}">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="login.do">회원가입</a>
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
									<li><strong>한국다미노피자</strong></li>
								</ol>
							</div>
						</div>
						<article class="company-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="overview.do">한국다미노피자</a></li>
										<li><a href="chainstore1.do">가맹점모집</a></li>
									</ul>
								</div>
							</div>
							<div class="tab-type4">
								<ul class="btn_tab">
									<li class="active"><a href="overview.do">Overview</a></li>
									<li><a href="ceo.do">CEO</a></li>
									<li><a href="international.do">International</a></li>
									<li><a href="location.do">Location</a></li>
								</ul>
							</div>
							<div class="tab_content_wrap">
								<div class="tab_content active">
									<div class="overview_area">
										<div class="overview_top">
											<div class="visual_overview">
												<img
													src="<c:url value='/resources/images/user/visual_overview.jpg' />"
													alt="">
											</div>
											<div class="overview_ex">
												<div class="ex_lft">
													<p>
														배달피자의 개념이 전무했던 1990년, 한국다미노피자는 국내 최초 피자<br>배달 전문
														브랜드로서 1호점인 오금점을 시작으로 국내 피자 소비자들에게<br>첫 선을 보인 이후,
														2020년 현재 전국 462개 매장에서 고객이 원하는 가장 맛있고 영양 높은 피자를 가장 친절하게
														고객들에게 제공하는 세계 배달 피자 리더 다미노피자로 자리매김하게 되었습니다.
													</p>
													<p>
														한국다미노피자는 저온 숙성 도우와 최고급 프리미엄 치즈 등 가장 신선한<br>최고급 식자재를
														사용하여 고객들이 미처 생각하지 못했던 혁신적인<br>피자를 만들어왔습니다.
													</p>
												</div>
												<div class="ex_rgt">
													<p>
														그리고 그 피자가 위생적이고 안전하게 고객에게 전달될 수 있도록 전<br>과정에서 엄격한
														시스템을 도입, 이러한 노력의 일환으로 업계 최초로 ISO<br>22000을 획득하면서 맛과
														영양, 그리고 안전과 위생 측면에서 국제적인<br>표준을 인정받았습니다. 누구보다 피자를 잘
														아는 피자분야의 최고<br>전문가이자 피자 마스터인 한국 다미노피자는 앞으로도 지속적으로 최고의<br>피자를
														최상의 서비스로 제공하기 위한 노력을 아끼지 않을 것입니다.
													</p>
												</div>
											</div>
										</div>
										<div class="vision_info">
											<div class="vision_tit">
												<span>V I S I O N</span> <strong>Be the #1 Pizza
													Company In the world<br> and in every neighborhood
												</strong>
											</div>
											<div class="vision_ex">
												<p>
													<span class="ico ico_quote2"></span> ‘한 번 한다면 꼭 이루어낸다’라는
													사명감과<br>책임감을 가진 <span>BEST PEOPLE</span>이 만드는<br>고객에게
													사랑 받는 세계 배달 피자 리더 다미노피자 <span class="ico ico_quote3"></span>
												</p>
												<ul>
													<li>
														<dl>
															<dt>BEST PRODUCT</dt>
															<dd>
																<img
																	src="<c:url value='/resources/images/user/lst_vision.png' />"
																	alt="">
																<dl>
																	<dt>맛있게!</dt>
																	<dd>
																		쫄깃하고 고소한 저온숙성도우, 손으로 직접 만드는 HAND<br>TOSSED 방식, 재료
																		본연의 맛을 살린 스크린 방식,<br>신선한 토핑, 풍부하고 깊은 맛의 고급프리미엄
																		치즈.<br>다미노피자만의 특별한 노하우! 도우와 토핑의 차이가<br>맛의
																		차이를 만듭니다.
																	</dd>
																</dl>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt>BEST SERVICE</dt>
															<dd>
																<img
																	src="<c:url value='/resources/images/user/lst_vision2.png' />"
																	alt="">
																<dl>
																	<dt>친절하게!</dt>
																	<dd>
																		다미노피자는 밝고 환한 표정으로 고객을 맞이하고<br>적극적으로 소통합니다. 고객이
																		최우선으로 환대받고<br>있음을 느끼게 하기 위해 최선을 다해 노력하고 있습니다.
																	</dd>
																</dl>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt>BEST IMAGE</dt>
															<dd>
																<img
																	src="<c:url value='/resources/images/user/lst_vision3.png' />"
																	alt="">
																<dl>
																	<dt>깨끗하게!</dt>
																	<dd>
																		365일 늘 변함없이 고객에게 최상의 제품과 서비스를<br>제공하기 위하여 노력하고
																		있습니다.<br>엄격한 OER평가를 통해 피자 메이킹에서부터 위생적인<br>매장,
																		시설 이미지까지 완벽한 Operation관리를<br>실시하고 있습니다.
																	</dd>
																</dl>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt>BEST SAFETY</dt>
															<dd>
																<img
																	src="<c:url value='/resources/images/user/lst_vision4.png' />"
																	alt="">
																<dl>
																	<dt>안전하게!</dt>
																	<dd>
																		고객의 건강과 안전을 지켜주는 신뢰받는 다미노피자로<br> 거듭나기 위해 정기적인 감사와
																		교육을 실시하고 있습니다.<br> 안전한 식자재 위생관리, 배달 등 전 과정의 매뉴얼화를<br>
																		통한 철저한 안전관리는 고객과 다미노피자의 약속입니다.
																	</dd>
																</dl>
															</dd>
														</dl>
													</li>
												</ul>
											</div>
											<div class="vision_histroy">
												<div class="history_sel">
													<div class="sel_box ">
														<select>
															<option value="0">2020 ~ 2021</option>
															<option value="1">2018 ~ 2019</option>
														</select>
													</div>
												</div>
												<div class="lst_history">

													<!-- 2020 ~ 2021 -->
													<div class="history_section active">
														<ul>
															<li>
																<dl>
																	<dt>2020.06</dt>
																	<dd>'시리얼 칠리크랩 피자' 출시</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2020.05</dt>
																	<dd>대구/경북지역 취약계층 아동 총 1억원 후원</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2020.04</dt>
																	<dd>'토핑 탑 텐 피자' 출시</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2020.03</dt>
																	<dd>‘30 치즈&뉴욕 스트립 스테이크 피자’ 출시</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2020.01</dt>
																	<dd>‘치즈케이크 블랙타이거 피자’ 출시</dd>
																</dl>
															</li>
														</ul>
													</div>

													<!-- 2018 ~ 2019 -->
													<div class="history_section">
														<ul>
															<li>
																<dl>
																	<dt>2019.12</dt>
																	<dd>KNPS 7년 연속 1위 수상</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.11</dt>
																	<dd>겨울 신제품 ‘미트 미트 미트 피자’ 출시</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.11</dt>
																	<dd>‘앱어워드 코리아 2019 올해의 앱’ 대상 수상</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.10</dt>
																	<dd>할로윈 ‘미스터리 피자’ 한정 출시</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.10</dt>
																	<dd>KCSI 5년 연속 1위 수상</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.09</dt>
																	<dd>‘취향존중 시리즈’ 출시 (치즈가든, 리얼불고기, 핫치킨)</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.08</dt>
																	<dd>‘KS_PBI’ 4년 연속 1위 수상</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.07</dt>
																	<dd>다미노피자 ‘치즈폭포 피자’ 복날 한정 출시</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.06</dt>
																	<dd>여름 신제품 ‘문어밤 슈림프 피자’ 출시</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.04</dt>
																	<dd>10만 고객이 뽑은 인생피자를 한판으로 신제품 ‘베스트 콰트로 피자’ 출시</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.02</dt>
																	<dd>봄 신제품 ‘더블크러스트 이베리코 피자’ 출시</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.02</dt>
																	<dd>새로운 브랜드 슬로건 ‘Life Food, Domino’s’ 발표</dd>
																</dl>
															</li>
															<li>
																<dl>
																	<dt>2019.01</dt>
																	<dd>‘우리고구마 피자‘ 출시</dd>
																</dl>
															</li>
													</div>
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
