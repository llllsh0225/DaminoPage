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

<script type="text/javascript" src="/resources/js/jquery1.11.1.js"></script>

<script type="text/javascript"
	src="https://cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="/resources/js/selectbox.js"></script>
<!-- js 수정함. -->
<script type="text/javascript"
	src="/resources/js/d2CommonUtil.js?ver=1.5"></script>
<script type="text/javascript" src="/resources/js/Cookie.js"></script>
<script type="text/javascript"
	src="https://cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>

<link rel="stylesheet" type="text/css"
	href="https://cdn.dominos.co.kr/domino/asset/css/font.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.dominos.co.kr/domino/pc/css/common.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.dominos.co.kr/domino/pc/css/sub.css">

<script
	src="https://cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>

<script src="https://cdn.dominos.co.kr/domino/pc/js/ui.js"></script>
<script type="text/javascript" src="/resources/js/gcenmaps/gcenmap.js"></script>

<style>
#card_add .pop_wrap {
	position: fixed;
	top: 50%;
	width: 490px;
	margin-left: -245px;
	margin-top: -35px;
}

#card_add .pop_wrap .pop_content p {
	font-size: 18px;
	color: #fff;
	text-align: center
}

.pop_toast {
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 100;
}

.pop_toast.open {
	display: block
}

.pop_toast .bg {
	position: fixed;
	width: 100%;
	height: 100%;
}

.pop_toast .pop_wrap {
	overflow: hidden;
	position: absolute;
	top: 100px;
	left: 50%;
	min-width: 400px;
	min-height: 70px;
	margin-left: -200px;
	padding: 20px;
	background:
		url(https://cdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png)
		repeat 0 0;
	border-radius: 12px;
}

.pop_toast .pop_wrap .btn_close3 {
	position: absolute;
	top: 15px;
	right: 20px;
}

.pop_toast .pop_header {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 66px;
	padding: 0 40px;
	background-color: #eeece9;
	line-height: 66px;
}

.pop_toast .pop_header h2 {
	font-size: 30px;
	font-weight: 500;
	color: #38474f;
}

.pop_toast .pop_content {
	position: relative;
	width: 100%;
	padding: 0;
}

.pop_type2 .pop_wrap .btn_close3 {
	position: absolute;
	top: 15px;
	right: 20px;
}
</style>

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
						<a href="/global/logout">로그아웃</a> <a href="/mypage/myLevel">나의정보</a>
						<a href="javascript:goCart();" class="btn-cart"> <i
							class="ico-cart"></i> <span class="hidden ">장바구니</span> <strong
							class="cart_count"></strong> <!-- count -->
						</a>
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
									<li><strong>정보수정</strong></li>
								</ol>
							</div>
						</div>
						<article class="mypage-wrap mypage-grade mypage-info">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="/mypage/myLevel">매니아 등급</a></li>
										<li><a href="/mypage/myOrderList">주문내역</a></li>
										<li><a href="/mypage/myCoupon">쿠폰함</a></li>
										<li><a href="/mypage/qustionList">1:1문의</a></li>
										<li class="active"><a href="/member/userinfoConfirm">정보수정</a></li>
									</ul>
								</div>
							</div>
							<div class="info-wrap">
								<div class="user">개인정보 입력 안내문</div>
								<div class="text-type">회원정보를 정확히 기입하셔야 주문이나 이벤트에 대한 불이익이
									없습니다.</div>
							</div>
							<form name="frm" id="frm" action="/member/modMemberProc"
								method="post">
								<div class="myinfo-wrap">
									<input type="hidden" name="old_auth_type" id="old_auth_type"
										value="H" /> <input type="hidden" name="old_hand_tel"
										id="old_hand_tel" value='01093613740' /> <input type="hidden"
										name="old_email" id="old_email" value="romantico_u@naver.com" />
									<input type="hidden" name="old_dm_fl" id="old_dm_fl" value="Y">
									<input type="hidden" name="old_o_dm_fl" id="old_o_dm_fl"
										value="N"> <input type="hidden" name="old_ds_fl"
										id="old_ds_fl" value="Y"> <input type="hidden"
										name="auth_type" id="auth_type" value="H"> <input
										type="hidden" name="cust_id" id="cust_id"
										value="2013091309001" /> <input type="hidden"
										name="hand_tel_agency" id="hand_tel_agency"> <input
										type="hidden" name="hand_tel1" id="hand_tel1"> <input
										type="hidden" name="name" id="name" value="오수현"> <input
										type="hidden" name="id" id="id" value="llllsh0225"> <input
										type="hidden" name="job" id="job" value=""> <input
										type="hidden" name="birth" id="birth" value=""> <input
										type="hidden" name="email" id="email" value=""> <input
										type="hidden" name="dm_fl" id="dm_fl" value="N"> <input
										type="hidden" name="o_dm_fl" id="o_dm_fl" value="N"> <input
										type="hidden" name="ds_fl" id="ds_fl" value="N">
									<!-- <input type="hidden" name="hdnAuthKey" id="hdnAuthKey" value="" /> -->
									<input type="hidden" name="hdnAuthChk" id="hdnAuthChk"
										value="N"> <input type="hidden" name="emailChk"
										id="emailChk" value="N"> <input type="hidden"
										name="security_check" id="security_check" value="0" /> <input
										type="hidden" name="id_date" value="" /> <input type="hidden"
										name="id_uuid" value="" /> <input type="hidden"
										name="id_link_YN" value="N" /> <input type="hidden"
										name="id_uuid2" value="71568590" /> <input type="hidden"
										name="id_link_YN2" value="Y" />
									<div class="form">
										<dl>
											<dt>이름</dt>
											<dd>
												<span id="name_area">회원이름</span>
											</dd>
										</dl>
										<dl>
											<dt class="center">아이디</dt>
											<dd>userid</dd>
										</dl>
										<dl class="pw">
											<dt>현재 비밀번호</dt>
											<dd>
												<div class="form-item number">
													<input type="password" name="old_passwd" id="old_passwd"
														maxlength="16" value="">
												</div>
												<div class="text-type4" id="old_passwd_alert"
													style="display: none;"></div>
											</dd>
											<dt>새 비밀번호</dt>
											<dd>
												<div class="form-item number">
													<input type="password" name="passwd" id="passwd"
														maxlength="16" value=""
														placeholder="8~16자 영문대소문자,숫자,특수문자 사용가능">
												</div>
												<div class="text-type4" id="passwd_alert"
													style="display: none;"></div>
											</dd>
											<dt>새 비밀번호 확인</dt>
											<dd>
												<div class="form-item number">
													<input type="password" name="confirmpw" id="confirmpw"
														maxlength="16" value=""
														placeholder="8~16자 영문대소문자,숫자,특수문자 사용가능"> <a
														href="javascript:updateChangePasswd();"
														class="btn-type v4">수정하기</a>
												</div>
												<div class="text-type4" id="confirmpw_alert"
													style="display: none;"></div>
											</dd>
										</dl>
										<dl class="non-pw">
											<dt class="center">비밀번호</dt>
											<dd>
												<a href="javascript:openPasswordChange();"
													class="btn-type4 v2">비밀번호 변경</a>
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
																	value="S" checked disabled /> <label class="checkbox"
																	for="birth_s"></label> <label for="birth_s">양력</label>
															</div>
															<div class="chk-box disabled">
																<input type="radio" name="birth_fl" id="birth_m"
																	value="M" disabled /> <label class="checkbox"
																	for="birth_m"></label> <label for="birth_m">음력</label>
															</div>
														</div>
														<div class="select-type2">
															<select name="byear" id="byear" class="selected" disabled>
																<option>년</option>
																<option value="1900">1900</option>
																<option value="1901">1901</option>
																<option value="1902">1902</option>
																<option value="1903">1903</option>
																<option value="1904">1904</option>
																<option value="1905">1905</option>
																<option value="1906">1906</option>
																<option value="1907">1907</option>
																<option value="1908">1908</option>
																<option value="1909">1909</option>
																<option value="1910">1910</option>
																<option value="1911">1911</option>
																<option value="1912">1912</option>
																<option value="1913">1913</option>
																<option value="1914">1914</option>
																<option value="1915">1915</option>
																<option value="1916">1916</option>
																<option value="1917">1917</option>
																<option value="1918">1918</option>
																<option value="1919">1919</option>
																<option value="1920">1920</option>
																<option value="1921">1921</option>
																<option value="1922">1922</option>
																<option value="1923">1923</option>
																<option value="1924">1924</option>
																<option value="1925">1925</option>
																<option value="1926">1926</option>
																<option value="1927">1927</option>
																<option value="1928">1928</option>
																<option value="1929">1929</option>
																<option value="1930">1930</option>
																<option value="1931">1931</option>
																<option value="1932">1932</option>
																<option value="1933">1933</option>
																<option value="1934">1934</option>
																<option value="1935">1935</option>
																<option value="1936">1936</option>
																<option value="1937">1937</option>
																<option value="1938">1938</option>
																<option value="1939">1939</option>
																<option value="1940">1940</option>
																<option value="1941">1941</option>
																<option value="1942">1942</option>
																<option value="1943">1943</option>
																<option value="1944">1944</option>
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
																<option value="2001">2001</option>
																<option value="2002">2002</option>
																<option value="2003">2003</option>
																<option value="2004">2004</option>
																<option value="2005">2005</option>
																<option value="2006">2006</option>
																<option value="2007">2007</option>
																<option value="2008">2008</option>
																<option value="2009">2009</option>
																<option value="2010">2010</option>
																<option value="2011">2011</option>
																<option value="2012">2012</option>
																<option value="2013">2013</option>
																<option value="2014">2014</option>
																<option value="2015">2015</option>
																<option value="2016">2016</option>
																<option value="2017">2017</option>
																<option value="2018">2018</option>
																<option value="2019">2019</option>
																<option value="2020">2020</option>
															</select>
														</div>
														<div class="select-type2">
															<select name="bmonth" id="bmonth" class="selected"
																disabled>
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
															<select name="bday" id="bday" class="selected" disabled>
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
											<dt class="center">휴대전화</dt>
											<dd>
												<div class="form-group v2">
													<div class="form-item">
														<div class="select-type2">
															<select name="sel_hand_tel1" id="sel_hand_tel1"
																class="selected">
																<option value="010">010</option>
																<option value="011">011</option>
																<option value="016">016</option>
																<option value="017">017</option>
																<option value="018">018</option>
																<option value="019">019</option>
															</select>
														</div>
														<input type="text" name="hand_tel2" id="hand_tel2"
															maxlength="4" value="1234"> <input type="text"
															name="hand_tel3" id="hand_tel3" maxlength="4"
															value="5678"> <a
															href="javascript:doSendAuthKey();" id="sendAuthBtn"
															class="btn-type v7" style="display: none;">인증요청</a> <a
															href="javascript:void(0);" id="successAuthBtn"
															class="btn-type v7" style="display: none;">인증완료</a>
													</div>
													<div class="text-type4" id="tel_alert"
														style="display: none;"></div>
												</div>

											</dd>
										</dl>
										<dl>
											<dt class="center">이메일</dt>
											<dd>
												<div class="form-group v2">
													<div class="form-item e-mail">
														<input type="text" name="email1" id="email1" value="aaa">
														<span>@</span> <input type="text" name="email2"
															id="email2" value="bbb.com">
														<div class="select-type2">
															<select name="email3" id="email3"
																onchange="checkEmailState($('#email3'),$('#email2'))">
																<option>선택</option>
																<option value="naver.com">네이버</option>
																<option value="hanmail.net">한메일</option>
																<option value="gmail.com">지메일</option>
																<option value="hotmail.com">핫메일</option>
																<option value="nate.com">네이트</option>
																<option value="WRITE">직접입력</option>
															</select>
														</div>
													</div>
												</div>
											</dd>
										</dl>
										<dl>
											<dt>정보 수신동의</dt>
											<dd>
												<div class="form agree">
													<div class="chk-box selected">
														<input type="checkbox" id="chk_dm_fl" name="chk_dm_fl"
															value="Y"> <label class="checkbox"
															for="chk_dm_fl"></label> <label for="chk_dm_fl">이메일을
															통한 제품 및 이벤트 정보수신에 동의합니다.(선택)</label>
													</div>
													<div class="chk-box">
														<input type="checkbox" id="chk_o_dm_fl" name="chk_o_dm_fl"
															value="Y"> <label class="checkbox"
															for="chk_o_dm_fl"></label> <label for="chk_o_dm_fl">DM을
															통한 제품 및 이벤트 정보수신에 동의합니다.(최근 배달주소로 배송)(선택)</label>
													</div>
													<div class="chk-box">
														<input type="checkbox" id="chk_ds_fl" name="chk_ds_fl"
															value="Y"> <label class="checkbox"
															for="chk_ds_fl"></label> <label for="chk_ds_fl">문자(SMS,MMS
															등)를 통한 제품 및 이벤트 정보수신에 동의합니다.(선택)</label>
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
										<a href="javascript:location.reload();" class="btn-type v4">초기화</a>
										<a href="javascript:goUpdte();" class="btn-type v6">수정하기</a>
										<p class="desc">
											다미노피자를 더 이상 이용하지 않는다면<a href="javascript:goOutreason();"
												class="btn-link"><span>회원탈퇴 바로가기</span></a>
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
						<li><a href="contents/law.html">이용약관</a></li>
						<li class="on"><a href="contents/privacy.html">개인정보처리방침</a></li>
						<li><a
							href="bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
						<li><a href="order/groupOrder.html">단체주문</a></li>
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
