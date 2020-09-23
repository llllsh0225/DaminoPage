<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "org.json.simple.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">

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
<script>

function presentCoupon(){
	var couponCode = $('#select_coupon').val(); // 선물할 쿠폰코드
	var name = $('#name').val(); // 쿠폰을 보낼 사람의 이름
	var phone = $('#tel').val(); // 쿠폰 보낼 핸드폰번호
	
	$.ajax({
		url : 'presentCoupon.do',
		type : 'post',
		contentType : "application/json; charset=UTF-8;",
		data : JSON.stringify({
			couponCode : couponCode,
			name : name,
			phone : phone,
		}),
		success : function(res){
			if(res == "success"){
				alert(name + "님께 쿠폰을 선물하였습니다.");
				location.reload();
			}else{
				alert("해당 수신자에게는 쿠폰 선물이 불가합니다.");
			}
		},
		error : function(err){
			alert("쿠폰 선물 시도 중 오류가 발생하였습니다. 잠시후 다시 시도해주세요.");
		}
	});
}
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
		<form name="f" id="f" method="get" action="/mypage/myCoupon">
			<input type="hidden" name="order_no" id="order_no" /> <input
				type="hidden" name="coupon_status" id="coupon_status" value="0" />
			<input type="hidden" name="mobile_yn" id="mobile_yn" value="N" /> <input
				type="hidden" name="pageNo" id="pageNo" value="1">
		</form>

		<!-- container -->
		<div id="container">
			<div id="content">
				<div class="sub-type mypage">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">나의정보</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a href="mylevel.do">나의정보</a></li>
									<li><strong>쿠폰함</strong></li>
								</ol>
							</div>
						</div>
						<div class="mypage-wrap mypage-grade mypage-coupon">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="mylevel.do">매니아 등급</a></li>
										<li><a href="myorderlist.do">주문내역</a></li>
										<li class="active"><a href="mycoupon.do">쿠폰함</a></li>
										<li><a href="myquestionlist.do">1:1문의</a></li>
										<li><a href="myuserinfoconfirm.do">정보수정</a></li>
									</ul>
								</div>
							</div>
							<div class="info-wrap">
								<div class="user">
									<span>${user.username}</span>님께서 보유하고 있는 할인쿠폰 내역입니다.
								</div>
								<div class="text-type">쿠폰을 사용하여 피자를 주문해보세요!</div>
								<a href="#" class="btn-type4-brd4" style='display: none;'>쿠폰</a>
							</div>
							<div class="table-type4">
								<table>
									<caption>나의 퀵 오더</caption>
									<colgroup>
										<col style="width: 50%">
										<col style="width: 50%">
									</colgroup>
									<thead>
										<tr>
											<th>쿠폰명</th>
											<th>유효기간</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="coupon" items="${myCouponList }">
											<tr>
												<td>${coupon.coupon_name }</td>
												<td><fmt:formatDate value="${coupon.regdate }"
														pattern="yyyy.MM.dd" /> ~ <fmt:formatDate
														value="${coupon.validity }" pattern="yyyy.MM.dd" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
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
							<div class="btn-wrap">
								<a href="goodslist.do" class="btn-type v3">피자 주문하기</a>
							</div>
							<div style="height:50px;"></div>
							<hr style="border:1.2px solid black;">
							<div style="height:23px;"></div>
					</div>
					<div class="gift-wrap">
						<div class="title-wrap">
							<div class="title-type2" style="margin-left:50px;">내 쿠폰 선물하기</div>
							<span style="float:right; color:gray;">위 미사용 쿠폰 중 선물할 내 쿠폰을 선택 후, 받으실 분의 이름 및 휴대전화번호를 입력해
								주세요.</span>
							<div style="height:20px;"></div>
							<hr style="color:gray;">
							<div style="height:50px;"></div>
						</div>
						<div class="deli-info form">
							<div class="form-group">
								<div class="form-item">
									
									<div class="title-type2" style="width:150px;">선물할 쿠폰 선택</div>
									<div style="display:block;">
										<select id="select_coupon" style="width:350px; margin-right: 10px">
											<c:forEach var="coupon" items="${myCouponList }">
												<option value="${coupon.coupon_code }">
												${coupon.coupon_name }(
												<fmt:formatDate value="${coupon.regdate }" pattern="yyyy.MM.dd"/> ~ 
												<fmt:formatDate value="${coupon.validity }" pattern="yyyy.MM.dd"/>
												)
												</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-item tel">
									<div class="title-type2" style="width:400px; margin-right:25px;">수신자 정보 입력</div>
									<input type="text" id="name" placeholder="이름" style="margin-right:10px;"> 
									<input type="text" id="tel" placeholder="휴대전화번호 ('-'없이 입력)" maxlength="11">
								</div>
								<div class="form-item">
									<a href="javascript:;" onclick="presentCoupon();"
										class="btn-type v4" style="width:100%; height:68%; text-align:center; font-size:16px;">쿠폰 선물</a>
								</div>
							</div>
						</div>
					</div>
					</div>
				</div>
		</div>
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
</html>