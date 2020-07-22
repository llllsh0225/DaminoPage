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
						<a href="javascript:void(0);" class="lang"> </a>
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
									<span>OOO</span>님께서 문의하신 내용입니다.
								</div>
								<div class="text-type">
									OOO님께서 문의하신 내용은 <strong>총 0건</strong> 입니다.
								</div>
							</div>
							<div class="counsil-wrap">
								<div class="table-type4">
									<table>
										<caption>피자 영양성분</caption>
										<colgroup>
											<col style="width: 140px">
											<col>
											<col style="width: 180px">
											<col style="width: 180px">
										</colgroup>
										<thead>
											<tr>
												<th>번호</th>
												<th>제목</th>
												<th>등록일</th>
												<th>처리상태</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="4">문의하신 내용이 없습니다.</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="pager-wrap">
									<div class="pager-inner"></div>
								</div>
								<div class="btn-wrap">
									<a href="javascript:UI.layerPopUp({selId:'#pop-write'});"
										class="btn-type v4">문의하기</a>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>

		<!-- 문의하기 -->
		<form name="q" id="q" method="post" action="/mypage/qustionProc">
			<div class="pop-layer" id="pop-write">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title v2">문의하기</h2>
					</div>
					<div class="pop-content">
						<div class="guide-box3">주문 취소 / 변경과 같은 긴급한 요청은 매장으로 연락
							부탁드립니다.</div>
						<div class="step-wrap">
							<dl>
								<dt>아이디</dt>
								<dd>llllsh0225</dd>
							</dl>
							<dl>
								<dt>연락처</dt>
								<dd>010-9361-3740</dd>
							</dl>
							<dl>
								<dt>이메일</dt>
								<dd>romantico_u@naver.com</dd>
							</dl>
						</div>
						<div class="step-wrap">
							<div class="form">
								<dl>
									<dt>문의유형</dt>
									<dd>
										<div class="form-item">
											<div class="select-type2">
												<select id="sel" name="type_div1">
													<option value="">선택</option>
													<option value="제품관련">제품관련</option>
													<option value="배달서비스 관련">배달서비스 관련</option>
													<option value="직원 서비스 관련">직원 서비스 관련</option>
													<option value="콜센타 관련">콜센타 관련</option>
													<option value="칭찬">칭찬</option>
													<option value="제안">제안</option>
													<option value="단순문의">단순문의</option>
													<option value="기타">기타</option>
												</select>
											</div>
										</div>
									</dd>
								</dl>
								<dl>
									<dt>매장선택</dt>
									<dd class="form-group">
										<div class="form-item">
											<div class="select-type2">
												<select id="sel2" name="branch_region"
													onChange="changeBranch($('#sel2 option:selected').val());">
													<option>지역</option>
													<option value="서울">서울</option>
													<!-- 지역 서울만 -->
												</select>
											</div>
										</div>
										<div class="form-item">
											<div class="select-type2">
												<select id="sel3" name="branch_code">
													<option>매장 선택</option>
													<option>셀렉트박스2</option>
												</select>
											</div>
										</div>
									</dd>
								</dl>
								<dl>
									<dt>제목</dt>
									<dd>
										<div class="form-item">
											<input type="text" id="subject" name="subject" />
										</div>
									</dd>
								</dl>
								<dl>
									<dt class="top">문의내용</dt>
									<dd>
										<div class="form-item">
											<textarea name="content" id="content" cols="30" rows="10"></textarea>
										</div>
									</dd>
								</dl>
							</div>
						</div>
						<div class="cs-guide">
							<p>
								등록하신 내용 및 답변은 회원정보상의 이메일로도 발송이 됩니다.<br />상담원과 통화를 원하시면 아래 번호로
								전화주시기 바랍니다.
							</p>
							<p>
								고객만족 센터 : <span>080-860-3082</span>
							</p>
							<div class="btn-wrap">
								<a href="javascript:doReset();" class="btn-type v5">다시입력</a> <a
									href="javascript:proc();" class="btn-type v4">문의하기</a>
							</div>
						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
		</form>
		<!--//문의하기 -->

		<form name="f" id="f" method="get" action="/mypage/qustionList">
			<input type="hidden" name="idx" id="idx" /> <input type="hidden"
				name="no" id="no" /> <input type="hidden" name="pageNo" id="pageNo"
				value="1">
		</form>

		<script type="text/javascript">
			_TRK_PI = "WP_24_4";
			_TRK_CP = "나의 정보>1:1문의";
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
				<!-- iframe src="100_cart_pop_frame.html" width="1000" height="832" frameborder="0"></iframe><!-- 2016-10-05//아이프레임대체 -->
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
		<!-- //footer -->
	</div>
	<!-- //wrap -->


</body>
</html>