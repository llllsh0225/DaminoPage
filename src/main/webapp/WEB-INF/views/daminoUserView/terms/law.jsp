<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>이용약관- 다미노피자</title>

	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
	
	<script type="text/javascript" src="<c:url value='/resources/js/jquery1.11.1.js'/>" ></script>
	<!-- 메인페이지 슬라이드 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>" ></script>
	<!-- 더보기 슬라이드로 내려오는 js -->
	<script type="text/javascript" src="<c:url value='/resources/js/user/ui.js'/>"></script>
	
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
		url(../../newcdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png)
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
					<a href="../main.html" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>

					<div class="util-nav">
						<a href="../global/login.html">로그인</a> <a
							href="../global/login7837.html?L=L">회원가입</a>
					</div>
				</div>
			</div>

			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active"><a
							href="../goods/list985d.html?dsp_ctgr=C0101"><span>메뉴</span></a>
						</li>
						<li><a href="../ecoupon/index.html"><span>e-쿠폰</span></a></li>
						<li><a href="../branch.html"><span>매장검색</span></a></li>
					</ul>
					<a href="#" class="snb-more">더보기</a>
				</div>

				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="../event/mania.html">다미노 서비스</a>
								<ul>
									<li><a href="../event/mania.html">매니아 혜택</a></li>
									<li><a href="../goods/dominosMoment.html">다미노 모멘트</a></li>
									<li><a href="../quickOrder/index.html">퀵 오더</a></li>
									<li><a href="../order/groupOrder.html">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a>
								<ul>
									<li><a
										href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">자주하는
											질문</a></li>
									<li><a href="../bbs/qnaForm.html">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="../company/contents/overview.html">회사소개</a>
								<ul>
									<li><a href="../company/contents/overview.html">한국다미노피자</a></li>
									<li><a href="../company/contents/chainstore1.html">가맹점
											모집</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="../bbs/newsList91ef.html?type=N">공지사항</a>
							<ul>
								<li><a href="../bbs/newsList91ef.html?type=N">다미노뉴스</a></li>
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
				<div class="sub-type menu">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">이용약관</h2>
							<div class="depth-area">
								<ol>
									<li><a href="../main.html">홈</a></li>
									<li><strong>이용약관</strong></li>
								</ol>
							</div>
						</div>
						<article class="terms-wrap">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a href="privacy.html">개인정보 처리방침 </a></li>
										<li class="active"><a href="#">이용약관</a></li>
									</ul>
								</div>
							</div>

							<div class="menu-sub-wrap">
								<div class="menu-sub js_tab">
									<ul>
										<li class="active"><a href="#term1">홈페이지 이용약관</a></li>
										<li><a href="#term2">위치기반 서비스 약관</a></li>
									</ul>
								</div>
							</div>

							<div id="term1" class="tab-content active ">

								<div class="terms-box">

									<ol>
										<li>
											<p class="sub-type-text">다미노피자 서비스의 이용과 관련하여 필요한 사항을
												규정합니다.</p>
										</li>
										<li><strong><em>제1조</em> 목적</strong>
											<p>이 약관은 청오디피케이㈜(이하’회사’)에서 운영하는 다미노피자 인터넷사이트 &lt;
												www.dominos.co.kr &gt;와 스마트폰 및 이동통신기기를 통해 제공되는 모바일웹사이트 &lt;
												m.dominos.co.kr &gt; 및 애플리케이션을 통해 제공되는 서비스의 이용에 관련하여 권리 의무 및
												관련 절차 등을 규정하고 상호 발전을 도모하는 것을 그 목적으로 합니다.</p></li>
										<li><strong><em>제2조</em> 정의</strong>
											<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
											<ol>
												<li><strong>(1) “회원”이란 다미노피자 웹/모바일에 접속하여 본 약관에
														따라 회사에서 제공하는 서비스를 이용하는 고객을 말합니다.</strong></li>
												<li><strong>(2) "아이디(ID)" 란 “회원”의 식별과 사이트에서
														제공하는 서비스를 이용하고, 회사가 회원을 구분, 식별할 수 있도록, 회원이 정하고 회사가 승인하는
														문자와 숫자의 조합을 의미합니다.</strong></li>
												<li><strong>(3) ”비밀번호” 란 회원이 부여 받은 아이디(ID)와
														동일한 회원임을 확인하고 비밀보호를 위해 회원 자신이 정한 문자 또는 숫자의 조합을 의미합니다.</strong></li>
											</ol></li>
										<li><strong><em>제3조</em> 약관의 게시와 개정</strong>
											<ol>
												<li><strong>(1) 이 약관은 웹사이트(<a
														href="http://www.dominos.co.kr/" target="_blank"
														title="새창열림">www.dominos.co.kr</a>)와 모바일웹사이트(<a
														href="http://m.dominos.co.kr/" target="_blank"
														title="새창열림">m.dominos.co.kr</a>)에 그 내용을 이용자가 알 수 있도록
														게시함으로써 효력을 발생하며 "회사"는 약관의 규제 등에 관한 법률, 전자거래 기본법, 전자서명법,
														정보통신망 이용촉진 등에 관한 법률, 소비자 보호법 등 관련법을 위배하지 않는 범위에서 개정할 수
														있습니다.
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
												<li><strong>(1) 이용계약은 “회원”이 되고자 본 약관에 동의한 후
														회사가 정한 양식에 따라 회원정보를 기입하여 회원가입신청을 하고 회사가 이러한 신청에 대하여 승낙함으로써
														체결됩니다.</strong></li>
												<li><strong>(2) 회사는 제1항과 같이 회원으로 가입할 것을 신청한
														이용자 중 다음 각 호에 해당하는 신청에 대하여는 서비스 제공을 거부하거나 제한할 수 있습니다.</strong>
													<ul>
														<li>- 실명이 아니거나 타인의 명의를 도용하여 신청하였을 경우</li>
														<li>- 허위 정보를 기재하거나, 회사가 제시하는 내용을 기재하지 않은 경우</li>
														<li>- 관계법령에 위배되거나 미풍양속을 저해하고자 하는 목적으로 회원가입 신청을 할 경우</li>
														<li>- 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하여
															시청하는 경우</li>
														<!--<li>- 14세 미만 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 경우</li>-->
													</ul></li>
											</ol></li>
										<li><strong><em>제6조</em> 회원정보의 변경</strong>
											<ol>
												<li><strong>(1) 회원은 개인정보관리화면을 통하여 언제든지 본인의
														개인정보를 열람하고 수정할 수 있습니다.</strong></li>
												<li><strong>(2) "회원"은 회원가입신청 시 기재한 사항이 변경되었을
														경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 "회사"에 대하여 그 변경사항을 알려야 합니다.</strong></li>
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
												<li><strong>(2) "회원"은 "ID" 및 "비밀번호"가 도용되거나
														제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 "회사"에 통지하고 "회사"의 안내에 따라야 합니다.</strong>
												</li>
												<li><strong>(3) 제2항의 경우에 해당 "회원"이 "회사"에 그 사실을
														통지하지 않거나, 통지한 경우에도 "회사"의 안내에 따르지 않아 발생한 불이익에 대하여 "회사"는
														책임지지 않습니다.</strong></li>
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
														<li>- 사회질서에 위배되는 외설/폭력적 메시지 유포/범죄행위를 목적으로 하거나 범죄를
															교사하는 행위</li>
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
												<li><strong>(1) "회사"는 적법하고 공정한 수단에 의하여
														서비스이용계약의 성립 및 이행에 필요한 최소한의 개인정보를 수집합니다. </strong></li>
												<li><strong>(2) 회사는 회원가입 신청 시 기본적인 서비스 제공을 위해
														이름, 아이디, 비밀번호, e-mail 주소, 배달지 주소(우편번호 포함), 전화번호, 이동전화번호 등에
														대한 개인정보를 수집합니다. </strong></li>
												<li><strong>(3) 회사는 회원의 기본적 인권을 침해할 우려가 있는 내용은
														수집하지 않습니다.</strong></li>
											</ol></li>
										<li><strong><em>제12조</em> 회원탈퇴 및 자격 상실 등</strong>
											<ol>
												<li><strong>(1) 회원"은 언제든지 서비스초기화면의 고객센터 또는 내
														정보 관리 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에
														따라 이를 즉시 처리하여야 합니다. </strong></li>
												<li><strong>(2) 회원"이 계약을 해지할 경우, 관련법 및
														개인정보처리방침에 따라 "회사"가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 "회원"의 모든
														데이터는 소멸됩니다.</strong></li>
												<li><strong>(3) 회사는 회원이 다음 각 호에 해당하는 행위를 하였을
														경우 사전 통지 없이 자격을 제한/정지할 수 있습니다. </strong>
													<ul>
														<li>- 타인의 ID및 비밀번호를 도용할 경우</li>
														<li>- 이용 가입 시 이용계약에 위반되는 허위사실을 기입하였을 경우</li>
														<li>- 다른 회원이 본 사이트를 이용하는 것을 방해하거나 그 정보를 도용하는 등 거래질서를
															위협하는 경우</li>
														<li>- 본 사이트를 위용하여 기타 관련 법률과 이 약관이 금지하는 행위를 하거나 미풍양속에
															반하는 행위를 하는 경우</li>
													</ul></li>
											</ol></li>
										<li><strong><em>제13조</em> 개인정보 파기 및 제3자 제공의 금지</strong>
											<p>"회사"는 회원이 탈퇴하거나 제16조에 따라 동의를 철회하는 경우, 지체 없이 수집된 회원정보를
												파기하는 등 필요한 조치를 취합니다.</p>
											<ol>
												<li><strong>(1) 회사는 개인정보를 회원의 동의 없이 제3자에게 제공하지
														않습니다. 단 다음 각 호의 경우에는 에외로 한다. </strong>
													<ul>
														<li>- 정보통신망이용촉진법 등 법률에 특별한 규정이 있는 경우</li>
														<li>- 서비스이용계약의 이행을 위하여 필요한 경우</li>
														<li>- 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수
															없는 형태 제공 시</li>
													</ul></li>
												<li><strong>(2) 회사는 회원의 개인정보를 회사의 제휴 사이트에서 활용할
														수 있습니다. </strong>
													<ul></ul></li>
												<li><strong>(3) 고객이 서비스 가입 등을 위해 기재한 개인정보는 회원
														탈퇴 등 이용목적이 달성된 후 내부 방침에 따라 지체 없이 파기합니다. </strong>
													<p>(단, 아래의 마케팅 목적으로 활용된 경우 내부 전산시스템 재정비 및 협력사와의 커뮤니케이션을
														고려하여 최단 기간인 30일 이후부터 적용)</p>
													<ol>
														<li>1. 이메일 홍보: 탈퇴시점 30일 이후부터 적용(수신거부 동일)</li>
														<li>2. DM(우편물): 탈퇴시점 30일 이후부터 적용(수신거부 동일)</li>
														<li>3. SMS 홍보: 탈퇴시점 30일 이후부터 적용(수신거부 동일)</li>
													</ol></li>
												<li><strong>(4) 파기방법</strong>
													<p>
														종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기한다.<br>전자적 파일 형태로
														저장된 개인정보는 기록을 재생할 수 없는 기술적 조치를 통하여 삭제한다.
													</p></li>
												<li><strong>(5)개인정보 유효기간 제도 도입</strong>
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
										<li><strong><em>제14조</em> 개인정보 동의 철회, 연람 또는 정정</strong>
											<ol>
												<li><strong>(1) 회원 또는 회원의 법정대리인은 언제든지 개인정보의 수집
														및 이용, 목적 외의 사용, 제3자 제공에 대한 동의를 철회할 수 있습니다. </strong></li>
												<li><strong>(2) 회원 또는 회원의 법정대리인은 언제든지 자신의
														개인정보를 열람할 수 있으며, 스스로 정보 및 오류를 수정할 수 있습니다. 그 자세한 방법은 본 사이트의
														공지, 서비스이용안내에서 정한 바에 따릅니다.</strong></li>
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
												<li><strong>(4) "회사"는 서비스의 제공에 필요한 경우 정기점검을
														실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.</strong></li>
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
														전자우편주소 할 수 있습니다. </strong></li>
												<li><strong>(2) 회사의 불특정다수 회원에 대하여 통지를 하는 경우,
														1주일 이상 회사의 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다. </strong></li>
												<li><strong>(3) 회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및
														고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다.
														"회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다. </strong></li>
												<li><strong>&lt;(4) "회사"는 서비스의 제공에 필요한 경우
														정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.</strong></li>
											</ol></li>
										<li><strong><em>제19조</em> 권리의 귀속</strong>
											<ol>
												<li><strong>(1) 서비스와 관련된 저작권 등 일체의 지적재산권은 회사에
														귀속됩니다. </strong></li>
												<li><strong>(2) 회원은 서비스를 이용함으로서 얻은 정보를 회사의 사전
														승낙 없이 복제, 송신, 배포, 방송, 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게
														하여서는 안됩니다. </strong></li>
												<li><strong>(3) 본 사이트에 회원이 게재한 자료와 게시물에 대한 권리와
														책임은 게시 당사자에게 있으며 회사는 회원의 동의 없이 이를 영리적인 목적으로 사용하지 않습니다.</strong></li>
											</ol></li>
										<li><strong><em>제20조</em> 책임제한</strong>
											<ol>
												<li><strong>(1) "회사"는 천재지변 또는 이에 준하는 불가항력으로
														인하여 "서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다. </strong></li>
												<li><strong>(2) "회사"는 "회원"의 귀책사유로 인한 "서비스" 이용의
														장애에 대하여는 책임을 지지 않습니다. </strong></li>
												<li><strong>(3) "회사"는 "회원"이 "서비스"와 관련하여 게재한
														정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다. </strong></li>
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
											</ul></li>
									</ol>
								</div>
							</div>

							<div id="term2" class="tab-content">
								<div class="terms-box">

									<ol>
										<li>
											<p class="sub-type-text">다미노피자 서비스의 이용과 관련하여 필요한 사항을
												규정합니다.</p>
										</li>
										<li><strong><em>제1조</em> </strong>
											<p>이 약관은 청오디피케이㈜(이하 “회사”)가 제공하는 위치기반서비스(이하 “서비스”)를 이용함에
												있어 회사와 이용자의 권리, 의무 및 책임사항, 기타 필요한 사항에 따른 이용 조건 및 절차 등 기본적인
												사항을 규정함을 목적으로 합니다.</p></li>
										<li><strong><em>제2조</em> 이용약관의 효력 및 변경</strong>
											<ol>
												<li><strong>(1) 본 약관은 서비스를 신청한 이용자 또는
														개인위치정보주체가 본 약관에 동의하고 회사가 정한 소정의 절차에 따라 서비스의 이용자로 등록함으로써
														효력이 발생합니다.</strong></li>
												<li><strong>(2) 이용자가 온라인에서 본 약관의 "동의하기" 버튼을
														클릭하였을 경우 본 약관의 내용을 모두 읽고 이를 충분히 이해하였으며, 적용에 동의한 것으로 봅니다.</strong></li>
												<li><strong>(3) 회사는 서비스에 새로운 업무 적용, 정부에 의한
														시정명령의 이행 및 기타 회사의 업무상 약관을 변경해야 할 중요한 사유가 있다고 판단될 경우 본 약관을
														변경할 수 있습니다.</strong></li>
												<li><strong>(4) 이용자와 계약을 체결한 서비스가 기술적 사양의 변경
														등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 수단으로 즉시 통지합니다.</strong></li>
												<li><strong>(5) 회사는 본 약관을 변경할 경우에는 변경된 약관과 사유를
														적용일자 1주일 전까지 홈페이지에 게시하거나 이용자에게 전자적 형태(전자우편, SMS, 앱 푸시 등)로
														공지하며, 이용자가 그 기간 안에 이의제기가 없거나, 본 서비스를 이용할 경우 이를 승인한 것으로
														봅니다.</strong></li>
											</ol></li>
										<li><strong><em>제3조</em> 관계법령의 적용</strong>
											<p>본 약관은 신의성실의 원칙에 따라 공정하게 적용하며, 본 약관에 명시되지 아니한 사항에 대하여는
												관계법령 또는 상관례에 따릅니다.</p></li>
										<li class="privacy-box"><strong><em>제4조</em> 서비스
												내용 및 요금</strong>
											<ol>
												<li><strong>(1) 회사가 제공하는 서비스는 기본적으로 무료입니다. 단,
														별도의 유료 서비스의 경우 해당 서비스에 명시된 요금을 지불하여야 사용 가능합니다. </strong></li>
												<li><strong>(2) 회사는 유료 서비스 이용요금을 회사와 계약한
														전자지불업체에서 정한 방법에 의하거나 회사가 정한 청구서에 합산하여 청구할 수 있습니다. </strong></li>
												<li><strong>(3) 유료서비스 이용을 통하여 결제된 대금에 대한 취소 및
														환불은 회사의 결제 이용약관 등 관계법에 따릅니다.</strong></li>
												<li><strong>(4) 이용자의 개인정보도용 및 결제사기로 인한 환불요청 또는
														결제자의 개인정보 요구는 법률이 정한 경우 외에는 거절될 수 있습니다.</strong></li>
												<li><strong>(5) 서비스 이용 시 발생하는 데이터 통신료는 별도이며
														가입한 각 이동통신사의 정책에 따릅니다.</strong></li>
											</ol>
											<p class="sub-type-text">* 회사가 제공하는 서비스는 아래와 같습니다.</p>
											<div class="table-type5">
												<table>
													<caption>서비스 내용 및 요금</caption>
													<colgroup>
														<col>
														<col style="width: 263px">
													</colgroup>
													<thead>
														<tr>
															<th scope="col">서비스 명칭 및 내용</th>
															<th scope="col">요금</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><strong>* 주변 매장 찾기/현 위치로 매장 검색</strong><br>
																- 현재의 위치를 기반으로 하여 주변 매장의 위치 등의 정보를 제공하는 서비스</td>
															<td rowspan="3">- 서비스의 이용 : 무료<br> - 서비스의 이용을
																위한 데이터 통신 비용 : 이동통신사 및 이용자의 가입 요금제에 따름
															</td>
														</tr>
														<tr>
															<td><strong>* 현위치로 주소 설정</strong> - 현재의 위치를 기반으로 배달
																위치 검색하는 서비스</td>
														</tr>
														<tr>
															<td><strong>* 드라이빙 픽업 서비스(포장주문)</strong><br>-
																드라이빙 픽업 주문 후 차량으로 이동시, 현재의 위치를 기반으로 매장 픽업위치에 접근하였는지 주문
																매장에 이용자 위치를 원격으로 전송하여 이용자에게 픽업위치로 주문한 제품을 제공하는 서비스 (단,
																다미노피자 앱에서 위치접근 권한을 허용한 고객에 한해 제공됨)</td>
														</tr>
													</tbody>
												</table>
											</div></li>
										<li><strong><em>제5조</em> 서비스내용변경 통지 등</strong>
											<ol>
												<li><strong>(1) 회사가 서비스 내용을 변경하거나 종료하는 경우 회사는
														이용자의 등록된 전자우편 주소로 이메일을 통하여 서비스 내용의 변경 사항 또는 종료를 통지할 수
														있습니다.</strong></li>
												<li><strong>(2) 전항의 경우 불특정 다수인을 상대로 통지를 함에
														있어서는 웹사이트 등 기타 회사의 공지사항을 통하여 이용자들에게 통지할 수 있습니다.</strong></li>
											</ol></li>
										<li><strong><em>제6조</em> 서비스이용의 제한 및 중지</strong>
											<ol>
												<li><strong>(1) 회사는 아래에 해당하는 사유가 발생한 경우에는 이용자의
														서비스 이용을 제한하거나 중지시킬 수 있습니다.</strong>
													<ul class="list-text-v2">
														<li>이용자가 회사 서비스의 운영을 고의 또는 중과실로 방해하는 경우</li>
														<li>서비스용 설비 점검, 보수 또는 공사로 인하여 부득이한 경우</li>
														<li>전기통신사업법에 규정된 기간통신사업자가 전기통신서비스를 중지했을 경우</li>
														<li>국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이
															있는 때</li>
														<li>기타 중대한 사유로 인하여 회사가 서비스 제공을 지속하는 것이 부적당하다고 인정하는 경우</li>
													</ul></li>
												<li><br> <strong>(2) 회사는 전항의 규정에 의하여 서비스의
														이용을 제한하거나 중지한 때에는 그 사유 및 제한기간 등을 이용자에게 알려야 합니다.</strong></li>
											</ol></li>
										<li><strong><em>제7조</em> 개인위치정보의 이용 또는 제공</strong>
											<ol>
												<li><strong>(1) 회사는 개인위치정보를 이용하여 서비스를 제공하고자 하는
														경우에는 미리 이용약관에 명시한 후 개인위치정보주체의 동의를 얻어야 합니다.</strong></li>
												<li><strong>(2) 이용자 및 법정대리인의 권리와 그 행사 방법은 제소
														당시의 이용자의 주소에 의하며, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다.
														다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할
														법원에 제기합니다.</strong></li>
												<li><strong>(3) 회사는 타사업자 또는 이용 고객과의 요금정산 및
														민원처리를 위해 위치정보 이용·제공·사실 확인 자료를 자동 기록·보존하며, 해당 자료는 관련 법령에 따라
														보관합니다.</strong></li>
											</ol></li>
										<li><strong><em>제8조</em> 개인위치정보주체의 권리</strong>
											<ol>
												<li class="privacy-box"><strong>(1) 이용자는 회사에
														대하여 언제든지 개인위치정보를 이용한 서비스 제공 및 개인위치 정보의 위탁 제공에 대한 동의의 전부 또는
														일부를 철회할 수 있습니다. 이 경우 회사는 수집한 개인위치정보 및 위치정보 이용, 제공사실 확인자료를
														파기합니다.</strong>
													<div class="table-type5">
														<table>
															<caption>개인위치정보주체의 권리</caption>
															<colgroup>
																<col style="width: 263px">
																<Col>
															</colgroup>
															<thead>
																<tr>
																	<th scope="col">수탁자</th>
																	<th scope="col">위탁범위</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>(주)스파코사</td>
																	<td>드라이빙 픽업 서비스 대행(개인위치정보 트래킹)</td>
																</tr>
															</tbody>
														</table>
													</div></li>
												<li><br> <strong>(2) 이용자는 회사에 대하여 언제든지
														개인위치정보의 수집, 이용 또는 제공의 일시적인 중지를 요구할 수 있으며, 회사는 이를 거절할 수 없고
														이를 위한 기술적 수단을 갖추고 있습니다. </strong></li>
												<li><br> <strong>(3) 이용자는 회사에 대하여 아래 항목의
														자료에 대한 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수
														있습니다. 이 경우 회사는 정당한 사유 없이 이용자의 요구를 거절할 수 없습니다.</strong>
													<ul class="list-text-v2">
														<li>본인에 대한 위치정보 수집, 이용, 제공사실 확인자료</li>
														<li>본인의 개인위치 정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법률 규정에
															의하여 제3자에게 제공된 이유 및 내용</li>
													</ul></li>
												<li><br> <strong>(4) 이용자는 제 1호 내지 제 3호의
														권리행사를 위해 회사에 소정의 절차를 통해 요구할 수 있습니다.</strong></li>
											</ol></li>
										<li><strong><em>제9조</em> 위치정보관리책임자의 지정</strong>
											<ol>
												<li><strong>(1) 회사는 위치정보를 적절히 관리·보호하고
														개인위치정보주체의 불만을 원활히 처리할 수 있도록 실질적인 책임을 질 수 있는 지위에 있는 자를
														위치정보관리책임자로 지정해 운영합니다.</strong></li>
												<li><strong>(2) 위치정보관리책임자는 서비스를 제공하는 부서의
														부서장으로서 구체적인 사항은 본 약관의 부칙에 따릅니다.</strong></li>
											</ol></li>
										<li><strong><em>제10조</em> 손해배상</strong>
											<ol>
												<li><strong>(1) 회사가 위치정보의 보호 및 이용 등에 관한 법률
														제15조 내지 제26조의 규정을 위반한 행위로 이용자에게 손해가 발생한 경우 이용자는 회사에 대하여
														손해배상 청구를 할 수 있습니다. 이 경우 회사는 고의, 과실이 없음을 입증하지 못하는 경우 책임을 면할
														수 없습니다. </strong></li>
												<li><strong>(2) 이용자가 본 약관의 규정을 위반하여 회사에 손해가
														발생한 경우 회사는 이용자에 대하여 손해배상을 청구할 수 있습니다. 이 경우 이용자는 고의, 과실이
														없음을 입증하지 못하는 경우 책임을 면할 수 없습니다.</strong></li>
												<li><strong>(3) 전항에도 불구하고 천재지변, 전쟁 등과 같은 불가항력의
														상태가 있는 경우 발생한 손해에 대해서는 책임을 부담하지 않습니다.</strong></li>
											</ol></li>
										<li><strong><em>제11조</em> 분쟁의 조정</strong>
											<ol>
												<li><strong>(1) 회사는 위치정보와 관련된 분쟁에 대해 당사자간 협의가
														이루어지지 아니하거나 협의를 할 수 없는 경우에는 위치정보의 보호 및 이용 등에 관한 법률 제28조의
														규정에 의한 방송통신 위원회에 재정을 신청할 수 있습니다. </strong></li>
												<li><strong>(2) 회사 또는 고객은 위치정보와 관련된 분쟁에 대해
														당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 개인정보보호법 제43조의 규정에 의한
														개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.</strong></li>
											</ol></li>
										<li><strong><em>제12조</em> 사업자 정보</strong>
											<ol>
												<li><strong>회사의 상호, 주소, 전화번호 그 밖의 연락처는 다음과
														같습니다.</strong></li>
												<li><strong>상호: 다미노피자㈜</strong></li>
												<li><strong>주소: 서울특별시 중구 돈화문로 26 단성골드빌딩</strong></li>
												<li><strong>전화번호: 1588-3082</strong></li>
												<li><strong>사업자정보 이메일 주소:
														webmaster@daminos.co.kr</strong></li>
											</ol></li>
										<li><strong><em>부칙</em></strong>
											<ol>
												<li><strong>제 1 조 시행일</strong></li>
												<li><strong>본 약관은 2020년 5월 25일부터 적용됩니다.</strong></li>
												<!-- <li><strong>제 2 조 위치정보관리 책임자 정보</strong></li>
												<li><strong>회사는 다음과 같이 위치정보 관리책임자를 지정하여 이용자들이 서비스
														이용과정에서 발생한 민원사항 처리를 비롯하여 개인위치정보주체의 권리 보호를 위해 힘쓰고 있습니다.</strong></li>
												<li><strong>위치정보관리 책임자 정보(개인정보 보호책임자 겸직)</strong></li>
												<li><strong>연락처 : 1588-3082</strong></li>
												<li><strong>이메일 주소 : webmaster@dominos.co.kr</strong></li> -->
											</ol></li>
									</ol>
								</div>
							</div>



						</article>
					</div>
				</div>
			</section>
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
						<li><a href="../contents/law.html">이용약관</a></li>
						<li class="on"><a href="../contents/privacy.html">개인정보처리방침</a></li>
						<li><a
							href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
						<li><a href="../company/contents/chainstore1.html">가맹점모집</a></li>
						<li><a href="../order/groupOrder.html">단체주문</a></li>
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
						<div class="select-type language">
							<select id="select-type">
								<option value="/main?locale=ko">KOR</option>
								<option value="/main?locale=en">ENG</option>
							</select>
						</div>

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
							src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards.png"
							alt="">
							<p>
								식품안전<br>경영시스템 인증
							</p></li>
						<li><img
							src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards2.png"
							alt="">
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
							src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards5.png"
							alt="">
							<p>
								2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상
							</p></li>
						<li><img
							src="../../newcdn.dominos.co.kr/domino/pc/images/list_awards6.png"
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
