<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta charset="utf-8">
<title>E-쿠폰- 다미노피자</title>

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">

<script type="text/javascript" src="<c:url value='/resources/js/user/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<!-- 더보기 슬라이드로 내려오는 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>
<script>

function checkLogin(){
	var userid = '<%=session.getAttribute("userid")%>';
	
	// ajax로 넘겨서 로그인 확인하기..
	return;
}

function registEcoupon(){
	var userid = '<%=session.getAttribute("userid")%>';
	var couponCode = $('#couponCode').val();
	
	$.ajax({
		url : 'registEcoupon.do',
		type : 'post',
		contentType : "application/json; charset=UTF-8;",
		data : JSON.stringify({
			userid : userid,
			couponCode : couponCode,
		}),
		success : function(res){
			if(res == 'success'){
				location.href='ecouponResult.do'; // 쿠폰등록 성공 -> 결과페이지로 이동
			}else if(res == 'fail'){
				alert('등록불가한 쿠폰입니다. 쿠폰코드를 다시 확인해주세요.');
				location.reload();
			}
		},
		error : function(err){
			alert('e-쿠폰 등록 중 오류가 발생하였습니다. 다시 시도해주세요.');
		}
	})
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

					<div class="location active">
						<a href="javascript:void(0);" id="myloc" onclick="gpsLsm(gps_yn);"></a>
					</div>

					<c:choose>
						<c:when test="${sessionScope.username eq null}">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> 
								<a href="login.do">회원가입</a>
							</div>
						</c:when>
						<c:when test="${msg=='logout' }">
							<!-- 비로그인 : 추후에 Spring Security로 비로그인 유저는 아예 접근 불가 하도록 처리 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> 
								<a href="login.do">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인 -->
							<div class="util-nav">
								${user.username } 님  &nbsp;
								<a href="logout.do">로그아웃</a>
								<a href="mylevel.do">나의정보</a>
								<a href="#" class="btn-cart"> <i class="ico-cart"></i> </a>
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
		<div id="container">
			<section id="content">
				<input type="hidden" name="p_idx" id="p_idx"> <input
					type="hidden" name="goods_code" id="goods_code"> <input
					type="hidden" name="dc_info3" id="dc_info3"> <input
					type="hidden" name="mobileNo" id="mobileNo">
				<div class="sub-type order">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">e-쿠폰</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">HOME</a></li>
									<li><strong>e-쿠폰</strong></li>
								</ol>
							</div>
						</div>
						<article class="e-coupon">
							<div class="title-wrap-center">
								<h3 class="title-type5">쿠폰번호를 입력하세요.</h3>
							</div>
							<div class="search-form">
								<input type="text" name="couponCode" placeholder="쿠폰번호를 입력하세요."
									id="couponCode" maxlength="16" onClick="checkLogin();">
								<Button class="btn-search" onClick="registEcoupon();">검색</Button>
							</div>

							<div class="e-coupon-result" id="product" style="display: none">
								<div class="title-wrap">
									<div class="title-type3">제품확인하기</div>
								</div>
								<div class="prd-img">
									<img id="goods_img"
										src="https://cdn.dominos.co.kr/admin/upload/ecoupon/defaul.jpg"
										onerror="this.src='https://cdn.dominos.co.kr/admin/upload/ecoupon/defaul.jpg'"
										alt="쇼핑몰상품이미지">
								</div>
								<div class="prd-cont">
									<div class="subject">
										<strong id="goods_name"></strong>
									</div>
									<ul class="list-text-v3">
										<li>쿠폰유효기간 : 구입일로부터 60일 이내 (쿠폰별 상이할 수 있음)</li>
										<li>e-쿠폰은 주문 취소 후 바로 재사용이 불가하며, 쿠폰 복구에 최소 30분~1시간이 소요됩니다.<br />
											즉각적인 쿠폰 재사용 불가에 대해 고객님의 많은 양해 부탁드립니다.
										</li>
									</ul>
									<div class="btn-wrap">
										<a href="javascript:addGDE();" class="btn-type v3">주문하기</a>
									</div>
								</div>
							</div>

							<div class="info-wrap">
								<div class="title-wrap">
									<div class="title-type2">e-쿠폰 이용안내</div>
								</div>
								<div class="cont-wrap">
									<ul class="list-text-v3">
										<li>e-쿠폰은 온라인 주문 시 사용할 수 있습니다.<br>(온라인 회원, 비회원 모두 사용
											가능)
										</li>
										<li>e-쿠폰 이용 시 해당 메뉴 외 메뉴 구성 변경이 불가하며, <em>추가 메뉴를 주문할
												수 없습니다.</em></li>
										<li>e-쿠폰 이용 시 여타 할인 및 프로모션 메뉴(반값 사이드디시)와 함께 이용할 수 없습니다.</li>
										<li>e-쿠폰은 유효기간 내에만 사용할 수 있습니다.</li>
										<li>1회 주문 시 e-쿠폰은 4개까지 사용이 가능합니다.</li>
										<li>일부 특수 매장(알펜시아점, 대명비발디파크점, 휘닉스파크점, 잠실야구장점, 롯데월드점)에서
											사용할 수 없습니다.</li>
									</ul>
								</div>
							</div>
							<div class="info-wrap">
								<div class="title-wrap">
									<div class="title-type2">단종메뉴 안내</div>
								</div>
								<div class="cont-wrap">
									<ul class="list-text-v3">
										<li><em>판매 종료된 상품은 다미노피자 본사 및 매장이 아닌 구매처를 통하여 환불해주시기
												바랍니다.</em></li>
										<li>판매 종료 상품 : 와규 앤 비스테카, 더블크러스트 치즈멜팅, 슈퍼시드 앤 스테이크, 슈림푸스,
											꽃게온더피자, 브레이즈드 포크, 킹프론 씨푸드, 크리스피치킨텐더(사이드디시 세트 구성), 치즈케이크 롤,
											7치즈 앤 그릴드 비프, 알로하 하와이안, 콰트로 치즈퐁듀, 글램핑 바비큐, 불고기피자</li>
									</ul>
								</div>
							</div>
						</article>
					</div>
				</div>

			</section>
		</div>
		<!-- //container -->

		<div class="pop-layer type2" id="pop-coupon-error">
			<div class="dim"></div>
			<div class="pop-wrap">
				<div class="pop-title-wrap">
					<h2 class="pop-title">인터넷 쇼핑몰 선택</h2>
				</div>
				<div class="pop-content">
					<p class="error-title">쿠폰번호 검색에 실패했습니다. 쿠폰 발행처를 선택해주세요.</p>
					<div class="coupon-box">
						<h3 class="title-type2">모바일 쿠폰</h3>
						<div class="form v1">
							<div class="chk-box selected">
								<input type="radio" id="shop1" name="shop" checked
									onclick="setCoupon('108')"> <label class="checkbox"
									for="shop1"></label> <label for="shop1">기프티콘</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop2" name="shop"
									onclick="setCoupon('44')"> <label class="checkbox"
									for="shop2"></label> <label for="shop2">기프티쇼</label>
							</div>
						</div>
					</div>
					<div class="coupon-box">
						<h3 class="title-type2">제휴몰</h3>
						<div class="form v2">
							<div class="chk-box">
								<input type="radio" id="shop3" name="shop"
									onclick="setCoupon('44')"> <label class="checkbox"
									for="shop3"></label> <label for="shop3">INUMBER</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop4" name="shop"
									onclick="setCoupon('44')"> <label class="checkbox"
									for="shop4"></label> <label for="shop4">STARCON</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop5" name="shop"
									onclick="setCoupon('44')"> <label class="checkbox"
									for="shop5"></label> <label for="shop5">기타제휴몰</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop6" name="shop"
									onclick="setCoupon('88')"> <label class="checkbox"
									for="shop6"></label> <label for="shop6">GIFTPOP</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop7" name="shop"
									onclick="setCoupon('88')"> <label class="checkbox"
									for="shop7"></label> <label for="shop7">엠트웰브</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop8" name="shop"
									onclick="setCoupon('88')"> <label class="checkbox"
									for="shop8"></label> <label for="shop8">G9</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop9" name="shop"
									onclick="setCoupon('109')"> <label class="checkbox"
									for="shop9"></label> <label for="shop9">초콜릿</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop10" name="shop"
									onclick="setCoupon('88')"> <label class="checkbox"
									for="shop10"></label> <label for="shop10">TMON</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop11" name="shop"
									onclick="setCoupon('44')"> <label class="checkbox"
									for="shop11"></label> <label for="shop11">KAKAO</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop12" name="shop"
									onclick="setCoupon('109')"> <label class="checkbox"
									for="shop12"></label> <label for="shop12">GS SHOP</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop13" name="shop"
									onclick="setCoupon('1278')"> <label class="checkbox"
									for="shop13"></label> <label for="shop13">삼성페이</label>
							</div>
							<div class="chk-box">
								<input type="radio" id="shop14" name="shop"
									onclick="setCoupon('44')"> <label class="checkbox"
									for="shop14"></label> <label for="shop14">COUPANG</label>
							</div>
						</div>
					</div>

				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!-- 초콜릿 쿠폰 팝업(s) -->
		<div class="pop-layer" id="pop-chocolate">
			<div class="dim"></div>
			<div class="pop-wrap">
				<div class="pop-title-wrap">
					<h2 class="pop-title v2">초콜릿 쿠폰</h2>
				</div>
				<div class="pop-content">
					<div class="form">
						<div class="form-group2">
							<div class="form-item number">
								<input type="text" id="lastTel" placeholder="휴대전화번호 뒷 4자리">
								<a href="#" class="btn-type v4" id="goChocho">검색</a>
							</div>
						</div>
					</div>
					<ul class="list-text-v2">
						<li>초콜릿 쿠폰을 본인이 구매해 사용하실 경우, 본인 휴대전화 번호 뒷 4자리를 입력해주세요.</li>
						<li>초콜릿 쿠폰을 선물 받으셨을 경우, 선물 받으신 분의 휴대전화 번호 뒷 4자리를 입력해주세요.</li>
					</ul>
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!-- //초콜릿 쿠폰 팝업(e) -->

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
