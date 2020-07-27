<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>다미노 뉴스- 다미노피자</title>
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
					<a href="/main" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="util-nav">
						<a href="/global/logout">로그아웃</a> <a href="/mypage/myLevel">나의정보</a> <a href="javascript:goCart();" class="btn-cart"> <i class="ico-cart"></i> <span class="hidden ">장바구니</span> <strong
							class="cart_count"></strong> <!-- count -->
						</a>
					</div>
				</div>
			</div>

			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active"><a href="/goods/list?dsp_ctgr=C0101"><span>메뉴</span></a></li>
						<li><a href="/ecoupon/index"><span>e-쿠폰</span></a></li>
						<li><a href="/branch"><span>매장검색</span></a></li>
					</ul>
					<a href="#" class="snb-more">더보기</a>
				</div>

				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="/event/mania">다미노 서비스</a>
								<ul>
									<li><a href="/event/mania">매니아 혜택</a></li>
									<li><a href="/quickOrder/index">퀵 오더</a></li>
									<li><a href="/order/groupOrder">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="/bbs/faqList?view_gubun=W&bbs_cd=online">고객센터</a>
								<ul>
									<li><a href="/bbs/faqList?view_gubun=W&bbs_cd=online">자주하는 질문</a></li>
									<li><a href="/bbs/qnaForm">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="/company/contents/overview">회사소개</a>
								<ul>
									<li><a href="/company/contents/overview">한국다미노피자</a></li>
									<li><a href="/company/contents/chainstore1">가맹점 모집</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="/bbs/newsList?type=N">공지사항</a>
							<ul>
								<li><a href="/bbs/newsList?type=N">다미노뉴스</a></li>
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
				<div class="sub-type notice">
					<div class="inner-box">

						<div class="page-title-wrap">
							<h2 class="page-title">공지사항</h2>
							<div class="depth-area">
								<ol>
									<li><a href="/main">홈</a></li>
									<li>공지사항</li>
									<li>다미노뉴스</li>
								</ol>
							</div>
						</div>
						<article class="notice-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="/bbs/newsList?type=N">News</a></li>
										<li><a href="/bbs/newsList?type=P">Press</a></li>
									</ul>
								</div>
							</div>
							<div class="news-view">
								<form id="newsForm" name="newsForm" method="post">
									<dl class="news-content">
										<input type="hidden" id="type" name="type" value="N">
										<input type="hidden" id="pageNo" name="pageNo" value="1">
										<input type="hidden" id="search" name="search" value="subject">
										<input type="hidden" id="condition" name="condition" value="">
										<dt>
											<strong>OK캐쉬백 포인트 결제수단 일시 중단 안내</strong>
											<ul>
												<li>2020-05-29</li>
												<li>조회 <span>108</span></li>
											</ul>
										</dt>
										<dd>
											<p>안녕하세요 고객님.</p>
											<p>언제나 저희 다미노피자를 사랑해주셔서 감사의 말씀 드립니다.</p>
											<p>&nbsp;</p>
											<p>
												<br>다름 아니라 5/19(화)부터 오픈한 OK캐쉬백 포인트 결제수단이 내부 시스템 이슈로
											</p>
											<p>잠시 일시중단 후 재 오픈 예정입니다.</p>
											<p>&nbsp;</p>
											<p>
												<br>이용에 불편을 드려 사과의 말씀 드리며 시스템 개선 후 재 오픈 진행하겠습니다.
											</p>
											<p>&nbsp;</p>
											<p>
												<br>============================================================================
											</p>
											<p>1) OK캐쉬백 포인트 결제 일시 중단</p>
											<p>2) 일정</p>
											<p>● 일시중단 : 5/29(금) ~ 6/28(일)</p>
											<p>● 재 오픈 : 6/29(월)~</p>
											<p>*내부 사정에 따라 위 일정은 변동될 수 있음.</p>
											<p>============================================================================</p>
											<p>&nbsp;</p>
											<p>
												<br>감사합니다.
											</p>
										</dd>
									</dl>
									<ul class="news-button">
										<li><span>이전</span><a href="#none" onclick="goView('2336', 'view'); return false;">2020 다미노 온라인 매니아 혜택 변경 안내</a></li>
										<li><span>다음</span><a href="#none" onclick="goView('2316', 'view'); return false;">갈릭&amp;허브윙스(8조각) 가격 인상 안내</a></li>
									</ul>
								</form>
							</div>
							<div class="btn-wrap">
								<a href="javascript:goView('2334', 'list');" class="btn-type v2">목록</a>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>
		<!-- //container -->

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
				<a href="javascript:;" onclick="setBasketCnt();" class="btn_ico btn_close">닫기</a>
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
						<li><a href="/contents/law">이용약관</a></li>
						<li class="on"><a href="/contents/privacy">개인정보처리방침</a></li>
						<li><a href="/bbs/faqList?view_gubun=W&bbs_cd=online">고객센터</a></li>
						<li><a href="/company/contents/chainstore1">가맹점모집</a></li>
						<li><a href="/order/groupOrder">단체주문</a></li>
					</ul>

					<div class="footer-info">
						<p>03138 서울특별시 중구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현, 정민균, 정민식, 김진혁</p>
						<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
						<p>문의 : admin@daminos.co.kr</p>
						<p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

						<p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 피자(PC, 모바일, 앱)의 일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
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
								<a href="https://itunes.apple.com/kr/app/dominopija-domino-pizza-korea/id371008429?mt=8"><i class="ico-ios"></i>ios 앱다운로드</a> <a
									href="https://play.google.com/store/apps/details?id=kr.co.d2.dominos"><i class="ico-android">안드로이드 앱다운로드</i></a>
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
						<li><img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards.png" alt="">
							<p>
								식품안전<br>경영시스템 인증
							</p></li>
						<li><img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards2.png" alt="">
							<p>
								지식경제부<br>우수디자인 선정
							</p></li>
						<li><img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards3.png" alt="">
							<p>
								고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
							</p></li>
						<li><img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards4.png" alt="">
							<p>
								2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
							</p></li>
						<li><img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards5.png" alt="">
							<p>
								2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
							</p></li>
						<li><img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards6.png" alt="">
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