<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<form name="f" id="f" method="get" action="/mypage/myCoupon">
			<input type="hidden" name="order_no" id="order_no" /> <input
				type="hidden" name="coupon_status" id="coupon_status" value="0" />
			<input type="hidden" name="mobile_yn" id="mobile_yn" value="N" /> <input
				type="hidden" name="pageNo" id="pageNo" value="1">
		</form>

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
									<li><a href="/mypage/myOrderList">나의정보</a></li>
									<li><strong>쿠폰함</strong></li>
								</ol>
							</div>
						</div>
						<article class="mypage-wrap mypage-grade mypage-coupon">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="/mypage/myLevel">매니아 등급</a></li>
										<li><a href="/mypage/myOrderList">주문내역</a></li>
										<li class="active"><a href="/mypage/myCoupon">쿠폰함</a></li>
										<li><a href="/mypage/qustionList">1:1문의</a></li>
										<li><a href="/member/userinfoConfirm">정보수정</a></li>
									</ul>
								</div>
							</div>
							<div class="info-wrap">
								<div class="user">
									<span>OOO</span>님께서 보유하고 있는 할인쿠폰 내역입니다.
								</div>
								<div class="text-type">쿠폰을 사용하여 피자를 주문해보세요!</div>
								<a href="/mypage/myCrewCoupon" class="btn-type4-brd4"
									style='display: none;'>Crew 쿠폰</a>
							</div>
							<div class="coupon-wrap">
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
											<tr>
												<td>[마이키친] REGULAR 배달 20% 할인</td>
												<td>2020.07.07 ~ 2020.07.31</td>
											</tr>
											<tr>
												<td>[마이키친] REGULAR 배달 20% 할인</td>
												<td>2020.07.07 ~ 2020.07.31</td>
											</tr>
											<tr>
												<td>기존 회원 방문40% 할인 쿠폰</td>
												<td>2020.07.10 ~ 2020.07.25</td>
											</tr>
											<tr>
												<td>프리미엄 배달 25% 할인</td>
												<td>2020.07.03 ~ 2020.07.30</td>
											</tr>
											<tr>
												<td>프리미엄 포장 35% 할인</td>
												<td>2020.07.03 ~ 2020.07.30</td>
											</tr>
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
									<a href="/goods/list?dsp_ctgr=C0101" class="btn-type v3">피자
										주문하기</a>
								</div>
							</div>
							<div class="gift-wrap">
								<div class="title-wrap">
									<div class="title-type2">내 쿠폰 선물하기</div>
									<span>위 미사용 쿠폰 중 선물할 내 쿠폰을 선택 후, 받으실 분의 이름 및 휴대전화번호를 입력해
										주세요.</span>
								</div>
								<div class="deli-info form">
									<div class="form-group">
										<div class="form-item">
											<div class="title-type2">선물할 쿠폰 선택</div>
											<div class="select-type2">
												<select id="select_cupn">
													<option value="623837817" data-code="MK_R20"
														data-date="2020.07.07 ~ 2020.07.31">[마이키친]
														REGULAR 배달 20% 할인</option>
													<option value="623837818" data-code="MK_R20"
														data-date="2020.07.07 ~ 2020.07.31">[마이키친]
														REGULAR 배달 20% 할인</option>
													<option value="624875899" data-code="Event Coupon"
														data-date="2020.07.10 ~ 2020.07.25">기존 회원 방문40%
														할인 쿠폰</option>
													<option value="617929877" data-code="MMS25-NEW"
														data-date="2020.07.03 ~ 2020.07.30">프리미엄 배달 25%
														할인</option>
													<option value="623019789" data-code="MMS35-NEW"
														data-date="2020.07.03 ~ 2020.07.30">프리미엄 포장 35%
														할인</option>
												</select>
											</div>
										</div>
										<div class="form-item tel">
											<div class="title-type2">수신자 정보 입력</div>
											<input type="text" id="name" placeholder="이름"> <input
												type="text" id="tel" placeholder="휴대전화번호" maxlength="11"
												onkeyup="checkNum($(this), '숫자만 입력해주세요.');">
										</div>
										<div class="form-item">
											<a href="javascript:;" onclick="userAdd(); return false;"
												class="btn-type v4">수신자 추가하기</a>
										</div>
									</div>
								</div>
								<div class="table-type4">
									<form name="f2" id="f2">
										<table>
											<caption>나의 퀵 오더</caption>
											<colgroup>
												<col style="width: 50%">
												<col style="width: 50%">
											</colgroup>
											<thead>
												<tr>
													<th>선물할 쿠폰</th>
													<th>수신자</th>
												</tr>
											</thead>
											<tbody id="cupn_list">
												<tr class="none">
													<td colspan="2">쿠폰을 선물해보세요.</td>
												</tr>
											</tbody>
										</table>
									</form>
									<div class="gift-btn-wrap">
										<span> 선물할 내 쿠폰 수 <strong id="total_cnt">0</strong> 개
										</span> <a href="javascript:sendGift();" class="btn-type v3">선물하시겠습니까?</a>
									</div>
								</div>
								<div class="list-text-v1">
									<dl>
										<dt>* SMS 발송문구 예시</dt>
										<dd>
											<ul>
												<li>[다미노 Crew쿠폰] 피자 50% 할인 쿠폰<br> /보내는 사람/ 님이 / 받는
													사람 / 님께<br> 다미노 Crew쿠폰을 선물했습니다.
												</li>
											</ul>
											<br /> [사용방법]
											<ul>
												<li>1. 다미노피자 온라인 회원 가입 후 방문포장 주문 선택</li>
												<li>2. 제품 선택(피자 1판 또는 사이드디시 1개 / 함께 주문 불가) 후 할인 선택 시
													&lt;쿠폰 코드 입력&gt; 에 아래 코드 입력<br /> 쿠폰코드 : /발송 시 자동 추가/
												</li>
											</ul>
											[유의사항]
											<ul>
												<li>- 본 쿠폰의 유효기간은 /유효기간/까지 입니다.</li>
												<li>- 피자 주문 시, 쿠폰에 따른 피자 구매 금액을 할인해 드립니다. (SET 메뉴 주문
													시에는 제외)</li>
											</ul>
										</dd>
									</dl>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>
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
	</div>
	<!-- //wrap -->
</body>
</html>