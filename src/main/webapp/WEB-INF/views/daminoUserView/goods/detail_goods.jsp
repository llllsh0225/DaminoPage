<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta name="title" content="다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's" />
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
	window.onload = function() {
		//쉼표로 저장된 리스트 split으로 자르기
		var splitDoughCode = $("#dough_db").val().split(",");
		
		//name=dough인 checkbox 정보 var에 저장
		var chkBox = document.getElementsByName('dough');
		//checkbox 길이 확인
		var count = chkBox.length;
		console.log('라디오버튼 갯수' , count);
		
		 for(var i=0; i<splitDoughCode.length; i++){
			console.log(splitDoughCode[i]);
			 if(splitDoughCode[i] == chkBox[i]){
				 chkBox[j].checked = true;
			 }
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

					<div class="location active">
						<a href="javascript:void(0);" id="myloc" onclick="gpsLsm(gps_yn);"></a>
					</div>

					<div class="util-nav">
						<a href="login.do">로그인</a> <a href="login.do">회원가입</a>
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
		<script>
			// 상품 슬라이드

			//전체보기

			// 트래킹

			// 토핑 가져오
			//피자 코드 만들기
			//토핑 코드 만들기
			//사이드 코드 만들기
			//음료 코드 만들기
		</script>

		<!-- container -->
		<div id="container">
			<input type="hidden" class="options" id="RPZ161DL"
				data-ctgrnm="더블 크러스트 " data-options="L:" data-gubun="102"
				data-price="34900" data-pricecomma="34,900" /> <input type="hidden"
				class="options" id="RPZ161DM" data-ctgrnm="더블 크러스트 "
				data-options="M:" data-gubun="102" data-price="29000"
				data-pricecomma="29,000" />
			<section id="content">
				<div class="sub-type menu">
					<div class="">
						<!-- inner-box -->
						<!-- 1depth 메뉴명 & 네비게이션 -->
						<!-- //1depth 메뉴명 & 네비게이션 -->

						<!-- 추후 공통화 예정 -->
						<div class="page-title-wrap inner-box">
							<h2 class="page-title">메뉴</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a href="goodslist.do">메뉴</a></li>
									<li><strong>${goodsDetail.p_name}</strong></li>
								</ol>
							</div>
						</div>

						<article class="menu-list-area menu-detail-area">
							<!-- menu-list -->
							<div class="inner-box">
								<div class="menu-nav-wrap">
									<div class="menu-nav">
										<ul>
											<li class="active"><a href="goodslist.do">피자</a></li>
											<li><a href="#">사이드디시</a></li>
											<li><a href="#">음료&기타</a></li>
										</ul>
									</div>
									<div class="sch-box">
										<span>인기순</span>
										<div class="sch-slider"></div>
										<div class="sch-slider-nav"></div>
										<a href="javascript:;" class="btn-open"> <span
											class="hidden">열기</span><i></i>
										</a>
									</div>
								</div>
								<script>
								<!-- 피자 제한 알고리즈 -->
									
								</script>
							</div>
							<!-- //menu-list -->

							<div class="menu-info inner-box">
								<div class="img-wrap">
									<div class="view-box">
										<!-- 대표 이미지 슬라이드 -->
										<div class="menu-slider-view2">
											<div>
												<img
													src="<c:url value= '/resources/images/admin/goods/${goodsDetail.p_image}' />" />
											</div>
										</div>
										<div class="menu-slider-viewdouble" style="display: none;"></div>

										<!-- //대표 이미지 슬라이드 -->
										<a
											href="javascript:getDetailSlide(${goodsDetail.p_code},${goodsDetail.p_name});"
											class="btn-detail"> <i class="ico-sch2"></i> <span
											class="hidden">상세버튼</span>
										</a>
									</div>
									<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.</div>
									<div class="guide-box2">원산지 정보는 사진 우측 하단 돋보기 메뉴를 통해 확인
										가능합니다.</div>
								</div>
								<div class="detail-wrap">
									<div class="menu-box">
										<div class="label-box"></div>
										<div class="title-box">
											<h3 class="title pizza">${goodsDetail.p_name}</h3>

											<div class="hashtag">
												<span>#주문 시 사이드디시 반값</span> <span>#세상에 없는 바삭, 고소한 맛</span>
											</div>
										</div>

										<div class="btn-wrap2">
											<a href="#" class="btn-type-left v2">영양성분 및 알레르기 유발성분</a>
										</div>
									</div>

									<!-- 주문 옵션 선택 -->
									<div class="select-box">
										<div class="step-wrap">
											<div class="title-wrap">
												<div class="title-type2">사이즈 선택</div>
											</div>
											<div class="size-box">
												<!-- checkbox 활성화 일 경우 -->
												<div class="chk-box2 selected">
													<input type="radio" id="size1" name="size" value="L"
														checked onclick="addToppingCheck()" /> <label
														class="checkbox" for="size1"></label> <label for="size1">L
														<fmt:formatNumber value="${goodsDetail.p_price_l}"
															pattern="#,###" />원
														</p>
													</label>
												</div>
												<!-- //checkbox 활성화 일 경우 -->
												<div class="chk-box2">
													<input type="radio" id="size2" name="size" value="M"
														onclick="addToppingCheck()" /> <label class="checkbox"
														for="size2"></label> <label for="size2">M <fmt:formatNumber
															value="${goodsDetail.p_price_m}" pattern="#,###" />원
														</p>
													</label>
												</div>
											</div>
										</div>
										<div class="step-wrap">
											<div class="title-wrap">
												<div class="title-type2">도우 선택</div>
												<div class="notice-text side">
													<a href="javascript:UI.layerPopUp({selId:'#pop-dough'})">도우의
														특징</a>
												</div>
											</div>

											<div class="option-box dough">

												<c:forEach items="${goodsDetail.p_dough}" var="p_dough"
													varStatus="status">
													<div class="chk-box">
														<input type="radio" id="${status.index}" name="p_dough"
															class="dough" name="dough"
															value="${goodsDetail.p_dough }"
															onclick="addToppingCheck()" /> <label class="checkbox"
															for="${status.index}" id="p_dough1"></label> <label
															id="p_dough" for="${status.index}" class="p_dough">
															${p_dough} <c:if test="${p_dough eq '더블 치즈 엣지' }">
																<em>+5,000원</em>
															</c:if> <c:if test="${p_dough eq '슈퍼 시드 함유 도우' }">
																<em>+2,000원</em>
															</c:if>
														</label>

													</div>
												</c:forEach>
												<%-- --%>
											</div>

										</div>
										<div class="step-wrap">
											<div class="title-wrap topping">
												<div class="title-type2">토핑추가</div>
												<div class="notice-text side">
													<a href="javascript:UI.layerPopUp({selId:'#pop-allergy2'})">토핑
														알레르기 유발성분</a>
												</div>
												<a href="#" class="btn-toggle-close"> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box" style="">
												<ul class="list-text-v4">
													<li>토핑추가는 피자 한판 당 5개까지 추가 가능</li>
												</ul>
												<div class="tab-type js_tab">
													<ul class="col-3 topping">
														<li class="active"><a href="#topping1">메인</a></li>
														<li class=""><a href="#topping2">치즈</a></li>
														<li class=""><a href="#topping3">애프터</a></li>
													</ul>
												</div>

												<div id="allToppingLayer">
	<script>
			$(document).ready(function() {
				$("img.lazyload").lazyload(); 
			});									

			//var habTotalCount = 0;
		$(document).ready(function() {
			$('.btn-minus').click(function() {
			setToppingTotalCnt($(this), ".btn-minus");
			//alert("minus");
			});	

			$('.btn-plus').click(function() {
			setToppingTotalCnt($(this), ".btn-plus");
			//alert("plus");
			});
			

			var toppingTotalAmount = 0;
			var toppingTotalCnt = 0;
			var setToppingTotalCnt = function(obj, action) {
				
				var toppingTotalCntSum = 0;
				//var etcTotalCnt = 0;
				var toppingStr = "";
				toppingTotalAmount = 0;
				var toppingTotalCnt = 0;
				var cnt = 0;
				
				if(action == ".btn-minus") {
					cnt = parseInt( obj.siblings(".setNum").val()) -1;
					if(cnt <= 0) cnt = 0;
					obj.siblings(".setNum").val(cnt);
				console.log("테스트0");
				} else {
					cnt = parseInt( obj.siblings(".setNum").val()) +1;
					
					obj.siblings(".setNum").val(cnt);
					console.log("테스트1");
				}
				
				
				
				$(action).each(function() {
					if(($(this).siblings(".setNum").val() != '0')) {
						
						toppingTotalCnt += parseInt($(this).siblings(".setNum").val());
						
						
						console.log("테스트3 toppingTotalCnt : " + toppingTotalCnt);
					}
					console.log("테스트4");
				});
				
				
				if(parseInt(toppingTotalCnt) > 5) {
					alert("토핑은 최대 5개 까지 가능 합니다.");
					cnt = parseInt( obj.siblings(".setNum").val()) -1;
					console.log("테스트5");
					if(cnt <= 0) cnt = 0;
					
					obj.siblings(".setNum").val(cnt);
					toppingTotalCnt -= 1;
					
					$(action).each(function() {
						if($(this).siblings(".setNum").val() != '0') {
							toppingTotalAmount = 0;
							toppingTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
							console.log("테스트6");
							
							
							console.log("최종1 toppingTotalCnt : " + toppingTotalCnt);
							/* 
							toppingStr += "<div>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x"
							+ "<span class='toppingCnt'>"+$(this).siblings(".setNum").val()+"</span>"
							+"<input type='hidden' class='toppingSum' value='"+toppingTotalAmount+"'></input>"+"</div>"; */
						 }
						
					});
				} else {
					$(action).each(function() {
						console.log("테스트7");
						if($(this).siblings(".setNum").val() != '0') {
							toppingTotalAmount = 0;
							toppingTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
							
							/* toppingStr += "<div>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x"
							+ "<span class='toppingCnt'>"+$(this).siblings(".setNum").val()+"</span>"
							+"<input type='hidden' class='toppingSum' value='"+toppingTotalAmount+"'></input>"+"</div>"; */
						}
					});
				}
				//sum();
			};
			
		});
			
			
		</script>



													<div id="topping1" class="tab-content active">
														<div class="menu-list-v2">
															<ul>
																<c:forEach var="mainToppingList"
																	items="${mainToppingList}" varStatus="status">
																	<li>
																		<div class="prd-img">
																			<img class="lazyload"
																				src="<c:url value= '/resources/images/admin/goods/${mainToppingList.t_image}'/>"
																				data-src="<c:url value= '/resources/images/admin/goods/${mainToppingList.t_image}'
							 />" />
																		</div>

																		<div class="prd-cont">
																			<div class="subject">${mainToppingList.t_name}</div>
																			<div class="price-box">
																				<strong><fmt:formatNumber
																						value="${mainToppingList.t_price}" pattern="#,###" />원</strong>
																			</div>

																			<div class="quantity-box">
																				<button type="button" class="btn-minus"
																					></button>
																				<!--   -->
																				<input class="setNum" id="setNum${status.index }"
																					type="number" value="0" readonly=""> <input
																					class="setName" type="hidden"
																					value="${mainToppingList.t_name}"> <input
																					class="setCode" type="hidden"
																					value="${mainToppingList.t_code}"> <input
																					class="setPrice" type="hidden"
																					value="${mainToppingList.t_price}">
																				<button type="button" class="btn-plus"
																					></button>
																				<!--onclick="plus_topping(${status.index});"  -->
																			</div>
																		</div>
																	</li>
																</c:forEach>
															</ul>
														</div>
													</div>

													<div id="topping2" class="tab-content">
														<div class="menu-list-v2">
															<ul>
																<c:forEach var="cheezeToppingList"
																	items="${cheezeToppingList}">
																	<li>
																		<div class="prd-img">
																			<img class="lazyload"
																				src="<c:url value= '/resources/images/admin/goods/${cheezeToppingList.t_image}'/>"
																				data-src="<c:url value= '/resources/images/admin/goods/${cheezeToppingList.t_image}'/>">
																		</div>

																		<div class="prd-cont">
																			<div class="subject">${cheezeToppingList.t_name}</div>
																			<div class="price-box">
																				<strong><fmt:formatNumber
																						value="${cheezeToppingList.t_price}"
																						pattern="#,###" />원</strong>
																			</div>

																			<div class="quantity-box">
																				<button type="button" class="btn-minus topping"></button>
																				<input class="setNum" type="number" value="0"
																					readonly=""> <input class="setName"
																					type="hidden" value="${cheezeToppingList.t_name}">
																				<input class="setCode" type="hidden"
																					value="${cheezeToppingList.t_code}"> <input
																					class="setPrice" type="hidden"
																					value="${cheezeToppingList.t_price}">
																				<button type="button" class="btn-plus topping"></button>
																			</div>
																		</div>
																	</li>
																</c:forEach>
															</ul>
														</div>
													</div>

													<div id="topping3" class="tab-content">
														<div class="menu-list-v2">
															<ul>
																<c:forEach var="afterToppingList"
																	items="${afterToppingList}">
																	<li>
																		<div class="prd-img">
																			<img class="lazyload"
																				src="<c:url value= '/resources/images/admin/goods/${afterToppingList.t_image}'/>"
																				data-src="<c:url value= '/resources/images/admin/goods/${afterToppingList.t_image}'/>">
																		</div>

																		<div class="prd-cont">
																			<div class="subject">${afterToppingList.t_name}</div>
																			<div class="price-box">
																				<strong><fmt:formatNumber
																						value="${afterToppingList.t_price}"
																						pattern="#,###" />원</strong>
																			</div>

																			<div class="quantity-box">
																				<button type="button" class="btn-minus topping"></button>
																				<input class="setNum" type="number" value="0"
																					readonly=""> <input class="setName"
																					type="hidden" value="${afterToppingList.t_name}">
																				<input class="setCode" type="hidden"
																					value="${afterToppingList.t_code}"> <input
																					class="setPrice" type="hidden"
																					value="${afterToppingList.t_price}">
																				<button type="button" class="btn-plus topping"></button>
																			</div>
																		</div>
																	</li>
																</c:forEach>
															</ul>
														</div>
													</div>
												</div>

												<div class="step-wrap">
													<div class="title-wrap">
														<div class="title-type2">수량 선택</div>
													</div>
													<div class="quantity-box">
														<button class="btn-minus goods"></button>
														<input type="number" class="opt_qty" value="1" id="qty"
															max="9" readonly>
														<button class="btn-plus goods"></button>
													</div>
												</div>
												<div class="step-wrap">
													<div class="title-wrap">
														<div class="title-type2">사이드디시</div>
														<div class="notice-text side">
															<a
																href="javascript:UI.layerPopUp({selId:'#pop-sidedish'})">특가
																사이드디시 유의사항</a>
														</div>
													</div>
													<div class="tab-type js_tab">
														<ul>
															<li class="active"><a href="#sidedish1">특가</a></li>
															<li><a href="#sidedish2">일반</a></li>
														</ul>
													</div>

													<script>
											<!-- 사이드 제한 알고리즘-->
												
											</script>

													<div id="sidedish1" class="tab-content active sidedelete">
														<div class="menu-list-v2">
															<ul>

																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200429_PcX27IEN.jpg"
																			alt="[반값]크리스피 핫 순살 치킨" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]크리스피 핫 순살 치킨</div>
																		<div class="price-box">
																			<del>4800</del>
																			<strong>2,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]크리스피 핫 순살 치킨"> <input
																				class="setCode" type="hidden" value="SST133A1_HP83">
																			<input class="setPrice" type="hidden" value="2400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_NUpa4qjv.jpg"
																			alt="[반값]한돈 빠에야" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]한돈 빠에야</div>
																		<div class="price-box">
																			<del>8800</del>
																			<strong>4,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]한돈 빠에야"> <input
																				class="setCode" type="hidden" value="SST133A1_HP82">
																			<input class="setPrice" type="hidden" value="4400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_TmzIvAh8.jpg"
																			alt="[반값]샐러드 가든" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]샐러드 가든</div>
																		<div class="price-box">
																			<del>6800</del>
																			<strong>3,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]샐러드 가든"> <input
																				class="setCode" type="hidden" value="SST133A1_HP81">
																			<input class="setPrice" type="hidden" value="3400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_aEs4kjTM.jpg"
																			alt="[반값]펜네 파스타" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]펜네 파스타</div>
																		<div class="price-box">
																			<del>8800</del>
																			<strong>4,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]펜네 파스타"> <input
																				class="setCode" type="hidden" value="SST133A1_HP80">
																			<input class="setPrice" type="hidden" value="4400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_aWbsiNe3.jpg"
																			alt="[반값]슈퍼곡물 치킨" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]슈퍼곡물 치킨</div>
																		<div class="price-box">
																			<del>7800</del>
																			<strong>3,900</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]슈퍼곡물 치킨"> <input
																				class="setCode" type="hidden" value="SST133A1_HP73">
																			<input class="setPrice" type="hidden" value="3900">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_S6jN24pt.jpg"
																			alt="[반값]NEW 치즈 볼로네즈 스파게티" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]NEW 치즈 볼로네즈 스파게티</div>
																		<div class="price-box">
																			<del>8800</del>
																			<strong>4,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]NEW 치즈 볼로네즈 스파게티">
																			<input class="setCode" type="hidden"
																				value="SST133A1_HP10"> <input
																				class="setPrice" type="hidden" value="4400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_AhHif6hZ.jpg"
																			alt="[반값]트러플 리조또" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]트러플 리조또</div>
																		<div class="price-box">
																			<del>8800</del>
																			<strong>4,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]트러플 리조또"> <input
																				class="setCode" type="hidden" value="SST133A1_HP67">
																			<input class="setPrice" type="hidden" value="4400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_8K910ZM4.jpg"
																			alt="[반값]하프&하프 스파게티" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]하프&하프 스파게티</div>
																		<div class="price-box">
																			<del>9800</del>
																			<strong>4,900</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]하프&하프 스파게티"> <input
																				class="setCode" type="hidden" value="SST133A1_HP42">
																			<input class="setPrice" type="hidden" value="4900">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_hqXwqkHf.jpg"
																			alt="[반값]화이트 크림 스파게티" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]화이트 크림 스파게티</div>
																		<div class="price-box">
																			<del>8800</del>
																			<strong>4,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]화이트 크림 스파게티"> <input
																				class="setCode" type="hidden" value="SST133A1_HP40">
																			<input class="setPrice" type="hidden" value="4400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_fMA47AEH.jpg"
																			alt="[반값]갈릭&허브윙스(8조각)" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]갈릭&허브윙스(8조각)</div>
																		<div class="price-box">
																			<del>8800</del>
																			<strong>4,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]갈릭&허브윙스(8조각)"> <input
																				class="setCode" type="hidden" value="SST133A1_HP6">
																			<input class="setPrice" type="hidden" value="4400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_Fyj8Uxvs.jpg"
																			alt="[반값]프레시 코울슬로" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]프레시 코울슬로</div>
																		<div class="price-box">
																			<del>2400</del>
																			<strong>1,200</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]프레시 코울슬로"> <input
																				class="setCode" type="hidden" value="SST133A1_HP35">
																			<input class="setPrice" type="hidden" value="1200">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_A6Fr642B.jpg"
																			alt="[반값]프레시 콘샐러드" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">[반값]프레시 콘샐러드</div>
																		<div class="price-box">
																			<del>2400</del>
																			<strong>1,200</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="[반값]프레시 콘샐러드"> <input
																				class="setCode" type="hidden" value="SST133A1_HP34">
																			<input class="setPrice" type="hidden" value="1200">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
															</ul>
														</div>
													</div>
													<div id="sidedish2" class="tab-content sidedelete">
														<div class="menu-list-v2">
															<ul>

																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200702_uCBMigWf.jpg"
																			alt="치캉스 팩" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">치캉스 팩</div>
																		<div class="price-box">
																			<strong>14,900</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="치캉스 팩"> <input
																				class="setCode" type="hidden" value="RSD173M1">
																			<input class="setPrice" type="hidden" value="14900">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200429_1Iq6t6Rf.jpg"
																			alt="크리스피 핫 순살 치킨(8조각)" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">크리스피 핫 순살 치킨(8조각)</div>
																		<div class="price-box">
																			<strong>4,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="크리스피 핫 순살 치킨(8조각)"> <input
																				class="setCode" type="hidden" value="RSD171M1">
																			<input class="setPrice" type="hidden" value="4800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_z7h539iW.jpg"
																			alt="한돈 빠에야" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">한돈 빠에야</div>
																		<div class="price-box">
																			<strong>8,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="한돈 빠에야"> <input
																				class="setCode" type="hidden" value="RSD170M1">
																			<input class="setPrice" type="hidden" value="8800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_3W8R4H4y.jpg"
																			alt="샐러드 가든" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">샐러드 가든</div>
																		<div class="price-box">
																			<strong>6,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="샐러드 가든"> <input
																				class="setCode" type="hidden" value="RSD169P1">
																			<input class="setPrice" type="hidden" value="6800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_fBQi689q.jpg"
																			alt="펜네 파스타" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">펜네 파스타</div>
																		<div class="price-box">
																			<strong>8,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="펜네 파스타"> <input
																				class="setCode" type="hidden" value="RSD168M1">
																			<input class="setPrice" type="hidden" value="8800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200605_l24qhCGi.jpg"
																			alt="슈퍼곡물 치킨(10조각)" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">슈퍼곡물 치킨(10조각)</div>
																		<div class="price-box">
																			<strong>7,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="슈퍼곡물 치킨(10조각)"> <input
																				class="setCode" type="hidden" value="RSD161M1">
																			<input class="setPrice" type="hidden" value="7800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_oK536isq.jpg"
																			alt="NEW 치즈 볼로네즈 스파게티" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">NEW 치즈 볼로네즈 스파게티</div>
																		<div class="price-box">
																			<strong>8,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="NEW 치즈 볼로네즈 스파게티"> <input
																				class="setCode" type="hidden" value="RSD031M1">
																			<input class="setPrice" type="hidden" value="8800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_4VvkTEI3.jpg"
																			alt="트러플 리조또" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">트러플 리조또</div>
																		<div class="price-box">
																			<strong>8,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="트러플 리조또"> <input
																				class="setCode" type="hidden" value="RSD155M1">
																			<input class="setPrice" type="hidden" value="8800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_fLidgy69.jpg"
																			alt="하프&하프 스파게티 (NEW 치즈 & 화이트 크림)" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">하프&하프 스파게티 (NEW 치즈 & 화이트
																			크림)</div>
																		<div class="price-box">
																			<strong>9,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="하프&하프 스파게티 (NEW 치즈 & 화이트 크림)">
																			<input class="setCode" type="hidden" value="RSD120M1">
																			<input class="setPrice" type="hidden" value="9800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_9wMvHQcZ.jpg"
																			alt="화이트 크림 스파게티" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">화이트 크림 스파게티</div>
																		<div class="price-box">
																			<strong>8,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="화이트 크림 스파게티"> <input
																				class="setCode" type="hidden" value="RSD118M1">
																			<input class="setPrice" type="hidden" value="8800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_Ci7PNSUV.jpg"
																			alt="갈릭&허브윙스(8조각)" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">갈릭&허브윙스(8조각)</div>
																		<div class="price-box">
																			<strong>8,800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="갈릭&허브윙스(8조각)"> <input
																				class="setCode" type="hidden" value="RSD064M1">
																			<input class="setPrice" type="hidden" value="8800">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_oi9xdc8U.jpg"
																			alt="프레시 코울슬로" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">프레시 코울슬로</div>
																		<div class="price-box">
																			<strong>2,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="프레시 코울슬로"> <input
																				class="setCode" type="hidden" value="RSD112P1">
																			<input class="setPrice" type="hidden" value="2400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_AqBJeq2s.jpg"
																			alt="프레시 콘샐러드" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">프레시 콘샐러드</div>
																		<div class="price-box">
																			<strong>2,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus side"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="프레시 콘샐러드"> <input
																				class="setCode" type="hidden" value="RSD111P1">
																			<input class="setPrice" type="hidden" value="2400">
																			<button class="btn-plus side"></button>
																		</div>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="step-wrap">
													<div class="title-wrap">
														<div class="title-type2">음료&기타</div>
													</div>

													<div class="tab-content active etcdelete">
														<div class="menu-list-v2">
															<ul>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_xko4stGP.jpg"
																			alt="코카콜라 1.25L" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">코카콜라 1.25L</div>
																		<div class="price-box">
																			<strong>2,000</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="코카콜라 1.25L"> <input
																				class="setCode" type="hidden" value="RDK001L6">
																			<input class="setPrice" type="hidden" value="2000">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_2lmLufa0.jpg"
																			alt="코카콜라 500ml" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">코카콜라 500ml</div>
																		<div class="price-box">
																			<strong>1,400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="코카콜라 500ml"> <input
																				class="setCode" type="hidden" value="RDK001L7">
																			<input class="setPrice" type="hidden" value="1400">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_M4LWEbwg.jpg"
																			alt="코카콜라 제로 1.5L" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">코카콜라 제로 1.5L</div>
																		<div class="price-box">
																			<strong>2,100</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="코카콜라 제로 1.5L"> <input
																				class="setCode" type="hidden" value="RDK005L1">
																			<input class="setPrice" type="hidden" value="2100">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_Hllio1OV.jpg"
																			alt="코카콜라 제로 500ml" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">코카콜라 제로 500ml</div>
																		<div class="price-box">
																			<strong>1,300</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="코카콜라 제로 500ml"> <input
																				class="setCode" type="hidden" value="RDK005L2">
																			<input class="setPrice" type="hidden" value="1300">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_kr91ng5H.jpg"
																			alt="스프라이트 1.5L" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">스프라이트 1.5L</div>
																		<div class="price-box">
																			<strong>2,100</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="스프라이트 1.5L"> <input
																				class="setCode" type="hidden" value="RDK003L1">
																			<input class="setPrice" type="hidden" value="2100">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_aH0XAR71.jpg"
																			alt="스프라이트 500ml" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">스프라이트 500ml</div>
																		<div class="price-box">
																			<strong>1,300</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="스프라이트 500ml"> <input
																				class="setCode" type="hidden" value="RDK003L3">
																			<input class="setPrice" type="hidden" value="1300">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_JkG1KaLB.jpg"
																			alt="미닛메이드 스파클링 청포도 1.25L" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">미닛메이드 스파클링 청포도 1.25L</div>
																		<div class="price-box">
																			<strong>2,300</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="미닛메이드 스파클링 청포도 1.25L">
																			<input class="setCode" type="hidden" value="RDK012L2">
																			<input class="setPrice" type="hidden" value="2300">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_ZiDHxA8U.jpg"
																			alt="우리 피클 L" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">우리 피클 L</div>
																		<div class="price-box">
																			<strong>800</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="우리 피클 L"> <input
																				class="setCode" type="hidden" value="RSD152P1">
																			<input class="setPrice" type="hidden" value="800">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_g5R87V5j.jpg"
																			alt="우리 피클 M" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">우리 피클 M</div>
																		<div class="price-box">
																			<strong>500</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="우리 피클 M"> <input
																				class="setCode" type="hidden" value="RSD101P1">
																			<input class="setPrice" type="hidden" value="500">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200602_EP1H2m13.jpg"
																			alt="도미노 시리얼" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">도미노 시리얼</div>
																		<div class="price-box">
																			<strong>400</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="도미노 시리얼"> <input
																				class="setCode" type="hidden" value="RSD172P1">
																			<input class="setPrice" type="hidden" value="400">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_8eI3CpW8.jpg"
																			alt="스위트 칠리소스 15g" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">스위트 칠리소스 15g</div>
																		<div class="price-box">
																			<strong>300</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="스위트 칠리소스 15g"> <input
																				class="setCode" type="hidden" value="RSD086P1">
																			<input class="setPrice" type="hidden" value="300">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_H1ApYYz5.jpg"
																			alt="갈릭 디핑 소스 15g" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">갈릭 디핑 소스 15g</div>
																		<div class="price-box">
																			<strong>200</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="갈릭 디핑 소스 15g"> <input
																				class="setCode" type="hidden" value="RSD088P1">
																			<input class="setPrice" type="hidden" value="200">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="prd-img">
																		<img class="lazyload"
																			src="../../newcdn.dominos.co.kr/domino/pc/images/bg.png"
																			data-src="https://newcdn.dominos.co.kr/admin/upload/goods/20200316_1uKUqRes.jpg"
																			alt="핫소스" />
																	</div>

																	<div class="prd-cont">
																		<div class="subject">핫소스</div>
																		<div class="price-box">
																			<strong>100</strong>
																		</div>

																		<div class="quantity-box">
																			<button class="btn-minus etc"></button>
																			<input class="setNum" type="number" value="0"
																				readonly> <input class="setName"
																				type="hidden" value="핫소스"> <input
																				class="setCode" type="hidden" value="RSD017P1">
																			<input class="setPrice" type="hidden" value="100">
																			<button class="btn-plus etc"></button>
																		</div>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<!-- //주문 옵션 선택 -->
										</div>
									</div>
									<div class="step-wrap step-order">
										<div class="order-wrap inner-box">
											<a href="#" class="btn-text-more" style="display: none">전체보기</a>
											<dl class="pizza">
												<dt>피자</dt>
												<dd>
													<p class="total-pizza">${p_name}(
														<fmt:formatNumber value="${goodsDetail.p_price_l}"
															pattern="#,###" />
														원)
													</p>
													<ul class="list-text v2">
														<li class="total-dough"></li>
														<li class="total-topping"></li>
													</ul>
												</dd>
											</dl>
											<dl>
												<dt>사이드디시</dt>
												<dd>
													<div class="total-side">없음</div>
												</dd>
											</dl>
											<dl>
												<dt>음료 & 기타</dt>
												<dd>
													<div class="total-etc">없음</div>
												</dd>
											</dl>
											<div class="total-price">
												<div id="login_order_btn">
													<span>총 금액</span> <strong class="total-price_sum">0원</strong>
													<div class="btn-wrap">
														<a id="btn_basket" href="javascript:;" class="btn-type">
															주문하기 </a>
													</div>
												</div>
											</div>
										</div>
									</div>
						</article>
					</div>
				</div>
				<div class="pop-layer" id="pop-sidedish">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title v2">특가 사이드디시 유의사항</h2>
						</div>
						<div class="pop-content">
							<div class="title-wrap">
								<div class="title-type2">프리미엄 피자 주문 시, 모든 사이드디시 반값</div>
							</div>
							<div class="pop-text">
								<ul class="list-text-v2">
									<li>전화 및 온라인(홈페이지, 모바일웹, 어플) 주문 모두 적용 가능</li>
									<li>함께 주문하는 피자에 대해 제휴 및 쿠폰 등 여타 할인과 중복 할인 가능(단,
										하나SK패밀리/TOUCH 1, 현대M포인트, 삼성카드 보너스포인트, 신한카드 하이포인트, 스페셜세트, 희망나눔
										캠페인과는 중복 불가)</li>
									<li>피자 1판당 반값 프로모션 1회 이용 가능 (단, 1+1에 한해 주문당 1회 가능)</li>
									<li>익일예약가능</li>
								</ul>
							</div>
							<!-- <div class="title-wrap v2">
				<div class="title-type2">2. 사이드디시 천원 딜 유의사항</div>
			</div>
			<div class="pop-text">
				<ul class="list-text-v2">
					<li>해피위크 이용 고객 대상 할인 적용 가능 (비회원도 할인 적용 가능)</li>
					<li>피자(M,L)에 한해 적용 가능(사이드디시, 음료, 추가토핑, 킹고피자, 싱글피자, 더블팩/트리플팩은 제외)</li>
					<li>제휴 및 여타 할인과 중복 할인 불가 (단, 사이드디시 반값, 해피위크와도 적용 가능)</li>
					<li>사이드디시 1천원딜은 피자 1판당 1회로 제한</li>
					<li>일부 특수 매장(알펜시아점, 대명비발디파크점, 휘닉스 파크점, 잠실 야구장점, 롯데월드점) 제외</li>
					<li>익일 예약 불가</li>
				</ul>
			</div> -->
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<link rel="stylesheet" type="text/css"
					href="../../newcdn.dominos.co.kr/domino/pc/css/as_is.css">
				<div class="pop-layer pop-full" id="pop-dough">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title">도우의 특징</h2>
						</div>
						<div class="pop-content pop_dough">
							<div class="dough_info">
								<div class="tit_wrap">
									<strong>도미노피자의 <span>다양한 도우</span>를<br>입맛대로 골라
										드세요!
									</strong>
									<p>
										다양한 소스와 토핑은 기본!<br>국내산 흑미에 세계가 주목하는 6가지 슈퍼시드를 더해 영양과 풍미를
										가득 담은 도우는 물론,<br>담백하고 쫄깃한 오리지널 도우나, 겉은 바삭하고 속은 쫄깃한 나폴리
										도우,<br>얇고 바삭한 씬 도우까지 선택하실 수 있습니다.
									</p>
								</div>
								<div class="lst_dough">
									<div class="grain_dough">
										<img class="lazyload"
											data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/img_dough_superseed.jpg"
											alt="슈퍼시드 도우" />
										<dl>
											<dt>
												"더 맛있으면서, 더 건강한 도우를 만들 수는 없을까?"<br>끝없는 질문과 오랜 연구 끝에 탄생한
												도미노 슈퍼시드 도우<br> <br>
											</dt>
											<dt>
												국내산 흑미에 세계가 주목하는 6가지 슈퍼시드를 더해<br>영양과 풍미를 가득 담았습니다.
											</dt>
										</dl>
										<div class="superseed_dough">
											<dl class="superseed_dough_title">
												<dt>1. 영양을 채우다</dt>
												<dd>엄선한 재료, 국내산 흑미와 세계가 주목하는 6가지 슈퍼시드의 특징</dd>
											</dl>
											<dl class="superseed_dough_content large">
												<dt>
													<!-- <img class="lazyload"
														/> -->
												</dt>
												<dd class="cont_title">100% 국내산 흑미</dd>
												<dd class="cont_sub">
													항산화, 항암, 항궤양 효과가 있다고 알려진 안토시아닌이 검은콩보다 4배 이상 함유,<br>철,
													아연, 셀레늄 등의 무기염류는 일반 쌀 대비 5배 이상 함유<br>노화와 여러 질병을 일으키는
													체내의 활성산소를 효과적으로 중화시키며 심장실병, 뇌졸증, 성인병, 암 예방에도 좋은 곡물
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/superseed_2.jpg"
														alt="아마씨">
												</dt>
												<dd class="cont_title">아마씨</dd>
												<dd class="cont_sub">
													타임지가 선정한 슈퍼곡물, 노화방지에 좋은 리그난이<br>석류보다 2700배나 많이 함유,<br>또한
													오메가 3가 풍부해 각종 혈관질환 예방에 효과
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/superseed_3.jpg"
														alt="퀴노아">
												</dt>
												<dd class="cont_title">퀴노아</dd>
												<dd class="cont_sub">
													페루어로 '곡물의 어미니'라고 불릴 정도로<br>풍부한 영양소 함유,<br>쌀보다 7배
													많은 식이섬유 함유
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/superseed_4.jpg"
														alt="병아리콩">
												</dt>
												<dd class="cont_title">병아리콩</dd>
												<dd class="cont_sub">
													클레오파트라도 즐겨먹었던 것으로 알려진 곡물,<br>우유보다 5배 많은 칼슘을 함유하여 비타민E가
													풍부해<br>항노화 기능과 아르기닌 성분으로 신진대사를 활발히 해<br>젊음을 유지하는데
													효과적
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/superseed_5.jpg"
														alt="햄프씨드">
												</dt>
												<dd class="cont_title">햄프씨드</dd>
												<dd class="cont_sub">
													타임지가 선정한 슈퍼곡물,<br>불포화지방산이 등푸른 생선보다 10배 많아<br>혈관
													건강에 도움
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/superseed_6.jpg"
														alt="귀리">
												</dt>
												<dd class="cont_title">귀리</dd>
												<dd class="cont_sub">
													세계보건기구(WHO)에서 핀란드 등 장수 국가의 대표<br>음식으로 발표될 정도로 영양이 풍부한
													곡물.<br>칼슘, 철분, 인을 비롯한 미네랄과 비타민 다량 함유
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/superseed_7.jpg"
														alt="렌틸콩">
												</dt>
												<dd class="cont_title">렌틸콩</dd>
												<dd class="cont_sub">
													풍부한 식이섬유와<br>소고기보다 1.3배 많은 단백질 함유
												</dd>
											</dl>
											<dl class="superseed_dough_title height">
												<dt>2. 맛을 살리다</dt>
												<dd>
													씹을수록 입안 가득 은은하게 퍼지는 고소한 맛과 쫄깃한 식감의 도우<br>토핑의 맛을 더욱 잘
													살려줄 수 있는 도우를 만들기 위해 수천번의 테스트 끝에 찾은 황금 레시피로 피자의 맛에 풍미를
													더해줍니다.
												</dd>
											</dl>
											<dl class="superseed_dough_title">
												<dt>3. 부담은 줄이다</dt>
												<dd>
													어린이, 청소년 및 젊은 남녀, 어르신들까지 모두가 부담 없이 즐길 수 있는 도우<br>칼슘,
													철분 등 다양한 영양소가 함유되어 성장기 어린이, 청소년에게 더욱 좋은 아마씨드, 퀴노아<br>포만감이
													높아 다이어트, 몸매관리에 관심이 많은 분들에게 더욱 좋은 병아리콩, 귀리<br>혈관질환 예방에
													좋은 오메가3, 불포화지방산등이 함유되어 혈관건강에 관심이 많은 분들에게 더욱 좋은 흑미, 햄프시드,
													렌틸콩
												</dd>
											</dl>
										</div>
									</div>
									<ul>
										<li><img class="lazyload"
											data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/img_dough2.jpg"
											alt="">
											<dl>
												<dt>
													담백하고 쫄깃한 <strong>오리지널 도우</strong>
												</dt>
												<dd>
													냉장 저온숙성시킨 도우를 손으로 직접 펴서<br>만든 미국 뉴욕 스타일의 도우, 엣지의 두께는<br>2.2CM
													피자 가운데는 1.3CM 내외로 담백하<br>면서도 쫄깃한 도우의 맛이 특징
												</dd>
											</dl></li>
										<li><img class="lazyload"
											data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/img_dough3.jpg"
											alt="">
											<dl>
												<dt>
													겉은 바삭, 속은 쫄깃한 <strong>나폴리 도우</strong>
												</dt>
												<dd>
													피자의 원조인 이탈리아 나폴리 스타일의 도우,<br>씬피자와는 다르게 엣지는 살리면서 얇게<br>펴주는
													것이 주요 특징. 엣지의 두께는 1.5CM,<br>피자 가운데는 0.3CM 내외이며, 도우 겉은<br>바삭하고
													속은 쫄깃한 맛을 가지고 있음.
												</dd>
											</dl></li>
										<li><img class="lazyload"
											data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/img_dough4.jpg"
											alt="">
											<dl>
												<dt>
													얇고 바삭한 <strong>씬 도우</strong>
												</dt>
												<dd>
													이탈리아 로마식 도우로 일반적인 이탈리아<br>적 지역(나폴리 지역 제외)에서 대중화되어<br>있는
													얇은 도우, 엣지 없이 도우가 얇고<br>평평한 것이 특징이며 바삭함을 즐길 수 있음.
												</dd>
											</dl></li>
									</ul>
								</div>
							</div>
							<div class="topping_info">
								<div class="tit_wrap">
									<strong>도우 끝 <span>엣지</span>까지 숨어있는<br> <span>갖가지
											토핑</span>을 찾아보세요.
									</strong>
								</div>
								<div class="lst_topping">
									<ul>
										<li>
											<div class="lst_tit">
												<img class="lazyload"
													data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/img_topping.png"
													alt="">
												<dl>
													<dt>더블치즈엣지</dt>
													<dd>카망베르 크림치즈와 스트링치즈로 꽉~채운</dd>
												</dl>
											</div>
											<ul class="lst_view">
												<li><img class="lazyload"
													data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/lst_topping.png"
													alt="">
													<dl>
														<dt>카망베르 크림 치즈</dt>
														<dd>
															치즈의 여왕이라고도 불리는 프랑스 대표 숙성<br>치즈로 깊은 맛과 향, 크림처럼 부드러운
															식감을<br>즐길 수 있는 프리미엄 치즈입니다.
														</dd>
													</dl></li>
												<li><img class="lazyload"
													data-src="https://newcdn.dominos.co.kr/renewal2018/w/img/lst_topping2.png"
													alt="">
													<dl>
														<dt>스트링 치즈</dt>
														<dd>
															쫄깃한 식감으로 카망베르 크림 치즈의<br>풍미를 더해줍니다.
														</dd>
													</dl></li>
											</ul>
										</li>

									</ul>
								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- 팝업-메뉴 상세보기 -->
				<script>
				<!--
					function getDetailSlide(code_01, dsp_ctgr, dough_gb) {
					}
					function getDetail(code_01, dsp_ctgr, dough_gb) {
					}
					-->
				</script>
				<!-- 팝업-메뉴 상세보기 -->

				<div class="pop-layer pop-menu" id="pop-menu-detail">
					<input type="hidden" value="" class="hide_code" />
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<div class="pop-title menu-name"></div>
						</div>
						<div class="pop-content">
							<div class="menu">
								<article class="menu-detail-area">
									<div class="menu-info">
										<div class="img-wrap">
											<div class="view-box">
												<!-- 대표 이미지 슬라이드 -->
												<div id="detail_main_slide">
													<div class="menu-slider-view" id="pinchzoom"></div>
												</div>

												<a href="javascript:UI.layerPopUp({selId:'#pop-zoom'})"
													class="btn-zoom"> <i class="ico-zoom"></i> <span
													class="hidden">확대버튼</span>
												</a>
												<!-- //대표 이미지 슬라이드 -->
											</div>
											<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.
											</div>
										</div>
										<div class="detail-wrap">
											<div class="select-box">
												<div class="step-wrap step-detail">
													<div class="title-wrap">
														<div class="title-type">메인 토핑</div>
													</div>
													<div class="js_toggle_box detail_topping"></div>
												</div>
												<div class="step-wrap step-detail">
													<div class="title-wrap">
														<div class="title-type">원산지</div>
													</div>
													<div class="js_toggle_box detail_origin"></div>
												</div>
											</div>
											<div class="btn-wrap2">
												<a href="javascript:UI.layerPopUp({selId:'#pop-allergy'})"
													class="btn-type2-brd">영양성분 및 알레르기 유발성분</a>
												<!-- 사이드 메뉴  시 제거 부분   -->
												<a
													href="javascript:UI.layerPopUp({selId:'#pop-story', url:'/contents/story'});"
													class="btn-type2-brd">피자스토리</a>
												<!-- //사이드 메뉴  시 제거 부분   -->
											</div>
										</div>
									</div>
									<div class="select-box">
										<div class="step-wrap step-detail">
											<div class="title-wrap close">
												<div class="title-type">제품 상세보기</div>
												<a href="#" class="btn-toggle-close"> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box detail_contents close ">
												<div class="detail-box">
													<div class="title-box">
														<h3 class="title">
															매콤달콤한 도미노 특제 소스와 핫치킨의 화끈한 만남,<br />매운맛 매니아들을 위한 취향저격 피자
														</h3>
														<div class="guide-box3">어린이 및 매운맛에 민감한 분들에게 다소 매울 수
															있습니다.</div>
													</div>
													<div class="img-box">
														<img src="#" alt="블랙타이거 슈림프1" class="img-zoom"
															data-elem="pinchzoomer" />
													</div>
												</div>
											</div>
										</div>

										<div class="step-wrap step-detail">
											<div class="title-wrap close">
												<div class="title-type">메인 토핑</div>
												<a href="#" class="btn-toggle-close"> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box close detail_topping"></div>
										</div>
										<div class="step-wrap step-detail">
											<div class="title-wrap close">
												<div class="title-type">원산지</div>
												<a href="#" class="btn-toggle-close "> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box close detail_origin"></div>
										</div>

										<!-- 사이드 메뉴  시 제거 부분  -->
										<div class="step-wrap step-cont">
											<div class="title-wrap close">
												<div class="title-type">도미노피자의 특징</div>
												<a href="#" class="btn-toggle-close"> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box close">
												<!-- 단락마다 br 태그 2개 -->
												<strong>매일매일 만들어 신선하고 쫄깃 고소한 도우!</strong> 최고의 도우 맛을 위해 물,
												밀가루, 이스트 등을 최적의 비율 로 매일 반죽하여 냉장저온(1~3°C) 숙성한 도미노 피자의 도우!<br />
												수분보유량이 우수하고 도우 입자 사이의 공기층이 적절히 형성된 3일~7일차 도우를 사용해 전문 피자메이커가
												핸드토스드(Hand Tossed) 방식으 로 만들어 특유의 쫄깃 하고 포실포실한 식감과 맛, 향으로 오감을
												충족시킵니다.<br /> <br /> <strong>깊고 풍부한 맛, 도미노만의 시그니처
													치즈!</strong> 도미노피자만을 위해 연구 개발된 도미노 시그니처 치즈는 미국 농무성에서 인정한 최상 A등급 프리미엄
												우유로 생산되어 최고의 맛과 풍미를 자랑하는 모차렐라 피자치즈 입니다. 게다가 페타크림치즈, 체더치즈,
												콰트로치즈퐁듀, 보코치니 등 고급프리미엄 피자치즈를 사용함으로써 피자의 품격을 높여 더욱 맛있는 피자를
												완성하였습니다.<br /> <br /> <strong>신선한 캘리포니아산 프리미엄 토마토
													소스!</strong> 캘리포니아는 따뜻한 햇살과 시원한 저녁 날씨 덕에 토마토가 자라기에 최적의 환경을 제공합니다. 이
												곳에 위치한 대규모 (35만 에이커) 토마토 농장)에서 70일 동안 잘 익은 토마토는 빠른시간
												(4~6시간)내 모든 가공 처리가 이루어져 신선함이 살아있습니다. 캘리포니아산 토마토는 과육이 풍부해 피자
												소스로 만들었을 때 당도, 산미, 감칠맛이 극상의 조화를 이루기 때문에 피자 맛에 깊이를 더합니다.<br />
												<br /> <strong>항상 놀랍고 새로운 프리미엄 토핑!</strong> 도미노피자는 프리미엄 피자에
												어울리는 최고급 식자재인 와규, 직화스테이크, 게살, 블랙타이거 슈림프 등 항상 놀라움과 새로움을 주는
												혁신적인 프리미엄 토핑을 피자 업계 최초로 적용하며 소비자의 입맛과 트렌드를 선도하고 피자 선택의 폭을
												넓히는 것은 물론 도미노피자만의 색다른 고객 감동을 만들어 가고 있습니다.
											</div>
										</div>
									</div>
								</article>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- //팝업-메뉴 상세보기 -->

				<!-- 피자 스토리  -->
				<div class="pop-layer" id="pop-story"></div>
				<!-- 피자 스토리  -->

				<!-- 알레르기 -->
				<!-- 팝업-메인 빅배너 -->
				<div class="pop-layer pop-full" id="pop-allergy">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<div class="pop-title v2">영양성분 및 알레르기 유발성분</div>
						</div>
						<div class="pop-content">
							<div class="tab-type v2 js_tab">
								<ul>
									<li class="active"><a href="#allergy1">영양성분</a></li>
									<li><a href="#allergy2">제품 알레르기 유발성분</a></li>
								</ul>
							</div>
							<div id="allergy1" class="tab-content active">
								<div class="tab-type2 js_tab">
									<ul>
										<li class="active"><a href="#allergy1-1">피자</a></li>
										<li><a href="#allergy1-2">사이드</a></li>
									</ul>
								</div>
								<div id="allergy1-1" class="tab-content-v2 active">
									<div class="table-type v2">
										<table class="bg-table">
											<caption>피자 영양성분</caption>
											<colgroup>
												<col width="20%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
											</colgroup>
											<thead>
												<tr>
													<th>제품명</th>
													<th>총 중량(g)</th>
													<th>1회분 기준</th>
													<th>1회분<br>중량 (g)
													</th>
													<th>열량<br>(kcal/1회분)
													</th>
													<th>단백질<br>(g/1회분)
													</th>
													<th>포화지방<br>(g/1회분)
													</th>
													<th>나트륨<br>(mg/1회분)
													</th>
													<th>당류<br>(g/1회분)
													</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>블랙타이거 슈림프(오리지널 L)</td>
													<td>982</td>
													<td>1조각</td>
													<td>123</td>
													<td>288</td>
													<td>13</td>
													<td>4</td>
													<td>568</td>
													<td>8</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(오리지널 M)</td>
													<td>574</td>
													<td>2조각</td>
													<td>191</td>
													<td>453</td>
													<td>20</td>
													<td>6</td>
													<td>863</td>
													<td>14</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(나폴리L)</td>
													<td>753</td>
													<td>2조각</td>
													<td>188</td>
													<td>431</td>
													<td>20</td>
													<td>7</td>
													<td>956</td>
													<td>16</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(나폴리M)</td>
													<td>477</td>
													<td>2조각</td>
													<td>159</td>
													<td>358</td>
													<td>18</td>
													<td>6</td>
													<td>819</td>
													<td>13</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(씬 L)</td>
													<td>375</td>
													<td>2조각</td>
													<td>125</td>
													<td>308</td>
													<td>14</td>
													<td>8</td>
													<td>674</td>
													<td>12</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(씬 M)</td>
													<td>628</td>
													<td>2조각</td>
													<td>157</td>
													<td>403</td>
													<td>18</td>
													<td>9</td>
													<td>821</td>
													<td>14</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프(슈퍼시드 함유 도우L)</td>
													<td>946</td>
													<td>1조각</td>
													<td>118</td>
													<td>290</td>
													<td>13</td>
													<td>4</td>
													<td>517</td>
													<td>10</td>
												</tr>
												<tr>
													<td>블랙타이거슈림프(슈퍼시드 함유 도우M)</td>
													<td>1,152</td>
													<td>1조각</td>
													<td>144</td>
													<td>363</td>
													<td>18</td>
													<td>7</td>
													<td>770</td>
													<td>9</td>
												</tr>
												<tr>
													<td>블랙타이거 슈림프 더블치즈엣지(오리지널 L)</td>
													<td>580</td>
													<td>2조각</td>
													<td>193</td>
													<td>468</td>
													<td>21</td>
													<td>8</td>
													<td>884</td>
													<td>18</td>
												</tr>
												<tr>
													<td>블랙타이거슈림프 더블치즈엣지(오리지널 M)</td>
													<td>744</td>
													<td>1조각</td>
													<td>124</td>
													<td>312</td>
													<td>16</td>
													<td>7</td>
													<td>681</td>
													<td>7</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div id="allergy1-2" class="tab-content-v2">
									<div class="allergy-group">
										<div class="title-type3">1. 사이드디시</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>사이드디시 영양성분</caption>
												<colgroup>
													<col width="28%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
												</colgroup>
												<thead>
													<tr>
														<th>제품명</th>
														<th>총 중량(g)</th>
														<th>열량<br>(kcal/1회분)
														</th>
														<th>단백질<br>(g/1회분)
														</th>
														<th>포화지방<br>(g/1회분)
														</th>
														<th>나트륨<br>(mg/1회분)
														</th>
														<th>당류<br>(g/1회분)
														</th>
													</tr>
												</thead>
												<tbody id="ingredientList1">
													<tr>
														<td>샐러드 가든</td>
														<td>141</td>
														<td>52</td>
														<td>2</td>
														<td>0</td>
														<td>301</td>
														<td>5</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div id="allergy1-2" class="tab-content-v2">
										<div class="allergy-group">
											<div class="title-type3">1. 사이드디시</div>
											<div class="table-type v2">
												<table class="bg-table">
													<caption>사이드디시 영양성분</caption>
													<colgroup>
														<col width="28%">
														<col width="12%">
														<col width="12%">
														<col width="12%">
														<col width="12%">
														<col width="12%">
														<col width="12%">
													</colgroup>
													<thead>
														<tr>
															<th rowspan="2">제품명</th>
															<th rowspan="2">총 중량(g)</th>
															<th rowspan="2">열량<br>(kcal/1회분)
															</th>
															<th rowspan="2">단백질<br>(g/1회분)
															</th>
															<th rowspan="2">포화지방<br>(g/1회분)
															</th>
															<th rowspan="2">나트륨<br>(mg/1회분)
															</th>
															<th rowspan="2">당류<br>(g/1회분)
															</th>
														</tr>
													</thead>
													<tbody id="ingredientList1">
														<tr>
															<td>한돈 빠에야</td>
															<td>344</td>
															<td>555</td>
															<td>21</td>
															<td>12</td>
															<td>1742</td>
															<td>13</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="allergy-group">
											<div class="title-type3">2. 음료</div>
											<div class="table-type v2">
												<table class="bg-table">
													<caption>음료 영양성분</caption>
													<colgroup>
														<col width="25%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
													</colgroup>
													<thead>
														<tr>
															<th rowspan="2">제품명</th>
															<th rowspan="2">열량<br>(kcal/1회분)
															</th>
															<th rowspan="2">단백질<br>(g/1회분)
															</th>
															<th rowspan="2">포화지방<br>(g/1회분)
															</th>
															<th rowspan="2">나트륨<br>(mg/1회분)
															</th>
															<th rowspan="2">당류<br>(g/1회분)
															</th>
														</tr>
													</thead>
													<tbody id="ingredientList2">
														<tr>
															<td>미닛메이드 스파클링 청포도 1.25L</td>
															<td>450</td>
															<td>0</td>
															<td>0</td>
															<td>38</td>
															<td>113</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div id="allergy2" class="tab-content">
								<div class="tab-type2 js_tab">
									<ul>
										<li class="active"><a href="#allergy2-1">피자</a></li>
										<li><a href="#allergy2-2">사이드</a></li>
									</ul>
								</div>
								<div id="allergy2-1" class="tab-content-v2 active">
									<div class="allergy_guide">
										<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와
											같이 제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능
											식품)</p>
										<dl>
											<dt>* 알레르기 유발 가능 식품 :</dt>
											<dd>난류(가금류에 한한다), 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기,
												복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합포함), 잣</dd>
										</dl>
									</div>
									<div class="allergy-group">
										<div class="title-type3">피자</div>
										<div class="guide-box3">피자 공통: 오리지널,나폴리, 슈퍼시드함유, 샌드
											도우(우유, 밀, 대두), 씬, 더블 도우(밀), 더블치즈엣지(스트링 치즈(우유, 대두, 밀), 카망베르
											크림치즈(우유))</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>피자 재료중 알레르기 유발 가능 식품</caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th>NO</th>
														<th>피자</th>
														<th>알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>14</td>
														<td>더블크러스트 이베리코</td>
														<td>모차렐라, 리코타, 로마노크림치즈, 콰트로 치즈퐁듀(우유), 베이컨(돼지고기), New
															고구마 무스(계란, 우유, 대두, 밀), 감자(대두,이산화황),마요네즈(난류,대두),
															토마토소스(토마토, 대두), 선드라이토마토(토마토), 코코넛 허니버터 파우더(대두,밀,우유),이베리코
															스테이크 (돼지고기,대두,밀)</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div id="allergy2-2" class="tab-content-v2">
									<div class="allergy_guide">
										<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와
											같이 제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능
											식품)</p>
										<dl>
											<dt>* 알레르기 유발 가능 식품 :</dt>
											<dd>난류(가금류에 한한다), 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기,
												복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합포함), 잣</dd>
										</dl>
									</div>
									<div class="allergy-group">
										<div class="title-type3">1. 사이드디시</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>사이드디시 재료중 알레르기 유발 가능 식품</caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">NO</th>
														<th scope="col">사이드디시</th>
														<th scope="col">알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>치캉스 팩</td>
														<td>갈릭&허브윙스 : 닭고기,대두,밀,우유,토마토 / 슈퍼곡물 치킨 : 밀, 우유, 대두,
															계란, 땅콩, 토마토, 닭고기, 쇠고기 / 크리스피 핫 순살 치킨 : 닭고기,대두,밀,쇠고기,계란 /
															코울슬로 : 계란,대두</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="allergy-group">
										<div class="title-type3">2. 시리얼&소스</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption></caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">NO</th>
														<th scope="col">제품명</th>
														<th scope="col">알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>갈릭 디핑 소스</td>
														<td>계란,우유,대두</td>
													</tr>
													<tr>
														<td>2</td>
														<td>도미노 시리얼</td>
														<td>계란,우유,대두</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- //팝업-메인 빅배너 -->
				<!-- //알레르기 -->

				<!-- 피자스토리 -->
				<!-- 피자스토리 -->

				<div class="pop-layer" id="pop-allergy2">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title">토핑 알레르기 유발성분</h2>
						</div>
						<div class="pop-content">
							<div class="allergy_guide">
								<p class="text-type">
									한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와 같이 제품별 상세 내용을 표기하여
									안내해드립니다.<br>(괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발 가능식품)
								</p>
								<dl>
									<dt>* 알레르기 유발 가능 식품 :</dt>
									<dd>토마토, 아황산류(이를 첨가하여 최종제품에 SO2로 10mg/kg 이상 함유한 경우에 한한다),
										호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합 포함)</dd>
								</dl>
							</div>
							<div class="table-type v2">
								<table class="tbl_type">
									<caption>유발성분 표</caption>
									<colgroup>
										<col width="5%">
										<col width="25%">
										<col>
									</colgroup>
									<thead>
										<tr>
											<th>NO</th>
											<th>토핑</th>
											<th>알레르기 유발성분 표기</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>26</td>
											<td>이베리코 스테이크</td>
											<td>돼지고기,대두,밀</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- 팝업-메인 빅배너 -->
				<div class="pop-layer pop-full" id="pop-allergy">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<div class="pop-title v2">영양성분 및 알레르기 유발성분</div>
						</div>
						<div class="pop-content">
							<div class="tab-type v2 js_tab">
								<ul>
									<li class="active"><a href="#allergy1">영양성분</a></li>
									<li><a href="#allergy2">제품 알레르기 유발성분</a></li>
								</ul>
							</div>
							<div id="allergy1" class="tab-content active">
								<div class="tab-type2 js_tab">
									<ul>
										<li class="active"><a href="#allergy1-1">피자</a></li>
										<li><a href="#allergy1-2">사이드</a></li>
									</ul>
								</div>
								<div id="allergy1-1" class="tab-content-v2 active">
									<div class="table-type v2">
										<table class="bg-table">
											<caption>피자 영양성분</caption>
											<colgroup>
												<col width="20%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
											</colgroup>
											<thead>
												<tr>
													<th>제품명</th>
													<th>총 중량(g)</th>
													<th>1회분 기준</th>
													<th>1회분<br>중량 (g)
													</th>
													<th>열량<br>(kcal/1회분)
													</th>
													<th>단백질<br>(g/1회분)
													</th>
													<th>포화지방<br>(g/1회분)
													</th>
													<th>나트륨<br>(mg/1회분)
													</th>
													<th>당류<br>(g/1회분)
													</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>더블크러스트 이베리코(더블 크러스트 L)</td>
													<td>1,038</td>
													<td>1조각</td>
													<td>130</td>
													<td>344</td>
													<td>12</td>
													<td>7</td>
													<td>465</td>
													<td>10</td>
												</tr>
												<tr>
													<td>더블크러스트 이베리코(더블 크러스트 M)</td>
													<td>652</td>
													<td>2조각</td>
													<td>163</td>
													<td>421</td>
													<td>14</td>
													<td>9</td>
													<td>564</td>
													<td>13</td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
								<div id="allergy1-2" class="tab-content-v2">
									<div class="allergy-group">
										<div class="title-type3">1. 사이드디시</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>사이드디시 영양성분</caption>
												<colgroup>
													<col width="28%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
													<col width="12%">
												</colgroup>
												<thead>
													<tr>
														<th>제품명</th>
														<th>총 중량(g)</th>
														<th>열량<br>(kcal/1회분)
														</th>
														<th>단백질<br>(g/1회분)
														</th>
														<th>포화지방<br>(g/1회분)
														</th>
														<th>나트륨<br>(mg/1회분)
														</th>
														<th>당류<br>(g/1회분)
														</th>
													</tr>
												</thead>
												<tbody id="ingredientList1">
													<tr>
														<td>치캉스 팩</td>
														<td>538</td>
														<td>1037</td>
														<td>77</td>
														<td>12</td>
														<td>2263</td>
														<td>15</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div id="allergy1-2" class="tab-content-v2">
										<div class="allergy-group">
											<div class="title-type3">1. 사이드디시</div>
											<div class="table-type v2">
												<table class="bg-table">
													<caption>사이드디시 영양성분</caption>
													<colgroup>
														<col width="28%">
														<col width="12%">
														<col width="12%">
														<col width="12%">
														<col width="12%">
														<col width="12%">
														<col width="12%">
													</colgroup>
													<thead>
														<tr>
															<th rowspan="2">제품명</th>
															<th rowspan="2">총 중량(g)</th>
															<th rowspan="2">열량<br>(kcal/1회분)
															</th>
															<th rowspan="2">단백질<br>(g/1회분)
															</th>
															<th rowspan="2">포화지방<br>(g/1회분)
															</th>
															<th rowspan="2">나트륨<br>(mg/1회분)
															</th>
															<th rowspan="2">당류<br>(g/1회분)
															</th>
														</tr>
													</thead>
													<tbody id="ingredientList1">
														<tr>
															<td>치캉스 팩</td>
															<td>538</td>
															<td>1037</td>
															<td>77</td>
															<td>12</td>
															<td>2263</td>
															<td>15</td>
														</tr>
														<tr>
															<td>크리스피 핫 순살 치킨(8조각)</td>
															<td>127</td>
															<td>262</td>
															<td>25</td>
															<td>2</td>
															<td>966</td>
															<td>1</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="allergy-group">
											<div class="title-type3">2. 음료</div>
											<div class="table-type v2">
												<table class="bg-table">
													<caption>음료 영양성분</caption>
													<colgroup>
														<col width="25%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
														<col width="15%">
													</colgroup>
													<thead>
														<tr>
															<th rowspan="2">제품명</th>
															<th rowspan="2">열량<br>(kcal/1회분)
															</th>
															<th rowspan="2">단백질<br>(g/1회분)
															</th>
															<th rowspan="2">포화지방<br>(g/1회분)
															</th>
															<th rowspan="2">나트륨<br>(mg/1회분)
															</th>
															<th rowspan="2">당류<br>(g/1회분)
															</th>
														</tr>
													</thead>
													<tbody id="ingredientList2">
														<tr>
															<td>미닛메이드 스파클링 청포도 1.25L</td>
															<td>450</td>
															<td>0</td>
															<td>0</td>
															<td>38</td>
															<td>113</td>
														</tr>
														<tr>
															<td>스프라이트 1.5L</td>
															<td>700</td>
															<td>0</td>
															<td>0</td>
															<td>150</td>
															<td>170</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div id="allergy2" class="tab-content">
								<div class="tab-type2 js_tab">
									<ul>
										<li class="active"><a href="#allergy2-1">피자</a></li>
										<li><a href="#allergy2-2">사이드</a></li>
									</ul>
								</div>
								<div id="allergy2-1" class="tab-content-v2 active">
									<div class="allergy_guide">
										<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와
											같이 제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능
											식품)</p>
										<dl>
											<dt>* 알레르기 유발 가능 식품 :</dt>
											<dd>난류(가금류에 한한다), 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기,
												복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합포함), 잣</dd>
										</dl>
									</div>
									<div class="allergy-group">
										<div class="title-type3">피자</div>
										<div class="guide-box3">피자 공통: 오리지널,나폴리, 슈퍼시드함유, 샌드
											도우(우유, 밀, 대두), 씬, 더블 도우(밀), 더블치즈엣지(스트링 치즈(우유, 대두, 밀), 카망베르
											크림치즈(우유))</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>피자 재료중 알레르기 유발 가능 식품</caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th>NO</th>
														<th>피자</th>
														<th>알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>14</td>
														<td>더블크러스트 이베리코</td>
														<td>모차렐라, 리코타, 로마노크림치즈, 콰트로 치즈퐁듀(우유), 베이컨(돼지고기), New
															고구마 무스(계란, 우유, 대두, 밀), 감자(대두,이산화황),마요네즈(난류,대두),
															토마토소스(토마토, 대두), 선드라이토마토(토마토), 코코넛 허니버터 파우더(대두,밀,우유),이베리코
															스테이크 (돼지고기,대두,밀)</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div id="allergy2-2" class="tab-content-v2">
									<div class="allergy_guide">
										<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와
											같이 제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능
											식품)</p>
										<dl>
											<dt>* 알레르기 유발 가능 식품 :</dt>
											<dd>난류(가금류에 한한다), 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기,
												복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합포함), 잣</dd>
										</dl>
									</div>
									<div class="allergy-group">
										<div class="title-type3">1. 사이드디시</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption>사이드디시 재료중 알레르기 유발 가능 식품</caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">NO</th>
														<th scope="col">사이드디시</th>
														<th scope="col">알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>치캉스 팩</td>
														<td>갈릭&허브윙스 : 닭고기,대두,밀,우유,토마토 / 슈퍼곡물 치킨 : 밀, 우유, 대두,
															계란, 땅콩, 토마토, 닭고기, 쇠고기 / 크리스피 핫 순살 치킨 : 닭고기,대두,밀,쇠고기,계란 /
															코울슬로 : 계란,대두</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="allergy-group">
										<div class="title-type3">2. 시리얼&소스</div>
										<div class="table-type v2">
											<table class="bg-table">
												<caption></caption>
												<colgroup>
													<col width="7%">
													<col width="23%">
													<col>
												</colgroup>
												<thead>
													<tr>
														<th scope="col">NO</th>
														<th scope="col">제품명</th>
														<th scope="col">알레르기 유발성분 표기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>갈릭 디핑 소스</td>
														<td>계란,우유,대두</td>
													</tr>
													<tr>
														<td>2</td>
														<td>도미노 시리얼</td>
														<td>계란,우유,대두</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- //팝업-메인 빅배너 -->
			</section>
			<!-- //content -->
		</div>
		<!-- //container -->
	</div>
	<!-- //wrap -->

</body>
</html>