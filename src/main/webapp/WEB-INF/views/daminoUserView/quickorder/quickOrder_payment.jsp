<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>퀵 오더 설정- 다미노피자</title>
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/card_add.css' />">
	
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery1.11.1.js'/>" ></script>
	<!-- 메인페이지 슬라이드 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>" ></script>
	<!-- 더보기 슬라이드로 내려오는 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>
	
	<script type="text/javascript">
		window.onload = function(){
			var goodsName = $('#goodsName').val();
			var goodsNameArr = goodsName.split(",");
			
			var goodsPrice = $('#goodsPrice').val();
			var goodsPriceArr = goodsPrice.split(",");
			
			var goodsQty = $('#goodsQty').val();
			var goodsQtyArr = goodsQty.split(",");
			
			var pizzaNameArr = []; // 피자제품명을 담는 배열
			var toppingNameArr = []; // 토핑제품명을 담는 배열
			var etcNameArr = []; // 사이드, 음료&기타 제품명을 담는 배열
			var goodsArr = [];
			
			for(var i=0; i<goodsNameArr.length-1; i++){
				if(goodsNameArr[i].includes("<br>")){
					var pizzaMenu = goodsNameArr[i].split("<br>");
					pizzaNameArr[i] = pizzaMenu[0];
					goodsArr[i] = pizzaMenu[0];
					console.log(pizzaNameArr[i]);
					pizzaMenu.splice(0, 1);
					var toppingMenu = "";
					for(var j=0; j<pizzaMenu.length; j++){
						toppingMenu += pizzaMenu[j];
					}
					console.log(toppingMenu);
				}else{
					goodsArr[i] = goodsNameArr[i];
				}
			}
			
			if(goodsArr.length != 1){
				$('.goods_name').text(goodsArr[0] + " x " + goodsQty[0] + " 외 " + String(goodsArr.length - 1) + "건");
			}else{
				$('.goods_name').text(goodsArr[0]);
			}
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

					<c:choose>
						<c:when test="${msg != 'login' }">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="login.do">회원가입</a>
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

			<!-- main 1dep menu -->
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
			<!-- //main 1dep menu -->
		</header>
		<!-- //header -->

<div id="container"  ">
	<iframe id="inicisFrame" name="inicisFrame" title="시스템용" src="" style="display:none;width:0px;height:0px;"></iframe>
	<form id="orderFrm" name="orderFrm" action="" target="" method="post">
		<div id="hidden_info">
			<input type="hidden" id="goodsName" value="${goodsName }" />
			<input type="hidden" id="goodsPrice" value="${goodsPrice }" />
			<input type="hidden" id="goodsQty" value="${goodsQty }" />
		</div>
		
		<section id="content" >
			<div class="sub-type order">
				<div class="inner-box">
					<!-- 1depth 메뉴명 & 네비게이션 -->
					<div class="page-title-wrap">
	<h2 class="page-title">결제하기</h2>
	<div class="depth-area">
		<ol>
			<li><a href="/main">홈</a></li>
			<li><a href="/basket/detail">장바구니</a></li>
			<li><strong>결제하기</strong></li>
			</ol>
	</div>
</div>
<!-- //1depth 메뉴명 & 네비게이션 -->
				
					<article class="pay">
						<div class="step-wrap"> 
							<div class="title-wrap">
								<h3 class="title-type"><strong>수령인 정보</strong></h3>
							</div>
							<!-- 배달 -->
							<div class="deli-info">
									<div class="address">
										${defaultAddress.address }</div>
									<div class="store">
										<span>${defaultAddress.storename }</span>${defaultAddress.storephone }</div>
								</div>
							<!-- // 배달 -->
							
							<!-- 포장 -->
							<!-- // 포장 -->
							
							<div class="deli-info form">
								<dl class="chk-wrap">
									<dt></dt>
									<dd>
										<div class="form-group">
											<div class="form-item">
												<div class="chk-box v3">
													<input type="checkbox" name="order_type" id="recipient" onchange="recipientChange()" checked>
													<label class="checkbox" for="recipient" ></label>
													<label for="recipient">주문자와 동일</label>
												</div>
											</div>
											
											<!-- 선물하기 -->
											<div class="form-item  gift_msg_info gift_area" style="display:none;">
												<div class="chk-box v3 selected">
													<input type="checkbox" id="present_case" name="order_type" value="N" onchange="recipientChange()" >
													<label class="checkbox" for="present_case"></label>
													<label for="present_case">해당 주문을 선물하시겠습니까?</label>
												</div>
											</div>
											<!-- //선물하기 -->
											</div>
									</dd>
								</dl>
								
								<dl>
									<dl>
										<dt>이름</dt>
										<dd>
											<div class="form-item">
												<input type="text" id="customerName" name="customerName" value="" maxlength="30">
											</div>
										</dd>
									</dl>
								</dl>
								
								<dl>
									<dt>연락처</dt>
									<dd>
										<div class="form">
											<div class="form-group2 select-group">
												<div class="form-item">
													<div class="select-type2">
														<select id="tel1" name="tel1" title="휴대전화번호">
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
														</select>
													</div>
													<input type="text" id="tel2" name="tel2" maxlength="4" class="i_text" title="휴대전화번호">
													<input type="text" id="tel3" name="tel3" maxlength="4" class="i_text" title="휴대전화번호">
												</div>
											</div>
											
											<!-- 선물하기 -->
											<div class="form-item form-gift gift_msg_box gift_area"  style="display:none;">
												<input type="text" name="sms_msg" id="sms_msg" onkeyup="checkByte(this, 50)"  value="" placeholder="선물메시지입력창">
												<div class="guide-box3">선물메세지는 SMS로 전송됩니다.</div>
											</div>
											<!-- //선물하기 -->
											</div>
									</dd>
								</dl>
								<dl>
									<dt>요청사항</dt>
									<dd>
										<div class="form">
											<div class="form-item">
												<div class="select-type2">
													<select name="more_req_box" onChange ="directMessage()";>
														<option value="">요청사항을 선택하세요.</option>
														<option value="문 앞에 놓아 주세요.">문 앞에 놓아 주세요.</option>
														<option value="피클은 빼주세요.">피클은 빼주세요.</option>
														<option value="벨은 누르지 말아주세요.">벨은 누르지 말아주세요.</option>
														<option value="direct">직접 입력</option>
													</select>
												</div>
											</div>
											<!-- 직접 입력 -->
											<div class="form-item form-text">
												<input style="display:none;"  name="more_req" id="more_req" type="text" onkeyup="checkByte(this, 50)" placeholder="주문시 요청사항을 입력하세요. (최대 25자까지 입력가능)">
											</div>
										</div>
									</dd>
								</dl>
								
								<dl>
									<dt>비대면 안전배달</dt>
									<dd style="margin-top:1.3%;">
										<div class="form-item">
											<div class="chk-box v4" id="selectedSafe">
												<input type="checkbox" id="safe" name="safe" value="Y"/>
												<label class="checkbox" for="safe" ></label>
												<label> "미리결제" 이용 필수</label>
											</div>
										</div>
										<div class="guide-box3">배달 시 고객님의 문 앞에 피자를 놓은 후 고객님께 확인 연락(초인종 또는 전화) 드리는 서비스입니다.</div>
									</dd>
								</dl>
								</div>
						</div><!-- //step-wrap -->
						
						<!-- 주문내역 -->
						<div class="step-wrap">
							<div class="title-wrap">
								<div class="title-type"><strong>주문내역</strong></div>
							</div>
							<div class="order-step">
								<ul>
									<li>
										<div class="menu">
											<!-- 피자 명  -->
											<strong class="goods_name"></strong>
											<!-- //피자 명  -->
										</div>
										<div class="topping">
											<span style="display:none;" id="goods_name_brief">30 치즈&뉴욕 스트립 스테이크+포테이토 더블치즈엣지오리지널 M x1</span>
											
											<div class="item">
												<span>제품명&nbsp; x 제품수량</span>
												/&nbsp;<span>제품가격</span>원
												
												<!-- 토핑 -->
												<ul class="addition">
													<li>토핑이름 (토핑수량 X 피자수량)</li>
														
													</ul>
												<!-- //토핑 -->
											</div>
											</div>
									</li>
								</ul>
							</div>
						</div>
						<!-- //주문내역 -->
						
						<!-- 할인 적용 -->
						<div class="step-wrap"  id="dc_info">
						</div>
						<!-- //할인 적용 -->
						
						<!-- 도착 예정시간 -->
						<div class="step-wrap"  id="time_info">
						</div>
						<!-- //도착 예정시간 -->
						
						
						<!-- <div class="order_section order_sale" id="dc_info">
							<div class="tit_order">
								<strong>할인</strong>
							</div>
						</div> -->
			
						<!-- 결제방법 -->
						<div class="step-wrap" id="pay_info">
						</div>
						<!-- // 결제방법 -->
						
						<!-- 결제 금액, 퀵 오더로 설정, 결제 및 주문완료 -->
						<div class="step-wrap" id="final_pay_info">
						</div>
						<!-- // 결제 금액, 퀵 오더로 설정, 결제 및 주문완료 -->
						
						<!-- 주문하기 버튼 -->
						<div class="btn-wrap">
							<a href="javascript:;" id="doOrder" onclick="doOrder()"  class="btn-type">결제하기</a>
						</div>
						<!-- //주문하기 버튼 -->
					
					</article>
				</div><!-- //inner-box -->
			</div><!-- //sub-type order -->
		</section>
	</form>

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
			<a href="javascript:;" onclick="setBasketCnt();" class="btn_ico btn_close">닫기</a>
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
						<li><img src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards.png" alt="">
								<p>
									식품안전<br>경영시스템 인증
								</p></li>
							<li><img src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards2.png" alt="">
								<p>
									지식경제부<br>우수디자인 선정
								</p></li>
							<li><img
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards3.png"
								alt="">
								<p>
									고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
								</p></li>
							<li><img
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards4.png"
								alt="">
								<p>
									2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
								</p></li>
							<li><img
								src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards5.png" alt="">
								<p>
									2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
								</p></li>
							<li><img src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards6.png" alt="">
								<p>
									대학생 1000명이 선택한<br>2019 올해의 핫 브랜드 캠퍼스 잡앤조이 선정
								</p></li>
					</ul>
				</div>
			</div>
		</footer>
		<!-- //footer -->
</div><!-- //wrap -->

</html>
