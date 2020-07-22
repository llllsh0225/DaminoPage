<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">

<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
	
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery1.11.1.js'/>" ></script>
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
			url(https://cdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png)
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
									<span>주문자</span>님이 주문하신 내역입니다.
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
										</div>
										<div class="order-center">
											<div class="state od-box">
												<strong>배달중</strong>
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
										<div class="order-bottom">
											<div class="graph-wrap">
												<div class="graph-text">
													<div>
														<span>접수완료</span>
													</div>
													<div>
														<span>요리중</span>
													</div>
													<div>
														<span>배달중</span>
													</div>
													<div>
														<span>배달완료</span>
													</div>
												</div>
												<div class="graph v2">
													<span class="graph-inner" style="width: 63%"> <span
														class="icon"></span>
													</span>
												</div>
												<div class="tip-box2 tip-center">
													<p>고객님께 열심히 가고 있어요.</p>
												</div>
											</div>
										</div>
										<div class="shop-detail">
											<div class="map-inner">
												<dl>
													<dt>
														<span class="thumb"
															style="background-image: url(https://cdn.dominos.co.kr/admin/upload/webdlvr/20200407_vJGM5c9V.JPG)">사진</span>
													</dt>
													<dd>
														<p>
															매장명 <strong>세종로점</strong> 배달자 <strong>이은우</strong>
														</p>
														<div class="text-type">
															오븐에서 갓 구운 피자가 배달 중입니다.<br /> *도착 예상 시간은 도로 제한속도, 신호 등 안전
															운행 원칙으로 측정되며, 제공시간은 교통상황에 따라 달라질 수 있습니다.
														</div>
													</dd>
												</dl>
												<div class="map-area">
													<!-- MAP 영역 -->
													<iframe width="1000px" height="450px"
														src="https://cms.catchloc.com/api.dominos.view.member.location.delivery.php?api_key=5c46a302fdc32185a6a08fc00aa00aa07eb0e81f&timestamp=1594978503695&cert_key=1771b2aaeceb4c315301917bf290a1ae31989574&gper_key=MTA0NzY0MTMyNzg4&request_id=20200717863942990011&keyword=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+%EC%A2%85%EB%A1%9C%EA%B5%AC+%EB%AC%98%EB%8F%99+56+%EB%8B%A8%EC%84%B1%EC%82%AC"
														frameborder="0"></iframe>
													<!-- 매장아이콘이미지 22px로 써주세요 -->
												</div>
											</div>
											<div class="btn-map-control">
												<a href="#">지도 숨기기 <i class="ico-arrow"></i></a>
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
							<li>영수증 출력을 원하시는 고객님은 주문상세 페이지의 &lsquo;영수증 출 력&rsquo;을
								클릭하시면, 해당 주문의 영수증을 출력할 수 있습니다.</li>
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
