<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>

<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/card_add.css' />">

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
<script>
function expireSession(){
	  alert("세션이 만료되었습니다");
	  
	  var userid = $('#userid').val(); // 유저 아이디
	  
	  $.ajax({
		  url:'allDelete.do',
		  contentType : "application/json; charset=UTF-8;",
		  type: 'post',
		  data : JSON.stringify({
			  userid : userid
		  }),
		  async : false,
		  success : function(data){
			  if(data == 'success'){
				  alert("성공");
				  location.href = "login.do";
			  }
		  },
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
	  })
	  
	  
	}
	setTimeout('expireSession()',<%= request.getSession().getMaxInactiveInterval() * 1000 %>);
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
			<input type="hidden" id="userid" value="${sessionScope.userid}" />
					<div class="location active">
						<a href="javascript:void(0);" id="myloc" onclick="gpsLsm(gps_yn);"></a>
					</div>

					<c:choose>
						<c:when test="${guest == 'guest' }">
							<!-- 비회원 로그인시 -->
							<div class="util-nav">
								guest 님&nbsp; <a href="regForm.do">회원가입</a><a href="logout.do">로그아웃</a> 
							</div>
						</c:when>
						<c:when test="${msg != 'login'}">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="regForm.do">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인 -->
							<div class="util-nav">
								${sessionScope.username } 님 &nbsp; <a href="logout.do">로그아웃</a>
								<a href="mylevel.do">나의정보</a> <a href="my_basket.do" class="btn-cart">
									<i class="ico-cart"></i>
								</a>
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
		
		<!-- container -->
		<div id="container">
			<section id="content">
				<div class="sub-type member">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">아이디/비밀번호 찾기</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><strong>아이디/비밀번호 찾기</strong></li>
								</ol>
							</div>
						</div>
						<article class="srch-member">
							<div class="menu-nav-wrap">
								<div class="menu-nav js_tab">
									<ul>
										<li class="active srchId"><a href="#srchId">아이디찾기</a></li>
										<li class="srchPw"><a href="#srchPw">비밀번호찾기</a></li>
									</ul>
								</div>
							</div>

							<div class="tab-content active" id="srchId">
								<div class="login-type">
									<ul>
										<li>
											<div>
												<i class="ico-login1"></i>
												<p class="title-type4">회원 정보로 찾기</p>
												<div class="btn-wrap">
													<a href="javascript:openIdByInside('srchId');"
														class="btn-type v4">회원정보 인증</a>
												</div>
											</div>
										</li>
										<li>
											<div>
												<i class="ico-login2"></i>
												<p class="title-type4">본인인증(휴대전화)으로 찾기</p>
												<div class="btn-wrap">
													<a href="javascript:findIdByKG();" class="btn-type v4">본인
														인증</a>
												</div>
											</div>
										</li>
										<li>
											<div>
												<i class="ico-login3"></i>
												<p class="title-type4">아이핀(I-pin)으로 찾기</p>
												<div class="btn-wrap">
													<a href="javascript:findIdByIpin();" class="btn-type v4">아이핀
														인증</a>
												</div>
											</div>
										</li>
									</ul>
								</div>

								<!-- 아이디찾기 결과-->
								<div class="result-box v2" id="result_id" style="display: none;">
									<div class="result-list">
										<p class="sub-tit">고객님의 정보와 일치하는 아이디 목록입니다.</p>

									</div>

									<div class="btn-wrap">
										<a href="javascript:findLogin();" class="btn-type v6">로그인</a>
										<a href="javascript:srchPw()" class="btn-type v4">비밀번호 찾기</a>
									</div>
								</div>
								<!-- //아이디찾기 결과-->

								<!-- 아이디 찾기 결과: 휴면계정일 경우 -->
								<div class="result-box" id="result_dormancy"
									style="display: none;">
									<div class="title-wrap">
										<p class="title-type user_info"></p>

									</div>
									<p class="sub-text">
										회원님의 ID는 휴면계정으로 관리 중 입니다. <br>기존 ID 및 정보는 휴면계정 해제 후 재이용이
										가능합니다.<br>휴면계정을 해제하시겠습니까?
									</p>
									<p class="sub-text">신용평가기관을 통해 실명 인증된 다미노피자 아이디입니다.</p>
									<div class="btn-wrap">
										<a href="javascript:clearDormancy();" class="btn-type v6">확인</a>
										<a href="main.do" class="btn-type v4">취소</a>
									</div>
								</div>


							</div>

							<div class="tab-content" id="srchPw">
								<div class="login-type">
									<ul>
										<li>
											<div>
												<i class="ico-login1"></i>
												<p class="title-type4">회원 정보로 찾기</p>
												<div class="form-item">
													<input type="text" id="info_id" placeholder="아이디">
												</div>
												<div class="btn-wrap">
													<a href="javascript:openIdByInside('srchPw');"
														class="btn-type v4">회원정보 인증</a>
												</div>
											</div>
										</li>
										<li>
											<div>
												<i class="ico-login2"></i>
												<p class="title-type4">본인인증(휴대전화)으로 찾기</p>
												<div class="form-item">
													<input type="text" id="kg_id" placeholder="아이디">
												</div>
												<div class="btn-wrap">
													<a href="javascript:findPwdByKG();" class="btn-type v4">본인
														인증</a>
												</div>
											</div>
										</li>
										<li>
											<div>
												<i class="ico-login3"></i>
												<p class="title-type4">아이핀(I-pin)으로 찾기</p>
												<div class="form-item">
													<input type="text" id="ipin_id" placeholder="아이디">
												</div>
												<div class="btn-wrap">
													<a href="javascript:findPwdByIpin();" class="btn-type v4">아이핀
														인증</a>
												</div>
											</div>
										</li>
									</ul>
								</div>

								<!--비밀번호 변경-->
								<div class="change-box" style="display: none;">
									<div class="title-wrap">
										<p class="title-type">비밀번호 변경</p>
									</div>
									<p class="sub-text">새로 사용할 비밀번호를 입력하세요.</p>
									<div class="form">
										<dl>
											<dt>새 비밀번호</dt>
											<dd>
												<input type="password" id="passwd" value=""
													placeholder="8~16자 영문대소문자,숫자, 특수문자 사용가능">
												<div class="text-type4" style="display: none;"
													id="passwd_alert">비밀번호는 8~16자로 입력해주세요.</div>
											</dd>
										</dl>
										<dl>
											<dt>새 비밀번호 확인</dt>
											<dd>
												<input type="password" id="confirmpw" value=""
													placeholder="">
												<div class="text-type4" style="display: none;"
													id="confirmpw_alert">비밀번호가 일치하지 않습니다.</div>
											</dd>
										</dl>
									</div>
									<div class="btn-wrap">
										<a href="javascript:updateChangePasswd();" class="btn-type v4">비밀번호
											변경</a>
									</div>
								</div>
								<!--//비밀번호 변경-->
							</div>
							<div class="info-guide">
								<ul class="list-text-v2">
									<li>회원 가입 시 등록한 휴대폰번호와 현재 보유 휴대폰번호가 다를경우 본인인증/아이핀으로 찾기를
										진행해주세요.</li>
									<li>회원가입 시 아이핀으로 가입하신 회원님께서는 아이핀으로 인증하세요.</li>
									<li>신용평가기관을 통해 한국다미노피자에 가입하신 아이디,비밀번호 찾기를 진행하며, 당사는 고객의
										주민등록번호를 저장하지 않습니다.</li>
								</ul>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>

		<div class="pop-layer type2" id="pop-rest">
			<div class="dim"></div>
			<div class="pop-wrap basic">
				<div class="pop-title-wrap">
					<h2 class="pop-title v2">회원정보 인증</h2>
				</div>
				<div class="pop-content">
					<div class="step-wrap">
						<p class="sub-text">회원 가입 시 등록한 정보를 입력해 주세요.</p>
					</div>
					<div class="step-wrap">
						<div class="form info-form">
							<dl>
								<dt>이름</dt>
								<dd>
									<div class="form-item">
										<input type="text" name="u_name" id="u_name" value="" />
									</div>
									<div class="text-type4" id="u_name_f" style="display: none;"></div>
								</dd>
							</dl>
							<dl>
								<dt>생년월일</dt>
								<dd>
									<div class="form-group">
										<div class="form-item">
											<div class="select-type2">
												<select name="byear" id="byear">
													<option>년</option>
													<option value="2020">2020</option>
													<option value="2019">2019</option>
													<option value="2018">2018</option>
													<option value="2017">2017</option>
													<option value="2016">2016</option>
													<option value="2015">2015</option>
													<option value="2014">2014</option>
													<option value="2013">2013</option>
													<option value="2012">2012</option>
													<option value="2011">2011</option>
													<option value="2010">2010</option>
													<option value="2009">2009</option>
													<option value="2008">2008</option>
													<option value="2007">2007</option>
													<option value="2006">2006</option>
													<option value="2005">2005</option>
													<option value="2004">2004</option>
													<option value="2003">2003</option>
													<option value="2002">2002</option>
													<option value="2001">2001</option>
													<option value="2000">2000</option>
													<option value="1999">1999</option>
													<option value="1998">1998</option>
													<option value="1997">1997</option>
													<option value="1996">1996</option>
													<option value="1995">1995</option>
													<option value="1994">1994</option>
													<option value="1993">1993</option>
													<option value="1992">1992</option>
													<option value="1991">1991</option>
													<option value="1990">1990</option>
													<option value="1989">1989</option>
													<option value="1988">1988</option>
													<option value="1987">1987</option>
													<option value="1986">1986</option>
													<option value="1985">1985</option>
													<option value="1984">1984</option>
													<option value="1983">1983</option>
													<option value="1982">1982</option>
													<option value="1981">1981</option>
													<option value="1980">1980</option>
													<option value="1979">1979</option>
													<option value="1978">1978</option>
													<option value="1977">1977</option>
													<option value="1976">1976</option>
													<option value="1975">1975</option>
													<option value="1974">1974</option>
													<option value="1973">1973</option>
													<option value="1972">1972</option>
													<option value="1971">1971</option>
													<option value="1970">1970</option>
													<option value="1969">1969</option>
													<option value="1968">1968</option>
													<option value="1967">1967</option>
													<option value="1966">1966</option>
													<option value="1965">1965</option>
													<option value="1964">1964</option>
													<option value="1963">1963</option>
													<option value="1962">1962</option>
													<option value="1961">1961</option>
													<option value="1960">1960</option>
													<option value="1959">1959</option>
													<option value="1958">1958</option>
													<option value="1957">1957</option>
													<option value="1956">1956</option>
													<option value="1955">1955</option>
													<option value="1954">1954</option>
													<option value="1953">1953</option>
													<option value="1952">1952</option>
													<option value="1951">1951</option>
													<option value="1950">1950</option>
													<option value="1949">1949</option>
													<option value="1948">1948</option>
													<option value="1947">1947</option>
													<option value="1946">1946</option>
													<option value="1945">1945</option>
													<option value="1944">1944</option>
													<option value="1943">1943</option>
													<option value="1942">1942</option>
													<option value="1941">1941</option>
													<option value="1940">1940</option>
													<option value="1939">1939</option>
													<option value="1938">1938</option>
													<option value="1937">1937</option>
													<option value="1936">1936</option>
													<option value="1935">1935</option>
													<option value="1934">1934</option>
													<option value="1933">1933</option>
													<option value="1932">1932</option>
													<option value="1931">1931</option>
													<option value="1930">1930</option>
													<option value="1929">1929</option>
													<option value="1928">1928</option>
													<option value="1927">1927</option>
													<option value="1926">1926</option>
													<option value="1925">1925</option>
													<option value="1924">1924</option>
													<option value="1923">1923</option>
													<option value="1922">1922</option>
													<option value="1921">1921</option>
													<option value="1920">1920</option>
													<option value="1919">1919</option>
													<option value="1918">1918</option>
													<option value="1917">1917</option>
													<option value="1916">1916</option>
													<option value="1915">1915</option>
													<option value="1914">1914</option>
													<option value="1913">1913</option>
													<option value="1912">1912</option>
													<option value="1911">1911</option>
													<option value="1910">1910</option>
													<option value="1909">1909</option>
													<option value="1908">1908</option>
													<option value="1907">1907</option>
													<option value="1906">1906</option>
													<option value="1905">1905</option>
													<option value="1904">1904</option>
													<option value="1903">1903</option>
													<option value="1902">1902</option>
													<option value="1901">1901</option>
													<option value="1900">1900</option>
												</select>
											</div>
											<div class="select-type2">
												<select name="bmonth" id="bmonth">
													<option>월</option>
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
												<select name="bday" id="bday">
													<option>일</option>
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
									<div class="text-type4" id="date_alert"
										style="margin-top: 12px; display: none;"></div>
								</dd>
							</dl>
							<dl>
								<dt>인증번호 발송</dt>
								<dd>
									<div class="form-item">
										<div class="chk-box selected">
											<input type="radio" name="rdb_auth_type" id="rdb_auth_type1"
												value="H" checked="checked"> <label class="checkbox"
												for="rdb_auth_type1"></label> <label for="rdb_auth_type1">휴대전화</label>
										</div>
										<div class="chk-box">
											<input type="radio" name="rdb_auth_type" id="rdb_auth_type2"
												value="E"> <label class="checkbox"
												for="rdb_auth_type2"></label> <label for="rdb_auth_type2">이메일</label>
										</div>
									</div>
								</dd>
							</dl>
							<!-- 휴대전화 -->
							<dl id="phone">
								<dt class="top">휴대전화</dt>
								<dd>
									<div class="form-group select-group">
										<div class="form-item number">
											<div class="select-type2">
												<select name="tel1" id="tel1">
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
												</select>
											</div>
											<input type="text" name="tel2" id="tel2" maxlength="4">
											<input type="text" name="tel3" id="tel3" maxlength="4">
										</div>
									</div>
									<div class="text-type4" id="tel_alert"
										style="margin-top: 12px; display: none;"></div>
									<div class="form-confirm">
										<div class="btn-wrap">
											<a href="javascript:doSendAuthKey();" class="btn-type v7">인증번호</a>
										</div>
										<div class="form-group">
											<div class="form-item">
												<input type="text" id="security_no_h" placeholder="인증번호">
											</div>
										</div>
										<div class="text-type4" id="security_h_alert"
											style="margin-top: 12px; display: none;"></div>
									</div>
								</dd>
							</dl>
							<!-- 이메일 -->
							<dl id="email">
								<dt class="top">이메일</dt>
								<dd>
									<div class="form-group">
										<div class="form-item e-mail">
											<input type="text" name="email1" id="email1"> <span>@</span>
											<input type="text" name="email2" id="email2">
											<div class="select-type2">
												<select id="email3" name="email3"
													onchange="changeEmail(this.value);">
													<option value="naver.com">네이버</option>
													<option value="hanmail.net">한메일</option>
													<option value="gmail.com">지메일</option>
													<option value="hotmail.com">핫메일</option>
													<option value="nate.com">네이트</option>
													<option value="">직접입력</option>
												</select>
											</div>
										</div>
									</div>
									<div class="text-type4" id="email_alert"
										style="margin-top: 12px; display: none;"></div>
									<div class="form-confirm">
										<div class="btn-wrap">
											<a href="javascript:doSendAuthKey();" class="btn-type v7">인증번호</a>
										</div>
										<div class="form-group">
											<div class="form-item">
												<input type="text" id="security_no_e" placeholder="인증번호">
											</div>
										</div>
										<div class="text-type4" id="security_e_alert"
											style="margin-top: 12px; display: none;"></div>
									</div>
								</dd>
							</dl>
						</div>
						<div class="btn-wrap">
							<a href="javascript:findIdByInside();" class="btn-type1">아이디
								찾기</a>
						</div>
					</div>
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>

		<div class="pop_toast" id="card_add" style="display: none;">
			<div class="bg"></div>
			<div class="pop_wrap">
				<div class="pop_content">
					<p>장바구니에 담았습니다.</p>
				</div>
			</div>
		</div>

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
	</div>
	<!-- //wrap -->
</body>
</html>
