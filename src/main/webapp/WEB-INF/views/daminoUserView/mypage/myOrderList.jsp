<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
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
	$(document).ready(function(){
		$('.btn-close').click(function(){ // 제품 상세보기 pop-layer 숨기기
			$('.pop-layer').hide();
		});
		
	});
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
<style type="text/css">
	#qna_list_num {list-style:none; text-align:center; padding:15px; margin:20px;}
</style>
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
									<li><a
										href="faqMain.do">자주하는
											질문</a></li>
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
									<li><a href="main.do">홈</a></li>
									<li><a href="myorderlist.do">나의 정보</a></li>
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
										<li><a href="myuserinfoconfirm.do">정보수정</a></li>
									</ul>
								</div>
							</div>
							<div class="info-wrap">
								<div class="user">
									<span>${sessionScope.username }</span>님이 주문하신 내역입니다.
									
								</div>
								<div class="text-type">주문을 취소하시려면 해당 매장으로 전화하셔야 합니다.</div>
								<a href="javascript:UI.layerPopUp({selId:'#pop-order-info'});"
									class="btn-type4-brd4">이용안내</a>
							</div>
							<div class="tab-type6">
								<ul>
									<li class="active"><a href="myorderlist.do">피자 주문</a></li>
								</ul>
							</div>
							<div class="order-list">
								<ul>
									<c:forEach var="myorderlist" items="${myOrderList }">
										<li>
											<div class="order-top">
												<span class="type">${myorderlist.take }</span> 
												<span class="date"> 
													<span class="tit">주문일시</span><fmt:formatDate value="${myorderlist.orderdate }" pattern="yyyy-MM-dd HH:mm:ss" />
												</span> 
												<span class="num"> 
													<span class="tit">주문번호</span>${myorderlist.orderseq }
												</span>
												<div class="btn-wrap">
												</div>
											</div>
											<div class="order-center">
												<div class="state od-box">
													<strong>${myorderlist.status }</strong>
													<div class="shop">${myorderlist.store }&nbsp;</div>
												</div>
												<div class="info od-box">
													<a href="#">
														<div class="menu">${myorderlist.menus }&nbsp;
															<fmt:formatNumber value="${myorderlist.price }" pattern="#,###,###" />원
														</div>
													</a>
												</div>
												<form name="orderView" method="post">
													<div class="btn-detail od-box">
														<a href="orderStatus.do?orderseq=${myorderlist.orderseq }" class="detail">상세보기</a>
													</div>
												</form>
											</div>
										</li>
									</c:forEach>
								</ul>
								<div id="qna_list_num">
									<ul>
										<c:if test="${pageMaker.prev}">
											<a href="myorderlist.do${pageMaker.makeQuery(pageMaker.startPage - 1)}">[이전]</a>
										</c:if>
										<c:forEach var="i" begin="${pageMaker.startPage}" end="${pageMaker.endPage }">
										<c:if test="${pageMaker.startPage eq 0}">
											<a href="myorderlist.do${pageMaker.makeQuery(i)}">[${i+1}]</a>
										</c:if>
										<c:if test="${pageMaker.startPage ne 0}">
											<a href="myorderlist.do${pageMaker.makeQuery(i)}">[${i}]</a>
										</c:if>
										</c:forEach>
										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<a href="myorderlist.do${pageMaker.makeQuery(pageMaker.endPage + 1)}">[다음]</a>
										</c:if>
									</ul>
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
			<div class="pop-wrap" style="top:0px; left:30%;">
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
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!--//팝업-주문내역 이용안내 -->
		<form name="f" id="f" method="get" action="myorderlist.do">
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