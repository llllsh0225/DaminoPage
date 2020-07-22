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
					<!--2020-03-17 추가(e)-->
				</div>
			</div>
		</div>

		<!-- main 1dep menu -->
		<div id="gnb" class="gnb-wrap">
			<div class="gnb-inner">
				<ul>
					<li class="active"><a
						href="../goods/list985d.html?dsp_ctgr=C0101"><span>메뉴</span></a></li>
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
								<input type="hidden" id="view_gubun" name="view_gubun" value="W" />
								<input type="hidden" id="pageNo" name="pageNo" value="1" />

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
										<li class="active"><a
											href="faqList3787.html?view_gubun=W&amp;bbs_cd=home">홈페이지
												관련</a></li>
									</ul>
								</div>
								<div class="lst_faq_wrap">
									<ul>
										<li>
											<dl id="active_240" class="classActive">
												<dt>
													<a href="#none" onclick="fncCnt(240);">휴면계정으로 처리됐는데 어떻게
														해야 하나요?</a>
												</dt>
												<dd>
													'정보통신망 이용촉진 및 정보보호 등에 관한 제 29조 2항(2015년 8월 18일 시행)에 의거'하여
													1년 이상 다미노피자 서비스를 이용하지 않은 회원님들의 개인정보는 파기 또는 분리 저장,관리됩니다. <br>
													<br /> <br />
													<br>지속적인 서비스 이용 및 혜택 안내를 원하실 경우, <br />다미노피자
													온라인(홈페이지/모바일/앱)에 1회 이상 로그인을 통해 서비스 이용에 불편함이 없으시길 바랍니다.<br>
													<br /> <br />
													<br>휴면계정 해제를 원하실 경우, 본인인증 후 휴면계정 해제 신청을 하시면 기존 계정으로
													서비스 이용 가능합니다. <br>
												</dd>
											</dl>
										</li>
										<li>
											<dl id="active_135" class="classActive">
												<dt>
													<a href="#none" onclick="fncCnt(135);">뉴스레터로 받은 쿠폰 출력 시
														인증번호와 유효기간만 출력됩니다.</a>
												</dt>
												<dd>
													뉴스레터를 통해 발송하는 모든 쿠폰은 인증번호와 유효기간이 부여되어 제공됩니다. <br /> <br />받으시는
													쿠폰 출력 시 인증번호와 유효기간만 출력되는 경우가 있습니다. <br /> <br />이러한 현상이 발생할
													시 도구>인터넷 옵션>고급>인쇄에서 배경 및 이미지 인쇄 항목을 클릭하시면 쿠폰 이미지와 함께 정상적으로
													출력하실 수 있습니다. <br /> <br />
												</dd>
											</dl>
										</li>
										<li>
											<dl id="active_112" class="classActive">
												<dt>
													<a href="#none" onclick="fncCnt(112);">탈퇴하는 방법을 알려주세요</a>
												</dt>
												<dd>
													탈퇴는 나의정보 -&gt 설정변경 -&gt 회원탈퇴 절차를 거쳐 진행합니다. <br /> <br />탈퇴
													시에는 회원정보 중 아이디를 제외한 개인정보는 모두 삭제됩니다. <br /> <br />탈퇴한 회원의
													아이디는 다른 회원이 사용하여 생길 수 있는 아이디 도용 문제를 차단하기 위해 재사용할 수 없도록 되어
													있으니 양해 부탁드립니다.
												</dd>
											</dl>
										</li>
										<li>
											<dl id="active_111" class="classActive">
												<dt>
													<a href="#none" onclick="fncCnt(111);">ID/PW 찾기는 어떻게 할
														수 있나요?</a>
												</dt>
												<dd>
													아이디 찾기 & 패스워드 재설정은
													<휴대폰 본인인증> 확인 후, 인증 완료 시 <br />
													즉각적으로 확인하실 수 있습니다. <br />
													<br />
													<br>
													<br>
													<br />
													추가적인 문의사항은 다미노피자 고객만족팀(080-860-3082)으로 문의하시기 바랍니다.
												</dd>
											</dl>
										</li>
										<li>
											<dl id="active_110" class="classActive">
												<dt>
													<a href="#none" onclick="fncCnt(110);">가입하는데 휴대폰으로
														인증번호가 전송되지 않습니다.</a>
												</dt>
												<dd>
													1) 휴대폰 번호를 정확히 기재한 경우 <br />대부분의 장애는 이동통신사 기지국 처리 장애입니다. <br />
													<br>통신사 기지국에서 사용자 단말기로 제대로 전송이 되지 못하는 경우가 있습니다. <br />이
													경우 홈페이지에 다시 접속하신 후 재인증절차를 거치실 수 있습니다.네트워크 상황에 따라 1~2분 정도
													소요될 수 있습니다. <br /> <br />
													<br>
													<br>2) 휴대폰 번호를 정확히 기재하지 못한 경우 <br />웹마스터(webmaster@dominos.co.kr)에게
													가입하신 정보(아이디, 이름, 연락처 등)와 정상적인 휴대폰번호를 보내주시면 확인 후에 처리해드립니다. <br />또는
													다미노피자 고객만족팀(080-860-3082)으로 전화하시면 신속하게 해결할 수 있습니다. <br />
												</dd>
											</dl>
										</li>
										<li>
											<dl id="active_109" class="classActive">
												<dt>
													<a href="#none" onclick="fncCnt(109);">온라인 회원 가입은 어떻게
														해야 하나요? </a>
												</dt>
												<dd>
													다미노피자 온라인 회원 가입은
													<본인인증>, <약관동의>, <정보입력>, <가입완료>
													순으로 이루어 집니다 <br />
													<br>
													<br>
													<br />
													안전한 인터넷 서비스 이용을 위하여, 실명 여부를 확인하고 있습니다. <br />
													<br>
													<휴대폰 본인인증>을 통해 실명인증을 받게 됨으로, 고객님의 주민등록번호 등은 입력, 저장하지
													않습니다 <br />
													<br />
													<br>
													<br>
													<정보 입력 시>휴대폰으로 전송된 인증번호를 입력하시고 인증처리를 받으시면 다미노피자 회원으로
													인정받게 됩니다. <br />
													<br />
													<br />
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
</html>