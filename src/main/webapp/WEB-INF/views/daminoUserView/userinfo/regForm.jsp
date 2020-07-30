<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<head>
<meta charset="utf-8">
<title>이용약관- 다미노피자</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/card_add.css' />">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
<!-- 회원가입 관련 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/member.js'/>"></script>

<script>
	function phoneCheckValChange() {
		$('#phoneCheck').val("N"); // 휴대폰 입력값이 바뀔 때 인증여부를 "N"으로 세팅
	}

	function doSendAuthKey() {
		var phoneNumber1 = $('#sel_hand_tel1').val();
		var phoneNumber2 = $('#hand_tel2').val();
		var phoneNumber3 = $('#hand_tel3').val();
		var phoneNumber = phoneNumber1.concat(phoneNumber2, phoneNumber3);

		$.ajax({
			type : "POST",
			url : "sendAuthKey.do",
			dataType : "json",
			contentType : "application/json; charset=utf-8;",
			data : JSON.stringify({
				phoneNumber : phoneNumber,
			}),
			success : function(res) {
				alert("인증번호가 발송되었습니다. \n인증번호 입력란에 수신된 인증번호를 입력해 주세요.");
				$('#btn_AuthKeyConfirm').click(
						function() {
							alert("인증번호 입력");
							if ($.trim(res) == $('#security_no').val()) {
								$('#phoneCheck').val("Y"); // 휴대폰 인증이 완료 되었을 경우 phoneCheck 값을 "Y"로 세팅
								$('#security_alert').text("휴대폰 인증이 완료되었습니다.");
								$('#security_alert').show();
							} else {
								$('#security_alert').text(
										"인증번호가 일치하지 않습니다. 다시 시도해주세요.");
								$('#security_alert').show();
								$('#security_no').val() = "";
								$('#security_no').focus();
								return;
							}
						})
			},
			error : function(error) {
				alert("인증문자 발송에 실패하였습니다. 다시 시도해주세요.");
			}
		});
	}
	/* 로그인 중복 확인*/
	/* 1620 줄로 이동에서 실험해볼 수 있습니다.*/
	function idck() {
		var userid = $("#useridtest").val();
		$.ajax({
			type : "POST",
			data : JSON.stringify({
				userid : userid,
			}),
			url : "idcheck.do",
			dataType : "json",
			contentType : "application/json; charset=UTF-8;",
			success : function(data) {
				if (data > 0) {
					alert("아이디 중복");
					$('#id_alert').text("중복사용이 되는 아이디입니다.");
					$('#id_alert').show();
					$('#id_alert').focus();
					return;
				} else {
					alert("사용가능");
					$('#id_alert').text("사용가능 아이디입니다.");
					$('#id_alert').show();	
				}
			},
			error : function(err) {
				alert()
			}
		});
	}

	//아이디 중복조회(구현  시도중)(수정중 일단 놔두어주세요.)
	/* $(document).ready(function(){
	 $('#checkIdBtn').on('click', function(){
	 $.ajax({
	 type: 'POST',
	 url: 'checkSignup.do',
	 data: {
	 "id" : $('#id').val() 
	 }, 
	 success: function(data){ 
	 if($.trim(data) == 0){ 
	 $('#checkMsg').html('<p style="color:blue">사용가능</p>');
	 } 
	 else{ 
	 $('#checkMsg').html('<p style="color:red">사용불가능</p>'); 
	 }
	 }
	 });
	 });
	 }); */
</script>
</head>
<div id="wrap">
	<header id="header" style="transform: translateY(0px);">
		<div class="top-wrap">
			<div class="inner-box" id="tip-box-top">
				<a href="/main" class="btn-logo"> <i class="ico-logo"></i>
					<h1 class="hidden">다미노피자</h1>
				</a>

				<div class="util-nav">
					<a href="login.do">로그인</a> <a href="regForm.do">회원가입</a>
				</div>
			</div>
		</div>

		<!-- main 1dep menu -->
		<div id="gnb" class="gnb-wrap">
			<div class="gnb-inner">
				<ul>
					<li class="active"><a href="menuList.do"><span>메뉴</span></a></li>
					<li><a href="ecoupon.do"><span>e-쿠폰</span></a></li>
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
	<!-- container -->
	<div id="container">
		<section id="content">
			<div class="sub-type member">
				<div class="inner-box">
					<div class="page-title-wrap v2">
						<h2 class="page-title">회원가입</h2>
						<div class="depth-area">
							<ol>
								<li><a href="main.do">홈</a></li>
								<li><strong>회원가입</strong></li>
							</ol>
						</div>
					</div>

					<article class="join-area">
						<div class="join-step2">
							<div class="step-list">
								<ul>
									<li class="active">01 개인정보입력</li>
									<li>02 가입완료</li>
								</ul>
							</div>

							<div class="myinfo-wrap">
								<div class="form">
									<form name="frm" id="frm" action="/member/regStep2Proc"
										method="post">
										<input type="hidden" name="parent_email" id="parent_email">
										<input type="hidden" name="dupInfo" id="dupInfo" value="">
										<input type="hidden" name="connInfo" id="connInfo" value="">
										<input type="hidden" name="auth_type" id="auth_type" value="H">
										<input type="hidden" name="age" id="age" value=""> <input
											type="hidden" name="vno" id="vno" value=""> <input
											type="hidden" name="birth" id="birth" value=""> <input
											type="hidden" name="job" id="job" value=""> <input
											type="hidden" name="idDupChk" id="idDupChk" value="N">
										<input type="hidden" name="hand_tel_agency"
											id="hand_tel_agency"> <input type="hidden"
											name="hand_tel1" id="hand_tel1"> <input type="hidden"
											name="email" id="email"> <input type="hidden"
											name="dm_fl" id="dm_fl" value="N"> <input
											type="hidden" name="o_dm_fl" id="o_dm_fl" value="N">
										<input type="hidden" name="ds_fl" id="ds_fl" value="N">
										<input type="hidden" name="hdnAuthKey" id="hdnAuthKey"
											value=""> <input type="hidden" name="hdnAuthChk"
											id="hdnAuthChk" value="N"> <input type="hidden"
											name="id_uuid" id="id_uuid" value=""> <input
											type="hidden" name="id_link_YN" id="id_link_YN" value="">
										<input type="hidden" name="id_uuid2" id="id_uuid2"
											value="136070238"> <input type="hidden"
											name="id_link_YN2" id="id_link_YN2" value="Y"> <input
											type="hidden" name="passwd" id="passwd" value="136070238">
										<input type="hidden" name="confirmpw" id="confirmpw"
											value="136070238"> <input type="hidden"
											name="joinptype" id="joinptype" value="N"> <input
											type="hidden" name="emailChk" id="emailChk" value="">

										<dl>
											<dt class="center">이름</dt>
											<dd>
												<div class="form-item name">
													<input type="text" placeholder="" id="username"
														name="username" value="">
												</div>
											</dd>
										</dl>

										<dl>
											<dt class="top">아이디</dt>
											<dd>
												<div class="form-item name">
													<input type="text" name="userid" id="userid" maxlength="16"
														placeholder="">
													<button class="btn-type v7" id="idcheck" onClick="idck();">버튼</button>
													
												</div>
												
												<div class="text-type4" id="id_alert" style="display: none;"></div>
											
											</dd>
										</dl>

										<dl>
											<dt class="center">비밀번호</dt>
											<dd>
												<div class="form-item name">
													<input type="password" id="password" name="password"
														value="">
												</div>
												<div class="text-type4" id="pwd_alert"
													style="display: none;"></div>
											</dd>
										</dl>

										<dl>
											<dt class="center">비밀번호 확인</dt>
											<dd>
												<div class="form-item name">
													<input type="password" placeholder="" id="passwordChk"
														name="passwordChk" value="">
												</div>
												<div class="text-type4" id="pwdChk_alert"
													style="display: none;"></div>
											</dd>
										</dl>

										<dl>
											<dt class="center">생년월일</dt>
											<dd>
												<div class="form-group v2">
													<div class="form-item birth">
														<div class="chk-wrap">
															<div class="chk-box selected">
																<input type="radio" name="birth_fl" id="birth_s"
																	value="S" checked="checked"> <label
																	class="checkbox" for="birth_s"></label> <label
																	for="birth_s">양력</label>
															</div>
															<div class="chk-box">
																<input type="radio" name="birth_fl" id="birth_m"
																	value="M"> <label class="checkbox"
																	for="birth_m"></label> <label for="birth_m">음력</label>
															</div>
														</div>
														<div class="select-type2">
															<select name="byear" id="byear" class="selected">
																<option value="">년</option>
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
															<select name="bmonth" id="bmonth" class="selected">
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
															<select name="bday" id="bday" class="selected">
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
													<div class="text-type4" id="birth_alert"
														style="display: none;"></div>
												</div>

											</dd>
										</dl>

										<dl>
											<dt class="center">성별</dt>
											<dd>
												<div class="form-group v2">
													<div class="form-item gender">
														<div class="chk-wrap">
															<div class="chk-box M">
																<input type="radio" name="sex" id="sex_m" value="M"
																	checked="checked"> <label class="checkbox"
																	for="sex_m"></label> <label for="sex_m">남성</label>
															</div>
															<div class="chk-box F selected">
																<input type="radio" name="sex" id="sex_f" value="F">
																<label class="checkbox" for="sex_f"></label> <label
																	for="sex_f">여성</label>
															</div>
														</div>
														<div class="text-type4" id="gender_alert"
															style="display: none;"></div>
													</div>
												</div>

											</dd>
										</dl>

										<dl>
											<dt class="top">휴대전화</dt>
											<dd>
												<div class="form-group v2">
													<div class="form-item">
														<div class="select-type2">
															<input type="hidden" name="phoneCheck" id="phoneCheck"
																value="N"> <select name="sel_hand_tel1"
																id="sel_hand_tel1" title="휴대전화번호"
																onChange="phoneCheckValChange()">
																<option value="010">010</option>
																<option value="011">011</option>
																<option value="016">016</option>
																<option value="017">017</option>
																<option value="018">018</option>
																<option value="019">019</option>
															</select>
														</div>

														<input type="text" name="hand_tel2" id="hand_tel2"
															maxlength="4" class="i_text" title="휴대전화번호"
															onChange="phoneCheckValChange()"> <input
															type="text" name="hand_tel3" id="hand_tel3" maxlength="4"
															class="i_text" title="휴대전화번호"
															onChange="phoneCheckValChange()"> <a
															href="javascript:doSendAuthKey();" id="btn_sendAuthchk"
															class="btn-type v7">인증요청</a>
													</div>
													<div class="text-type4" id="tel_alert"
														style="display: none;"></div>
												</div>
											</dd>
										</dl>

										<dl id="AuthKeyBox">
											<dt class="center">인증번호 입력</dt>
											<dd>
												<div class="form-group2">
													<div class="form-item number">
														<input type="text" name="security_no" id="security_no"
															placeholder="인증번호 4자리" maxlength="20">
														<Button type="button" id="btn_AuthKeyConfirm"
															class="btn-type v4">인증하기</button>
													</div>
													<div class="text-type4" id="security_alert"
														style="display: none;"></div>
												</div>
											</dd>
										</dl>

										<dl>
											<dt class="center">이메일</dt>
											<dd>
												<div class="form-group v2">
													<div class="form-item e-mail">s
														<input type="text" name="email1" id="email1"> <span>@</span>
														<input type="text" name="email2" id="email2">
														<div class="select-type2">
															<select name="email3" id="email3"
																onchange="checkEmailState($('#email3'),$('#email2'))">
																<option value="naver.com">네이버</option>
																<option value="hanmail.net">한메일</option>
																<option value="gmail.com">지메일</option>
																<option value="hotmail.com">핫메일</option>
																<option value="nate.com">네이트</option>
																<option value="WRITE" selected="">직접입력</option>
															</select>
														</div>
														<a href="javaScript:doCheckEmail();" class="btn-type v7">중복확인</a>
													</div>
													<div class="text-type4" id="email_alert"
														style="display: none;"></div>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>약관 전체동의</dt>
											<dd>
												<div class="form agree">
													<div class="chk-box v4">
														<input type="checkbox" id="agree_all" name="agree_all"
															value="Y" class="all-check"> <label
															class="checkbox" for="agree_all"></label> <label
															for="agree_all">전체 동의하기</label>
													</div>
													<ul>
														<li>
															<div class="chk-box v4">
																<input type="checkbox" name="agree_2" id="agree_2"
																	value="Y"> <label class="checkbox"
																	for="agree_2"></label> <label for="agree_2">개인정보
																	수집 및 이용 동의(필수)</label> <a
																	href="javascript:UI.layerPopUp({selId:'#pop-terms-p2'})"
																	class="btn-link">보기</a>
															</div>
														</li>
														<li>
															<div class="chk-box v4">
																<input type="checkbox" name="agree_1" id="agree_1"
																	value="Y"> <label class="checkbox"
																	for="agree_1"></label> <label for="agree_1">이용약관
																	동의(필수)</label> <a
																	href="javascript:UI.layerPopUp({selId:'#pop-terms'})"
																	class="btn-link">보기</a>
															</div>
														</li>
														<li>
															<div class="chk-box v4">
																<input type="checkbox" id="location_yn"
																	name="location_yn" value="Y"> <label
																	class="checkbox" for="location_yn"></label> <label
																	for="location_yn">위치기반 서비스 약관 동의(필수)</label> <a
																	href="javascript:UI.layerPopUp({selId:'#pop-terms-p4'})"
																	class="btn-link">보기</a>
															</div>
														</li>
													</ul>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>광고성 정보 수신 전체 동의</dt>
											<dd>
												<div class="form agree">
													<div class="chk-box v4">
														<input type="checkbox" id="agree_all2" name="agreeType1"
															class="all-check2"> <label class="checkbox"
															for="agree_all2"></label> <label for="all1">전체
															동의하기</label>
													</div>
													<ul>
														<li>
															<div class="chk-box v4">
																<input type="checkbox" id="chk_ds_fl" name="chk_ds_fl"
																	value="Y"> <label class="checkbox"
																	for="chk_ds_fl"></label> <label for="chk_ds_fl">문자메세지(선택)</label>
															</div>
														</li>
														<li>
															<div class="chk-box v4">
																<input type="checkbox" id="chk_dm_fl" name="chk_dm_fl"
																	value="Y"> <label class="checkbox"
																	for="chk_dm_fl"></label> <label for="chk_dm_fl">이메일(선택)</label>
															</div>
														</li>
														<li>
															<div class="chk-box v4">
																<input type="checkbox" id="chk_o_dm_fl"
																	name="chk_o_dm_fl" value="Y"> <label
																	class="checkbox" for="chk_o_dm_fl"></label> <label
																	for="chk_o_dm_fl">DM 우편(최근 배달주소로 배송)(선택)</label>
															</div>
														</li>
													</ul>
												</div>

											</dd>
										</dl>
									</form>
								</div>

								<div class="btn-wrap">
									<a href="javascript:checks()" class="btn-type v6">가입하기</a>
								</div>
							</div>
						</div>
					</article>
				</div>
			</div>

			<!-- 팝업-메인 빅배너 -->
			<div class="pop-layer type2" id="pop-terms">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title v2">이용약관 동의</h2>
					</div>
					<div class="pop-content">
						<div class="terms-wrap">
							<div class="terms-box">
								<ol>
									<li><strong><em>제1조</em> 목적</strong>
										<p>이 약관은 청오디피케이㈜(이하’회사’)에서 운영하는 다미노피자 웹사이트 &lt;
											www.dominos.co.kr &gt;와 스마트폰 및 이동통신기기를 통해 제공되는 모바일웹사이트 &lt;
											m.dominos.co.kr &gt; 및 애플리케이션을 통해 제공되는 서비스의 이용에 관련하여 권리 의무 및
											관련 절차 등을 규정하고 상호 발전을 도모하는 것을 그 목적으로 합니다.</p></li>
									<li><strong><em>제2조</em> 정의</strong>
										<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
										<ol>
											<li><strong>(1) “회원”이란 다미노피자 웹/모바일에 접속하여 본 약관에
													따라 회사에서 제공하는 서비스를 이용하는 고객을 말합니다.</strong></li>
											<li><strong>(2) "아이디(ID)" 란 “회원”의 식별과 사이트에서
													제공하는 서비스를 이용하고, 회사가 회원을 구분, 식별할 수 있도록, 회원이 정하고 회사가 승인하는 문자와
													숫자의 조합을 의미합니다.</strong></li>
											<li><strong>(3) ”비밀번호” 란 회원이 부여 받은 아이디(ID)와 동일한
													회원임을 확인하고 비밀보호를 위해 회원 자신이 정한 문자 또는 숫자의 조합을 의미합니다.</strong></li>
										</ol></li>
									<li><strong><em>제3조</em> 약관의 게시와 개정</strong>
										<ol>
											<li><strong>(1) 이 약관은 웹사이트(<a
													href="http://www.dominos.co.kr" target="_blank"
													title="새창열림">www.dominos.co.kr</a>)와 모바일웹사이트(<a
													href="http://m.dominos.co.kr" target="_blank" title="새창열림">m.dominos.co.kr</a>)에
													그 내용을 이용자가 알 수 있도록 게시함으로써 효력을 발생하며 "회사"는 약관의 규제 등에 관한 법률,
													전자거래 기본법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 소비자 보호법 등 관련법을 위배하지
													않는 범위에서 개정할 수 있습니다.
											</strong></li>
											<li><strong>(2) 회사는 이 약관의 내용을 “회원”이 쉽게 알 수 있도록
													서비스 초기 화면에 상호, 소재지, 대표자의 성명, 사업자등록번호, 연락처 등과 함께 게시합니다.</strong></li>
											<li><strong>(3) "회사" 는 약관을 개정할 경우, 적용일자 및 개정
													사유를 명시하며 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을
													의미합니다.</strong></li>
										</ol></li>
									<li><strong><em>제4조</em> 약관의 해석</strong>
										<ol>
											<li><strong>(1) 해당 약관에서 정하지 아니한 사항 및 이 약관의 해석에
													대해서는 전자거래소비자보호지침 및 관계법령 또는 상관계에 따릅니다.</strong></li>
											<li><strong>(2) 회사는 “약관의 규제에 관한 법률”, “정보통신망
													이용촉진 및 정보보호 등에 관한 법률”(이하 “정보통신망법”) 등 관련법에 위배하지 않는 법위에서 이
													약관을 개정할 수 있습니다. </strong></li>
											<li><strong>(3) 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를
													명시하여 현행 약관과 함께 사이트의 초기화면에 적용일자 30일 이전부터 적용일자 전일까지 공지합니다.</strong></li>
										</ol></li>
									<li><strong><em>제5조</em> 이용계약 성립</strong>
										<ol>
											<li><strong>(1) 이용계약은 “회원”이 되고자 본 약관에 동의한 후 회사가
													정한 양식에 따라 회원정보를 기입하여 회원가입신청을 하고 회사가 이러한 신청에 대하여 승낙함으로써
													체결됩니다.</strong></li>
											<li><strong>(2) 회사는 제1항과 같이 회원으로 가입할 것을 신청한 이용자
													중 다음 각 호에 해당하는 신청에 대하여는 서비스 제공을 거부하거나 제한할 수 있습니다.</strong>
												<ul>
													<li>- 실명이 아니거나 타인의 명의를 도용하여 신청하였을 경우</li>
													<li>- 허위 정보를 기재하거나, 회사가 제시하는 내용을 기재하지 않은 경우</li>
													<li>- 관계법령에 위배되거나 미풍양속을 저해하고자 하는 목적으로 회원가입 신청을 할 경우</li>
													<li>- 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하여
														신청하는 경우</li>
												</ul></li>
										</ol></li>
									<li><strong><em>제6조</em> 회원정보의 변경</strong>
										<ol>
											<li><strong>(1) 회원은 개인정보관리화면을 통하여 언제든지 본인의
													개인정보를 열람하고 수정할 수 있습니다.</strong></li>
											<li><strong>(2) "회원"은 회원가입신청 시 기재한 사항이 변경되었을 경우
													온라인으로 수정을 하거나 전자우편 기타 방법으로 "회사"에 대하여 그 변경사항을 알려야 합니다.</strong></li>
											<li><strong>(3) 제2항의 변경사항을 "회사"에 알리지 않아 발생한
													불이익에 대하여 "회사"는 책임지지 않습니다.</strong></li>
										</ol></li>
									<li><strong><em>제7조</em> 개인정보보호 의무</strong>
										<p>"회사"는 "정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기 위해
											노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 "회사"의 개인정보처리방침이 적용됩니다. 다만,
											"회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보처리방침이 적용되지 않습니다.</p></li>
									<li><strong><em>제8조</em> 회원의 아이디 및 비밀번호의 관리에 대한
											의무</strong>
										<ol>
											<li><strong>(1) "ID"와 "비밀번호"에 관한 관리책임은 "회원"에게
													있으며, 이를 제3자가 이용하도록 하여서는 안되며 관리소홀로 인해 발생되는 모든 결과의 책임은 회원
													본인에게 있습니다.</strong></li>
											<li><strong>(2) "회원"은 "ID" 및 "비밀번호"가 도용되거나 제3자가
													사용하고 있음을 인지한 경우에는 이를 즉시 "회사"에 통지하고 "회사"의 안내에 따라야 합니다.</strong></li>
											<li><strong>(3) 제2항의 경우에 해당 "회원"이 "회사"에 그 사실을
													통지하지 않거나, 통지한 경우에도 "회사"의 안내에 따르지 않아 발생한 불이익에 대하여 "회사"는 책임지지
													않습니다.</strong></li>
										</ol></li>
									<li><strong><em>제9조</em> 회원의 의무</strong>
										<ol>
											<li><strong>(1) 회원은 다음 행위를 하여서는 안됩니다. </strong>
												<ul>
													<li>- 신청 또는 변경 시 허위내용의 등록</li>
													<li>- 타인의 정보 도용 / 타회원의 ID 및 비밀번호를 사용하는 행위</li>
													<li>- 회사가 게시한 정보의 변경</li>
													<li>- 회사가 제공하는 서비스를 통하여 얻은 정보를 회사의 사전 승낙 없이 허가용도 이외의
														목적으로 사용하거나 복제, 유통, 상업적으로 이용하려는 행위</li>
													<li>- 회사와 기타 제3자의 저작권 등 지적재산권에 대한 침해</li>
													<li>- 회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</li>
													<li>- 사회질서에 위배되는 외설/폭력적 메시지 유포/범죄행위를 목적으로 하거나 범죄를 교사하는
														행위</li>
													<li>- 관계법령에 위배되거나 미풍양속을 저해하고자 하는 목적으로 회원가입 신청을 할 경우</li>
													<li>- 회사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위</li>
													<li>- 기타 불법적이거나 부당한 행위</li>
													<li>- 정보 서비스를 위해 하거나, 혼란을 일으키는 해킹, 컴퓨터 바이러스 전염, 유포하는
														행위</li>
													<li>- 회사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위</li>
													<li>- 기타 불법적이거나 부당한 행위</li>
												</ul></li>
										</ol></li>
									<li><strong><em>제10조</em> 회사의 의무</strong>
										<ol>
											<li><strong>(1) 회사는 관계법령 및 이 약관에서 금지하는 행위를 하지
													않습니다. </strong></li>
											<li><strong>(2) 회사는 지속적이고 안정적인 서비스를 제공하기 위해
													노력합니다. </strong></li>
											<li><strong>(3) 회사는 서비스를 이용하는 회원이 제기하는 의견이나
													불만사항이 정당하다고 인정되면 즉시 처리합니다. 다만 즉시 처리가 불가능한 경우에는 회원에게 그 사유와
													처리되는 일정을 통지합니다.</strong></li>
										</ol></li>
									<li><strong><em>제11조</em> 개인정보 수집</strong>
										<ol>
											<li><strong>(1) "회사"는 적법하고 공정한 수단에 의하여 서비스이용계약의
													성립 및 이행에 필요한 최소한의 개인정보를 수집합니다. </strong></li>
											<li><strong>(2) 회사는 회원가입 신청 시 기본적인 서비스 제공을 위해
													성명, 생년월일, 성별, 아이디, 비밀번호, 이메일, 휴대전화번호 등에 대한 개인정보를 수집합니다. </strong></li>
											<li><strong>(3) 회사는 회원의 기본적 인권을 침해할 우려가 있는 내용은
													수집하지 않습니다.</strong></li>
										</ol></li>
									<li><strong><em>제12조</em> 회원탈퇴 및 자격 상실 등</strong>
										<ol>
											<li><strong>(1) 회원"은 언제든지 서비스초기화면의 고객센터 또는 내 정보
													관리 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를
													즉시 처리하여야 합니다. </strong></li>
											<li><strong>(2) 회원"이 계약을 해지할 경우, 관련법 및
													개인정보처리방침에 따라 "회사"가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 "회원"의 모든 데이터는
													소멸됩니다.</strong></li>
											<li><strong>(3) 회사는 회원이 다음 각 호에 해당하는 행위를 하였을 경우
													사전 통지 없이 자격을 제한/정지할 수 있습니다. </strong>
												<ul>
													<li>- 타인의 ID및 비밀번호를 도용할 경우</li>
													<li>- 이용 가입 시 이용계약에 위반되는 허위사실을 기입하였을 경우</li>
													<li>- 다른 회원이 본 사이트를 이용하는 것을 방해하거나 그 정보를 도용하는 등 거래질서를
														위협하는 경우</li>
													<li>- 본 사이트를 이용하여 기타 관련 법률과 이 약관이 금지하는 행위를 하거나 미풍양속에
														반하는 행위를 하는 경우</li>
												</ul></li>
										</ol></li>
									<li><strong><em>제13조</em> 개인정보 파기 및 제3자 제공의 금지</strong>
										<p>"회사"는 회원이 탈퇴하거나 제16조에 따라 동의를 철회하는 경우, 지체 없이 수집된 회원정보를
											파기하는 등 필요한 조치를 취합니다.</p>
										<ol>
											<li><strong>(1) 회사는 관련 법령에 특별한 규정이 있는 경우를 제외하고,
													개인정보를 제3자에게 제공하지 않습니다.</strong></li>
											<li><strong>(2) 고객이 서비스 가입 등을 위해 기재한 개인정보는 회원
													탈퇴 등 이용목적이 달성된 후 내부 방침에 따라 지체 없이 파기합니다. </strong></li>
											<li><strong>(3) 파기방법</strong>
												<p>
													종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기한다.<br>전자적 파일 형태로
													저장된 개인정보는 기록을 재생할 수 없는 기술적 조치를 통하여 삭제한다.
												</p></li>
											<li><strong>(4)개인정보 유효기간 제도 도입</strong>
												<ul>
													<li>- 당사는 장기간(1년 이상) 서비스 미이용자의 개인정보보호를 위하여 2015년 8월
														18일부로 다른 이용자의 개인정보와 분리하여 저장, 관리합니다.</li>
													<li>- 미이용의 기간은 최종 로그인 일자 및 주문이력으로 산정하며 법령에서 정의한 기간 동안
														서비스 미이용자에 대하여 분리, 저장, 관리합니다.</li>
													<li>- 당사는 미이용자 개인정보 분리/저장시점 도래 1개월 이전에 이메일 등을 통해 해당
														이용자에게 관련내용을 공지합니다.</li>
													<li>- 분리 저장된 미이용자 개인정보는 관련 법령에 따라 일정기간 동안 보유하며, 해당 기간
														종료 후 파기됩니다. 파기되지 않은 개인정보는 해당 이용자의 요청에 따라 서비스 이용을 재개하는 시점에
														다시 제공됩니다</li>
												</ul></li>
										</ol></li>
									<li><strong><em>제14조</em> 개인정보 동의 철회, 열람 또는 정정</strong>
										<ol>
											<li><strong>(1) 회원 또는 회원의 법정대리인은 언제든지 개인정보의 수집
													및 이용, 목적 외의 사용에 대한 동의를 철회할 수 있습니다. </strong></li>
											<li><strong>(2) 회원 또는 회원의 법정대리인은 언제든지 자신의 개인정보를
													열람할 수 있으며, 스스로 정보 및 오류를 수정할 수 있습니다. 그 자세한 방법은 본 사이트의 공지,
													서비스이용안내에서 정한 바에 따릅니다.</strong></li>
										</ol></li>
									<li><strong><em>제15조</em> 서비스의 제공 및 변경</strong>
										<ol>
											<li><strong>(1) 회사는 업무상/운영상/기술상 필요에 따라 제공하고 있는
													전부 또는 일부 서비스를 변경할 수 있습니다. </strong></li>
											<li><strong>(2) 서비스는 연중무휴, 1일 24시간 서비스를 제공함을
													원칙으로 합니다. </strong></li>
											<li><strong>(3) 회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및
													고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다.
													"회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다. </strong></li>
											<li><strong>(4) "회사"는 서비스의 제공에 필요한 경우 정기점검을 실시할
													수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.</strong></li>
										</ol></li>
									<li><strong><em>제16조</em> 정보의 제공</strong>
										<ol>
											<li><strong>(1) 회사"는 "회원"이 "서비스" 이용 중 필요하다고
													인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로 "회원"에게 제공할 수 있습니다. 다만,
													"회원"은 관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편에
													대해서 수신 거절을 할 수 있습니다.</strong></li>
										</ol></li>
									<li><strong><em>제17조</em> 게시물 삭제</strong>
										<p>회사는 회원이 게시하거나 제공하는 서비스 내용이 다음 각 호에 해당한다고 판단될 경우 사전 통지
											없이 삭제할 수 있습니다.</p>
										<ul>
											<li>- 다른 회원 또는 제3자를 비방하거나 명예를 손상시키는 내용인 경우</li>
											<li>- 다량의 정보를 전송하여 서비스의 안정적 운영을 방해하는 경우</li>
											<li>- 허위 사실 유포 및 수신자의 의사에 반하는 광고성 정보를 전송하는 경우</li>
											<li>- 공공질서 및 미풍양속에 위반되는 내용인 경우</li>
											<li>- 제3자의 지적재산권에 침해하는 내용인 경우</li>
										</ul></li>
									<li><strong><em>제18조</em> 회원에 대한 통지</strong>
										<ol>
											<li><strong>(1) 회사"가 "회원"에 대한 통지를 하는 경우 회원의
													전자우편주소로 발송할 수 있습니다. </strong></li>
											<li><strong>(2) 회사의 불특정다수 회원에 대하여 통지를 하는 경우,
													1주일 이상 회사의 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다. </strong></li>
											<li><strong>(3) 회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및
													고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다.
													"회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다. </strong></li>
											<li><strong>&lt;(4) "회사"는 서비스의 제공에 필요한 경우 정기점검을
													실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.</strong></li>
										</ol></li>
									<li><strong><em>제19조</em> 권리의 귀속</strong>
										<ol>
											<li><strong>(1) 서비스와 관련된 저작권 등 일체의 지적재산권은 회사에
													귀속됩니다. </strong></li>
											<li><strong>(2) 회원은 서비스를 이용함으로써 얻은 정보를 회사의 사전
													승낙 없이 복제, 송신, 배포, 방송, 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게
													하여서는 안됩니다. </strong></li>
											<li><strong>(3) 본 사이트에 회원이 게재한 자료와 게시물에 대한 권리와
													책임은 게시 당사자에게 있으며 회사는 회원의 동의 없이 이를 영리적인 목적으로 사용하지 않습니다.</strong></li>
										</ol></li>
									<li><strong><em>제20조</em> 책임제한</strong>
										<ol>
											<li><strong>(1) "회사"는 천재지변 또는 이에 준하는 불가항력으로 인하여
													"서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다. </strong></li>
											<li><strong>(2) "회사"는 "회원"의 귀책사유로 인한 "서비스" 이용의
													장애에 대하여는 책임을 지지 않습니다. </strong></li>
											<li><strong>(3) "회사"는 "회원"이 "서비스"와 관련하여 게재한 정보,
													자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다. </strong></li>
											<li><strong>(4) "회사"는 "회원" 간 또는 "회원"과 제3자 상호간에
													"서비스"를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.</strong></li>
											<li><strong>(5) "회사"는 무료로 제공되는 서비스 이용과 관련하여
													관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.</strong></li>
										</ol></li>
									<li><strong><em>제21조</em> 분쟁 시 준거법과 관할법원</strong>
										<p></p>
										<ol>
											<li><strong>(1) 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게
													해결하기 위하여 필요한 모든 노력을 하여야 한다. </strong></li>
											<li><strong>(2) 전항의 경우에도 불구하고 분쟁으로 인한 소송이 제기될
													경우 서울중앙지방법원을 관할법원으로 하여 해결한다. </strong></li>
											<li><strong>(3) 회사와 이용자간에 발생하는 분쟁에 관하여는 한국법을
													적용한다.</strong></li>
										</ol></li>
									<li><strong>부칙</strong>
										<ul>
											<li>(시행일) 2009년 5월 20일부터 시행되던 종전의 약관은 본 약관으로 대체합니다.</li>
											<li>(시행일) 2009년 5월 20일부터 시행되던 종전의 약관은 2011년 6월 16일 본
												약관으로 대체합니다.</li>
											<li>(시행일) 2011년 6월 16일부터 시행되던 종전의 약관은 2011년 10월 31일 본
												약관으로 대체합니다.</li>
											<li>(시행일) 2011년 10월 31일부터 시행되던 종전의 약관은 2015년 7월 28일 본
												약관으로 대체합니다.</li>
											<li>(시행일) 2015년 7월 28일부터 시행되던 종전의 약관은 2015년 12월 1일 본
												약관으로 대체합니다.</li>
											<li>(시행일) 2015년 12월 1일부터 시행되던 종전의 약관은 2019년 11월 18일 본
												약관으로 대체합니다.</li>
											<li>(시행일) 2019년 11월 18일부터 시행되던 종전의 약관은 2020년 7월 8일 본
												약관으로 대체합니다.</li>
										</ul></li>
								</ol>
							</div>
						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
			<!-- //팝업-메인 빅배너 -->
			<!-- 팝업-메인 빅배너 -->
			<div class="pop-layer pop-terms" id="pop-terms-p2">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title">개인정보 수집 및 이용 동의</h2>
					</div>
					<div class="pop-content">
						<div class="terms-wrap">
							<p class="sub-text">
								다미노피자는 고객들의 개인정보를 소중히 다루고 있습니다.<br> <br> <b><font
									style="color: black;">개인정보 처리방침 안내</font></b><br> 청오디피케이㈜는(이하
								“회사”는) 고객님의 개인정보를 중요시하며, 개인정보보호를 위해 “정보통신망 이용촉진 및 정보보호에 관한 법률”,
								“통신비밀보호법”, “개인정보보호법” 등 정보통신서비스제공자가 준수하여야 할 관련 법령상의 개인정보보호 규정을
								준수하며, 관련 법령에 의거한 개인정보 처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다. 회사는
								개인정보 처리방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를
								위해 어떠한 조치가 취해지고 있는지 알려드립니다. <br> <br> · &emsp;수집하는 개인
								정보의 항목 및 수집 방법<br> · &emsp;개인정보의 수집 및 이용목적<br> ·
								&emsp;개인정보의 제공<br> · &emsp;수집한 개인정보의 위탁<br> ·
								&emsp;개인정보 보유 및 이용기간<br> · &emsp;개인정보의 파기절차 및 방법<br> ·
								&emsp;이용자 및 법정대리인의 권리와 그 행사방법<br> · &emsp;개인정보 자동 수집 장치의
								설치/운영 및 거부에 관한 사항<br> · &emsp;개인정보의 기술적/관리적 보호 대책<br>
								· &emsp;개인위치정보의 보호<br> · &emsp;개인정보 보호책임자 및 담당자의 연락처<br>
								· &emsp;고지의 의무<br> <br> <br> <b><font
									style="color: black;">수집하는 개인정보의 항목 및 수집방법</font></b><br> 1.
								수집하는 개인정보의 항목<br> ① 회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 <span
									class="bold">최초 회원가입 당시 아래와 같은 개인정보를 수집</span>하고 있습니다.<br>
								*일반 회원 가입 시(만 14세 이상)<br> <span class="bold">필수항목 :
									성명, 생년월일, 아이디(ID), 비밀번호, 휴대전화번호, 이메일, 성별, 본인인증정보[아이핀 번호(휴대폰인증
									시), 중복가입 확인정보(DI), 암호화된 동일인 식별정보(CI)], 개인정보 유효기간<br> 선택항목
									: 주소, 광고성 수신여부(이메일, SMS, 우편)
								</span><br> *비회원주문 시<br> <span class="bold">필수항목 : 성명,
									휴대전화번호<br> 선택항목 : 주소, 수령인, 수령인 휴대전화번호
								</span><br> ②<span class="bold"> 정규직 및 아르바이트 입사지원에 대한 정보를
									위해 개인정보를 수집</span>하고 있습니다.<br> *정규직 입사지원 시<br> <span
									class="bold">필수항목 : 성명, 영문성명, 생년월일, 주소, 성별, 휴대전화, 장애사항,
									보훈사항, 학력사항<br> 선택항목 : 사진, 이메일, 병역, 자격/면허, 경력사항
								</span><br> *아르바이트직 입사지원 시<br> <span class="bold">필수항목
									: 이름, 주소, 휴대전화</span><br> ③ 그 외 홈페이지 내 아래 서비스 이용 시 필요한 개인정보를 수집하고
								있습니다.<br> *피자 선물하기 이용 시<br> <span class="bold">필수항목
									: 수령인 주소, 수령인 이름, 수령인 연락처</span><br> *모바일상품권(다미노콘)/지류상품권 선물 이용 시<br>
								<span class="bold">필수항목 : 수령인 주소(지류에 한함), 수령인 이름, 수령인 연락처</span><br>
								*온라인 신문고 이용 시<br> <span class="bold">필수항목 : 성명,
									휴대전화번호, 이메일</span><br> *가맹점모집 개설 문의 이용 시<br> <span
									class="bold">필수항목 : 이름, 생년월일, 주소, 이메일, 휴대전화</span><br>
								*주변매장 프로모션 확인서비스 이용 시<br> <span class="bold">선택항목 :
									접속 위치정보</span><br> *드라이빙 픽업 서비스 이용 시<br> <span class="bold">필수항목
									: 휴대전화, 위치정보<br> 선택항목 : 차량정보
								</span><br> <br> ④ 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수
								있습니다.<br> IP Address, 쿠키, 방문 일시, OS종류, 브라우저 종류, 서비스 이용 기록,
								불량 이용 기록, 위치정보(전화주문 시 가까운 매장 연결 기능)<br> 모바일 어플리케이션 서비스 이용 시
								: 단말기 모델, UUID, 단말기 OS 종류<br> <br> <b><font
									style="color: black;">개인정보의 수집 및 이용목적</font></b><br> 회사는 수집한
								개인정보를 다음의 목적을 위해 활용합니다. 이용자가 제공한 모든 정보는 하기 목적에 필요한 용도 이외로는 사용되지
								않으며, 이용 목적이 변경될 시에는 사전동의를 구할 것입니다.<br> <br> 1. 서비스 제공에
								관한 계약 이행 및 서비스 제공에 따른 주문 결제 서비스<br> <span class="bold">①
									주문 상품 또는 경품 등 발송<br> ② 금융거래 본인 인증 및 금융 서비스<br> ③ 구매 및
									주문 결제, 요금추심 등<br>
								</span> 2. 회원관리<br> <span class="bold">① 회원제 서비스 이용 및 제한적
									본인 확인제에 따른 본인확인, 개인 식별<br> ② 불량회원의 부정 이용방지와 비인가 사용방지<br>
									③ 가입의사 확인, 가입 및 가입횟수 제한<br> ④ 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리,
									고지사항 전달<br>
								</span> 3. 신규 서비스 개발 및 마케팅 광고에의 활용<br> <span class="bold">①
									신규 서비스 개발 및 맞춤 서비스 제공<br> ② 통계학적 특성에 따른 서비스 제공 및 광고 게재,
									서비스의 유효성 확인<br> ③ 이벤트 및 광고성 정보 제공 및 참여기회 제공<br> ④
									접속빈도 파악 등에 대한 통계<br> <br>
								</span> <b><font style="color: black;">개인정보의 제공</font></b><br> 회사는
								관련 법령에 특별한 규정이 있는 경우를 제외하고, 이용자의 개인정보를 제3자에게 제공하지 않습니다.<br>
								<br> <b><font style="color: black;">수집한 개인정보의 위탁</font></b><br>

								회사는 서비스 향상을 위하여 필요한 업무 중 일부를 아래와 같이 위탁하고 있으며, 관계 법령에 따라 위탁계약 시
								개인정보가 안전하게 관리될 수 있도록 필요한사항을 규정하고 있습니다. 또한 공유하는 정보는 당해 목적을 달성하기
								위하여 필요한 최소한의 정보에 국한됩니다.<br>
							</p>

							<div class="terms-box">
								<div class="table-type6">
									<table>
										<colgroup>
											<col style="width: 150px">
											<col style="width: 250px">
											<col style="width: 250px">
											<col style="width: 150px">
										</colgroup>
										<thead>
											<tr>
												<th>수탁자</th>
												<th>위탁업무내용</th>
												<th>제공하는 정보</th>
												<th>보유 및 이용기간</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>청오엔에프㈜</td>
												<td>홈페이지 서비스 운영 및 회원관리 등의 서비스 제공을 위한 시스템 운영위탁</td>
												<td>-</td>
												<td>계약 종료 시까지</td>
											</tr>
											<tr>
												<td>메가존</td>
												<td>홈페이지 주문 시스템 운영, 모니터링</td>
												<td>-</td>
												<td>계약 종료 시까지</td>
											</tr>
											<tr>
												<td>씨엔티테크㈜</td>
												<td>콜센터 주문 서비스 및 고객상담 지원 상담 및 서비스 대행</td>
												<td><span class="bold">이름, ID, 생년월일, <br>휴대전화번호,
														주소, e-mail
												</span></td>
												<td>계약 종료 시까지</td>
											</tr>
											<tr>
												<td>㈜KG 모빌리언스</td>
												<td>휴대전화 본인인증</td>
												<td>-</td>
												<td>계약 종료 시까지</td>
											</tr>
											<tr>
												<td>㈜KG 이니시스</td>
												<td>결제처리(휴대전화,신용카드)</td>
												<td><span class="bold">이름, 생년월일, 휴대전화번호, 성별, CI</span></td>
												<td>계약 종료 시까지</td>
											</tr>
											<tr>
												<td>Nice 평가㈜</td>
												<td>아이핀(I-PIN)인증</td>
												<td>-</td>
												<td>계약 종료 시까지</td>
											</tr>
											<tr>
												<td>드림라인㈜</td>
												<td>문자메세지 발송</td>
												<td><span class="bold">휴대전화번호</span></td>
												<td>계약 종료 시까지</td>
											</tr>
											<tr>
												<td>㈜엘지유플러스</td>
												<td>문자메세지 발송</td>
												<td><span class="bold">휴대전화번호</span></td>
												<td>계약 종료 시까지</td>
											</tr>
											<tr>
												<td>씨제이올리브네트웍스㈜</td>
												<td>카카오톡 알림톡 발송, 문자메세지 발송</td>
												<td><span class="bold">휴대전화번호</span></td>
												<td>계약 종료 시까지</td>
											</tr>
											<tr>
												<td>스파코사</td>
												<td>드라이빙 픽업 서비스</td>
												<td><span class="bold">휴대전화번호, 위치정보, 차량정보</span></td>
												<td>계약 종료 시까지</td>
											</tr>
										</tbody>
									</table>
								</div>
								<br> <br> <br>

								<p class="sub-text">
									<b><font style="color: black;">개인정보 보유 및 이용기간</font></b><br>

									이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단, 다음의 정보에
									대해서는 아래의 이유로 명시한 기간 동안 보존합니다.<br> <br> 1. 관련법령에 의한
									정보보유 사유<br> ①계약 또는 청약철회 등에 관한 기록<br> 보존 근거 : 전자상거래
									등에서의 소비자보호에 관한 법률<br> 보존 기간 : 5년<br> ②대금결제 및 재화 등의
									공급에 관한 기록<br> 보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률<br> 보존
									기간 : 5년<br> ③소비자의 불만 또는 분쟁처리에 관한 기록<br> 보존 근거 : 전자상거래
									등에서의 소비자보호에 관한 법률<br> 보존 기간 : 3년<br> ④웹사이트 방문기록<br>
									보존 근거 : 통신비밀보호법<br> 보존 기간 : 3개월<br> ⑤개인위치정보에 관한 기록<br>
									보존 근거 : 위치정보의 보호 및 이용 등에 관한 법률<br> 보존 기간 : 1년<br> <br>
									<b><font style="color: black;">개인정보의 파기절차 및 방법</font></b><br>
									이용자의 개인정보는 원칙적으로 개인정보와 수집 및 이용목적이 달성되면 지체 없이 파기 또는 분리보관 합니다.
									회사의 개인정보 파기 및 분리보관 절차와 방법은 다음과 같습니다.<br> <br> 1. 파기절차<br>
									① 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의
									보관장소) 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조)일정 기간 저장된 후 파기됩니다.<br>
									② 동 개인정보는 법률에 의한 경우가 아니고서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.<br>
									③ 보존기간이 경과한 정보 관련 문서(대외비, 기밀)는 정보보호관리자의 승인을 받아 폐기합니다.<br>
									<br> 2. 파기방법<br> ① 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여
									파기합니다.<br> ② 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법(재사용
									시 덮어쓰기, 로우(low)포맷 등)을 사용하여 삭제합니다.<br> <br> 3. 개인정보
									유효기간 제도 도입<br> ① 당사는 장기간(1년 이상) 서비스 미이용자의 개인정보보호를 위하여
									2015년 8월 18일부로 다른 이용자의 개인정보와 분리하여 저장, 관리합니다.<br> ② 미이용의
									기간은 최종 로그인 일자 및 주문이력으로 산정하며 법령에서 정의한 기간 동안 서비스 미이용자에 대하여 분리,
									저장, 관리합니다.<br> ③ 당사는 미이용자 개인정보 분리/저장시점 도래 1개월 이전에 이메일 등을
									통해 해당 이용자에게 관련내용을 공지합니다.<br> ④ 분리 저장된 회원의 개인정보는 5년간 보관 후
									지체없이 파기합니다.<br> ⑤ 입사지원자의 지원이력 정보는 지원이력 확인을 위해 6개월간 보관 후
									파기됩니다.<br> ⑥ 비회원의 개인정보는 부정이용 재발 방지를 위해 6개월간 보관 후 파기됩니다.<br>
									<br> <b><font style="color: black;">이용자 및
											법정대리인의 권리와 그 행사방법</font></b><br> 1. 이용자 및 법정대리인은 회사에 대해 언제든지 다음 각
									호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br> ① 개인정보 열람요구<br> ②
									오류 등이 있을 경우 정정 요구<br> ③ 삭제요구<br> ④ 처리정지 요구<br> <br>
									2. 권리 행사는 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 회사는 이에 대해 지체 없이
									조치하겠습니다.<br> <br> 3. 이용자 및 법정대리인이 개인정보의 오류 등에 대한 정정
									또는 삭제를 요구한 경우에 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br>
									<br> 4. 권리 행사는 이용자의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다.
									이 경우 위임장을 작성하여 제출하셔야 합니다.<br> <br> 5. 회사는 이용자 혹은 법정
									대리인의 요청에 의해 해지 또는 삭제된 개인정보는 「개인정보의 보유 및 이용기간」에 명시된 바에 따라 처리하고 그
									외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br> <br> <b><font
										style="color: black;">개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</font></b><br>
									회사는 이용자들에게 특화된 맞춤서비스를 제공하기 위해서 이용자들의 정보를 저장하고 수시로 불러오는
									'쿠키(cookie)'를 사용합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버(HTTP)가 이용자의 컴퓨터
									브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br> <br>
									1. 쿠키의 사용 목적<br> 이용자들이 방문한 다미노피자의 각 서비스와 웹 사이트들에 대한 방문 및
									이용형태, 인기 검색어, 보안접속 여부, 뉴스편집(다미노 소식), 이용자 규모 등을 파악하여 이용자에게 최적화된
									정보 제공을 위하여 사용합니다.<br> <br> 2. 쿠키의 설치/운영 및 거부<br>
									① 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 이용자는 웹 브라우저에서 옵션을 설정함으로써
									모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.<br>
									② 설정방법 예<br> (1) Internet Explorer : 도구 메뉴 &gt; 인터넷 옵션
									&gt; 개인정보 탭 &gt; 고급<br> (2) Chrome : 설정 메뉴 &gt; 고급 설정 표시
									&gt; 개인정보 및 보안 &gt; 사이트 설정 &gt; 쿠키 및 사이트 데이터 설정<br> (3)
									Firefox : 옵션 메뉴 &gt; 개인정보 및 보안 &gt; 쿠키 및 사이트 데이터 설정<br>
									(4) Safari : 환경설정 메뉴 &gt; 개인정보 탭 &gt; 쿠키 및 웹 사이트 데이터 수준 설정<br>
									③ 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 일부 서비스는 이용에 어려움이 있을 수 있습니다.<br>
									<br> <b><font style="color: black;">개인정보의
											기술적/관리적 보호 대책</font></b><br> 회사는 이용자들의 개인정보를 처리함에 있어 개인정보가 분실, 도난,
									유출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.<br>
									<br> 1. 비밀번호 암호화<br> 다미노피자 웹 페이지 회원 아이디(ID)의 비밀번호는
									암호화되어 저장 및 관리되고 있어 본인만이 알고 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에
									의해서만 가능합니다.<br> <br> 2. 해킹 등에 대비한 대책<br> 회사는
									해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다.
									개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가
									유출되거나 손상되지 않도록 방지하고 있으며, 암호화 통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수
									있도록 하고 있습니다. 그리고 침입차단시스템을 이용하여 외부로부터의 무단접근을 통제하고 있으며, 기타 시스템적으로
									보안성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.<br> <br>
									3. 처리 직원의 최소화 및 교육<br> 회사의 개인정보관련 처리 직원은 담당자에 한정시키고 있고 이를
									위한 별도의 비밀번호를 부여하여 정기적으로 갱신하고 있으며, 담당자에 대한 수시 교육을 통하여 회사 개인정보
									처리방침의 준수를 항상 강조하고 있습니다.<br> <br> 4. 개인정보보호전담기구의 운영<br>
									사내 개인정보보호전담기구 등을 통하여 회사 개인정보 처리방침의 이행사항 및 담당자의 준수여부를 확인하여 문제가
									발견될 경우 즉시 수정하고 바로잡을 수 있도록 노력하고 있습니다. 단, 이용자 본인의 부주의나 인터넷상의 문제로
									ID, 비밀번호, 주민등록번호 등 개인정보가 유출되어 발생한 문제에 대해 회사는 일체의 책임을 지지 않습니다.<br>
									<br> <b><font style="color: black;">개인위치정보의 보호</font></b><br>
									1. 회사는 ”위치기반 서비스” 제공을 위하여 고객의 위치정보를 수집 및 이용할 수 있습니다.<br> <br>
									2. 상기 개인위치정보는 상기 이용목적 이외의 용도로는 사용되지 않습니다.<br> <br> 3.
									상기 개인위치정보의 수집, 이용 또는 제공목적을 달성한 때에는 관련 법령에 의하여 보존하여야 하는 위치정보 수집,
									이용, 제공사실 확인자료 외의 개인위치정보는 즉시 파기합니다.<br> <br> 4. 기타
									개인위치정보 관련한 회사의 의무 및 고객의 권리는 “위치정보의 보호 및 이용 등에 관한 법률” 및 관련 법령을
									따릅니다.<br> <br> <b><font style="color: black;">개인정보
											보호책임자 및 담당자의 연락처</font></b><br> 귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호
									관련 민원을 개인정보 보호책임자 혹은 담당부서로 신고하실 수 있습니다.<br> 회사는 이용자들의
									신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.<br> <br>


								</p>
								<div class="terms-box">
									<div class="table-type6">
										<table>
											<colgroup>
												<col style="width: 140px">
												<col style="width: 80px">
												<col style="width: 80px">
												<col style="width: 100px">
												<col style="width: 150px">
											</colgroup>
											<thead>
												<tr>
													<th>직무</th>
													<th>부서</th>
													<th>이름</th>
													<th>연락처</th>
													<th>이메일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>개인정보 보호책임자</td>
													<td>정보전략실</td>
													<td>이명윤</td>
													<td rowspan="2">02-6954-3074</td>
													<td rowspan="2">infosec@dominos.co.kr</td>
												</tr>
												<tr>
													<td>개인정보 보호담당자</td>
													<td>정보전략팀</td>
													<td>박홍직</td>

												</tr>
											</tbody>
										</table>
									</div>
									<br> <br>
									<p class="sub-text">
										기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br> *
										개인정보침해에 대한 신고 상담 기관 정보<br> 경찰청 사이버안전국 (
										http://www.police.go.kr/www/security/cyber.jsp / (국번없이) 182 )<br>
										대검찰청 사이버수사과 ( http://www.spo.go.kr / (국번없이) 1301 )<br>
										개인정보 침해신고센터 (한국인터넷 진흥원 운영) ( http://privacy.kisa.or.kr /
										(국번없이) 118 )<br> 개인정보 분쟁조정위원회 (개인정보보호위원회 운영) (
										http://www.kopico.go.kr / 1833-6972 )<br> <br> <b><font
											style="color: black;">고지의 의무</font></b><br> 현 개인정보처리방침 내용
										추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지 또는 이메일을 통해 고지할 것입니다.<br>
										개인정보 처리방침 변경공고일자: 2020년 07월 02일<br> 개인정보 처리방침 시행일자: 2020년
										07월 08일<br>


									</p>


								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
			</div>
			<!-- //팝업-메인 빅배너 -->
			<!-- 팝업-메인 빅배너 -->
			<div class="pop-layer pop-terms" id="pop-terms-p3">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title">개인정보 제 3자 제공 동의</h2>
					</div>
					<div class="pop-content">
						<div class="terms-wrap">
							<p class="sub-text">당사가 회원가입 후 위탁업무 이외의 목적으로 제 3자에게 개인정보를 제공할
								경우, 개인정보를 제공받는 자, 수집 및 이용 목적, 제공하는 개인정보의 항목, 개인정보 보유 및 이용기간에 대해
								별도의 동의를 득한 후 제공하고 있습니다.</p>
							<div class="terms-box">
								<div class="table-type6">
									<table>
										<caption>피자 영양성분</caption>
										<colgroup>
											<col style="width: 25%">
											<col style="width: 25%">
											<col style="width: 25%">
											<col style="width: 25%">
										</colgroup>
										<thead>
											<tr>
												<th>제공업체</th>
												<th>이용목적</th>
												<th>제공하는 개인정보 항목</th>
												<th>보유 및 이용기간</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="middle">드림라인(주)</td>
												<td class="middle">문자메세지 발송 서비스</td>
												<td class="middle">핸드폰 번호</td>
												<td class="middle" rowspan="3">목적 달성 후 즉시 파기</td>
											</tr>
											<tr>
												<td class="middle">(주)엠트웰브</td>
												<td class="middle">모바일 쿠폰 발송</td>
												<td class="middle">핸드폰 번호</td>
											</tr>
											<tr>
												<td class="middle">(주)신화위드컴</td>
												<td class="middle">DM 발송</td>
												<td class="middle">주소</td>
											</tr>
										</tbody>
									</table>
								</div>
								<p class="sub-type4">※ 개인정보의 수집 및 이용 동의에 대해 거부할 수 있으나 동의 거부
									시 서비스가 제한될 수 있습니다.</p>
							</div>
						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
			<!-- //팝업-메인 빅배너 -->
			<!-- 팝업-메인 빅배너 -->
			<div class="pop-layer pop-terms" id="pop-terms-p4">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title v2">위치기반 서비스 약관</h2>
					</div>
					<div class="pop-content">
						<div class="terms-wrap">
							<div class="terms-box">
								<ol>
									<li><strong><em>제1조</em> 목적</strong>
										<p>이 약관은 청오디피케이㈜(이하 “회사”)가 제공하는 위치기반서비스(이하 “서비스”)를 이용함에 있어
											회사와 이용자의 권리, 의무 및 책임사항, 기타 필요한 사항에 따른 이용 조건 및 절차 등 기본적인 사항을
											규정함을 목적으로 합니다.</p></li>
									<li><strong><em>제2조</em> 이용약관의 효력 및 변경</strong>
										<ol>
											<li>(1) 본 약관은 서비스를 신청한 이용자 또는 개인위치정보주체가 본 약관에 동의하고 회사가
												정한 소정의 절차에 따라 서비스의 이용자로 등록함으로써 효력이 발생합니다.</li>
											<li>(2) 이용자가 온라인에서 본 약관의 "동의하기" 버튼을 클릭하였을 경우 본 약관의 내용을
												모두 읽고 이를 충분히 이해하였으며, 적용에 동의한 것으로 봅니다.</li>
											<li>(3) 회사는 서비스에 새로운 업무 적용, 정부에 의한 시정명령의 이행 및 기타 회사의 업무상
												약관을 변경해야 할 중요한 사유가 있다고 판단될 경우 본 약관을 변경할 수 있습니다.</li>
											<li>(4) 이용자와 계약을 체결한 서비스가 기술적 사양의 변경 등의 사유로 변경할 경우에는 그
												사유를 이용자에게 통지 가능한 수단으로 즉시 통지합니다.</li>
											<li>(5) 회사는 본 약관을 변경할 경우에는 변경된 약관과 사유를 적용일자 1주일 전까지
												홈페이지에 게시하거나 이용자에게 전자적 형태(전자우편, SMS, 앱 푸시 등)로 공지하며, 이용자가 그 기간
												안에 이의제기가 없거나, 본 서비스를 이용할 경우 이를 승인한 것으로 봅니다.</li>
										</ol></li>
									<li><strong><em>제3조</em> 관계법령의 적용</strong>
										<p>본 약관은 신의성실의 원칙에 따라 공정하게 적용하며, 본 약관에 명시되지 아니한 사항에 대하여는
											관계법령 또는 상관례에 따릅니다.</p></li>
									<li><strong><em>제4조</em> 서비스 내용 및 요금</strong>
										<ol>
											<li>(1) 회사가 제공하는 서비스는 기본적으로 무료입니다. 단, 별도의 유료 서비스의 경우 해당
												서비스에 명시된 요금을 지불하여야 사용 가능합니다.</li>
											<li>(2) 회사는 유료 서비스 이용요금을 회사와 계약한 전자지불업체에서 정한 방법에 의하거나
												회사가 정한 청구서에 합산하여 청구할 수 있습니다.</li>
											<li>(3) 유료서비스 이용을 통하여 결제된 대금에 대한 취소 및 환불은 회사의 결제 이용약관 등
												관계법에 따릅니다.</li>
											<li>(4) 이용자의 개인정보도용 및 결제사기로 인한 환불요청 또는 결제자의 개인정보 요구는 법률이
												정한 경우 외에는 거절될 수 있습니다.</li>
											<li>(5) 서비스 이용 시 발생하는 데이터 통신료는 별도이며 가입한 각 이동통신사의 정책에
												따릅니다.</li>
										</ol> <br>
										<p>※ 회사가 제공하는 서비스는 아래와 같습니다.</p>
										<div class="terms-box">
											<div class="table-type6">
												<table>
													<caption>회사 제공 서비스</caption>
													<colgroup>
														<col style="width: 70%">
														<col style="width: 30%">
													</colgroup>
													<thead>
														<tr>
															<th>서비스 명칭 및 내용</th>
															<th>요금</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>* 주변 매장 찾기/현 위치로 매장 검색<br> - 현재의 위치를 기반으로
																하여 주변 매장의 위치 등의 정보를 제공하는 서비스
															</td>
															<td rowspan="3">- 서비스의 이용 : 무료<br> - 서비스의 이용을
																위한 데이터 통신 비용 : 이동통신사 및 이용자의 가입 요금제에 따름
															</td>
														</tr>
														<tr>
															<td>* 현위치로 주소 설정<br> - 현재의 위치를 기반으로 배달 위치 검색하는
																서비스
															</td>
														</tr>
														<tr>
															<td>* 드라이빙 픽업 서비스(포장주문)<br> - 드라이빙 픽업 주문 후 차량으로
																이동시, 현재의 위치를 기반으로 매장 픽업위치에 접근하였는지 주문 매장에 이용자 위치를 원격으로
																전송하여 이용자에게 픽업위치로 주문한 제품을 제공하는 서비스 (단, 다미노피자 앱에서 위치접근 권한을
																허용한 고객에 한해 제공됨)
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div></li>

									<li><strong><em>제5조</em> 서비스내용변경 통지 등</strong>
										<ol>
											<li>(1) 회사가 서비스 내용을 변경하거나 종료하는 경우 회사는 이용자의 등록된 전자우편 주소로
												이메일을 통하여 서비스 내용의 변경 사항 또는 종료를 통지할 수 있습니다.</li>
											<li>(2) 전항의 경우 불특정 다수인을 상대로 통지를 함에 있어서는 웹사이트 등 기타 회사의
												공지사항을 통하여 이용자들에게 통지할 수 있습니다.</li>
										</ol></li>
									<li><strong><em>제6조</em> 서비스이용의 제한 및 중지</strong>
										<ol>
											<li>(1) 회사는 아래에 해당하는 사유가 발생한 경우에는 이용자의 서비스 이용을 제한하거나
												중지시킬 수 있습니다.
												<ul>
													<li>- 이용자가 회사 서비스의 운영을 고의 또는 중과실로 방해하는 경우</li>
													<li>- 서비스용 설비 점검, 보수 또는 공사로 인하여 부득이한 경우</li>
													<li>- 전기통신사업법에 규정된 기간통신사업자가 전기통신서비스를 중지했을 경우</li>
													<li>- 국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이
														있는 때</li>
													<li>- 기타 중대한 사유로 인하여 회사가 서비스 제공을 지속하는 것이 부적당하다고 인정하는
														경우</li>
												</ul>
											</li>
											<li>(2) 회사는 전항의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및
												제한기간 등을 이용자에게 알려야 합니다.</li>
										</ol></li>
									<li><strong><em>제7조</em> 개인위치정보의 이용 또는 제공</strong>
										<ol>
											<li>(1) 회사는 개인위치정보를 이용하여 서비스를 제공하고자 하는 경우에는 미리 이용약관에 명시한
												후 개인위치정보주체의 동의를 얻어야 합니다.</li>
											<li>(2) 이용자 및 법정대리인의 권리와 그 행사 방법은 제소 당시의 이용자의 주소에 의하며,
												주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는
												거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할 법원에 제기합니다.</li>
											<li>(3) 회사는 타사업자 또는 이용 고객과의 요금정산 및 민원처리를 위해 위치정보
												이용·제공·사실 확인 자료를 자동 기록·보존하며, 해당 자료는 관련 법령에 따라 보관합니다.</li>
										</ol></li>
									<li><strong><em>제8조</em> 개인위치정보주체의 권리</strong>
										<ol>
											<li>(1) 이용자는 회사에 대하여 언제든지 개인위치정보를 이용한 서비스 제공 및 개인위치 정보의
												위탁 제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다. 이 경우 회사는 수집한 개인위치정보 및
												위치정보 이용, 제공사실 확인자료를 파기합니다.
												<div class="table-type6">
													<table>
														<caption>위탁범위</caption>
														<colgroup>
															<col style="width: 30%">
															<col style="width: 70%">
														</colgroup>
														<thead>
															<tr>
																<th>수탁자</th>
																<th>위탁범위</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>(주)스파코사</td>
																<td>드라이빙 픽업 서비스 대행(개인위치정보 트래킹)</td>
															</tr>
														</tbody>
													</table>
												</div>
											</li>
											<li>(2) 이용자는 회사에 대하여 언제든지 개인위치정보의 수집, 이용 또는 제공의 일시적인 중지를
												요구할 수 있으며, 회사는 이를 거절할 수 없고 이를 위한 기술적 수단을 갖추고 있습니다.</li>
											<li>(3) 이용자는 회사에 대하여 아래 항목의 자료에 대한 열람 또는 고지를 요구할 수 있고,
												당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 사유 없이 이용자의
												요구를 거절할 수 없습니다.
												<ul>
													<li>- 본인에 대한 위치정보 수집, 이용, 제공사실 확인자료</li>
													<li>- 본인의 개인위치 정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법률 규정에
														의하여 제3자에게 제공된 이유 및 내용</li>
												</ul>
											</li>
											<li>(4) 이용자는 제 1호 내지 제 3호의 권리행사를 위해 회사에 소정의 절차를 통해 요구할 수
												있습니다.</li>
										</ol></li>
									<li><strong><em>제9조</em> 위치정보관리책임자의 지정</strong>
										<ol>
											<li>(1) 회사는 위치정보를 적절히 관리·보호하고 개인위치정보주체의 불만을 원활히 처리할 수
												있도록 실질적인 책임을 질 수 있는 지위에 있는 자를 위치정보관리책임자로 지정해 운영합니다.</li>
											<li>(2) 위치정보관리책임자는 서비스를 제공하는 부서의 부서장으로서 구체적인 사항은 본 약관의
												부칙에 따릅니다.</li>
										</ol></li>
									<li><strong><em>제10조</em> 손해배상</strong>
										<ol>
											<li>(1) 회사가 위치정보의 보호 및 이용 등에 관한 법률 제15조 내지 제26조의 규정을 위반한
												행위로 이용자에게 손해가 발생한 경우 이용자는 회사에 대하여 손해배상 청구를 할 수 있습니다. 이 경우
												회사는 고의, 과실이 없음을 입증하지 못하는 경우 책임을 면할 수 없습니다.</li>
											<li>(2) 이용자가 본 약관의 규정을 위반하여 회사에 손해가 발생한 경우 회사는 이용자에 대하여
												손해배상을 청구할 수 있습니다. 이 경우 이용자는 고의, 과실이 없음을 입증하지 못하는 경우 책임을 면할 수
												없습니다.</li>
											<li>(3) 전항에도 불구하고 천재지변, 전쟁 등과 같은 불가항력의 상태가 있는 경우 발생한 손해에
												대해서는 책임을 부담하지 않습니다.</li>
										</ol></li>
									<li><strong><em>제11조</em> 분쟁의 조정</strong>
										<ol>
											<li>(1) 회사는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할
												수 없는 경우에는 위치정보의 보호 및 이용 등에 관한 법률 제28조의 규정에 의한 방송통신 위원회에 재정을
												신청할 수 있습니다.</li>
											<li>(2) 회사 또는 고객은 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나
												협의를 할 수 없는 경우에는 개인정보보호법 제43조의 규정에 의한 개인정보분쟁조정위원회에 조정을 신청할 수
												있습니다.</li>
										</ol></li>
									<li><strong><em>제12조</em> 사업자 정보</strong>
										<ol>
											<li>회사의 상호, 주소, 전화번호 그 밖의 연락처는 다음과 같습니다.
												<ul>
													<li>상호: 청오디피케이㈜</li>
													<li>주소: 서울특별시 강남구 언주로 315</li>
													<li>전화번호: 1588-3082</li>
													<li>사업자정보 이메일 주소: webmaster@dominos.co.kr</li>
												</ul>
											</li>
										</ol></li>
									<li><strong><em>부칙</em></strong>
										<ol>
											<li>제 1 조 시행일<br> 본 약관은 2020년 5월 25일부터 적용됩니다.
											</li>
										</ol></li>
								</ol>
							</div>
						</div>
					</div>
					<a href="#" class="btn-close"></a>
				</div>
			</div>
			<!-- //팝업-메인 빅배너 -->
		</section>
	</div>
	<!-- //container -->

	<!-- 중복 이메일 사용 팝업 -->
	<div class="pop-layer type3" id="pop-email" style="display: none;">
		<div class="dim"></div>
		<div class="pop-wrap">
			<div class="pop-title-wrap">
				<h2 class="pop-title">이메일 사용 안내</h2>
			</div>
			<div class="pop-content">
				<div class="join-confirm">
					<h3 class="title-type">
						다미노피자에서<br>이미 사용중인 이메일입니다.
					</h3>
					<div class="email-box">
						<p>dominos@dominos.com</p>
					</div>
					<p class="desc">이미 사용중인 이메일로 추가 회원가입 하실 수 없습니다.</p>
					<div class="result-list">
						<!-- 
                   	상단 ajax호출
                    -->
					</div>
					<p class="sub">가입하신 아이디로 다양한 혜택을 누려보세요.</p>
					<div class="btn-wrap">
						<a href="javaScript:doLogin();" class="btn-type1">로그인하러 가기</a>
					</div>
				</div>
			</div>
			<a href="#" class="btn-close"></a>
		</div>
	</div>
	<!-- (E)중복 이메일 사용 팝업 -->

	<script src="/resources/js/member.js"></script>
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

	<!-- 실험1 id 중복 -->
	<div class="form-item name">
		<input type="text" name="userid" id="useridtest" maxlength="16"
			placeholder="">
		<!--  <a href="javascript:idcheck();" id="btn_idcheck" class="btn-type v7">버튼</a> -->
		<button class="btn-type v7" id="idcheck" onClick="idck();">버튼</button>
	</div>
	<div class="text-type4" id="id_alert" style="display: none;"></div>
	<!-- //실험1 id 중복 -->


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
<body>
</body>
</html>
