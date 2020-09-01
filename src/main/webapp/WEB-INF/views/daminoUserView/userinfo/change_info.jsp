<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<!-- 사용자지정 태그 -->
<meta name="description" content="당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta name="title" content="다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's</title>

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
<script>
function checkEmailState(obj, obj2) {
	if (obj.val() == "WRITE") {
		obj2.attr("readOnly", false);
		obj2.attr("disabled", false);
		obj2.val('');
		$('#email3').focus();
	} else {
		obj2.val(obj.val());
		obj2.attr("readOnly", true);
	}
}
function checks2(){
	var emailChk = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	
	var cyear = $('#cyear').val();
	var bmonth = $('#bmonth').val();
	var bday = $('#bday').val();
	// 핸드폰 인증여부 
	var phoneCheck = $('#phoneChk').val();
	
	// 이메일 입력값
	var email1 = $('#email1').val();
	var email2 = $('#email2').val();
	var email = email1 + "@" + email2;
	
	// 비밀번호 공백 검사
	if($("#userpasswd").val() == ""){ 
		$('#pwd_alert').text("비밀번호를 입력해주세요.");
	    $('#pwd_alert').show();
		$("#userpasswd").focus(); 
		return false; 
	}else{
		$('#pwd_alert').hide();
	}
	
	// 비밀번호 확인란 공백 검사
	if($("#passwordChk").val() == ""){ 
		$('#pwdChk_alert').text("비밀번호를 확인 해주세요.");
	    $('#pwdChk_alert').show();
		$("#passwordChk").focus(); 
		return false; 
	}else{
		$('#pwdChk_alert').hide();
	}
	
	// 비밀번호 일치 확인
	if($("#userpasswd").val() != $("#passwordChk").val()){ 
		$('#pwdChk_alert').text("비밀번호가 일치하지 않습니다.");
	    $('#pwdChk_alert').show();
		$("#passwordChk").val(""); 
		$("#passwordChk").focus(); 
		return false; 
	}else{
		$('#pwdChk_alert').hide();
	}

	// 생년월일 공백 검사
	if(cyear == "년" || bmonth == "월" || bday == "일"){
		$('#birth_alert').text("생년월일을 입력해주세요.");
	    $('#birth_alert').show();
	    return false;
	}else{
		$('#birth_alert').hide();
	}
	
	// 휴대폰 인증 여부 검사
	if(phoneCheck == "N"){
		$('#tel_alert').text("휴대폰 번호를 인증해주세요.");
	    $('#tel_alert').show();
	    return false;
	}else{
		$('#tel_alert').hide();
	}
	
	// 이메일 공백 검사
	if(email1 == "" || email2 == ""){
		$('#email_alert').text("이메일주소를 입력해주세요.");
	    $('#email_alert').show();
	    $('#email1').focus();
	    return false;
	}else{
		$('#email_alert').hide();
	}
	
	// 이메일 유효성 검사
	if(!emailChk.test(email)){
		$('#email_alert').text("이메일주소가 유효하지 않습니다.");
	    $('#email_alert').show();
	    $('#email1').val("");
	    $('#email2').val("");
	    $('#email1').focus();
	    return false;
	}else{
		$('#email_alert').hide();
	}
}

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

function emailCheckValChange() {
	$('#emailCheckVal').val("N"); // 이메일이 바뀔 때 인증여부를 "N"으로 세팅
}

function doCheckEmail() {
	// email1 : @앞부분 , email2 : @뒷부분(naver.com)
	var chkEmail1 = $('#email1').val();
	var chkEmail2 = $('#email2').val();
	var golbang = "@";
	var chkEmail = chkEmail1.concat(golbang, chkEmail2);
	var Emchkvalue =$('#emailCheckVal');

	alert(chkEmail); //확인용
	
	$.ajax({
		url : "emailCheck.do",
		type : "POST",
		contentType : "application/json; charset=utf-8;",
		dataType : "json",
		data : JSON.stringify({
			chkEmail : chkEmail,
		}),
		success : function(data) {
			if (data > 0) {
				alert("이미 사용중인 이메일입니다.");
				$('#email_alert').text("이미 사용중인 이메일입니다.");
				$('#email_alert').show();
				return;
			} else {
				alert("사용가능한 이메일입니다.");
				$('#emailCheckVal').val("Y");
				console.log(Emchkvalue);
				$('#email_alert').text("사용가능한 이메일입니다..");
				$('#email_alert').show();
			}
		},
		error : function(err) {
			alert("실패!");
		}
	});

}


function updateSubmit(){
	if(checks2()==false){
		alert('작성 내용을 다시 확인해주세요.');
	}else{
		alert('변경 완료');
		document.changefrm.action='changecomplete.do';
		document.changefrm.submit();
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
					<c:choose>
						<c:when test="${sessionScope.username eq null}">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> 
								<a href="login.do">회원가입</a>
							</div>
						</c:when>
						<c:when test="${msg=='logout' }">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> 
								<a href="login.do">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인 -->
							<div class="util-nav">
								${sessionScope.username } 님  &nbsp;
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
		
		<!-- container -->
		<div id="container">
			<section id="content">
				<div class="sub-type mypage">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">나의정보</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a href="myuserinfoconfirm.do">나의 정보</a></li>
									<li><strong>정보수정</strong></li>
								</ol>
							</div>
						</div>
						<article class="mypage-wrap mypage-grade mypage-info">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="mylevel.do">매니아 등급</a></li>
										<li><a href="myorderlist.do">주문내역</a></li>
										<li><a href="mycoupon.do">쿠폰함</a></li>
										<li><a href="myquestionlist.do">1:1문의</a></li>
										<li class="active"><a href="myuserinfoconfirm.do">정보수정</a></li>
									</ul>
								</div>
							</div>
							<div class="info-wrap">
								<div class="user">개인정보 입력 안내문</div>
								<div class="text-type">회원정보를 정확히 기입하셔야 주문이나 이벤트에 대한 불이익이 없습니다.</div>
							</div>
							<form name="changefrm" id="changefrm" method="post">
								<div class="myinfo-wrap">
									<input type="hidden" name="userid" value="${sessionScope.userid }"/>
									<div class="form">
										<dl>
											<dt>이름</dt>
											<dd>
												<span id="name_area">${sessionScope.username }</span>
											</dd>
										</dl>
										<dl>
											<dt class="center">아이디</dt>
											<dd>${sessionScope.userid }</dd>
										</dl>
										<dl class="pw">
											<dt>새 비밀번호</dt>
											<dd>
												<div class="form-item number">
													<input type="password" name="userpasswd" id="userpasswd" maxlength="16" 
														value="" placeholder="8~16자 영문대소문자,숫자,특수문자 사용가능">
												</div>
											</dd>
											<dt>새 비밀번호 확인</dt>
											<dd>
												<div class="form-item number">
													<input type="password" name="passwordChk" id="passwordChk" maxlength="16" 
														value="" placeholder="8~16자 영문대소문자,숫자,특수문자 사용가능">
												</div>
											</dd>
										</dl>
										<dl>
											<dt class="center">생년월일</dt>
											<dd>
												<div class="form-group v2">
													<div class="form-item birth">
														<div class="chk-wrap">
															<div class="chk-box selected">
																<input type="radio" name="cyear" id="birth_s" value="양력" checked="checked"> 
																<label class="checkbox" for="birth_s"></label> 
																<label for="birth_s">양력</label>
															</div>
															<div class="chk-box">
																<input type="radio" name="cyear" id="birth_m" value="음력">
																<label class="checkbox" for="birth_m"></label> 
																<label for="birth_m">음력</label>
															</div>
														</div>
														<div class="select-type2">
															<select name="birthday1" id="cyear" class="selected">
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
															<select name="birthday2" id="bmonth" class="selected">
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
															<select name="birthday3" id="bday" class="selected">
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

											</dd>
										</dl>
										<dl>
											<dt class="top">휴대전화</dt>
											<dd>
												<div class="form-group v2">
													<div class="form-item">
														<div class="select-type2">
															<input type="hidden" name="phoneCheck" id="phoneCheck"
																value="N" /> <select name="sel_hand_tel1"
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
														<input type="text" name="security_no" id="security_no" placeholder="인증번호 4자리" maxlength="20">
														<Button type="button" id="btn_AuthKeyConfirm" class="btn-type v4">인증하기</button>
													</div>
													<div class="text-type4" id="security_alert" style="display: none;"></div>
												</div>
											</dd>
										</dl>
										
										<dl>
											<dt class="center">이메일</dt>
											<dd>
												<div class="form-group v2">
													<div class="form-item e-mail">
														<input type="hidden" name="idCheckVal" id="emailCheckVal"/>
														<input type="text" name="email1" id="email1" onchange="emailCheckValChange()"><span>@</span>
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
											<dt>정보 수신동의</dt>
											<dd>
												<div class="form agree">
													<div class="chk-box selected">
														<input type="checkbox" id="chk_ds_fl" name="receive_sms" value="Y"> 
														<label class="checkbox" for="chk_ds_fl"></label> 
														<label for="chk_ds_fl">문자메세지(선택)</label>
													</div>
													<div class="chk-box">
														<input type="checkbox" id="chk_dm_fl" name="receive_email" value="Y">
														<label class="checkbox" for="chk_dm_fl"></label> 
														<label for="chk_dm_fl">이메일(선택)</label>
													</div>
													<div class="chk-box">
														<input type="checkbox" id="chk_o_dm_fl" name="receive_dm" value="Y">
														<label class="checkbox" for="chk_o_dm_fl"></label> 
														<label for="chk_o_dm_fl">DM 우편(최근 배달주소로 배송)(선택)</label>
													</div>
												</div>
												<div class="text-type">
													- 정보수신 미 동의 시 이벤트 / 할인쿠폰 / 신제품 등의 안내를 받으실 수 없습니다.<br>
													- 회원정보, 서비스 주요정책 관련 메시지는 수신동의 여부와 관계없이 발송됩니다.<br> ※
													동의를 거부하시는 경우에도 다미노피자 서비스는 이용하실 수 있습니다.
												</div>
											</dd>
										</dl>
									</div>
									<div class="btn-wrap">
										<input type="button" class="btn-type v6" value="수정하기" onclick="updateSubmit()" style="cursor: pointer"/>
										<input type="button" class="btn-type v4" value="초기화" onclick="javascript:location.reload();" style="cursor: pointer">
										<p class="desc">
											다미노피자를 더 이상 이용하지 않는다면
											<a href="" class="btn-link"><span>회원탈퇴 바로가기</span></a>
										</p>
									</div>
								</div>
							</form>
						</article>
					</div>
				</div>
			</section>
		</div>

		<div class="pop-layer" id="pop-pw">
			<form name="frm_popup" id="frm_popup" method="post">
				<input type="hidden" id="confirm_member" name="confirm_member"
					value="1"> <input type="hidden" id="confirm_type"
					name="confirm_type" value="2">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-title-wrap">
						<h2 class="pop-title">본인여부 확인</h2>
					</div>
				</div>
			</form>
		</div>

		<div class="pop-layer type2" id="userinfo-confirm-change">
			<div class="dim"></div>
			<div class="pop-wrap">
				<div class="pop-title-wrap">
					<h2 class="pop-title">새 비밀번호 설정</h2>
				</div>
				<div class="pop-content">
					<p class="sub-text">
						NAVER 간편 로그인 해제시 새 비밀번호를 설정하셔야<br>다미노피자 로그인이 가능합니다.
					</p>
					<div class="form info-form">
						<dl>
							<dt class="top">새 비밀번호</dt>
							<dd>
								<input type="password" name="naver_passwd" id="naver_passwd"
									placeholder=" 8~16자 영문대소문자,숫자, 특수문자 사용가능">
								<div class="text-type4" id="naver_passwd_alert"
									style="display: none;"></div>
							</dd>
						</dl>
						<dl>
							<dt class="top">새 비밀번호 확인</dt>
							<dd>
								<input type="password" name="naver_confirmpw"
									id="naver_confirmpw"
									onkeydown="javascript:if(event.keyCode==13){updateAddPasswd();}">
								<div class="text-type4" id="naver_confirmpw_alert"
									style="display: none;"></div>
							</dd>
						</dl>
					</div>

					<div class="btn-wrap">
						<a href="javascript:updateAddPasswd();" class="btn-type v4">설정하기</a>
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
