<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="com.damino.web.user.board.impl.QnaBoardDAOImpl"%>
<%@page import="com.damino.web.user.board.QnaBoardVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's</title>

	
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
	
	<script type="text/javascript" src="<c:url value='/resources/js/jquery1.11.1.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>

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
									<li><a
										href="faqMain.do">자주하는
											질문</a></li>
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
							<li><a href="/main">홈</a></li>
							<li><a href="/mypage/myOrderList">나의 정보</a></li>
							<li><strong>1:1문의</strong></li>
						</ol>
					</div>
				</div>
				<article class="mypage-wrap mypage-grade mypage-counsil">
					<div class="menu-nav-wrap">
							<div class="menu-nav">
								<ul>
									<li><a href="/mypage/myLevel">매니아 등급</a></li>
									<li><a href="/mypage/myOrderList">주문내역</a></li>
									<li><a href="/mypage/myCoupon">쿠폰함</a></li>
									<li class="active"><a href="/mypage/qustionList">1:1문의</a></li>
									<li><a href="/member/userinfoConfirm">정보수정</a></li>
								</ul>
							</div>
						</div>
					<div class="info-wrap">
						<div class="user">
							<span>${user.username }</span>님께서 문의하신 내용입니다.
						</div>
						<div class="text-type">${user.username }님께서 문의하신 내용은 <strong>총 ${count }건</strong> 입니다.</div>
					</div>
				
				<form id="qnaForm" name="qnaForm" method="post">
					<div class="myinfo-wrap">
					 <input type="hidden" name="seq" id="seq" value="${qnaboard.seq }" />
	                    <div class="form">
	                        <dl class="cs">
										<dt>아이디</dt>
										<dd>${qnaboard.writerId}</dd>
										<dt>연락처</dt>
										<dd>${qnaboard.phone}</dd>
										<dt>이메일</dt>
										<dd>${qnaboard.email}</dd>
										<dt>문의유형</dt>
										<dd>${qnaboard.qnaType }</dd>
										<dt>매장선택</dt>
										<dd>${qnaboard.storeRegion }, ${qnaboard.storeName }</dd>
										<dt>제목</dt>
										<dd>${qnaboard.title }</dd>
							</dl>
							<dl>
								<dt class="top">문의내용</dt>	
									
									<dd><div class="form-item">
                                        <textarea name="" id="content" cols="30" rows="10" readonly="">${qnaboard.content }</textarea>
                                    </div>
                                    </dd>
							</dl>
	                      
                            <dl>
                                <dt class="top">답변</dt>
                                <dd>
                                    <div class="form-item"> 
                                        <textarea name="" id="content2" cols="30" rows="10" readonly="">${qnaboard.replyContent }</textarea>
                                    </div>
                                </dd>
                            </dl>
	                    </div>
	                    <div class="cs-guide">
                            <p class="text-type">등록하신 내용 및 답변은 회원정보상의 이메일로도 발송이 됩니다. 상담원과 통화를 원하시면 아래 번호로 전화주시기 바랍니다.</p>
                            <p class="title-type6">고객만족 센터<em>080-860-3082</em></p>
                        </div>
                        <div class="btn-wrap">
                            <a href="javascript:doDel(${qnaboard.seq });" class="btn-type v5">삭제</a>
                            <a href="javascript:goList();" class="btn-type v4">목록</a>
                            <p>
                        </p></div>
	                </div>
	               </form>
				</article>
			</div>
		</div>
	</section>
	
</div>
<script type="text/javascript">
//목록
function goList(){
	location.href ='myquestionlist.do';
}

// 삭제
function doDel(idx){
	if(confirm("문의하신 사항을 삭제하시겠습니까?")){
		document.qnaForm.action='qnaDeleteBoard.do';
	}
	document.qnaForm.submit();
}
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
					<li><a href="/contents/law">이용약관</a></li>
					<li class="on"><a href="/contents/privacy">개인정보처리방침</a></li>
					<li><a href="/bbs/faqList?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
					<li><a href="/company/jobList?type=R">인재채용</a></li>
					<li><a href="/company/contents/chainstore1">가맹점모집</a></li>
					<li><a href="/order/groupOrder">단체주문</a></li>
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
					<div class="select-type language">
						<select id="select-type">
							<option value="/main?locale=ko">KOR</option>
							<option value="/main?locale=en">ENG</option>
						</select>
					</div>
	
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
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards.png" alt="">
						<p>식품안전<br>경영시스템 인증</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards2.png" alt="">
						<p>지식경제부<br>우수디자인 선정</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards3.png" alt="">
						<p>고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards4.png" alt="">
						<p>2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards5.png" alt="">
						<p>2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards6.png" alt="">
						<p>대학생 1000명이 선택한<br>2019 올해의 핫 브랜드 캠퍼스 잡앤조이 선정</p>
					</li>
				</ul>
			</div>
		</div>
	</footer>
	<!-- //footer -->
</div><!-- //wrap -->

</body>
</html>