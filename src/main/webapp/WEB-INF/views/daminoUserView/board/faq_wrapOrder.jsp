<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
								<li><a href="newsList0e42.html?type=P">보도자료</a></li>
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
											<li class="active"><a
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
												<dl id="active_211" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(211);">주문한 내역을 다시 확인하고
															싶은데 어디에서 확인할 수 있나요?</a>
													</dt>
													<dd>
														주문하신 내역은 다미노피자 온라인 하단의 My Page -> 주문/배송 조회-> 방문포장내역을 통하여
														포장주문 상세내역 및 주문상태를 확인하실 수 있습니다. <br />
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_164" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(164);">화끈한 화요일은 무엇인가요?</a>
													</dt>
													<dd>
														다미노피자에서 고객님께 제공해 드리는 화요일 특별 프로모션 입니다. <br />
														<br> <br />
														<br>매주 화요일 마다 온라인으로 방문포장 주문 시 피자 40% 할인을 해 드립니다 <br />
														<br>전체 매장에서 동일하게 이용할 수 있습니다(리조트점 등 일부 특수매장 제외) <br />
														<br> <br />
														<br>익일 예약 주문 시에는 화끈한 화요일 혜택을 이용할 수 없으며, 특수일, 공휴일에는
														프로모션을 운영하지 않습니다
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_163" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(163);">방문포장 주문 이용 시간은
															어떻게 되나요?</a>
													</dt>
													<dd>
														피자 수령은 11:15 ~ 22:30까지(매장 별 다름) 가능합니다. <br />포장 예약 시, 도착
														예정시간의 날짜와 시간 모두를 확인하여 주십시오. <br />
														<br>11:00~21:59까지는 당일 및 익일의 포장예약주문이 가능합니다. <br />
														<br>22:00~23:59까지는 익일의 포장예약주문이 가능합니다. <br />
														<br>00:00~11:29까지는 당일 및 익일의 포장예약주문이 가능합니다. <br /> <br />
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_162" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(162);">포장주문 이용은 어떻게
															하나요?</a>
													</dt>
													<dd>
														① 온라인 주문 시 방문포장 주문을 선택합니다. <br />
														<br>② 피자를 수령하실 매장을 검색(주소/매장명) 후 매장을 선택합니다. <br />
														<br>③ 피자 및 사이드디쉬, 음료를 선택합니다. <br />
														<br>④ 할인 선택에서 방문포장 주문 할인을 선택하면 해당 매장의 포장할인율이 적용됩니다. <br />
														<br>⑤ 주문 확인 시 도착 예정시간(15분 후,당일예약,익일예약) 을 선택한후 추가사항을
														입력합니다 <br />
														<br>⑥ 결제수단을 선택(신용카드 또는 휴대폰)한 뒤 주문완료 버튼을 누릅니다. <br />
														<br>⑦ 결제창이 열리면 결제정보를 입력하고 결제를 완료합니다. <br />
														<br>⑧ 주문이 완료됩니다. <br />
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_161" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(161);">온라인 방문포장 주문을
															이용할 때 유의사항은 무엇인가요?</a>
													</dt>
													<dd>
														① 15분 후 수령, 당일 예약, 익일 예약 방문포장 주문을 받습니다. <br />
														<br>② 결제 완료 후 메뉴 변경 및 취소는 불가능합니다. <br />
														<br>③ 메뉴를 변경하실 경우 주문을 취소하고 다시 주문을 하셔야 합니다. <br />
														<br>④ 주문취소는 주문하신 매장으로 직접 연락 하셔야 합니다.(온라인 취소 불가) <br />
														<br>⑤ 주문이 취소되면 신용카드/휴대폰의 승인도 자동으로 취소 됩니다 <br />
														<br>⑥ 승인취소여부는 취소 다음날 이용하신 해당 카드사 및 통신사 홈페이지를 통해서 확인하실
														수 있습니다. <br />
														<br>⑦ 수령하실 매장 선택 시 반드시 매장 위치를 확인하시기 바랍니다. <br />
														<br>⑧ 수령자 정보(이름/휴대폰)를 정확하게 입력해 주시기 바랍니다. <br />
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_160" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(160);">배달주문 / 포장주문의
															차이점은 무엇인가요?</a>
													</dt>
													<dd>

														<br /> <br>● 배달주문은 집, 회사 등 고객이 선택한 주소로 피자가 배달되는 것이며,
														매장은 배달장소에 따라 자동적으로 선택됩니다. <br /> <br />
														<br>● 포장주문은 고객이 직접 매장에서 피자를 수령하며, 고객이 매장의 위치를 확인 후
														원하는 매장으로 주문이 가능합니다. <br />
														<br>또한, 방문포장 주문을 이용하실 경우, 각 매장 별 방문포장 할인율을 적용 받으실 수
														있습니다.(각 매장 별 방문포장 할인률은 다름) <br />
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_159" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(159);">방문포장 할인율은 어디서
															확인할 수 있나요?</a>
													</dt>
													<dd>
														매장 선택 시 할인정보에서 방문포장 할인율 확인이 가능합니다. <br /> <br />
														<br>다미노피자 온라인 상단의 "매장찾기"에서도 매장을 검색하시면 매장 별 포장할인율을
														확인하실 수 있습니다.
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_158" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(158);">매장 방문포장 할인율이
															달라졌어요. 왜 그런가요?</a>
													</dt>
													<dd>
														포장할인은 각 매장 별 자율적으로 시행하고 있어, 수시로 변동될 수 있습니다. <br />
														<br> <br />
														<br>주문하실 때 해당 매장의 방문포장 할인율을 확인해 주시기 바랍니다.
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_157" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(157);">다른 사람이 피자를 수령할
															수 있나요?</a>
													</dt>
													<dd>
														주문하는 분과 피자를 수령하실 분이 다르신 경우, 수령자 정보를 정확히 입력해 주시기 바랍니다. <br />
														<br> <br />
														<br>전화번호의 경우, 휴대폰 번호 입력이 가능하며, <br />정보의 오기재로 인해 피자를
														수령하지 못하였을 경우 환불은 불가능합니다. <br />
														<br> <br />
														<br>[포장내역출력하기] 에서 포장내역을 출력해가시면 빠른 확인 및 피자 수령에 도움이 됩니다
														<br />
													</dd>
												</dl>
											</li>
											<li>
												<dl id="active_155" class="classActive">
													<dt>
														<a href="#none" onclick="fncCnt(155);">주문한 내역을 다시 확인하고
															싶은데 어디에서 확인할 수 있나요?</a>
													</dt>
													<dd>
														주문하신 내역은 다미노피자 홈페이지 상단의 My Page -> 주문/배송 조회-> 포장주문내역 을 통하여
														포장주문 상세내역 및 주문상태를 확인하실 수 있습니다. <br /> <br />
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

</body>
</html>