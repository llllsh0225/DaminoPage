<%@page import="java.util.List"%>
<%@page import="com.damino.web.user.board.impl.NoticeBoardDAOImpl"%>
<%@page import="com.damino.web.user.board.NoticeBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>다미노 뉴스- 다미노피자</title>
<link rel="shortcut icon" href="https://newcdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/card_add.css' />">

<script type="text/javascript" src="<c:url value='/resources/js/user/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<!-- 더보기 슬라이드로 내려오는 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>

</head>
<body>
	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="main.do" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="location active">
						<a href="javascript:void(0);" id="myloc" onclick="gpsLsm(gps_yn);"></a>
					</div>

					<div class="util-nav">
						<a href="login.do">로그인</a> 
						<a href="login.do">회원가입</a>
					</div>
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
				<div class="sub-type notice">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">공지사항</h2>
							<div class="depth-area">
								<ol>
									<li><a href="#">홈</a></li>
									<li><a href="noticeList.do">공지사항</a></li>
									<li><strong>다미노뉴스</strong></li>
								</ol>
							</div>
						</div>
						<article class="notice-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="noticeList.do">다미노뉴스</a></li>
									</ul>
								</div>
							</div>
							<div class="notice-wrap">
								<form id="searchForm" name="searchForm"
									action="https://web.dominos.co.kr/bbs/newsList" method="post">
									<input type="hidden" id="type" name="type" value="N" /> <input
										type="hidden" id="pageNo" name="pageNo" value="1" />
									<div class="form-group srch-type">
										<div class="form-item">
											<div class="select-type2">
												<select id="search" name="search">
													<option value="subject">제목</option>
													<option value="content">내용</option>
													<option value="all">제목+내용</option>
												</select>
											</div>
										</div>
										<div class="form-item">
											<input type="text" id="conditionTemp" name="conditionTemp"
												placeholder=""> <input type="hidden" id="condition"
												name="condition" class="i_text" value="">
										</div>
										<div class="form-item">
											<button type="button" class="btn-search"
												onclick="fncSearch();">검색</button>
										</div>
									</div>
									<div class="table-type3">
										<p class="side">총 343건</p>
										<table>
											<caption>news</caption>
											<colgroup>
												<col style="width: 106px">
												<col>
												<col style="width: 333px">
												<col style="width: 110px">
											</colgroup>
											<thead>
												<tr>
													<th>번호</th>
													<th>제목</th>
													<th>등록일</th>
													<th>조회</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="board" items="${noticeBoardList }">
													<tr>
														<td>${board.seq }</td>
														<td><strong><a href="noticeDetail.do?seq=${board.seq}">[${board.flag }]${board.title}</a></strong></td>
														<td><fmt:formatDate value="${board.regDate }" pattern="yyyy-MM-dd" /></td>
														<td>${board.cnt }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div class="pagination">
										<a href='javascript:;' class='pager-first'>처음</a><a
											href='javascript:;' class='pager-prev'>이전</a>
										<ol>
											<li><strong>1</strong></li>
											<li><a href='javascript:;'
												onclick='javascript:paging(2); return false;'>2</a></li>
											<li><a href='javascript:;'
												onclick='javascript:paging(3); return false;'>3</a></li>
											<li><a href='javascript:;'
												onclick='javascript:paging(4); return false;'>4</a></li>
											<li><a href='javascript:;'
												onclick='javascript:paging(5); return false;'>5</a></li>
											<li><a href='javascript:;'
												onclick='javascript:paging(6); return false;'>6</a></li>
											<li><a href='javascript:;'
												onclick='javascript:paging(7); return false;'>7</a></li>
											<li><a href='javascript:;'
												onclick='javascript:paging(8); return false;'>8</a></li>
											<li><a href='javascript:;'
												onclick='javascript:paging(9); return false;'>9</a></li>
											<li><a href='javascript:;'
												onclick='javascript:paging(10); return false;'>10</a></li>
										</ol>
										<a href='javascript:;' class='pager-next'>다음</a><a
											href='javascript:;' class='pager-last'
											onclick='javascript:paging(35); return false;'>마지막</a>
									</div>
								</form>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>
		<!-- //container -->

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
</html>