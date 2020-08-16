<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
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
var drinkCnt = 0;

//음료 카운트
function plusDrink(idx){
	var drinkSetNum = Number($('#drinkSetNum' + idx).val());
	var etcName = $('#etcName' + idx).val();
	var etcPrice = Number($('#etcPrice' + idx).val());
	
		drinkSetNum = Number($('#drinkSetNum' + idx).val());
		drinkSetNum += 1;
		drinkCnt += 1;
		$('#drinkSetNum' + idx).val(drinkSetNum);
		
	
}

function minusDrink(idx){			
	var drinkSetNum = Number($('#drinkSetNum' + idx).val());
	var etcName = $('#etcName' + idx).val();
	var etcPrice = Number($('#etcPrice' + idx).val());
		
	drinkSetNum -= 1;
	
	$('#drinkSetNum' + idx).val(drinkSetNum);
			
	if(drinkSetNum == 0){
		$('#drinkSetNum' + idx).val(0);
		drinkSetNum = Number($('#drinkSetNum' + idx).val());
		drinkCnt -= 1;
		
	}else if(drinkSetNum < 0){
		$('#drinkSetNum' + idx).val(0);	
	}else{	
		drinkSetNum = Number($('#drinkSetNum' + idx).val());
		
		drinkCnt -= 1;
		
	}
	
}

function addGoods(idx){
	alert("음료는 피자 1판당 최대 2개까지, 사이드디시 1개당 최대 1개까지 주문이 가능합니다.");
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

		<!-- container -->
		<div id="container">
			<!-- content -->
			<section id="content">
				<div class="sub-type menu">
					<div class="inner-box">
						<!-- 1depth 메뉴명 & 네비게이션 -->
						<div class="page-title-wrap">
							<h2 class="page-title">메뉴</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a href="goodslist.do">메뉴</a></li>
									<li><strong>음료&기타</strong></li>
								</ol>
							</div>
						</div>
						<!-- //1depth 메뉴명 & 네비게이션 -->

						<article class="menu-list-area">
							<!-- menu-list -->
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="goodslist.do">피자</a></li>
										<li><a href="goodsSideList.do">사이드디시</a></li>
										<li class="active"><a href="goodsDrinkEtcList.do">음료&기타</a></li>
									</ul>
								</div>
								<div class="sch-box">
									<span>인기순</span>
									<div class="sch-slider"></div>
									<div class="sch-slider-nav"></div>
									<a href="#" class="btn-open"> <span class="hidden">열기</span><i></i>
									</a>
								</div>
							</div>

							<!-- //menu-list -->
							<div class="menu-list">
								<div class="title-wrap-center">
									<h3 class="title-type">메뉴</h3>
								</div>
							</div>
							<div class="menu-list inner-box">
								<!-- 음료 시작-->
								<ul>
									<c:forEach var="goodsDrinkEtcList" items="${goodsDrinkEtcList}" varStatus="status">
										<li>
											<div class="prd-img">
												<img class="lazyload"
													src="<c:url value= '/resources/images/admin/goods/${goodsDrinkEtcList.d_image}' />"
													alt="${goodsDrinkEtcList.d_name}" />
											</div>

											<div class="prd-cont type2">
												<div class="subject">${goodsDrinkEtcList.d_name}</div>
											</div>

											<div class="prd-price">
												<div class="price-box">
													<span class="price">
													<fmt:formatNumber value="${goodsDrinkEtcList.d_price}" pattern="#,###" />원</span>
												</div>
											</div>
										<div class="quantity-group">
										<div class="quantity-box type2" style="width:144px">
												<button class="btn-minus etc"
													onclick="minusDrink(${status.index})"></button>
												<input class="setNum" id="drinkSetNum${status.index}"
													type="number" value="1" readonly> <input
													class="setName" id="etcName${status.index}" type="hidden"
													value="${goodsDrinkEtcList.d_name}">
													<input
													class="setPrice" type="hidden" id="etcPrice${status.index}"
													value="${goodsDrinkEtcList.d_price}">
												<button class="btn-plus etc"
													onclick="plusDrink(${status.index})"></button>
										</div>		
										<a href="javascript:addGoods(${status.index});" class="btn-cart" style="margin:5px">주문</a>
										</div>	
										</li>
									</c:forEach>
								</ul>
							</div>
							<!-- END 음료 -->

						</article>
						<div class="bottom-guide-area">
							<div class="box">
								<div class="list-text">
									<dt>※ 유의사항</dt>
									<dd>
										<ul>
											<li>단종으로 인한 상품권 사용 안내 : 동일 가격 또는 더 높은 가격의 제품으로 대체 주문 가능<br>
												(상품권에 명시된 제품보다 더 높은 가격대의 제품 주문 시, 금액 추가 발생)<br> (단,
												상품권에 명시된 제품보다 저렴한 제품 주문 시 발생하는 차액에 대해서는 환불 처리 불가)
											</li>
											<li>일부 리조트 및 특수매장은 상기 가격과 차이가 있음</li>
											<li>모든 사진은 이미지 컷이므로 실제 제품과 다를 수 있습니다.</li>
										</ul>
									</dd>
								</div>
							</div>
							<div class="box">
								<p class="text-type">제품의 영양성분 및 알레르기 유발성분을 먼저 확인하세요.</p>
								<div class="btn-wrap2">
									<a href="javascript:UI.layerPopUp({selId:'#pop-allergy'})"
										class="btn-type-left">영양성분 및 알레르기 유발성분</a>
								</div>

							</div>
						</div>

					</div>
				</div>
			</section>
			<!-- //content -->
		</div>
		<!-- //container -->

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
									<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.</div>
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
										<a href="#" class="btn-toggle-close"> <span class="hidden">열기</span>
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
										<a href="#" class="btn-toggle-close"> <span class="hidden">열기</span>
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
										<a href="#" class="btn-toggle-close"> <span class="hidden">열기</span>
										</a>
									</div>
									<div class="js_toggle_box close">
										<!-- 단락마다 br 태그 2개 -->
										<strong>매일매일 만들어 신선하고 쫄깃 고소한 도우!</strong> 최고의 도우 맛을 위해 물, 밀가루,
										이스트 등을 최적의 비율 로 매일 반죽하여 냉장저온(1~3°C) 숙성한 도미노 피자의 도우!<br />
										수분보유량이 우수하고 도우 입자 사이의 공기층이 적절히 형성된 3일~7일차 도우를 사용해 전문 피자메이커가
										핸드토스드(Hand Tossed) 방식으 로 만들어 특유의 쫄깃 하고 포실포실한 식감과 맛, 향으로 오감을
										충족시킵니다.<br /> <br /> <strong>깊고 풍부한 맛, 도미노만의 시그니처
											치즈!</strong> 도미노피자만을 위해 연구 개발된 도미노 시그니처 치즈는 미국 농무성에서 인정한 최상 A등급 프리미엄
										우유로 생산되어 최고의 맛과 풍미를 자랑하는 모차렐라 피자치즈 입니다. 게다가 페타크림치즈, 체더치즈,
										콰트로치즈퐁듀, 보코치니 등 고급프리미엄 피자치즈를 사용함으로써 피자의 품격을 높여 더욱 맛있는 피자를
										완성하였습니다.<br /> <br /> <strong>신선한 캘리포니아산 프리미엄 토마토
											소스!</strong> 캘리포니아는 따뜻한 햇살과 시원한 저녁 날씨 덕에 토마토가 자라기에 최적의 환경을 제공합니다. 이 곳에
										위치한 대규모 (35만 에이커) 토마토 농장)에서 70일 동안 잘 익은 토마토는 빠른시간 (4~6시간)내 모든
										가공 처리가 이루어져 신선함이 살아있습니다. 캘리포니아산 토마토는 과육이 풍부해 피자 소스로 만들었을 때 당도,
										산미, 감칠맛이 극상의 조화를 이루기 때문에 피자 맛에 깊이를 더합니다.<br /> <br /> <strong>항상
											놀랍고 새로운 프리미엄 토핑!</strong> 도미노피자는 프리미엄 피자에 어울리는 최고급 식자재인 와규, 직화스테이크,
										게살, 블랙타이거 슈림프 등 항상 놀라움과 새로움을 주는 혁신적인 프리미엄 토핑을 피자 업계 최초로 적용하며
										소비자의 입맛과 트렌드를 선도하고 피자 선택의 폭을 넓히는 것은 물론 도미노피자만의 색다른 고객 감동을 만들어
										가고 있습니다.
									</div>
								</div>
							</div>
							<!-- 구매하기 버튼 -->
							<div class="btn-wrap btn_order">
								<a href="javascript:;" class="btn-type"> 주문하러 가기 </a>
							</div>
							<!-- //구매하기 버튼 -->
						</article>
					</div>
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!-- //팝업-메뉴 상세보기 -->

		<div class="pop-layer" id="pop-zoom">
			<div class="dim"></div>
			<div class="pop-wrap">
				<div class="pop-title-wrap">
					<h2 class="pop-title">확대</h2>
				</div>
				<div class="pop-content">
					<div class="zoom-wrap">
						<div class="menu-zoom-wrap">
							<div class="menu-big" id="zoom">
								<img
									src="../../newcdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
									alt="블랙타이거 슈림프1" class="img-zoom-big" />
							</div>
						</div>
						<div class="menu-thumb">
							<div class="item subimg1 active">
								<a href="#"> <img
									src="../../newcdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
									alt="블랙타이거 슈림프1" class="img-zoom-big1" />
								</a>
							</div>
							<div class="item subimg2">
								<a href="#"> <img
									src="../../newcdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
									alt="블랙타이거 슈림프2" class="img-zoom-big2" />
								</a>
							</div>
							<div class="item subimg3">
								<a href="#"> <img
									src="../../newcdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
									alt="블랙타이거 슈림프3" class="img-zoom-big3" />
								</a>
							</div>
						</div>
					</div>
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!--//팝업-확대 이미지 -->
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
											</tbody>
										</table>
									</div>
								</div>
								<!-- 음료 성분 -->
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
					<!-- 알레르기 성분표 -->
					<div id="allergy2" class="tab-content">
						<div class="tab-type2 js_tab">
							<ul>
								<li class="active"><a href="#allergy2-1">피자</a></li>
								<li><a href="#allergy2-2">사이드</a></li>
							</ul>
						</div>
						<div id="allergy2-1" class="tab-content-v2 active">
							<div class="allergy_guide">
								<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와 같이
									제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능 식품)</p>
								<dl>
									<dt>* 알레르기 유발 가능 식품 :</dt>
									<dd>난류(가금류에 한한다), 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기,
										복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합포함), 잣</dd>
								</dl>
							</div>
							<div class="allergy-group">
								<div class="title-type3">피자</div>
								<div class="guide-box3">피자 공통: 오리지널,나폴리, 슈퍼시드함유, 샌드 도우(우유,
									밀, 대두), 씬, 더블 도우(밀), 더블치즈엣지(스트링 치즈(우유, 대두, 밀), 카망베르 크림치즈(우유))</div>
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
												<td>1</td>
												<td>시리얼 칠리크랩+블랙앵거스 스테이크</td>
												<td>모차렐라, 페터크림, 리코타 치즈(우유), 토마토 소스(토마토, 대두), 갈릭 크림
													소스(계란, 우유, 대두, 밀), 로스트 포테이토(대두), 베이컨칩(돼지고기), 호스래디시 스퀴드(오징어,
													계란, 우유, 대두), 스위트 칠리크랩(게, 대두, 밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)),
													오리엔탈 통새우(새우, 우유, 대두, 밀, 토마토, 닭고기, 쇠고기, 조개류(굴)), 호스래디시소스(계란,
													우유, 대두), 아라비아타소스(계란,대두,밀,돼지고기,닭고기,토마토), 선드라이토마토(토마토), 블랙앵거스
													비프 (쇠고기, 대두, 밀, 계란)</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div id="allergy2-2" class="tab-content-v2">
							<div class="allergy_guide">
								<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와 같이
									제품별 상세 내용을 표기하여 안내해드립니다. (괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발가능 식품)</p>
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

							<!-- 시리얼소스  -->
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
					<!--end 알레르기성분 -->
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!-- //팝업-메인 빅배너 -->
		<!-- //알레르기 -->

		<!-- 팝업 -->
		<div class="pop_layer pop_type pop_ingredient" id="nutrient_table"></div>
		<div class="pop_layer pop_type topping" id="naviLayer_pop"></div>

		<div class="pop_layer pop_type topping" id="rpzLayer_pop"></div>
		<div class="pop_layer pop_type topping" id="topping_info_pop"></div>
		<!-- LOGGER 환경변수 설정 -->
		<!-- // LOGGER 환경변수 설정 -->

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