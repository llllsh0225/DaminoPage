<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>
<link rel="shortcut icon" href="https://newcdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">

<script type="text/javascript" src="<c:url value='/resources/js/user/jquery1.11.1.js'/>"></script>
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
								<a href="faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a>
								<ul>
									<li><a
										href="faqList12ff.html?view_gubun=W&amp;bbs_cd=online">자주하는
											질문</a></li>
									<li><a href="qnaForm.html">온라인 신문고</a></li>
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
							<a href="newsList91ef.html?type=N">공지사항</a>
							<ul>
								<li><a href="newsList91ef.html?type=N">다미노뉴스</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header>
		<!-- //header -->
		<link rel="stylesheet" type="text/css" media="screen"
			href="../resources/css/jquery-ui.css" />
		<script type="text/javascript" src="../resources/js/jquery-ui.js"></script>
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
									<li><a href="../main.html">홈</a></li>
									<li><a
										href="faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
									<li><strong>자주하는 질문</strong></li>
								</ol>
							</div>
						</div>
						<article class="faq-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="faqList.html">자주하는 질문</a></li>
										<li><a href="qnaForm.html">온라인 신문고</a></li>
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
											<li><a
												href="faqList12ff.html?view_gubun=W&amp;bbs_cd=online">피자
													주문하기</a></li>
											<li><a
												href="faqList58de.html?view_gubun=W&amp;bbs_cd=online6">주문확인</a></li>
											<li><a
												href="faqList8db7.html?view_gubun=W&amp;bbs_cd=online4">포장
													주문</a></li>
											<li><a
												href="faqListbd55.html?view_gubun=W&amp;bbs_cd=online2">피자
													선물하기</a></li>
											<li><a
												href="faqList3787.html?view_gubun=W&amp;bbs_cd=home">홈페이지
													관련</a></li>
										</ul>
									</div>
									<div class="lst_faq_wrap">
										<ul>
											<li>
												<dl id="active_105" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(105);">결제수단은 어떤 것들이
															있나요?</a>
													</dt>
													<dd>
														피자 결제수단은 배달사원 직접 결제(오프라인)와 온라인 선결제 두가지의 방법이 있습니다. <br /> <br>배달사원
														직접 결제의 경우,
														<신용카드> <현금> <현금 +현금영수증>, 을 선택하고, 피자를 받으신
														후 배달원에게 현금 또는 신용카드를 제시하시면 됩니다. <br />
														<br>
														(현금영수증 필요 시, 반드시 주문하실 때 요청해주시기 바랍니다.) <br />
														<br>
														온라인 선결제는 온라인 주문 시 바로 결제가 가능한 서비스로서 '신용카드', '핸드폰 결제' '엠틱'결제
														등을 이용할 수 있습니다. <br />
														<br />
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_149" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(149);">야간에 예약주문이 안돼요.
															어디에 문의해야 하나요?</a>
													</dt>
													<dd>
														11:00~ 22:00(매장 별 주문시간 다름)까지는 해당매장이나 콜센터(1577-3082)에서 문의가
														가능합니다. <br /> <br>이 외의 시간은 MY PAGE -> 문의 게시판에 문의사항을
														남겨주시면 다음날 빠른 시간 안에 답변드릴 수 있도록 노력하겠습니다.
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_142" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(142);">할인쿠폰은 어떻게 사용하는
															건가요?</a>
													</dt>
													<dd>
														온라인 주문 시에는 신규회원 가입/기존회원 정보수정/생일쿠폰 등의 다양한 온라인 할인쿠폰이 제공됩니다.
														<br /> <br>나의 정보 내
														<온라인 쿠폰> 내역을 확인할 수 있습니다 <br />
														<br>
														전단지 할인쿠폰은 온라인 주문 시 할인선택 시 해당 쿠폰코드 입력를 체크하신 후 코드를 입력하여 사용하실
														수 있습니다. <br />
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_134" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(134);">세트 할인은 어떻게 받나요?</a>
													</dt>
													<dd>
														피자, 사이드디쉬, 음료 각 카테고리 별로 1개 이상씩 온라인으로 주문할 경우 다미노 희망나눔 세트
														20% 할인, 전화 주문시 15% 할인을 받으실 수 있습니다. <br /> <br>(각 카테고리
														별 최대 9개) <br /> <br>희망나눔 세트 할인적용 여부는 할인 선택 시 본인이 직접
														선택할 수 있으며, 세트 할인을 선택할 경우 주문 건 당 400원이 <br /> 희망나눔 기금으로
														적립되어 서울대 어린이병원 및 어린이재단 등에 지원됩니다.
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_101" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(101);">배달장소 등록은 어떻게 해야
															하나요?</a>
													</dt>
													<dd>
														배달주문 이용 시 배달지 등록은 최대 5개까지 등록이 가능합니다. <br /> <br /> <br>도로명
														주소 / 건물 또는 상호 검색 / 지번 검색 등으로 고객의 주소 검색을 <br />등록하시면 됩니다. <br />
														<br /> <br>상세주소는
														<도로명 /건물명/지번> 선택 후 다음 단계에서 입력하실 수 있습니다. <br />
														<br />
														<br>
														등록되지 않은 지역은 배달불가지역입니다. <br />
														<br />
														<br>
														자세한 배달지역의 문의는 해당매장이나 콜센터(1577-3082)로 전화하시기 바랍니다. <br />
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
						<li><a href="../contents/law.html">이용약관</a></li>
						<li class="on"><a href="../contents/privacy.html">개인정보처리방침</a></li>
						<li><a href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
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