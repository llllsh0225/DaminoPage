<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "org.json.simple.*" %>
<!DOCTYPE HTML>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<title>매장찾기- 다미노피자</title>

<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/card_add.css' />">

<script type="text/javascript" src="<c:url value='/resources/js/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<!-- 더보기 슬라이드로 내려오는 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>
<!-- 구글 지도 api -->
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDPY14fWtREsDgmgVgmAaEazsQakxds8TY&callback=searchMap">
	</script>
<!-- 맵관련 js -->
<script type="text/javascript" src="<c:url value='/resources/js/user/map.js'/>"></script>
<script type="text/javascript">

/* 
function searchRegion(callBackFunc){
	var target = document.getElementById("searchStoreList");
	var storeRegion = $("#region_name").val();
	
	$.ajax({
		url: 'searchBranch.do',
		contentType : "application/json; charset=UTF-8;",
		type: 'post',
		dataType: 'json',   
		data : JSON.stringify({
			storeRegion : storeRegion,//searchStore 쿼리에서 필요한 값
		}),
		success: function(data) {
					if (data != null) {
						for(var i=0; i<data.length; i++){
							if(i==0){
								target += ('<ul id="ul_shop_list" name="searchStoreList"><li><dl><dt>' + data[i] 
										 + '<span class="tel">' + '전화번호' + '</span></dt><dd class="address">' + '주소 들어감' 
										 + '</dd></dl><div class = "promotion"><div class="type"><span>온라인<br>방문포장<br>30%</span></div><div class="type2"><span>오프라인<br>방문포장<br>30%</span></div></div></li>');
							}else if(i==data.length-1){
								target +=('<li><dl><dt>' + data[i] + '<span class="tel">' + '전화번호' + '</span></dt><dd class="address">' + '주소 들어감' 
										 + '</dd></dl><div class = "promotion"><div class="type"><span>온라인<br>방문포장<br>30%</span></div><div class="type2"><span>오프라인<br>방문포장<br>30%</span></div></div></li></ul>');
							}else{
								target += ('<li><dl><dt>' + data[i] + '<span class="tel">' + '전화번호' + '</span></dt><dd class="address">' + '주소 들어감' 
										 + '</dd></dl><div class = "promotion"><div class="type"><span>온라인<br>방문포장<br>30%</span></div><div class="type2"><span>오프라인<br>방문포장<br>30%</span></div></div></li>');
							}
						}
						 
						$('#searchStoreList').html(target);
						
					}else if (typeof callbackFunc === 'function') {
				        callbackFunc();
				    }else {
						alert("다시 시도해주세요");
					}
				},
				error: function() {
					 alert('처리도중 오류가 발생했습니다.');
				}
			});
} */
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
			<section id="content">
				<div class="sub-type store">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">매장검색</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.html">홈</a></li>
									<li><strong>매장검색</strong></li>
								</ol>
							</div>
						</div>
						<div class="store-wrap">
							<div class="btn-wrap">
								<a href="#" class="btn-type v4" onclick="openLayerPopup('detail_map'); return false;">전체매장 보기</a>
							</div>
							<div class="store-map-area">
								<div class="store-map-wrap">
									<div class="store-map" id="map_canvas"></div>
								</div>
								<div class="store-search">
									<div class="tab-type5 js_tab">
										<ul>
											<li class="active"><a href="#storeSrch1" onclick="navTabs('address', this); return false;">지역 검색</a></li>
											<li><a href="#storeSrch2" onclick="navTabs('name', this); return false;">매장명</a></li>
										</ul>
									</div>
									<!-- 지역 검색 -->
									<div class="tab-content active" id="storeSrch1">
										<div class="address-set-wrap store">
											<form action="branchLocationSearch.do" name="searchForm" method="post" >
												<div class="form-group srch-type">
													<div class="form-item">
														<div class="select-type type2">
															<select id="region_code_1" onchange="">
																<option value="">시/도</option>
																<option value="01" selected>서울</option>
															</select>
														</div>
													</div>
													
													<div class="form-item">
														<div class="select-type type2">
															<select id="storeRegion" name="storeRegion">
																<option value="none" selected>구/군</option>
																<option value="강남구">강남구</option>
																<option value="강동구">강동구</option>
																<option value="강북구">강북구</option>
																<option value="강서구">강서구</option>
																<option value="관악구">관악구</option>
																<option value="광진구">광진구</option>
																<option value="구로구">구로구</option>
																<option value="금천구">금천구</option>
																<option value="노원구">노원구</option>
																<option value="도봉구">도봉구</option>
																<option value="동대문구">동대문구</option>
																<option value="동작구">동작구</option>
																<option value="마포구">마포구</option>
																<option value="서대문구">서대문구</option>
																<option value="서초구">서초구</option>
																<option value="성동구">성동구</option>
																<option value="성북구">성북구</option>
																<option value="송파구">송파구</option>
																<option value="양천구">양천구</option>
																<option value="영등포구">영등포구</option>
																<option value="용산구">용산구</option>
																<option value="은평구">은평구</option>
																<option value="종로구">종로구</option>
																<option value="중구">중구</option>
																<option value="중랑구">중랑구</option>
															</select>
														</div>
													</div>
													<div class="form-item">
														<button type="button" class="btn-search" id="location_submit">검색</button>
													</div>
												</div>
											</form>
											<div class="srch-option">
												<div class="switch-btn" onclick="toggleSpclPrmtn_address();">
													<label class="switch"> <input type="checkbox" id="switch"> <a class="slider" id="schPrmt"> <span class="off">OFF</span> <span class="on">ON</span>
													</a>
													</label>
													<p>특별할인 진행 전체 매장</p>
												</div>
												<p class="notice-text">
													<a href="javascript:openLayerPopup('promotion');">이용안내</a>
												</p>
											</div>
										</div>
									</div>
									<!-- //지역 검색 -->

									<!-- 매장명 -->
									<div class="tab-content" id="storeSrch2">
										<div class="address-set-wrap store">
											<form action="branchNameSearch.do" name="searchForm1" method="post">
												<div class="form-group srch-type">
													<div class="form-item">
														<input type="text" id="storeName" name="storeName" placeholder="매장명을 입력해주세요." value="">
													</div>
													<div class="form-item">
														<button type="button" class="btn-search" id="name_submit">검색</button>
													</div>
												</div>
											</form>
											<div class="srch-option">
												<div class="switch-btn" onclick="toggleSpclPrmtn_name();">
													<label class="switch"> <input type="checkbox" id="switch2"> <a class="slider" id="schPrmt"> <span class="off">OFF</span> <span class="on">ON</span>
													</a>
													</label>
													<p>특별할인 진행 전체 매장</p>
												</div>
												<p class="notice-text">
													<a href="javascript:openLayerPopup('promotion');">이용안내</a>
												</p>
											</div>

										</div>
									</div>
									<!-- //매장명 -->
									
									<!-- 검색된 매장 리스트 -->
									<div class="store-address-list" id="searchStoreList" >
										<ul id="ul_shop_list" id="storeName">
                                            <c:forEach var="locationSearch" items="${locationSearchList }">
                                                <li>
                                                    <dl>
                                                        <dt>
                                                        	<input type="hidden" id="markerName" value=" ${locationSearch.storeName }">
                                                            ${locationSearch.storeName } <span class="tel">${locationSearch.storePhone }</span>
                                                        </dt>
                                                        <dd class="address" id="${locationSearch.storeAddress }">
                                                        ${locationSearch.storeAddress }
                                                        <input type="hidden" id="markerAddress" value=" ${locationSearch.storeAddress }">
                                                        </dd>
                                                    </dl>
                                                    <div class="promotion">
                                                        <div class="type">
                                                            <span>온라인<br> 방문포장<br>30%
                                                            </span>
                                                        </div>
                                                        <div class="type2">
                                                            <span>오프라인<br> 방문포장<br> 30%
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="btn-wrap">
                                                        <a href="#" onclick="">상세보기</a>
                                                        <a href="#" class="type2">방문포장</a>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                            <c:forEach var="nameSearch" items="${nameSearchList }">
                                                <li>
                                                    <dl>
                                                        <dt>
                                                            ${nameSearch.storeName } <span class="tel">${nameSearch.storePhone }</span>
                                                        </dt>
                                                        <dd class="address" id="${nameSearch.storeAddress }">${nameSearch.storeAddress }</dd>
                                                    </dl>
                                                    <div class="promotion">
                                                        <div class="type">
                                                            <span>온라인<br> 방문포장<br>30%
                                                            </span>
                                                        </div>
                                                        <div class="type2">
                                                            <span>오프라인<br> 방문포장<br> 30%
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="btn-wrap">
                                                        <a href="#" onclick="">상세보기</a>
                                                        <a href="#" class="type2">방문포장</a>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>
									</div>
									<script type="text/javascript">
										
										geocodeAddress2(geocoder, map);
										/* addressList(); */
									</script>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- 전체 매장 보기 -->
			<div class="pop-layer pop-full" id="pop-store-all">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap type2">
						<h2 class="pop-title" onclick="openLayerPopup('detail_map'); return false;">전체 매장 보기</h2>
					</div>
					<div class="pop-content">
						<div class="store-map-area" id="map_large_canvas">
							<!-- MAP 영역 -->

						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
			<!--//전체 매장 보기 -->
			<!-- 이용안내 보기 -->
			<div class="pop-layer" id="pop-store-info"></div>
			<!--//이용안내 보기 -->
			<!-- 매장상세 -->
			<div class="pop-layer pop-full" id="pop-store">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title">매장 상세정보</h2>
					</div>
					<div class="pop-content">
						<div class="store-view">
							<div class="store-map-area" id="map_detail_canvas">
								<!-- MAP 영역 -->
								<div class="store-map-wrap">
									<div class="store-map" id="map_canvas"></div>
								</div>
								<div class="store-spot" style="right: 20%; top: 50%;"></div>
							</div>
							<div class="store-slider" id="detail_photos"></div>
						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
		</div>
		<!-- //매장 상세보기 팝업(e) -->
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
						<p>03138 서울특별시 종구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현, 정민균, 정민식, 김진혁</p>
						<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
						<p>문의 : admin@daminos.co.kr</p>
						<p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

						<p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 사이트(PC, 모바일, 앱)의 일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
					</div>

					<div class="footer-cont">

						<dl class="app-box">
							<dt>DOWNLOAD APP</dt>
							<dd>
								<a href="https://itunes.apple.com/kr/app/dominopija-domino-pizza-korea/id371008429?mt=8"><i class="ico-ios"></i>ios 앱다운로드</a> <a
									href="https://play.google.com/store/apps/details?id=kr.co.d2.dominos"><i class="ico-android">안드로이드 앱다운로드</i></a>
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
