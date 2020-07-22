<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">

<title>회원가입- 다미노피자</title>

	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
	
	<script type="text/javascript" src="<c:url value='/resources/js/jquery1.11.1.js'/>" ></script>
	<!-- 메인페이지 슬라이드 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>" ></script>
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
									<li><a href="../goods/dominosMoment.html">다미노 모멘트</a></li>
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
								<li><a href="../bbs/newsList0e42.html?type=P">보도자료</a></li>
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
			<section id="content">
				<div class="sub-type member">
					<div class="inner-box">
						<div class="page-title-wrap v2">
							<h2 class="page-title">회원가입</h2>
							<div class="depth-area">
								<ol>
									<li><a href="../main.html">홈</a></li>
									<li><strong>회원가입</strong></li>
								</ol>
							</div>
						</div>
						<article class="join-area">
							<div class="join-step1">
								<div class="step-list">
									<ul>
										<li class="active">01 본인인증</li>
										<li>02 개인정보입력</li>
										<li>03 가입완료</li>
									</ul>
								</div>
								<div class="info-text-wrap">
									<a href="javascript:UI.layerPopUp({selId: '#pop-accredit'});"
										class="notice-text">본인인증 안내</a> <strong class="title">반갑습니다.</strong>
									<p>
										다미노피자 회원가입을 위해서는 본인인증이 필요합니다.<br> 회원가입은 아동의 개인정보 보호를 위해 만
										14세 이상만 가능합니다.
									</p>
									<div class="btn-wrap">
										<a href="javascript:goCheckByPhone();" class="btn-type v4">휴대전화
											인증</a> <a href="javascript:goCheckByIpin();" class="btn-type v4">아이핀
											인증</a>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>

			<!-- //container -->
			<!-- 팝업 본인인증 안내 -->
			<div class="pop-layer type2" id="pop-accredit">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title v2">본인인증 안내</h2>
					</div>
					<div class="pop-content">
						<div class="step-wrap">
							<div class="sub-type-text">만 14세 이상 회원가입 가능</div>
							<div class="sub-text">만 14세 미만 아동의 개인정보 보호를 위해 회원가입은 만 14세
								이상만 가능 합니다. (단, 본인 명의의 금융거래가 있는 경우에 한하여 실명인증센터에 인증요청을 하실 수
								있습니다.)</div>
						</div>
						<div class="step-wrap">
							<div class="sub-type-text">본인인증이란?</div>
							<div class="sub-text">다미노피자는 안전한 인터넷 서비스 이용을 위해 본인여부를 확인하고
								있습니다. 인증대행사를 통해 본인인증을 받게 되므로, 다미노피자에서는 회원님의 개인정보를 저장하지 않습니다.</div>
						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
			<!--//팝업 본인인증 안내 -->

			<!--팝업-회원가입 여부 및 실명 확인 -->
			<div class="pop-layer" id="pop-ismember">
				<div class="dim" onClick="javascript:doLogin();"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title">회원가입 여부 및 실명 확인</h2>
					</div>
					<div class="pop-content">
						<form name="frm" id="frm"
							action="https://web.dominos.co.kr/global/login" method="post">
							<div class="result-list">
								<dl>
									<dt>
										<div class="chk-box">
											<input type="radio" id="id" name="findId" value="domino11111">
											<label class="checkbox" for="id"></label> <label for="id">domino**</label>
										</div>
									</dt>
									<dd>
										<div>
											연동된 계정
											<div class="sns-icon">
												<i class="btn-naver"></i> <i class="btn-payco"></i> <i
													class="btn-apple"></i>
											</div>
											<br>가입 : 2020-02-23
										</div>
									</dd>
								</dl>
							</div>
						</form>
						<p class="sub-text">이미 가입되어있는 회원정보입니다.</p>
						<div class="btn-wrap">
							<a href="javascript:doLoginGetId();" class="btn-type v6">로그인</a>
							<a href="javascript:goFindIdPwd('#srchpw');" class="btn-type v4">비밀번호
								찾기</a>
						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
		</div>
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
						<li><a href="contents/law.html">이용약관</a></li>
						<li class="on"><a href="contents/privacy.html">개인정보처리방침</a></li>
						<li><a
							href="bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
						<li><a href="order/groupOrder.html">단체주문</a></li>
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