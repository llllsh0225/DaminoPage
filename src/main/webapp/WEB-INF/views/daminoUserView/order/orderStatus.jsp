<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="utf-8">

<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's</title>
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/card_add.css' />">
	
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery1.11.1.js'/>" ></script>
	<!-- 메인페이지 슬라이드 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>" ></script>
	<!-- 더보기 슬라이드로 내려오는 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>

</head>
<body>

	
<div id="wrap">
	<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="main.do" class="btn-logo">
						<i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>
					
					<c:choose>
						<c:when test="${msg != 'login' }">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="login.do">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인 -->
							<div class="util-nav">
								${user.username } 님 &nbsp; <a href="logout.do">로그아웃</a>
								<a href="mylevel.do">나의정보</a> <a href="#" class="btn-cart">
									<i class="ico-cart"></i>
								</a>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
				
			<!-- main 1dep menu -->
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
									<li><a href="faqMain.do">자주하는 질문</a></li>
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
			<!-- //main 1dep menu -->
		</header><!-- //header -->
	<!-- container -->
<div id="container">
	<section id="content">
		<div class="sub-type mypage">
			<div class="inner-box">
				<div class="page-title-wrap">
					<h2 class="page-title">나의정보</h2>
					<div class="depth-area">
						<ol>
							<li><a href="main.do">홈</a></li>
							<li><a href="mylevel.do">나의 정보</a></li>
							<li><strong>주문내역</strong></li>
						</ol>
					</div>
				</div>
				<article class="mypage-wrap mypage-grade">
					<div class="menu-nav-wrap">
							<div class="menu-nav">
								<ul>
									<li><a href="mylevel.do">매니아 등급</a></li>
									<li class="active"><a href="myorderlist.do">주문내역</a></li>
									<li><a href="mycoupon.do">쿠폰함</a></li>
									<li><a href="myquestionlist.do">1:1문의</a></li>
									<li><a href="userinfoconfirm.do">정보수정</a></li>
								</ul>
							</div>
						</div>
					<div class="order-view">
						<div class="order-top">
							<span class="type">${orderview.take }</span>
							<span class="date">
								<span class="tit">주문일시</span>
								<fmt:formatDate value="${orderview.orderdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
							<span class="num">
								<span class="tit">주문번호</span>
								${orderview.orderseq }</span>
							</div>
						<div class="order-center">
							<div class="state">
								<strong>${orderview.status }</strong>
							</div>
							<div class="graph-wrap">
								<c:choose>
									<c:when test="${orderview.status eq '주문완료' }">
										<div class="graph-text">
											<div><span>주문완료</span></div>
											<div><span>요리중</span></div>
											<div><span>배달중</span></div>
											<div><span>배달완료</span></div>
										</div>
										<div class="graph v2">
											<span class="graph-inner" style="width:12%">
												<span class="icon"></span>
											</span>
										</div>
										<div class="tip-box2 tip-center">
											<p>고객님의 피자 주문이 접수되었습니다.</p>
										</div>
									</c:when>
									<c:when test="${orderview.status eq '요리중' }">
										<div class="graph-text">
											<div><span>접수완료</span></div>
											<div><span>요리중</span></div>
											<div><span>배달중</span></div>
											<div><span>배달완료</span></div>
										</div>
										<div class="graph v2">
											<span class="graph-inner" style="width:38%">
												<span class="icon"></span>
											</span>
										</div>
										<div class="tip-box2 tip-center">
											<p>고객님의 피자를 맛있게 요리중입니다.</p>
										</div>
									</c:when>
									<c:when test="${orderview.status eq '배달중' }">
										<div class="graph-text">
											<div><span>접수완료</span></div>
											<div><span>요리중</span></div>
											<div><span>배달중</span></div>
											<div><span>배달완료</span></div>
										</div>
										<div class="graph v2">
											<span class="graph-inner" style="width:63%">
												<span class="icon"></span>
											</span>
										</div>
										<div class="tip-box2 tip-center">
											<p>고객님께 열심히 가고 있어요.</p>
										</div>
									</c:when>
									<c:when test="${orderview.status eq '배달완료' }">
										<div class="graph-text">
											<div><span>접수완료</span></div>
											<div><span>요리중</span></div>
											<div><span>배달중</span></div>
											<div><span>배달완료</span></div>
										</div>
										<div class="graph v2">
											<span class="graph-inner" style="width:100%">
												<span class="icon"></span>
											</span>
										</div>
										<div class="tip-box2 tip-center">
											<p>고객님께 안전하게 전달하였습니다.</p>
										</div>
									</c:when>
									<c:when test="${orderview.status eq '주문취소' }">
									</c:when>			
								</c:choose>	
							</div>
						</div>
						<div class="menu-info-wrap">
							<div class="menu-info">
								<div class="info-box">
									<div class="title-type2">주문내역</div>
									<p>${orderview.menus }</p>
								</div>
							</div>
							<div class="pay-info">
								<dl>
									<dt>주문금액</dt>
									<dd><em>${orderview.price }</em>원</dd>
								</dl>
								<dl class="discount">
									<dt>할인 금액</dt>
									<dd><em>-</em>원</dd>
								</dl>
								<ul class="apply">
	                                    <li>MANIA_R20 20%</li>
	                                </ul>
                                <dl class="total">
									<dt>결제금액</dt>
									<dd><em>${orderview.price }</em>원</dd>
								</dl>
							</div>
						</div>
						<div class="order-info">
							<div class="title-type2">주문정보</div>
							<dl>
								<dt>결제방법</dt>
								<dd>
									${orderview.paytool }(${orderview.paystatus }) &nbsp; ${orderview.price } 원
									<a href="javascript:show_receipt('StdpayCARDdomin3940220200717181520234596');" class="btn-type4-brd">영수증 출력</a>
								</dd>
							</dl>
							<dl>
								<dt>수령인</dt>
								<dd>${orderview.username }</dd>
							</dl>
							<dl>
								<dt>수령인 연락처</dt>
								<dd>${orderview.tel }</dd>
							</dl>
							<dl>
								<dt>배달요청시간</dt>
								<dd>바로 주문</dd>
							</dl>
							<dl>
								<dt>배달주소</dt>
									<dd>${orderview.address }</dd>
							</dl>
							<dl>
								<dt>매장정보</dt>
								<dd>${orderview.store }</dd>
							</dl>
							<dl>
								<dt>추가요청</dt>
								<dd>${orderview.requirement }</dd>
							</dl>
						</div>
						<div class="btn-wrap">
							<div class="t-l">
									<a href="myorderlist.do" class="btn-type v5">목록</a>
								</div>
								<div class="t-r">
									<a href="javascript:profileOrder('R');" class="btn-type v3">재주문</a>
									<a href="javascript:profileOrder('Q');" class="btn-type v4">퀵오더 등록</a>
								</div>
							</div>
					</div>
				</article>
			</div>
		</div>
	</section>
</div>

<form name="f" id="f" method="get" action="/mypage/myOrderList">
<input type="hidden" name="pageNo" id="pageNo" value="1">
</form>
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
					<i class="ico-logo2"></i>
					<span class="tel">1577-3082</span>
				</div>
	
				<ul class="footer-contact">
						<li><a href="law.do">이용약관</a></li>
						<li class="on"><a href="privacy.do">개인정보처리방침</a></li>
						<li><a href="faqMain.do">고객센터</a></li>
						<li><a href="groupOrder.do">단체주문</a></li>
				</ul>
	
				<div class="footer-info">
               <p>03138 서울특별시 중구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현, 정민균, 정민식, 김진혁</p>
               <p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
               <p>문의 : admin@daminos.co.kr</p>
               <p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

               <p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 피자(PC, 모바일, 앱)의 일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
               </div>
	
				<div class="footer-cont">
	
					<dl class="app-box">
						<dt>DOWNLOAD APP</dt>
						<dd>
							<a href="https://itunes.apple.com/kr/app/dominopija-domino-pizza-korea/id371008429?mt=8"><i class="ico-ios"></i>ios 앱다운로드</a>
							<a href="https://play.google.com/store/apps/details?id=kr.co.d2.dominos"><i class="ico-android">안드로이드 앱다운로드</i></a>
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
</div><!-- //wrap -->
</body>
</html>