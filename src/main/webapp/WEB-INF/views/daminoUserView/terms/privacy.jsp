<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>개인정보처리방침- 다미노피자</title>

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
		
		<!-- container -->
		<div id="container">
			<section id="content">
				<div class="sub-type menu">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">개인정보 처리방침</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><strong>개인정보 처리방침</strong></li>
								</ol>
							</div>
						</div>
						<article class="terms-wrap">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="privacy.do">개인정보 처리방침 </a></li>
										<li><a href="law.do">이용약관</a></li>
									</ul>
								</div>
							</div>
							<p class="sub-type-text">다미노피자는 고객들의 개인정보를 소중히 다루고 있습니다.</p>
							<div class="terms-box">
								<h3 class="title-type">개인정보 처리방침 안내</h3>
								<p>청오디피케이㈜는(이하 “회사”는) 고객님의 개인정보를 중요시하며, 개인정보보호를 위해 “정보통신망
									이용촉진 및 정보보호에 관한 법률”, “통신비밀보호법”, “개인정보보호법” 등 정보통신서비스제공자가 준수하여야 할
									관련 법령상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보 처리방침을 정하여 이용자 권익 보호에
									최선을 다하고 있습니다. 회사는 개인정보 처리방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로
									이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.</p>

								<div class="terms-navi">
									<div class="list-text v3">
										<ul>
											<li class="active"><a href="#privacy1">제 1조. 수집하는 개인
													정보의 항목 및 수집 방법</a></li>
											<li><a href="#privacy2">제 2조. 개인정보의 수집및 이용목적</a></li>
											<li><a href="#privacy3">제 3조. 개인정보의 제공</a></li>
											<li><a href="#privacy4">제 4조. 수집한 개인정보의 위탁</a></li>
										</ul>
										<ul>
											<li><a href="#privacy5">제 5조. 개인정보 보유 및 이용기간</a></li>
											<li><a href="#privacy6">제 6조. 개인정보의 파기절차 및 방법</a></li>
											<li><a href="#privacy7">제 7조. 이용자 및 법정대리인의 권리와 그
													행사방법</a></li>
											<li><a href="#privacy8">제8조. 개인정보 자동 수집 장치의 설치/운영 및
													거부에 관한 사항 </a></li>
										</ul>
										<ul>
											<li><a href="#privacy9">제 9조. 개인정보의 기술적/관리적 보호 대책</a></li>
											<li><a href="#privacy10">제 10조. 개인위치정보의 보호</a></li>
											<li><a href="#privacy11">제 11조. 개인정보 보호책임자 및 담당자의
													연락처</a></li>
											<li><a href="#privacy12">제 12조. 고지의 의무</a></li>
										</ul>
									</div>
								</div>
								<div id="privacy1" class="privacy-box">
									<h3 class="title-type">제 1조. 수집하는 개인정보의 항목 및 수집방법</h3>
									<h4 class="title-type2">1. 수집하는 개인정보의 항목</h4>
									<ol>
										<li><span>①</span> 회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초
											회원가입 당시 아래와 같은 개인정보를 수집하고 있습니다.
											<dl>
												<dt>*일반 회원 가입 시(만 14세 이상)</dt>
												<dd>
													<ul class="list-text-v2">
														<li>필수항목 : 성명, 생년월일, 아이디(ID), 비밀번호, 휴대전화번호, 이메일,
															수신여부(이메일, SMS),성별, 본인인증정보[아이핀 번호(휴대폰인증 시), 중복가입확인정보(DI),
															암호화된 동일인 식별정보(CI)]</li>
														<li>선택항목 : 주소, 광고성 수신여부(이메일, SMS, 우편)</li>
													</ul>
												</dd>
												<dt>*비회원주문 시</dt>
												<dd>
													<ul class="list-text-v2">
														<li>필수항목 : 성명, 휴대전화번호</li>
														<li>선택항목 : 주소, 수령인, 수령인 휴대전화번호</li>
													</ul>
												</dd>
											</dl></li>
										<li><span>②</span> 정규직 및 아르바이트 입사지원에 대한 정보를 위해 개인정보를 수집하고
											있습니다.
											<dl>
												<dt>*정규직 입사지원 시</dt>
												<dd>
													<ul class="list-text-v2">
														<li>필수항목 : 성명, 생년월일, 성별, 주소, 이메일, 휴대전화번호</li>
														<li>선택항목 : 증명사진, 학력사항, 경력사항, 사회활동, 가족사항</li>
													</ul>
												</dd>
												<dt>*아르바이트직 입사지원 시</dt>
												<dd>
													<ul class="list-text-v2">
														<li>필수항목 : 성명, 주소, 전화번호, 휴대전화번호</li>
													</ul>
												</dd>
											</dl></li>
										<li><span>③</span> 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수
											있습니다.
											<ul class="list-text-v2">
												<li>IP Address, 쿠키, 방문 일시, OS종류, 브라우져 종류, 서비스 이용 기록, 불량
													이용 기록, 위치정보(전화주문 시 가까운 매장 연결 기능)</li>
												<li>모바일 어플리케이션 서비스 이용 시 : 단말기 모델, UUID, 단말기 OS 종류</li>
											</ul></li>
									</ol>
								</div>
								<div id="privacy2" class="privacy-box">
									<h3 class="title-type">제 2조. 개인정보의 수집 및 이용목적</h3>
									<p>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다. 이용자가 제공한 모든 정보는 하기 목적에
										필요한 용도 이외로는 사용되지 않으며, 이용 목적이 변경될 시에는 사전동의를 구할 것입니다.</p>
									<h4 class="title-type2">
										<span>1.</span> 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 주문 결제 서비스
									</h4>
									<ol>
										<li><span>①</span> 주문 상품 또는 경품 등 발송</li>
										<li><span>②</span> 금융거래 본인 인증 및 금융 서비스</li>
										<li><span>③</span> 구매 및 주문 결제, 요금추심 등</li>
									</ol>
									<h4 class="title-type2">
										<span>2.</span> 회원관리
									</h4>
									<ol>
										<li><span>①</span> 회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인
											식별</li>
										<li><span>②</span> 불량회원의 부정 이용방지와 비인가 사용방지</li>
										<li><span>③</span> 가입의사 확인, 가입 및 가입횟수 제한</li>
										<li><span>④</span> 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달</li>
									</ol>
									<h4 class="title-type2">
										<span>3.</span> 신규 서비스 개발 및 마케팅 광고에의 활용
									</h4>
									<ol>
										<li><span>①</span> 신규 서비스 개발 및 맞춤 서비스 제공</li>
										<li><span>②</span> 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성
											확인</li>
										<li><span>③</span> 이벤트 및 광고성 정보 제공 및 참여기회 제공</li>
										<li><span>④</span> 접속빈도 파악 등에 대한 통계</li>
									</ol>
								</div>
								<div id="privacy3" class="privacy-box">
									<h3 class="title-type">제 3조. 개인정보의 제공</h3>
									<p class="title-type2">
										<span>1.</span> 회사는 이용자들의 개인정보를 「개인정보의 수집 및 이용목적」에서 고지한 범위 내에서
										사용하며, 이용자의 사전 동의 없이 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 제3자에게
										제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.
									</p>
									<ol>
										<li><span>①</span> 이용자들이 사전에 공개 또는 제3자 제공에 동의한 경우</li>
										<li><span>②</span> 서비스의 제공에 관한 계약의 이행을 위하여 필요한 개인정보로서
											경제적/기술적인 사유로 통상의 동의를 받는 것이 현저히 곤란한 경우</li>
										<li><span>③</span> 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에
											따라 수사기관의 요구가 있는 경우</li>
									</ol>
									<p class="title-type2">
										<span>2.</span> 회사가 제공하는 서비스를 통하여 주문 및 결제가 이루어진 경우 상담 등 거래
										당사자간 원활한 의사소통 및 배송 등 거래이행을 위하여 관련된 정보를 필요한 범위 내에서 거래 당사자에게
										제공합니다.
									</p>

									<p class="title-type2">
										<span>3.</span> 그 밖에 개인정보 제3자제공이 필요한 경우에는 이용자의 동의를 얻는 등 합당한
										절차를 통하여 제3자에게 개인정보를 제공할 수 있습니다.
									</p>

									<p class="title-type2">
										<span>4.</span> 이용자는 개인정보의 제3자 제공에 대하여 동의를 하지 않을 수 있고, 언제든지
										제3자 제공 동의를 철회할 수 있습니다. 동의를 거부하시는 경우에도 회원가입서비스는 이용하실 수 있으나, 제3자
										제공에 기반한 관련서비스의 이용/제공이 제한될 수 있습니다.
									</p>
								</div>
								<div id="privacy4" class="privacy-box">
									<h3 class="title-type">제 4조. 수집한 개인정보의 위탁</h3>
									<p class="title-type2">회사는 서비스 향상을 위해서 고객님의 개인정보가 필요한 경우 동의
										등 법률상의 요건을 구비하여 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가
										안전하게 관리될 수 있도록 필요한사항을 규정하고 있습니다. 또한 공유하는 정보는 당해 목적을 달성하기 위하여
										필요한 최소한의 정보에 국한됩니다</p>

									<div class="table-type5">
										<table>
											<caption>수집한 개인정보의 위탁</caption>
											<colgroup>
												<col style="width: 263px">
												<col>
											</colgroup>
											<thead>
												<tr>
													<th scope="col">수탁자</th>
													<th scope="col">위탁범위</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>청오엔에프㈜</td>
													<td>홈페이지 서비스 운영 및 회원관리 등의 서비스 제공을 위한 시스템 운영위탁</td>
												</tr>
												<tr>
													<td>메가존</td>
													<td>홈페이지 주문 시스템 운영, 모니터링</td>
												</tr>
												<tr>
													<td>씨엔티테크㈜</td>
													<td>콜센터 주문 서비스 및 고객상담 지원 상담 및 서비스 대행</td>
												</tr>
												<tr>
													<td>㈜KG 모빌리언스</td>
													<td>휴대전화 본인인증</td>
												</tr>
												<tr>
													<td>㈜KG 이니시스</td>
													<td>결제처리(휴대전화,신용카드)</td>
												</tr>
												<tr>
													<td>Nice 평가㈜</td>
													<td>아이핀(I-PIN)인증</td>
												</tr>
												<tr>
													<td>드림라인㈜</td>
													<td>문자메세지 발송</td>
												</tr>
												<tr>
													<td>㈜엘지유플러스</td>
													<td>문자메세지 발송</td>
												</tr>
												<tr>
													<td>씨제이올리브네트웍스㈜</td>
													<td>카카오톡 알림톡 발송, 문자메세지 발송</td>
												</tr>
												<tr>
													<td>㈜엠트웰브</td>
													<td>모바일쿠폰 발송</td>
												</tr>
												<tr>
													<td>㈜신화위드컴</td>
													<td>DM발송</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>


								<div id="privacy5" class="privacy-box">
									<h3 class="title-type">제 5조. 개인정보 보유 및 이용기간</h3>
									<p class="title-type2">이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이
										달성되면 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</p>



									<p class="title-type2">1. 관련법령에 의한 정보보유 사유</p>
									<ol>
										<li><span>①</span>계약 또는 청약철회 등에 관한 기록

											<ul class="list-text-v2">
												<li>보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
												<li>보존 기간 : 5년</li>
											</ul></li>
										<li><span>②</span>대금결제 및 재화 등의 공급에 관한 기록

											<ul class="list-text-v2">
												<li>보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
												<li>보존 기간 : 5년</li>
											</ul></li>
										<li><span>③</span>소비자의 불만 또는 분쟁처리에 관한 기록

											<ul class="list-text-v2">
												<li>보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
												<li>보존 기간 : 3년</li>
											</ul></li>
										<li><span>④</span>본인 확인에 관한 기록

											<ul class="list-text-v2">
												<li>보존 근거 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률</li>
												<li>보존 기간 : 6개월</li>
											</ul></li>
										<li><span>⑤</span>웹사이트 방문기록

											<ul class="list-text-v2">
												<li>보존 근거 : 통신비밀보호법</li>
												<li>보존 기간 : 3개월</li>
											</ul></li>
										<li><span>⑥</span>개인위치정보에 관한 기록

											<ul class="list-text-v2">
												<li>보존 근거 : 위치정보의 보호 및 이용 등에 관한 법률</li>
												<li>보존 기간 : 1년</li>
											</ul></li>
									</ol>

								</div>

								<div id="privacy6" class="privacy-box">
									<h3 class="title-type">제 6조. 개인정보의 파기절차 및 방법</h3>
									<p>이용자의 개인정보는 원칙적으로 개인정보와 수집 및 이용목적이 달성되면 지체 없이 파기 또는 분리보관
										합니다. 회사의 개인정보 파기 및 분리보관 절차와 방법은 다음과 같습니다.</p>

									<h4 class="title-type2">1. 파기절차</h4>
									<ol>
										<li><span>①</span> 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의
											DB로 옮겨져(종이의 경우 별도의 보관장소) 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간
											참조)일정 기간 저장된 후 파기됩니다.</li>
										<li><span>②</span> 동 개인정보는 법률에 의한 경우가 아니고서는 보유되는 이외의 다른
											목적으로 이용되지 않습니다.</li>
										<li><span>③</span> 보존기간이 경과한 정보 관련 문서(대외비는 부서보안관리자, 비밀은
											정보보호관리자)는 해당관리자의 승인을 받아 폐기합니다.</li>
									</ol>

									<h4 class="title-type2">2. 파기방법</h4>
									<ol>
										<li><span>①</span> 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여
											파기합니다.</li>
										<li><span>②</span> 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적
											방법(재사용 시 덮어 쓰기, 로우(low)포맷 등)을 사용하여 삭제합니다.</li>
									</ol>

									<h4 class="title-type2">3. 개인정보 유효기간 제도 도입</h4>
									<ol>
										<li><span>①</span> 당사는 장기간(1년 이상) 서비스 미이용자의 개인정보보호를 위하여
											2015년 8월 18일부로 다른 이용자의 개인정보와 분리하여 저장, 관리합니다.</li>
										<li><span>②</span> 미이용의 기간은 최종 로그인 일자 및 주문이력으로 산정하며 법령에서
											정의한 기간 동안 서비스 미이용자에 대하여 분리, 저장, 관리합니다.</li>
										<li><span>③</span> 당사는 미이용자 개인정보 분리/저장시점 도래 1개월 이전에 이메일
											등을 통해 해당 이용자에게 관련내용을 공지합니다.</li>
										<li><span>④</span> 분리 저장된 회원의 개인정보는 5년간 보관 후 지체없이 파기합니다.</li>
										<li><span>⑤</span> 입사지원자의 지원이력 정보는 지원이력 확인을 위해 6개월간 보관 후
											파기됩니다.</li>
										<li><span>⑥</span> 비회원의 개인정보는 부정이용 재발 방지를 위해 6개월간 보관 후
											파기됩니다.</li>
									</ol>
								</div>

								<div id="privacy7" class="privacy-box">
									<h3 class="title-type">제 7조. 이용자 및 법정대리인의 권리와 그 행사방법</h3>
									<p class="title-type2">1. 이용자 및 법정대리인은 회사에 대해 언제든지 다음 각 호의
										개인정보 보호 관련 권리를 행사할 수 있습니다.</p>
									<ol>
										<li><span>①</span> 개인정보 열람요구</li>
										<li><span>②</span> 오류 등이 있을 경우 정정 요구</li>
										<li><span>③</span> 삭제요구</li>
										<li><span>④</span> 처리정지 요구</li>
									</ol>
									<p class="title-type2">2. 권리 행사는 서면, 전자우편, 모사전송(FAX) 등을 통하여
										하실 수 있으며, 회사는 이에 대해 지체 없이 조치하겠습니다.</p>

									<p class="title-type2">3. 이용자 및 법정대리인이 개인정보의 오류 등에 대한 정정 또는
										삭제를 요구한 경우에 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.</p>

									<p class="title-type2">4. 권리 행사는 이용자의 법정대리인이나 위임을 받은 자 등
										대리인을 통하여 하실 수 있습니다. 이 경우 위임장을 작성하여 제출하셔야 합니다.</p>

									<p class="title-type2">5. 회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는
										삭제된 개인정보는 「개인정보의 보유 및 이용기간」에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할
										수 없도록 처리하고 있습니다.</p>
								</div>

								<div id="privacy8" class="privacy-box">
									<h3 class="title-type">제 8조. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한
										사항</h3>
									<p>회사는 이용자들에게 특화된 맞춤서비스를 제공하기 위해서 이용자들의 정보를 저장하고 수시로 불러오는
										'쿠키(cookie)'를 사용합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버(HTTP)가 이용자의 컴퓨터
										브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.</p>

									<h4 class="title-type2">1. 쿠키의 사용 목적</h4>
									<p>이용자들이 방문한 다미노피자의 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어,
										보안접속 여부, 뉴스편집(다미노 소식), 이용자 규모 등을 파악하여 이용자에게 최적화된 정보 제공을 위하여
										사용합니다.</p>

									<h4 class="title-type2">2. 쿠키의 설치/운영 및 거부</h4>
									<ol>
										<li><span>①</span> 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서,
											이용자는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나,
											아니면 모든 쿠키의 저장을 거부할 수도 있습니다.</li>
										<li><span>②</span> 설정방법 예(인터넷 익스플로어 경우 : 웹 브라우저 상단의 도구 >
											인터넷 옵션 > 개인정보)</li>
										<li><span>③</span> 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 일부 서비스는
											이용에 어려움이 있을 수 있습니다</li>
									</ol>
								</div>

								<div id="privacy9" class="privacy-box">
									<h3 class="title-type">제 9조. 개인정보의 기술적/관리적 보호 대책</h3>
									<p>회사는 이용자들의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 유출, 변조 또는 훼손되지 않도록
										안전성 확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.</p>

									<h4 class="title-type2">1. 비밀번호 암호화</h4>
									<ul class="list-text-v2">
										<li>다미노피자 웹 페이지 회원아이디(ID)의 비밀번호는 암호화 되어 저장 및 관리되고 있어 본인만이
											알고 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능합니다.</li>
									</ul>
									<h4 class="title-type2">2. 해킹 등에 대비한 대책</h4>
									<ul class="list-text-v2">
										<li>회사는 해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해
											최선을 다하고 있습니다. 개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여
											이용자들의 개인정보나 자료가 유출되거나 손상되지 않도록 방지하고 있으며, 암호화 통신 등을 통하여
											네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다. 그리고 침입차단시스템을 이용하여
											외부로부터의 무단접근을 통제하고 있으며, 기타 시스템적으로 보안성을 확보하기 위한 가능한 모든 기술적 장치를
											갖추려 노력하고 있습니다.</li>
									</ul>
									<h4 class="title-type2">3. 처리 직원의 최소화 및 교육</h4>
									<ul class="list-text-v2">
										<li>회사의 개인정보관련 처리 직원은 담당자에 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하여
											정기적으로 갱신하고 있으며, 담당자에 대한 수시 교육을 통하여 회사 개인정보 처리방침의 준수를 항상 강조하고
											있습니다.</li>
									</ul>
									<h4 class="title-type2">4. 개인정보보호전담기구의 운영</h4>
									<ul class="list-text-v2">
										<li>사내 개인정보보호전담기구 등을 통하여 회사 개인정보 처리방침의 이행사항 및 담당자의 준수여부를
											확인하여 문제가 발견될 경우 즉시 수정하고 바로 잡을 수 있도록 노력하고 있습니다. 단, 이용자 본인의
											부주의나 인터넷상의 문제로 ID, 비밀번호, 주민등록번호 등 개인정보가 유출되어 발생한 문제에 대해 회사는
											일체의 책임을 지지 않습니다.</li>
									</ul>



								</div>

								<div id="privacy10" class="privacy-box">
									<h3 class="title-type">제 10조. 개인위치정보의 보호</h3>
									<p class="title-type2">1. 회사는 ”위치기반 서비스” 제공을 위하여 고객의 위치정보를
										수집 및 이용할 수 있습니다.</p>

									<p class="title-type2">2. 상기 개인위치정보는 상기 이용목적 이외의 용도로는 사용되지
										않습니다.</p>

									<p class="title-type2">3. 상기 개인위치정보의 수집, 이용 또는 제공목적을 달성한
										때에는 관련 법령에 의하여 보존하여야 하는 위치정보 수집, 이용, 제공사실 확인자료 외의 개인위치정보는 즉시
										파기합니다.</p>

									<p class="title-type2">4. 기타 개인위치정보 관련한 회사의 의무 및 고객의 권리는
										“위치정보의 보호 및 이용 등에 관한 법률” 및 관련 법령을 따릅니다.</p>
								</div>

								<div id="privacy11" class="privacy-box">
									<h3 class="title-type">제 11조. 개인정보 보호책임자 및 담당자의 연락처</h3>
									<p>
										귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보 보호책임자 혹은 담당부서로
										신고하실 수 있습니다.<br> 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
									</p>
									<div class="table-type5">
										<table>
											<caption>개인정보 보호책임자 및 담당자의 연락처</caption>
											<colgroup>
												<col style="width: 152px;">
												<col style="width: 152px;">
												<col style="width: 92px;">
												<col style="width: 152px;">
												<col>
											</colgroup>
											<thead>
												<tr>
													<th scope="col">직무</th>
													<th scope="col">부서</th>
													<th scope="col">이름</th>
													<th scope="col">연락처</th>
													<th scope="col">이메일</th>
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
													<td>개인정보 관리담당자</td>
													<td>정보전략팀</td>
													<td>박홍직</td>
												</tr>
											</tbody>
										</table>
									</div>
									<p class="title-type2">기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래
										기관에 문의하시기 바랍니다.</p>
									<ul>
										<li>
											<dl>
												<dt>* 개인정보침해에 대한 신고 상담 기관 정보</dt>
												<dd>
													<ul class="list-text-v2">
														<li>경찰청 사이버안전국 ( http://cyberbureau.police.go.kr /
															(국번없이) 182 )</li>
														<li>대검찰청 사이버수사과 ( http://www.spo.go.kr / (국번없이) 1301
															)</li>
														<li>개인정보 침해신고센터 (한국인터넷 진흥원 운영) (
															http://privacy.kisa.or.kr / (국번없이) 118 )</li>
														<li>개인정보 분쟁조정위원회 (개인정보보호위원회 운영) (
															http://www.kopico.go.kr / 1833-6972 )</li>
													</ul>
												</dd>
											</dl>
										</li>
									</ul>
								</div>

								<div id="privacy12" class="privacy-box">
									<h3 class="title-type">제 12조. 고지의 의무</h3>
									<p class="title-type2">현 개인정보처리방침 내용 추가, 삭제 및 수정이 있을 시에는 개정
										최소 7일전부터 홈페이지 또는 이메일을 통해 고지할 것입니다.</p>
									<ul class="list-text-v2">
										<li>개인정보 처리방침 변경공고일자: 2019년 12월 2일</li>
										<li>개인정보 처리방침 시행일자: 2019년 12월 9일</li>
									</ul>
								</div>
							</div>
							<div class="form-group srch-type">
								<form id="frm" name="frm"
									action="https://web.dominos.co.kr/contents/privacy"
									action="https://web.dominos.co.kr/contents/post">
									<div class="form-item">
										<div class="select-type2">
											<select name="date" id="date">
												<option value="20191209" selected>현행 시행일자 : 2019년
													12월 09일</option>
												<option value="20190322">2019년 03월 22일</option>
												<option value="20180910">2018년 09월 10일</option>
												<option value="20180601">2018년 06월 01일</option>
												<option value="20171130">2017년 11월 30일</option>
												<option value="20170829">2017년 8월 29일</option>
												<option value="20170630">2017년 6월 30일</option>
												<option value="20170117">2017년 1월 17일</option>
												<option value="20151201">2015년 12월 1일</option>
												<option value="20151109">2015년 11월 9일</option>
												<option value="20150728">2015년 7월 28일</option>
												<option value="20150720">2015년 7월 20일</option>
												<option value="20141201">2014년 12월 1일</option>
												<option value="20121010">2012년 10월 10일</option>
											</select>
										</div>
									</div>
								</form>
								<div class="form-item">
									<a href="javascript:document.frm.submit();" class="btn-type v4">이동</a>
								</div>
							</div>
						</article>
					</div>
				</div>
			</section>
		</div>
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