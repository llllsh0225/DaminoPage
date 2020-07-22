<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<title>매장찾기- 다미노피자</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/card_add.css' />">

<script type="text/javascript"
	src="<c:url value='/resources/js/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<!-- 더보기 슬라이드로 내려오는 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/ui.js'/>"></script>

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

		<!-- container -->
		<div id="container">
			<section id="content">
				<div class="sub-type store">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">매장검색</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.html">홈</a></li>
									<li><strong>매장검색</strong></li>
								</ol>
							</div>
						</div>
						<div class="store-wrap">
							<div class="btn-wrap">
								<a href="#" class="btn-type v4"
									onclick="openLayerPopup('detail_map'); return false;">전체매장
									보기</a>
							</div>
							<div class="store-map-area">
								<div class="store-map-wrap">
									<div class="store-map" id="map_canvas"></div>
								</div>
								<div class="store-search">
									<div class="tab-type5 js_tab">
										<ul>
											<li class="active"><a href="#storeSrch1"
												onclick="navTabs('address', this); return false;">지역 검색</a></li>
											<li><a href="#storeSrch2"
												onclick="navTabs('name', this); return false;">매장명</a></li>
										</ul>
									</div>
									<!-- 지역 검색 -->
									<div class="tab-content active" id="storeSrch1">
										<div class="address-set-wrap store">
											<div class="form-group srch-type">
												<div class="form-item">
													<div class="select-type type2">
														<select id="region_code_1" onchange="getRegionSubList();">
															<option value="">시/도</option>
															<option value="01" selected>서울</option>

														</select>
													</div>
												</div>
												<div class="form-item">
													<div class="select-type type2">
														<select id="region_code_2">
															<option value="">구/군</option>
															<option value="0111">강남구</option>
															<option value="0110">강동구</option>
															<option value="0117">강북구</option>
															<option value="0124">강서구</option>
															<option value="0120">관악구</option>
															<option value="0118">광진구</option>
															<option value="0121">구로구</option>
															<option value="0122">금천구</option>
															<option value="0115">노원구</option>
															<option value="0108">도봉구</option>
															<option value="0106">동대문구</option>
															<option value="0123">동작구</option>
															<option value="0104">마포구</option>
															<option value="0103">서대문구</option>
															<option value="0113">서초구</option>
															<option value="0109">성동구</option>
															<option value="0112">성북구</option>
															<option value="0114">송파구</option>
															<option value="0125">양천구</option>
															<option value="0119">영등포구</option>
															<option value="0116">용산구</option>
															<option value="0105">은평구</option>
															<option value="0102">종로구</option>
															<option value="0101" selected>중구</option>
															<option value="0107">중랑구</option>
														</select>
													</div>
												</div>
												<div class="form-item">
													<button type="button" class="btn-search"
														onclick="findBranch('address'); return false;">검색</button>
												</div>
											</div>

											<div class="srch-option">
												<div class="switch-btn" onclick="toggleSpclPrmtn_address();">
													<label class="switch"> <input type="checkbox"
														id="switch"> <a class="slider" id="schPrmt"> <span
															class="off">OFF</span> <span class="on">ON</span>
													</a>
													</label>
													<p>특별할인 진행 전체 매장</p>
												</div>
												<p class="notice-text">
													<a href="javascript:openLayerPopup('promotion');">이용안내</a>
												</p>
											</div>

										</div>
									</div>
									<!-- //지역 검색 -->

									<!-- 매장명 -->
									<div class="tab-content" id="storeSrch2">
										<div class="address-set-wrap store">
											<div class="form-group srch-type">
												<div class="form-item">
													<input type="text" id="branch_name"
														placeholder="매장명을 검색하세요.">
												</div>
												<div class="form-item">
													<button type="button" class="btn-search"
														onclick="findBranch('name'); return false;">검색</button>
												</div>
											</div>

											<div class="srch-option">
												<div class="switch-btn" onclick="toggleSpclPrmtn_name();">
													<label class="switch"> <input type="checkbox"
														id="switch2"> <a class="slider" id="schPrmt">
															<span class="off">OFF</span> <span class="on">ON</span>
													</a>
													</label>
													<p>특별할인 진행 전체 매장</p>
												</div>
												<p class="notice-text">
													<a href="javascript:openLayerPopup('promotion');">이용안내</a>
												</p>
											</div>

										</div>
									</div>
									<!-- //매장명 -->
									<div class="store-address-list">
										<ul id="ul_shop_list"></ul>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</section>
			<!-- 전체 매장 보기 -->
			<div class="pop-layer pop-full" id="pop-store-all">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap type2">
						<h2 class="pop-title"
							onclick="openLayerPopup('detail_map'); return false;">전체 매장
							보기</h2>
					</div>
					<div class="pop-content">
						<div class="store-map-area" id="map_large_canvas">
							<!-- MAP 영역 -->

						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
			<!--//전체 매장 보기 -->
			<!-- 이용안내 보기 -->
			<div class="pop-layer" id="pop-store-info"></div>
			<!--//이용안내 보기 -->
			<!-- 매장상세 -->
			<div class="pop-layer pop-full" id="pop-store">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title">매장 상세정보</h2>
					</div>
					<div class="pop-content">
						<div class="store-view">
							<div class="store-info-box">
								<ul>
									<li>
										<h3 id="detail_name">김포구래점</h3>
										<p class="promotion">
											<span class="type" id="detail_on_sale">온라인 방문포장 30%</span><span
												class="type2" id="detail_off_sale">오프라인 방문포장 30%</span>
										</p>
										<div class="btn-wrap">
											<a href="#" class="btn-type v3" id="detail_basket_wrapp">포장주문</a>
										</div>
									</li>
									<li>
										<dl>
											<dt>전화번호</dt>
											<dd id="detail_tel">091-996-30525</dd>
										</dl>
										<dl>
											<dt>주소</dt>
											<dd id="detail_address">경기도 김포시 김포한강9로 12번길 97-10</dd>
										</dl>
										<dl>
											<dt>영업시간</dt>
											<dd id="detail_business_hours">11:00 ~ 22:00</dd>
										</dl>
										<dl>
											<dt>위치정보</dt>
											<dd id="detail_location_info">나비마을 나비초등학교 사거리 계롱리슈빌 203동
												후문</dd>
										</dl>
										<dl>
											<dt>주차정보</dt>
											<dd id="detail_parking_info">매장 후면 1대</dd>
										</dl>
										<dl>
											<dt>
												Notice &amp;<br>Event
											</dt>
											<dd id="detail_notice"></dd>
										</dl>
										<dl>
											<dt>특이사항</dt>
											<dd id="detail_etc">-</dd>
										</dl>
									</li>
								</ul>
							</div>
							<div class="store-map-area" id="map_detail_canvas">
								<!-- MAP 영역 -->
								<div class="store-spot" style="right: 20%; top: 50%;"></div>
							</div>
							<div class="store-slider" id="detail_photos"></div>
						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
		</div>
		<!-- //매장 상세보기 팝업(e) -->
		<!-- 로딩 이미지 -->
		<!-- // 로딩 이미지 -->

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

		<!-- //장바구니 담기 토스트 팝업(e) -->

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
