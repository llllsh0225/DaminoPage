<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta name="title" content="다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>



<!-- 리뉴얼 적용 2019.12.02 -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/common.css' />">

<!--메인에는 sub.css 호출하지않음-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/sub.css' />">
<!--//메인에는 sub.css 호출하지않음  -->

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
					<a href="/main" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="util-nav">
						<!-- and AUTH.memberYn eq 'Y' -->
						<a href="/global/logout">로그아웃</a> <a href="/mypage/myLevel">나의정보</a>
						<a href="javascript:goCart();" class="btn-cart"> <i
							class="ico-cart"></i> <span class="hidden ">장바구니</span> <strong
							class="cart_count"></strong> <!-- count -->
						</a>
						<!--2020-03-17 추가(s)-->
					</div>
				</div>
			</div>

			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active"><a href="/goods/list?dsp_ctgr=C0101"><span>메뉴</span></a>
						</li>
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
									<li><a href="/bbs/faqList?view_gubun=W&bbs_cd=online">자주하는
											질문</a></li>
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
				<div class="sub-type mypage">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">나의정보</h2>
							<div class="depth-area">
								<ol>
									<li><a href="/main">홈</a></li>
									<li><a href="/mypage/myOrderList">나의 정보</a></li>
									<li><strong>주문내역</strong></li>
								</ol>
							</div>
						</div>
						<article class="mypage-wrap mypage-grade">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="/mypage/myLevel">매니아 등급</a></li>
										<li class="active"><a href="/mypage/myOrderList">주문내역</a></li>
										<li><a href="/mypage/myCoupon">쿠폰함</a></li>
										<li><a href="/mypage/qustionList">1:1문의</a></li>
										<li><a href="/member/userinfoConfirm">정보수정</a></li>
									</ul>
								</div>
							</div>
							<div class="info-wrap">
								<div class="user">
									<span>OOO</span>님이 주문하신 내역입니다.
								</div>
								<div class="text-type">주문을 취소하시려면 해당 매장으로 전화하셔야 합니다.</div>
								<a href="javascript:UI.layerPopUp({selId:'#pop-order-info'});"
									class="btn-type4-brd4">이용안내</a>
							</div>
							<div class="tab-type6">
								<!--2020-01-03 클래스명수정-->
								<ul>
									<li class="active"><a href="/mypage/myOrderList">피자 주문</a></li>
									<li><a href="/mypage/myTokenList">상품권 주문</a></li>
								</ul>
							</div>
							<div class="order-list">
								<ul>
									<li>
										<div class="order-top">
											<span class="type">배달</span> <span class="date"> <span
												class="tit">주문일시</span> 2020-07-17 18:15
											</span> <span class="num"> <span class="tit">주문번호</span>
												20200717863942990011
											</span>
											<div class="btn-wrap">
												<a
													href="javascript:myOrderReOrder('R','20200717863942990011');">+
													재주문 하기</a> <a
													href="javascript:myOrderReOrder('Q','20200717863942990011');">+
													퀵오더 등록</a>
											</div>
										</div>
										<div class="order-center">
											<div class="state od-box">
												<strong>수령완료</strong>
												<div class="shop">세종로점&nbsp;02-723-3082</div>
											</div>
											<div class="info od-box">
												<a href="javascript:goView('20200717863942990011');">
													<div class="menu">베스트 콰트로 슈퍼시드 함유 도우 외 1건&nbsp;
														31,520원</div>
												</a>
											</div>
											<div class="btn-detail od-box">
												<a href="javascript:goView('20200717863942990011');"
													class="detail">상세보기</a>
											</div>
										</div>
									</li>
									<li>
										<div class="order-top">
											<span class="type">배달</span> <span class="date"> <span
												class="tit">주문일시</span> 2020-07-17 18:10
											</span> <span class="num"> <span class="tit">주문번호</span>
												20200717863942990010
											</span>
										</div>
										<div class="order-center">
											<div class="state od-box">
												<strong>주문취소</strong>
												<div class="shop">세종로점&nbsp;02-723-3082</div>
											</div>
											<div class="info od-box">
												<a href="javascript:goView('20200717863942990010');">
													<div class="menu">베스트 콰트로 슈퍼시드 함유 도우 외 1건&nbsp;
														29,670원</div>
												</a>
											</div>
											<div class="btn-detail od-box">
												<a href="javascript:goView('20200717863942990010');"
													class="detail">상세보기</a>
											</div>
										</div>
									</li>
									<li>
										<div class="order-top">
											<span class="type">배달</span> <span class="date"> <span
												class="tit">주문일시</span> 2019-10-30 11:30
											</span> <span class="num"> <span class="tit">주문번호</span>
												20191030863769990002
											</span>
											<div class="btn-wrap">
												<a
													href="javascript:myOrderReOrder('R','20191030863769990002');">+
													재주문 하기</a> <a
													href="javascript:myOrderReOrder('Q','20191030863769990002');">+
													퀵오더 등록</a>
											</div>
										</div>
										<div class="order-center">
											<div class="state od-box">
												<strong>수령완료</strong>
												<div class="shop">월계점&nbsp;02-915-3082</div>
											</div>
											<div class="info od-box">
												<a href="javascript:goView('20191030863769990002');">
													<div class="menu">페퍼로니(나) 외 1건&nbsp; 14,100원</div>
												</a>
											</div>
											<div class="btn-detail od-box">
												<a href="javascript:goView('20191030863769990002');"
													class="detail">상세보기</a>
											</div>
										</div>
									</li>
									<li>
										<div class="order-top">
											<span class="type">배달</span> <span class="date"> <span
												class="tit">주문일시</span> 2019-09-28 20:46
											</span> <span class="num"> <span class="tit">주문번호</span>
												20190928863769990047
											</span>
											<div class="btn-wrap">
												<a
													href="javascript:myOrderReOrder('R','20190928863769990047');">+
													재주문 하기</a> <a
													href="javascript:myOrderReOrder('Q','20190928863769990047');">+
													퀵오더 등록</a>
											</div>
										</div>
										<div class="order-center">
											<div class="state od-box">
												<strong>수령완료</strong>
												<div class="shop">월계점&nbsp;02-915-3082</div>
											</div>
											<div class="info od-box">
												<a href="javascript:goView('20190928863769990047');">
													<div class="menu">치즈(씬)&nbsp; 12,000원</div>
												</a>
											</div>
											<div class="btn-detail od-box">
												<a href="javascript:goView('20190928863769990047');"
													class="detail">상세보기</a>
											</div>
										</div>
									</li>
								</ul>
								<div class="pager-wrap">
									<div class="pager-inner">
										<a href='javascript:;' class='pager-first'><span
											class="hidden">첫페이지</span></a><a href='javascript:;'
											class='pager-prev'><span class="hidden">이전페이지</span></a><strong
											class="pager-item active">1</strong><a href='javascript:;'
											class='pager-next'
											onclick='javascript:paging(1, 1); return false;'><span
											class="hidden">다음페이지</span></a><a href='javascript:;'
											class='pager-last'><span class="hidden">마지막페이지</span></a>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>
		<!--팝업-주문내역 이용안내 -->
		<div class="pop-layer" id="pop-order-info">
			<div class="dim"></div>
			<div class="pop-wrap">
				<div class="pop-title-wrap">
					<h2 class="pop-title v2">주문내역 이용안내</h2>
				</div>
				<div class="pop-content">
					<div class="pop-text">
						<div class="title-type2">주문내역 이용안내</div>
						<ul class="list-text-v2">
							<li>매장(1577-3082) 또는 콜센터(080-860-3082) / 다른 이름으로 주 문하신 내역은
								온라인 주문내역에 표시되지 않습니다.</li>
							<li>온라인 상으로 주문한 최초의 이력만 확인하실 수 있으며, 전화를 통해 변경하신 사항은 반영되지
								않습니다.</li>
							<li>주문번호를 클릭하시면 상세정보(주문번호/배달장소/주문내역 등) 를 확인하실 수 있습니다.</li>
							<li>메뉴 변경이나 주문취소를 원하실 경우, 매장에 주문번호를 알려 주셔야 합니다. (온라인으로 주문취소는
								불가합니다.)</li>
							<li>결제방법을 수정하실 경우에는 해당 매장으로 직접 연락하셔야 하며, 배달 중에는 변경 불가합니다.</li>
							<li>영수증 출력을 원하시는 고객님은 주문상세 페이지의 ‘영수증 출 력’을 클릭하시면, 해당 주문의
								영수증을 출력할 수 있습니다.</li>
						</ul>
					</div>
					<div class="title-type2">상품권 주문취소 안내</div>
					<div class="pop-text">
						<ul class="list-text-v2">
							<p>모바일 상품권</p>
							<li>구매 시 입력하신 휴대전화번호로 MMS 발송 후에는 취소가 불가 능합니다.</li>
						</ul>
					</div>
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!--//팝업-주문내역 이용안내 -->
		<form name="f" id="f" method="get" action="/mypage/myOrderList">
			<input type="hidden" name="order_no" id="order_no" /> <input
				type="hidden" name="pageNo" id="pageNo" value="1">
		</form>
		<script type="text/javascript">
			_TRK_PI = "WP_24_2D"; // 웹페이지의 성격 정의 - 메인페이지
			_TRK_CP = "나의 정보>주문내역>주문상세";
		</script>
		<!-- 로딩 이미지 -->
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
						<li><a href="/contents/law">이용약관</a></li>
						<li class="on"><a href="/contents/privacy">개인정보처리방침</a></li>
						<li><a href="/bbs/faqList?view_gubun=W&bbs_cd=online">고객센터</a></li>
						<li><a href="/company/contents/chainstore1">가맹점모집</a></li>
						<li><a href="/order/groupOrder">단체주문</a></li>
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
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards.png"
							alt="">
							<p>
								식품안전<br>경영시스템 인증
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards2.png"
							alt="">
							<p>
								지식경제부<br>우수디자인 선정
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards3.png"
							alt="">
							<p>
								고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards4.png"
							alt="">
							<p>
								2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards5.png"
							alt="">
							<p>
								2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
							</p></li>
						<li><img
							src="https://cdn.dominos.co.kr/domino/pc/images/list_awards6.png"
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