<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta name="title" content="다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>

<!-- 리뉴얼 적용 2019.12.02 -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<!--메인에는 sub.css 호출하지않음-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<!--//메인에는 sub.css 호출하지않음  -->

<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery1.11.1.js'/>"></script>
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
					<a href="../main.html" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="util-nav">
						<a href="login.html">로그인</a> <a href="login7837.html?L=L">회원가입</a>
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
		<div id="container">
			<section id="content">
				<div class="sub-type member">
					<div class="inner-box">
						<div class="page-title-wrap v2">
							<h2 class="page-title">로그인</h2>
							<div class="depth-area">
								<ol>
									<li><a href="#">홈</a></li>
									<li><strong>로그인</strong></li>
								</ol>
							</div>
						</div>
						<article class="login-area">
							<div class="tab-type5 js_tab">
								<ul>
									<li class="active"><a href="#login">회원로그인</a></li>
									<li><a href="#guest" onclick="showAlert(); return false;">비회원
											주문</a></li>
								</ul>
							</div>
							<div class="tab-content active" id="login">
								<form id="loginFrm" name="loginFrm" action="#" method="post">
									<input type="hidden" name="redirectUrl" id="redirectUrl"
										value="/main" /> <input type="hidden" name="partycar_seq"
										id="partycar_seq" value="" /> <input type="hidden"
										name="event_gubun" id="event_gubun" value="" />
									<div class="form-item">
										<input type="text" name="id" id="id" maxlength="20"
											placeholder="아이디" value="">
									</div>
									<div class="form-item">
										<input type="password" placeholder="비밀번호" name="passwd"
											id="passwd" maxlength="20"
											onkeydown="javascript:if(event.keyCode==13){doLoginSSL();}">
									</div>
									<div class="chk-item">
										<div class="chk-box v4">
											<input type="checkbox" id="idcheck"> <label
												class="checkbox" for="idcheck"></label> <label for="idcheck">아이디저장</label>
										</div>
										<div class="btn-member-wrap" style="margin-bottom: 20px">
											<span><a href="javascript:goFindIdPwd('#srchid');">아이디
													찾기</a></span> <span><a
												href="javascript:goFindIdPwd('#srchpw');">비밀번호 찾기</a></span>
										</div>
									</div>

									<div class="btn-wrap">
										<a href="javascript:doLoginSSL();" class="btn-type v4">로그인</a>
									</div>
									<div class="btn-wrap">
										<a href="javascript:goIdLoginPop();" class="btn-type-brd5">회원가입</a>
									</div>
								</form>
							</div>
							<div class="tab-content" id="guest">
								<form name="nonf" id="nonf"
									action="https://web.dominos.co.kr/global/nonMemLogin"
									method="post">
									<input type="hidden" name="hp" id="hp" value="" /> <input
										type="hidden" name="returnUrl" id="returnUrl" value="/main" />
									<div class="sub-text">
										아직 다미노피자 회원이 아니세요? <a href="javascript:goIdLoginPop();">회원가입</a>
									</div>
									<div class="form">
										<div class="form-item">
											<input type="text" name="name" id="name" placeholder="이름">
										</div>
										<span class="i_error show" id="name_alert"></span>
										<div class="form-group">
											<div class="form-item number">
												<div class="select-type2">
													<select name="hp1" id="hp1">
														<option value="010">010</option>
														<option value="011">011</option>
														<option value="016">016</option>
														<option value="017">017</option>
														<option value="018">018</option>
														<option value="019">019</option>
													</select>
												</div>
												<input type="text" name="hp2" id="hp2" maxlength="4"
													onkeyup="checkNum($(this), '숫자만 입력하세요.');"> <input
													type="text" name="hp3" id="hp3" maxlength="4"
													onkeyup="checkNum($(this), '숫자만 입력하세요.');">
											</div>
											<a href="javascript:goNonAuth();" class="btn-type v7">인증번호</a>
										</div>
										<div class="form-group">
											<div class="form-item">
												<input type="text" placeholder="인증번호" name="auth_num"
													id="auth_num">
											</div>
										</div>
									</div>
									<div class="chk-item">
										<div class="chk-box v4">
											<input type="checkbox" id="agree1" name="agree" value="Y"
												checked="checked"> <label class="checkbox"
												for="agree1"></label> <label for="agree1">개인정보 수집 및
												이용 동의(필수)</label>
										</div>
										<a href="javascript:UI.layerPopUp({selId:'#pop-terms-p'});"
											class="btn-link side">보기</a>
									</div>
									<div class="btn-wrap">
										<a href="javascript:goNonLogin();" class="btn-type3">주문하기</a>
									</div>
									<p class="title-type2">비회원 주문 시 매니아 및 제휴할인 혜택을 받을 수 없습니다.</p>
									<div class="banner-wrap">
										<ul>
											<li>다미노피자의 특별한 매니아 혜택을 누려보세요! <a
												href="../event/mania.html">매니아 혜택</a>
											</li>
										</ul>
									</div>
								</form>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>

		<!-- //container -->

		<!-- 팝업 개인정보 수집 및 이용 동의 -->
		<div class="pop-layer type2" id="pop-terms-p">
			<div class="dim"></div>
			<div class="pop-wrap">
				<div class="pop-title-wrap">
					<h2 class="pop-title v2">개인정보 수집 및 이용 동의</h2>
				</div>
				<div class="pop-content">
					<!-- 2019-12-17//수정(s) -->
					<div class="terms-wrap">
						<div class="terms-box">
							<p>청오디피케이㈜에서 운영하는 다미노피자 홈페이지 서비스 (이하 다미노)는 비회원이 다미노에 제공한
								개인정보가 보호 받을 수 있도록 통신비밀보호법, 전기통신사업법, 정보통신망이용촉진 등에 관한 법률 등 정보통신서비스
								제공자가 준수해야 할 관련 법규상의 개인정보보호규정 및 정보통신부가 제정한 개인정보보호지침을 엄격히 준수합니다.</p>
							<h3 class="title-type">* 개인정보의 수집 및 이용목적</h3>
							<p>필수항목 : 성명, 휴대전화번호 선택항목 : 주소, 수령인, 수령인 전화번호</p>
							<h3 class="title-type">* 수집하는 개인정보의 항목</h3>
							<p>다미노는 고객님께서 비회원으로 주문 서비스를 이용하는데 있어, 원활하게 주문의 접수 및 배달이 이루어질
								수 있도록 하기 위한 최소한의 정보를 수집합니다. 다미노는 재화나 용역의 주문 및 서비스 이용 등에 있어 필요한
								최소한의 개인정보를 수집하며, 다음과 같은 목적을 위하여 개인정보를 수집 및 이용하고 있습니다.</p>
							<p>* 보유기간 다미노의 비회원으로 접속하여 다미노에서 제공하는 서비스를 이용하는 동안 다미노는 수집된
								개인정보를 계속적으로 보유하며 서비스 제공 등을 위해 이용합니다. 서비스 목적을 달성한 경우에는 재생할 수 없는
								방법에 의하여 회원정보를 완전히 삭제하 며, 추후 열람이나 이용이 불가능한 상태로 처리됩니다.</p>
						</div>
					</div>
					<!-- 2019-12-17//수정(e) -->
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!--//팝업 개인정보 수집 및 이용 동의 -->

		<!-- 회원가입-->
		<div class="pop-layer type2" id="pop-join">
			<div class="dim"></div>
			<div class="pop-wrap basic">
				<div class="pop-title-wrap">
					<h2 class="pop-title v2">회원가입</h2>
				</div>
				<div class="pop-content">
					<div class="step-wrap">
						<div class="title-type6">다미노피자 회원가입</div>
						<p class="sub-text">다미노피자 회원이 되어보세요!</p>
						<div class="btn-wrap">
							<a href="javascript:goRegister();" class="btn-type-brd dominos"><i
								class="ico-domino"></i>다미노피자 회원가입</a>
						</div>
					</div>
					<div class="step-wrap">
						<div class="title-type">간편 로그인 계정으로 회원가입</div>
						<p class="sub-text">간편 로그인 계정을 이용해 다미노피자에 가입해보세요!</p>
						<div class="btn-wrap">
							<a href="javascript:goLoginId('4');" class="btn-type-brd3 naver">NAVER로
								회원가입</a> <a href="javascript:goLoginId('3');"
								class="btn-type-brd3 payco">PAYCO로 회원가입</a>
						</div>
					</div>
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!-- 회원가입 -->

		<!-- //회원가입 여부 및 실명 확인(e) -->
		<div class="pop-layer" id="pop-fail">
			<div class="dim"></div>
			<div class="pop-wrap">
				<div class="pop-title-wrap">
					<h2 class="pop-title">로그인 실패</h2>
				</div>
				<div class="pop-content">
					<div class="notice-box">
						<p class="title-type">로그인에 실패하셨습니다.</p>
						<p class="title-type4">
							회원정보를 다시 확인해주시고, 정상적으로 진행되지 않을<br> 경우 아래 아이디/비밀번호 찾기로 확인해주시기
							바랍니다.
						</p>
						<div class="btn-wrap">
							<a href="javascript:goFindIdPwd('#srchid');" class="btn-type v4">아이디/비밀번호
								찾기</a>
						</div>
					</div>
					<div class="notice-info">
						<p class="title-type4">
							전화문의 : <em>080-860-3082</em>
						</p>
						<p class="title-type4">
							E-mail 문의 : <em>webmaster@dominos.co.kr</em>
						</p>
					</div>
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!-- //회원가입 여부 및 실명 확인(e) -->

		<iframe name="nonLogin" id="nonLogin" frameborder="0" src="#"
			width="0" height="0" style="display: none" title="비회원 로그인"></iframe>

		<form name="chgPasswdFrm" id="chgPasswdFrm"
			action="https://web.dominos.co.kr/main" method="post">
			<input type="hidden" name="redirectUrl" id="redirect_url" value="" />
			<input type="hidden" name="changePwd" id="changePwd" value="Y" />
		</form>


		<!-- LOGGER 환경변수 설정 -->
		<script type="text/javascript">
			_TRK_PI = "WP_2"; // 웹페이지의 성격 정의 - 로그인 화면
			_TRK_CP = "로그인";
		</script>
		<!-- // LOGGER 환경변수 설정 -->
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
						<li><a href="../contents/law.html">이용약관</a></li>
						<li class="on"><a href="../contents/privacy.html">개인정보처리방침</a></li>
						<li><a
							href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
						<li><a href="../company/jobListe3b0.html?type=R">인재채용</a></li>
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