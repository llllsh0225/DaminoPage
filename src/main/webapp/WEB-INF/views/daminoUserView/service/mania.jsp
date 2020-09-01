<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">

<title>매니아 혜택- 다미노피자</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/as_is.css' />">

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
					<div class="location active">
						<a href="javascript:void(0);" id="myloc" onclick="gpsLsm(gps_yn);"></a>
					</div>

					<c:choose>
						<c:when test="${guest == 'guest' }">
							<!-- 비회원 로그인시 -->
							<div class="util-nav">
								guest 님&nbsp; <a href="login.do">회원가입</a><a href="logout.do">로그아웃</a> 
							</div>
						</c:when>
						<c:when test="${msg != 'login'}">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="login.do">회원가입</a>
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
		</header>


		<div id="container">
			<section id="content">
				<div class="sub-type mania">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">다미노 서비스</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a href="mania.do">다미노 서비스</a></li>
									<li><strong>매니아 혜택</strong></li>
								</ol>
							</div>
						</div>
						<article class="mania-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="mania.do">매니아 혜택</a></li>
										<li><a href="quickOrder.do">퀵오더</a></li>
										<li><a href="groupOrder.do">단체주문 서비스</a></li>
									</ul>
								</div>
							</div>
							<div class="tab-type4 col3">
								<ul class="btn_tab js_tab">
									<li class="active"><a href="#tab01">다미노매니아란? </a></li>
									<li class=""><a href="#tab02">다미노 매니아 등급별 혜택 </a></li>
								</ul>
							</div>
							<div id="tab01" class="tab-content active">
								<div class="new_mania">
									<div class="domino_pizza_tit">
										<span>DAMINO PIZZA</span> <strong>세계 배달 피자 리더인
											한국다미노피자</strong>
										<p>
											배달 피자 개념이 전무했던 1990년에 1호점 오금점 오픈을 시작으로 한국 시장에 진출한 이후 <br>지금까지
											피자 대중화를 선도하였습니다.
										</p>
										<div class="img_box">
											<img
												src="<c:url value='/resources/images/user/mania/visual_overview.jpg' />"
												alt="">
										</div>
										<p>
											지금까지 많은 사랑을 받아왔고 앞으로도 더 많은 사랑을 받을 브랜드이기에 그 성원을 고객들에게 보답하고자 <br>온라인
											전용 멤버십 제도인 다미노 매니아 프로그램을 도입하여 성공적으로 운영해 오고 있습니다.
										</p>
									</div>
								</div>
								<div class="new_mania_info">
									<div class="domino_pizza_tit">
										<span>SPECIAL</span> <strong>다미노 매니아 멤버십의 특별함 </strong>
									</div>
									<div class="mania_special_txt">
										<h2>첫째, 할인 혜택입니다.</h2>
										<p>
											매달 매니아 고객에게만 전달되는 등급별 20%, 30%, 35%, 최대 40%의 할인 혜택과 <br>매니아
											ROYAL, VIP 고객의 생일을 위한 50% 할인 쿠폰까지 푸짐한 할인 혜택이 주어집니다.
										</p>
										<h2>두 번째, 고객을 위한 편리한 서비스입니다.</h2>
										<p>
											주문한 피자가 어디쯤 오고 있는지 알 수 있는 GPS TRACKER, 주문한 피자를 배달하기 전 알려주는
											알림벨 서비스, <br>그리고 매장 방문하여 포장 후 이동하는 과정에서 고객 과실로 인해 훼손된
											피자를 교환해주는 피자 보증제도까지 <br>안전하고 편리한 서비스를 제공합니다.
										</p>
										<h2>셋째, 문화 혜택입니다.</h2>
										<p>보고 싶었던 핫 이슈 공연, 놓칠 수 없는 영화와 인기 스포츠 관람까지 다양한 문화 혜택도 다미노
											매니아만을 위해 제공되고 있습니다</p>
									</div>
								</div>
								<div class="new_mania_txt">
									<p>
										다미노피자는 고객님들의 아껴 주신 마음에 항상 감사하며 앞으로도 다미노 매니아는 <br>더 좋은 혜택,
										더 편리한 서비스, 더 다양한 혜택을 고객들에게 전달하고자 노력할 것 입니다.
									</p>
								</div>
							</div>
							<div id="tab02" class="tab-content">
								<div class="new_mania">
									<div class="img_box">
										<img
											src="<c:url value='/resources/images/user/mania/img_2-1.jpg'/>"
											alt=""> <img
											src="<c:url value='/resources/images/user/mania/img_2-2.jpg'/>"
											alt=""> <img
											src="<c:url value='/resources/images/user/mania/img_2-3.jpg'/>"
											alt=""> <img
											src="<c:url value='/resources/images/user/mania/img_2-4.jpg'/>"
											alt=""> <img
											src="<c:url value='/resources/images/user/mania/img_2-5.jpg'/>"
											alt="">
									</div>
									<div class="mania_coupon_btn">
										<a href="https://web.dominos.co.kr/mypage/myCoupon"
											class="btn"><span class="btn_txt">쿠폰 선물하러가기</span></a>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
			<div class="pop_toast" id="card_add" style="display: none;">
				<div class="bg"></div>
				<div class="pop_wrap">
					<div class="pop_content">
						<p>장바구니에 담았습니다.</p>
					</div>
				</div>
			</div>
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
							<p>03138 서울특별시 종구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현,
								정민균, 정민식, 김진혁</p>
							<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
							<p>문의 : admin@daminos.co.kr</p>
							<p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

							<p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 사이트(PC, 모바일, 앱)의
								일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
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
		</div>
	</div>
	<!-- //wrap -->
</body>

</html>
