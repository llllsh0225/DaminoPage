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
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">

<!--메인에는 sub.css 호출하지않음-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<!--//메인에는 sub.css 호출하지않음  -->

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
						<!--2020-03-17 추가(e)-->
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
									<li><strong>정보수정</strong></li>
								</ol>
							</div>
						</div>
						<article class="mypage-wrap mypage-grade mypage-info">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="/mypage/myLevel">매니아 등급</a></li>
										<li><a href="/mypage/myOrderList">주문내역</a></li>
										<li><a href="/mypage/myCoupon">쿠폰함</a></li>
										<li><a href="/mypage/qustionList">1:1문의</a></li>
										<li class="active"><a href="/member/userinfoConfirm">정보수정</a></li>
									</ul>
								</div>
							</div>
							<div class="info-wrap">
								<div class="user">본인여부 확인</div>
								<div class="text-type">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번
									확인합니다.</div>
							</div>
							<div class="myinfo-wrap">
								<div class="form">
									<dl>
										<dt>아이디</dt>
										<dd>userid</dd>
									</dl>
									<dl>
										<dt>비밀번호</dt>
										<dd>
											<div class="form-group2">
												<div class="form-item number">
													<form name="frm_popup" id="frm_popup" method="post">
														<input type="hidden" id="confirm_member"
															name="confirm_member" value=""> <input
															type="hidden" id="confirm_type" name="confirm_type"
															value="1"> <input type="hidden"
															id="certification_mode" name="certification_mode"
															value="pwd"> <input type="password"
															id="pop_passwd" name="pop_passwd"
															onkeydown="javascript:if(event.keyCode==13){confirm_memberProc(); return false;}">
														<a href="javascript:confirm_memberProc();"
															class="btn-type v4">확인</a>
													</form>
												</div>
												<div class="text-type4" style="display: none;"></div>
											</div>
										</dd>
									</dl>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>

		<!-- 제휴사 로그인 연동 -->
		<form id="frm_api_login" name="frm_api_login" target="_self"
			method="POST" action=""></form>
	</div>
	<!-- end wrap -->
</body>
</html>