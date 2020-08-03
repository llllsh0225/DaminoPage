<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>가맹점모집(가맹점 개설안내)- 다미노피자</title>
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
		<link rel="stylesheet" type="text/css"
			href="<c:url value='/resources/css/user/as_is.css' />">

		<!-- container -->
		<div id="container">
			<!-- content -->
			<section id="content">
				<div class="sub-type company">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">회사소개</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a href="overview.do">회사소개</a></li>
									<li><strong>가맹점모집</strong></li>
								</ol>
							</div>
						</div>
						<article class="company-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="overview.do">한국다미노피자</a></li>
										<li class="active"><a href="chainstore1.do">가맹점모집</a></li>
									</ul>
								</div>
							</div>
							<div class="tab-type4 col5">
								<ul class="btn_tab">
									<li><a href="chainstore1.do">가맹점 개설안내</a></li>
									<li><a href="chainstore2.do">개설 절차</a></li>
									<li><a href="chainstore3.do">모집 지역</a></li>
									<li class="active"><a href="chainstore4.do">개설 문의</a></li>
								</ul>
							</div>

							<div class="tab_content_wrap">
								<div class="tab_content active">
									<div class="franchisee_area">
										<div class="fran_section">
											<div class="question_sel">
												<ul>
													<li>
														<dl>
															<dt>구경회 과장(점포개발팀)</dt>
															<dd>
																<ul>
																	<li><strong>이메일 : </strong> khgoo@daminos.co.kr<a
																		href="javascript:UI.layerPopUp({selId:'#pop-franchisee'})"
																		class="btn-type v7 btn"
																		onclick="infoPopReset('khgoo@dominos.co.kr');"><span
																			class="btn_txt">이메일 문의</span></a></li>
																	<li><strong>전화 : </strong> 02-6954-3059</li>
																</ul>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt>고광진 과장(점포개발팀)</dt>
															<dd>
																<ul>
																	<li><strong>이메일 : </strong> kjko@daminos.co.kr<a
																		href="javascript:UI.layerPopUp({selId:'#pop-franchisee'})"
																		class="btn-type v7 btn"
																		onclick="infoPopReset('bpc@dominos.co.kr');"><span
																			class="btn_txt">이메일 문의</span></a></li>
																	<li><strong>전화 : </strong> 02-6954-3020</li>
																</ul>
															</dd>
														</dl>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
			<!-- //content -->
			<!-- 이메일 문의(s) -->
			<form id="popForm" name="popForm"
				action="https://web.dominos.co.kr/bbs/branchProc" method="post">
				<input type="hidden" id="gubun" name="gubun" value="" /> <input
					type="hidden" id="hp" name="hp" value="" /> <input type="hidden"
					id="birth" name="birth" value="" /> <input type="hidden"
					id="email" name="email" value="" />
				<div class="pop-layer pop-form" id="pop-franchisee">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title">E-mail 문의</h2>
						</div>
						<div class="pop-content">
							<div class="step-wrap">
								<div class="privacy-agree">
									<dl>
										<dt>개인정보 수집 및 이용동의</dt>
										<dd>
											<div class="agree-wrap show-scroll">
												청오디피케이㈜에서 운영하는 도미노피자 홈페이지 서비스(이하 도미노)는 도미노에 제공한 개인정보가 보호 받을
												수 있도록 통신비밀보호법, 전기통신사업법, 정보통신망이용촉진 등에 관한 법률 등 정보통신서비스 제공자가
												준수해야 할 관련 법규상의 개인정보보호규정 및 정보통신부가 제정한 개인정보보호지침을 엄격히 준수합니다.<br>
												<br> 1. 개인정보의 수집 및 이용목적<br> * 가맹점 개설 문의에 대한 정보를 위해
												개인정보를 수집하고 있습니다.<br>
												<br> 2. 수집하는 개인정보의 항목<br> * 필수입력사항 : 이름, 생년월일, 주소,
												이메일, 휴대전화<br>
												<br> 3. 개인정보의 보유 및 이용기간<br> * 원칙적으로 개인정보의 수집 및
												이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 다만, 가맹점 개설 문의에 대한 원활한 서비스
												제공을 위하여 2년간 보관합니다.<br>
												<br> 4. 귀하는 위와 같은 개인정보 수집이용에 동의하지 않을 수 있습니다.<br>
												단, 동의 거부시에는 해당 서비스 참여가 제한됩니다.<br>
												<br>
											</div>
										</dd>
									</dl>
									<div class="privacy-chk">
										<div class="form">
											<div class="chk-box">
												<input type="radio" id="agree_yes" name="agree"> <label
													for="agree_yes" class="checkbox"></label> <label
													for="agree_yes">동의함</label>
											</div>
											<div class="chk-box">
												<input type="radio" id="agree_no" name="agree" checked>
												<label class="checkbox" for="agree_no"></label> <label
													for="agree_no">동의하지 않음</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="step-wrap">
								<div class="form info-form">
									<!-- 이름 -->
									<dl>
										<dt>이름</dt>
										<dd class="size">
											<div class="form-item">
												<input type="text" name="name" id="name">
											</div>
										</dd>
									</dl>
									<!-- 나이 -->
									<dl>
										<dt>생년월일</dt>
										<dd>
											<div class="form-group">
												<div class="form-item">
													<div class="select-type2">
														<select id="year" name="year">
															<option value="">년</option>
															<option value="1945">1945</option>
															<option value="1946">1946</option>
															<option value="1947">1947</option>
															<option value="1948">1948</option>
															<option value="1949">1949</option>
															<option value="1950">1950</option>
															<option value="1951">1951</option>
															<option value="1952">1952</option>
															<option value="1953">1953</option>
															<option value="1954">1954</option>
															<option value="1955">1955</option>
															<option value="1956">1956</option>
															<option value="1957">1957</option>
															<option value="1958">1958</option>
															<option value="1959">1959</option>
															<option value="1960">1960</option>
															<option value="1961">1961</option>
															<option value="1962">1962</option>
															<option value="1963">1963</option>
															<option value="1964">1964</option>
															<option value="1965">1965</option>
															<option value="1966">1966</option>
															<option value="1967">1967</option>
															<option value="1968">1968</option>
															<option value="1969">1969</option>
															<option value="1970">1970</option>
															<option value="1971">1971</option>
															<option value="1972">1972</option>
															<option value="1973">1973</option>
															<option value="1974">1974</option>
															<option value="1975">1975</option>
															<option value="1976">1976</option>
															<option value="1977">1977</option>
															<option value="1978">1978</option>
															<option value="1979">1979</option>
															<option value="1980">1980</option>
															<option value="1981">1981</option>
															<option value="1982">1982</option>
															<option value="1983">1983</option>
															<option value="1984">1984</option>
															<option value="1985">1985</option>
															<option value="1986">1986</option>
															<option value="1987">1987</option>
															<option value="1988">1988</option>
															<option value="1989">1989</option>
															<option value="1990">1990</option>
															<option value="1991">1991</option>
															<option value="1992">1992</option>
															<option value="1993">1993</option>
															<option value="1994">1994</option>
															<option value="1995">1995</option>
															<option value="1996">1996</option>
															<option value="1997">1997</option>
															<option value="1998">1998</option>
															<option value="1999">1999</option>
															<option value="2000">2000</option>
														</select>
													</div>
													<div class="select-type2">
														<select id="month" name="month">
															<option value="">월</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select>
													</div>
													<div class="select-type2">
														<select id="day" name="day">
															<option value="">일</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
														</select>
													</div>
												</div>
											</div>
										</dd>
									</dl>
									<!-- 주소 -->
									<dl>
										<dt class="top">주소</dt>
										<dd class="address">
											<div class="form-group">
												<div class="form-item">
													<input type="text" name="zip" id="zip" placeholder="">
												</div>
												<a href="javascript:openZipCodePop();" class="btn-type v7"
													onclick="zipPopReset();">우편번호 찾기</a>
											</div>
											<div class="form-item">
												<input type="text" name="addr1" id="addr1" placeholder="">
											</div>
											<div class="form-item">
												<input type="text" name="addr2" id="addr2" placeholder="">
											</div>
										</dd>
									</dl>
									<!-- 이메일 -->
									<dl>
										<dt>이메일</dt>
										<dd>
											<div class="form-group  select-group">
												<div class="form-item">
													<input type="text" name="email1" id="email1"><span>@</span>
													<input type="text" name="email2" id="email2">
												</div>
											</div>
										</dd>
									</dl>
									<!-- 연락처 -->
									<dl>
										<dt>휴대전화</dt>
										<dd>
											<div class="form-group select-group">
												<div class="form-item">
													<input type="text" name="hp1" id="hp1" maxlength="4"
														onkeyup="checkNum($(this), '숫자만 입력해주세요.');" /><span>-</span>
													<input type="text" name="hp2" id="hp2" maxlength="4"
														onkeyup="checkNum($(this), '숫자만 입력해주세요.');" /><span>-</span>
													<input type="text" name="hp3" id="hp3" maxlength="4"
														onkeyup="checkNum($(this), '숫자만 입력해주세요.');" />
												</div>
											</div>
										</dd>
									</dl>
									<!-- 유형 -->
									<dl>
										<dt>유형</dt>
										<dd>
											<div class="form-item">
												<div class="chk-box selected">
													<input type="radio" id="rdb_type1" name="type" value="1"
														checked=""> <label class="checkbox"
														for="rdb_type1"></label> <label for="rdb_type1">신규<label>
												</div>
												<div class="chk-box">
													<input type="radio" id="rdb_type2" name="type" value="2">
													<label class="checkbox" for="rdb_type2"></label> <label
														for="rdb_type2">양수도(기존점포 인수)</label>
												</div>
											</div>
										</dd>
									</dl>
									<!-- 희망지역 -->
									<dl>
										<dt class="top">희망지역</dt>
										<dd>
											<div class="form-group">
												<div class="form-item">
													<div class="select-type2">
														<select id="region" name="region"
															onChange="regionChange(this.value);">
															<option>지역</option>
															<option value="강원">강원</option>
															<option value="경기">경기</option>
															<option value="경남">경남</option>
															<option value="경북">경북</option>
															<option value="광주">광주</option>
															<option value="대구">대구</option>
															<option value="대전">대전</option>
															<option value="부산">부산</option>
															<option value="서울">서울</option>
															<option value="울산">울산</option>
															<option value="인천">인천</option>
															<option value="전남">전남</option>
															<option value="전북">전북</option>
															<option value="제주">제주</option>
															<option value="충남">충남</option>
															<option value="충북">충북</option>
														</select>
													</div>
													<div class="select-type2">
														<select id="area" name="area">
															<option value="">시/군/구</option>
														</select>
													</div>
												</div>
											</div>
										</dd>
									</dl>
									<!-- 내용 -->
									<dl>
										<dt>내용</dt>
										<dd>
											<div class="form-item">
												<textarea name="etc" id="etc" cols="30" rows="10"></textarea>
											</div>
										</dd>
									</dl>
								</div>
								<div class="btn-wrap">
									<a
										href="javascript:UI.layerPopUp({selId:'#pop-franchisee',st:'close'})"
										class="btn-type v2">취소</a> <a href="javascript:fncSubmit();"
										class="btn-type">등록</a>
								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
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
</body>
</html>
<div class="pop-layer" id="pop-address">
	<div class="dim"></div>
	<div class="pop-wrap">
		<div class="pop-title-wrap">
			<h2 class="pop-title v2">배달주소등록</h2>
		</div>
		<div class="pop-content">
			<div class="address-wrap">
				<div class="search-form v2">
					<input type="text" name="keyword" id="keyword"
						onkeypress="if(event.keyCode==13){ searchAddress();return false; }"
						placeholder=" 예) 건물명, 도로명, 지번으로 검색하세요">
					<button type="button" onClick="searchAddress();" class="btn-search">검색</button>
				</div>

				<div class="address-box addr-first">
					<div class="address-info">
						<p>
							<strong>아래의 방법으로 배달주소를 검색해 주세요.</strong>
						</p>
						<p>
							- 도로명 + 건물번호 입력<span>예) 언주로 315, 세종대로 209</span>
						</p>
						<p>
							- 지역 검색(동/리)+번지<span>예) 역삼동 779-7</span>
						</p>
						<p>
							- 지역 검색(동/리)+건물명<span>예) 삼성동 강남소방서</span>
						</p>
					</div>
					<div class="guide-box3">도로명은 ~로, ~길까지 입력해야 정확한 주소 검색이 가능합니다.</div>
				</div>

				<div class="address-box">
					<div class="address-result">
						<div class="title-type">‘역삼동’ 에 대한 검색 결과입니다.</div>
						<div class="address-list2">
							<ul id="addrList">

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a href="#" class="btn-close"></a>
	</div>
</div>