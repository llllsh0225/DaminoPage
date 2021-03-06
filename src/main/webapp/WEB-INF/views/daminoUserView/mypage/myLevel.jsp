<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>

	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
	
	<script type="text/javascript" src="<c:url value='/resources/js/jquery1.11.1.js'/>" ></script>
	<!-- 메인페이지 슬라이드 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>" ></script>
	<!-- 더보기 슬라이드로 내려오는 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>
	
<script>

window.onload = function(){
	// 오늘 날짜 객체
	var today = new Date();
	
	// 두 달 전
	var twoMonthAgo = String(today.getMonth() - 1);
	if(twoMonthAgo.length < 2){
		twoMonthAgo = '0' + twoMonthAgo;
	}
	
	// 현재 달
	var thisMonth = String(today.getMonth() + 1);
	if(thisMonth.length < 2){
		thisMonth = '0' + thisMonth;
	}
	
	// 주문 건수 계산 기준 월
	$('#orderCntDate').text('(' + today.getFullYear() + '-' + twoMonthAgo + '~' + today.getFullYear() + "-" + thisMonth + ")");
	
	// 주문 액수 계산 기준 월
	$('#payCntDate').text('(' + today.getFullYear() + '-01~' + today.getFullYear() + "-" + thisMonth + ")");
}

function myCouponDown(){ // 당월에 이미 발급된 쿠폰이 있는지 확인 한 후, 중복발급이 아닐 경우에만 쿠폰을 지급한다.
	var userid = '<%=session.getAttribute("userid")%>';
	var userlevel = '<%=session.getAttribute("userlevel")%>';
	
	$.ajax({
		type : "POST",
		url : "insertManiaCoupon.do",
		contentType : "application/json; charset=utf-8;",
		// return 값 받을 때 dataType : "json" 지워주니까 success 에서 제대로 결과값을 받는다; 이유는 모르겠음..
		data : JSON.stringify({
			userid : userid,
			userlevel : userlevel,
		}),
		async : false,
		success : function(res){
			if(res == 'success'){
				location.href='ecouponResult.do';
			}else if(res == 'duplicated'){
				alert("이미 당월 발급된 매니아 쿠폰이 존재합니다.");
			}
		},
		error : function(err){
			alert("매니아 쿠폰 발급 과정에서 오류가 발생하였습니다. 잠시 후 다시 시도해주세요.");
		},
	});
}
function orderlistSubmit(){
	document.myinfoForm.action='myorderlist.do';
	document.myinfoForm.submit();
}
</script>
<script>
function expireSession(){
	  alert("세션이 만료되었습니다");
	  
	  var userid = $('#userid').val(); // 유저 아이디
	  
	  $.ajax({
		  url:'allDelete.do',
		  contentType : "application/json; charset=UTF-8;",
		  type: 'post',
		  data : JSON.stringify({
			  userid : userid
		  }),
		  async : false,
		  success : function(data){
			  if(data == 'success'){
				  alert("성공");
				  location.href = "login.do";
			  }
		  },
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
	  })
	  
	  
	}
	setTimeout('expireSession()',<%= request.getSession().getMaxInactiveInterval() * 1000 %>);
</script>
</head>
<body>
	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="main.do" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>
					<input type="hidden" id="userid" value="${sessionScope.userid}" />
					<c:choose>
						<c:when test="${guest == 'guest' }">
							<!-- 비회원 로그인시 -->
							<div class="util-nav">
								guest 님&nbsp; <a href="regForm.do">회원가입</a><a href="logout.do">로그아웃</a> 
							</div>
						</c:when>
						<c:when test="${msg != 'login'}">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="regForm.do">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인 -->
							<div class="util-nav">
								${sessionScope.username } 님 &nbsp; <a href="logout.do">로그아웃</a>
								<a href="mylevel.do">나의정보</a> <a href="my_basket.do" class="btn-cart">
									<i class="ico-cart"></i>
								</a>
							</div>
						</c:otherwise>
					</c:choose>
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
									<li><a href="faqMain.do">자주하는 질문</a></li>
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
				<div class="sub-type mypage">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">나의 정보</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a href="myorderlist.do">나의 정보</a></li>
									<li><strong>매니아 등급</strong></li>
								</ol>
							</div>
						</div>
						<article class="mypage-wrap mypage-grade">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="mylevel.do">매니아 등급</a></li>
										<li><a href="myorderlist.do">주문내역</a></li>
										<li><a href="mycoupon.do">쿠폰함</a></li>
										<li><a href="myquestionlist.do">1:1문의</a></li>
										<li><a href="myuserinfoconfirm.do">정보수정</a></li>
									</ul>
								</div>
							</div>
							<!-- 사용자 등급 -->
							<!-- 사용자 혜택 -->
							<!-- 다음 달 도달 가능 등급 계산 (현재 등급보다 한단계 높은 등급 노출) -->
							<!-- 필요건수 = 다음 달 도달 가능 등급의 필요 건수  - 실시간(2개월+현재달) 주문 건수 -->
							<div class="info-wrap v2 regular">
								<!-- royal 일 경우 class 추가 -->
								<div class="user">
									<div class="user-box">
										<span>${user.username }님</span> <strong class="grade">${user.userlevel }</strong>
									</div>
									<a href="mania.do" class="btn-type4-brd4">등급별 혜택 보기</a>
								</div>
								<div class="order">
									<dl>
										<dt>
											주문 <span class="date" id="orderCntDate"></span>
										</dt>
										<dd>
											<p>
												<strong>${orderCnt }건</strong>
											</p>
										</dd>
									</dl>
									<dl>
										<dt>
											주문금액 <span class="date" id="payCntDate"></span>
										</dt>
										<dd>
											<p>
												<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${payCnt }" />원</strong>
											</p>
										</dd>
									</dl>
								</div>
							</div>
							<c:set var="mylevel" value="${user.userlevel }" />
							<c:choose>
								<c:when test="${mylevel eq 'REGULAR'}">
									<div class="upgrade-wrap">
										<div class="title-wrap2">
											<div class="title-type2">PREMIUM 등급으로 업그레이드 하려면?</div>
											<div class="side">*최근 3개월간 완료된 주문에 대해서 주문건 수를 기준으로 매월 1일
												매니아 등급에 반영됩니다.</div>
										</div>
										<div class="box">
											<div class="title-type4">
												<span class="t-l"> 주문건수 </span> <span class="t-r">목표등급</span>
											</div>
											<!-- 주문 건수가 2건 이상일 때 -->
											<c:if test="${((orderCnt/2) * 100) >= 100}">
											<div class="grade-wrap">
												<div class="graph">
													<span class="graph-inner" style="width: 100%">100%</span>
												</div>
												<span class="grade">PREMIUM</span>
											</div>
											<div class="tip-box2 tip-center" style="left: 887.737px;">
												<p>목표달성</p>
												<span class="arrow"></span>
											</div>
											</c:if>
											<!-- 주문 건수가 2건 미만일 때 -->
											<c:if test="${((orderCnt/2) * 100) < 100}">
											<div class="grade-wrap">
												<div class="graph">
													<span class="graph-inner" style="width: ${(orderCnt/2) * 100}%">${(orderCnt/2) * 100}%</span>
												</div>
												<span class="grade">PREMIUM</span>
											</div>
											<div class="tip-box2 tip-center">
												<p>${2 - orderCnt} 건 더 구매</p>
												<span class="arrow"></span>
											</div>
											</c:if>
										</div>
									</div>
								</c:when>
								<c:when test="${mylevel eq 'PREMIUM'}">
									<div class="upgrade-wrap">
										<div class="title-wrap2">
											<div class="title-type2">VIP 등급으로 업그레이드 하려면?</div>
											<div class="side">*최근 3개월간 완료된 주문에 대해서 주문건 수를 기준으로 매월 1일
												매니아 등급에 반영됩니다.</div>
										</div>
										<div class="box">
											<div class="title-type4">
												<span class="t-l"> 주문건수 </span> <span class="t-r">목표등급</span>
											</div>
											<!-- 주문 건수가 6건 이상일 때 -->
											<c:if test="${((orderCnt/6) * 100) >= 100}">
											<div class="grade-wrap">
												<div class="graph">
													<span class="graph-inner" style="width: 100%">100%</span>
												</div>
												<span class="grade">VIP</span>
											</div>
											<div class="tip-box2 tip-center" style="left: 887.737px;">
												<p>목표달성</p>
												<span class="arrow"></span>
											</div>
											</c:if>
											<!-- 주문 건수가 6건 미만일 때 -->
											<c:if test="${((orderCnt/6) * 100) < 100}">
											<div class="grade-wrap">
												<div class="graph">
													<span class="graph-inner" style="width: ${(orderCnt/6) * 100}%">${(orderCnt/6) * 100}%</span>
												</div>
												<span class="grade">VIP</span>
											</div>
											<div class="tip-box2 tip-center">
												<p>${6 - orderCnt} 건 더 구매</p>
												<span class="arrow"></span>
											</div>
											</c:if>
										</div>
									</div>
								</c:when>
								<c:when test="${mylevel eq 'VIP'}">
									<div class="upgrade-wrap">
										<div class="title-wrap2">
											<div class="title-type2">ROYAL 등급으로 업그레이드 하려면?</div>
											<div class="side">*올해 1년간 주문 완료된 주문 총액을 기준으로 내년 1월 1일
												매니아 등급에 반영됩니다.</div>
										</div>
										<div class="box">
											<div class="title-type4">
												<span class="t-l"> 주문총액 </span> <span class="t-r">목표등급</span>
											</div>
											<!-- 주문 총액이 70만원 이상일 때 -->
											<c:if test="${payCnt >= 700000}">
											<div class="grade-wrap">
												<div class="graph">
													<span class="graph-inner" style="width: 100%">100%</span>
												</div>
												<span class="grade">ROYAL</span>
											</div>
											<div class="tip-box2 tip-center" style="left: 887.737px;">
												<p>목표달성</p>
												<span class="arrow"></span>
											</div>
											</c:if>
											<!-- 주문 총액이 70만원 미만일 때 -->
											<c:if test="${payCnt < 700000}">
											<div class="grade-wrap">
												<div class="graph">
													<span class="graph-inner" style="width: ${(payCnt/700000) * 100}%">${(payCnt/700000) * 100}%</span>
												</div>
												<span class="grade">ROYAL</span>
											</div>
											</c:if>
										</div>
									</div>
								</c:when>
							</c:choose>
							<div class="coupon-wrap">
								<div class="title-wrap2">
									<div class="title-type">나의 매니아 혜택</div>
								</div>
								<div class="coupon-list">
									<style>
										.coupon-list a {
											cursor: default;
										}
										</style>
									<ul>
									<c:choose>
										<c:when test="${mylevel eq 'REGULAR' }">
										<li><a href="javaScript:void(0)">배달주문 20% 할인쿠폰 2매</a></li>
										</c:when>
										<c:when test="${mylevel eq 'PREMIUM' }">
										<li><a href="javaScript:void(0)">배달주문 20% 할인쿠폰 1매</a></li>
										<li><a href="javaScript:void(0)">배달주문 25% 할인쿠폰 1매</a></li>
										</c:when>
										<c:when test="${mylevel eq 'VIP' }">
										<li><a href="javaScript:void(0)">배달주문 20% 할인쿠폰 1매</a></li>
										<li><a href="javaScript:void(0)">배달주문 30% 할인쿠폰 1매</a></li>
										<li><a href="javaScript:void(0)">포장주문 35% 할인쿠폰 1매</a></li>
										</c:when>
										<c:when test="${mylevel eq 'ROYAL' }">
										<li><a href="javaScript:void(0)">배달주문 20% 할인쿠폰 1매</a></li>
										<li><a href="javaScript:void(0)">배달주문 30% 할인쿠폰 1매</a></li>
										<li><a href="javaScript:void(0)">포장주문 40% 할인쿠폰 1매</a></li>
										</c:when>
									</c:choose>
									</ul>
								</div>
								<div class="btn-wrap">
									<a href="javascript:myCouponDown();" class="btn-type v4">쿠폰
										받기</a>
									<div class="gift-btn">
										고마운 사람에게 쿠폰을 보내자! <a href="mycoupon.do">내 쿠폰 선물하기</a>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>

		<script type="text/javascript">
			_TRK_PI = "WP_24_1";
			_TRK_CP = "나의 정보>매니아 등급";
		</script>


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