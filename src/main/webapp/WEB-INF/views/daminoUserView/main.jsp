<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<!-- slick 배너용 css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='resources/css/slick.css' />">

<!-- js -->
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
<!-- slick 배너용 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/slick.min.js' />"></script>
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

<!-- 배너 실험실 -->
<style>
</style>

<script>
	// 이미지 슬라이더
	// css는 common.css 1153줄~
	$(document).ready(function() {
		sessionStorage.clear();
		
		$(".banner-slider").slick({
			dots : true,
			autoplay : true,
			autoplaySpeed : 3000,
			arrows : true

		});
		
		console.log($('#sessionChk').val());

	});
	
	// 배달주문 , 포장주문 선택 시 로그인 여부 확인
	function openOrderPage(gubun){
		var sessionChk = $('#sessionChk').val();
		
		if(sessionChk != 'login'){
			alert("다미노 회원 전용 서비스입니다. 로그인 해주세요.");
			location.href="login.do";
		}else{
			if(gubun == 'D'){
				location.href="getOrderPage.do?gubun=D";
			}else{
				location.href="getOrderPage.do?gubun=W";
			}
		}
	}
</script>
<!-- //배너 실험실 -->

</head>
<body>
	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<!-- 세션 체크 -->
					<input type="hidden" id="sessionChk" value="${msg }"> 
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

		<div id="container">
			<section id="content">
				<div class="main">
					<!-- 메인 배너 -->
					<article class="article visual-area">
						<!--  -->
						<div class="banner-slider" id="#">
							<c:forEach var="bannerList" items="${bannerList }">
								<div>
									<img class="banner_img"
										src="<c:url value='/resources/images/user/banner/${bannerList.banner_image }'/>"
										alt="${bannerList.banner_alt }">
								</div>
							</c:forEach>
						</div>
					</article>
					<!-- //메인 배너 영역 -->
					<article class="article delivery-area">
						<div class="inner-box">
							<div class="item-wrap v2">
								<div class="item">
									<a href="javascript:openOrderPage('D');">
										<i class="ico-delivery"></i> <span class="text">배달 주문</span> <span
										class="arrow"></span>
									</a>
									<p class="delivery_box">등급별 최대 30%</p>
								</div>

								<div class="item">
									<a href="javascript:openOrderPage('W');">
										<i class="ico-takeout"></i> <span class="text">포장 주문</span> <span
										class="arrow"></span>
									</a>
									<p class="wrap_box">포장 주문</p>
								</div>

								<div class="item">
									<a href="quickOrder.do">
										<i class="ico-quick2"></i> <span class="text">퀵 오더</span> <span
										class="arrow"></span>
									</a>
									<p class="quickorder_box">퀵 오더</p>
								</div>

							</div>
						</div>
					</article>
					<article class="article grade-area">
						<div class="inner-box">
						<c:if test="${msg != 'login' || guest == 'guest' }"> <!-- 비로그인 시 -->
							<div class="grade-info">
								<div class="login-before">
									<div class="title-wrap">
										<div class="title-type2">
											다미노피자의<br> <strong>특별한 매니아 혜택</strong><br>누려보세요!
										</div>
									</div>
									<div class="btn-wrap">
										<a href="login.do" class="btn-type5">로그인</a>
									</div>
								</div>
							</div>
							<div class="grade-slider slick-initialized slick-slider" style="">
								<div aria-live="polite" class="slick-list draggable">
									<div class="slick-track" style="opacity: 1; width: 1080px; transform: translate3d(0px, 0px, 0px);" role="listbox">
										<div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 210px;" tabindex="-1" role="option" aria-describedby="slick-slide10">
											<a href="regForm.do" tabindex="0"><img src="<c:url value='/resources/images/user/main_card1.png' />"></a>
										</div>
										<div class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" style="width: 210px;" tabindex="-1" role="option" aria-describedby="slick-slide11">
											<a href="mania.do" tabindex="0"><img src="<c:url value='/resources/images/user/main_card2.gif' />"></a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${msg == 'login' && guest eq null}"> <!-- 로그인 시 -->
							<div class="grade-info">
								<div class="user-info">
									<p><span>${user.username }</span>님 현재 등급</p>
									<p class="grade">
										<span>${user.userlevel }</span>
									</p>
									<div class="btn-wrap">
										<a href="mylevel.do" class="btn-type5">혜택보기</a>
										<a href="myorderlist.do" class="btn-type5">주문내역</a>
									</div>
									
								</div>
							</div>
							<div class="grade-slider slick-initialized slick-slider" style="">
								<div aria-live="polite" class="slick-list draggable">
									<div class="slick-track" style="opacity: 1; width: 1080px; transform: translate3d(0px, 0px, 0px);" role="listbox">
										<div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 210px;" tabindex="-1" role="option" aria-describedby="slick-slide10">
											<a href="mycoupon.do" tabindex="0"><img src="<c:url value='/resources/images/user/my_coupon.png' />"></a>
										</div>
										<div class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" style="width: 210px;" tabindex="-1" role="option" aria-describedby="slick-slide11">
											<a href="mylevel.do" tabindex="0"><img src="<c:url value='/resources/images/user/my_level.png' />"></a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						</div>
					</article>

					<!-- banner -->
					<article class="article banner-area"></article>
					<!-- //banner -->

				</div>
				<!-- //main -->
			</section>

			<div class="pop-layer type2" id="pop-pw2">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title">비밀번호 변경 권유</h2>
					</div>
					<div class="pop-content">
						<div class="title-wrap">
							<p class="title-type">
								고객님의 회원정보 보호를 위해 다미노피자는 <em>6개월마다<br>비밀번호 변경을 권유
								</em>하고 있습니다.
							</p>
							<p class="text-type">비밀번호 변경을 원하지 않을 경우 '다음에 변경하기' 버튼을 눌러 1개월
								동안 안내를 받지 않을 수 있습니다. 기존 비밀번호와 신규 비밀번호를 입력 해 주세요.</p>
						</div>
						<div class="form info-form">
							<dl>
								<dt>현재 비밀번호</dt>
								<dd>
									<input type="password" name="old_passwd" id="old_passwd"
										maxlength="16" placeholder="">
									<div class="text-type4" id="old_passwd_alert"
										style="display: none;"></div>
								</dd>
							</dl>
							<dl>
								<dt>비밀번호</dt>
								<dd>
									<input type="password" name="passwd" id="passwd" maxlength="16"
										placeholder=" 8~16자 영문대소문자,숫자, 특수문자 사용가능">
									<div class="text-type4" id="passwd_alert"
										style="display: none;"></div>
								</dd>
							</dl>
							<dl>
								<dt>비밀번호 확인</dt>
								<dd>
									<input type="password" name="confirmpw" id="confirmpw"
										maxlength="16" placeholder="">
									<div class="text-type4" id="confirmpw_alert"
										style="display: none;"></div>
								</dd>
							</dl>
						</div>
						<div class="btn-wrap">
							<a href="javascript:updateChangePasswd();" class="btn-type v4">수정하기</a>
							<a href="javascript:goDelay();" class="btn-type v5">1개월 후
								변경하기</a>
						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>

		</div>
		<div class="pop-layer pop-lsm" id="pop-lsm"></div>
		<div class="pop-layer" id="pop-address3"></div>

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
						<li><a href="faqMain.do">고객센터</a></li>
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
						<li><img
							src="<c:url value='/resources/images/user/list_awards.png' />"
							alt="">
							<p>
								식품안전<br>경영시스템 인증
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards2.png' />"
							alt="">
							<p>
								지식경제부<br>우수디자인 선정
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards3.png' />"
							alt="">
							<p>
								고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards4.png' />"
							alt="">
							<p>
								2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards5.png' />"
							alt="">
							<p>
								2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
							</p></li>
						<li><img
							src="<c:url value='/resources/images/user/list_awards6.png' />"
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