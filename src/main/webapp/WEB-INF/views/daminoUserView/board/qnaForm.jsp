<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<title>온라인 신문고- 다미노피자</title>
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
<style>
	#card_add .pop_wrap{position:fixed;top:50%;width:490px;margin-left:-245px;margin-top:-35px;}
	#card_add .pop_wrap .pop_content p{font-size:18px;color:#fff;text-align:center}
	.pop_toast {display: block;position:absolute;top:0;left:0;width:100%;height:100%;z-index:100;}
	.pop_toast.open {display:block}
	
	.pop_toast .bg {position:fixed; width:100%; height:100%;}
	.pop_toast .pop_wrap {overflow:hidden;position:absolute; top:100px; left:50%; min-width:400px;min-height:70px; margin-left:-200px; padding:20px; background:url(https://cdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png) repeat 0 0;border-radius:12px;}
	.pop_toast .pop_wrap .btn_close3 {position:absolute; top:15px; right:20px;}
	.pop_toast .pop_header {position:absolute;top:0;left:0;width:100%;height:66px;padding:0 40px;background-color:#eeece9;line-height:66px;}
	.pop_toast .pop_header h2 {font-size:30px;font-weight:500;color:#38474f;}
	.pop_toast .pop_content {position:relative;width:100%;padding: 0;}
	.pop_type2 .pop_wrap .btn_close3 {position:absolute; top:15px; right:20px;}
	
	/* <!-- //기존 팝업 재사용위해 css 추가함. 추후 common.css 에 아래 소스 추가 예정 --> */
	</style>
<script>
function expireSession(){
     alert("세션이 만료되었습니다");
     
     var userid = $('#userid').val(); // 유저 아이디
     
     //장바구니 삭제 기능 구현 및 로그인 페이지 이동 필요
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
			<!-- content -->
			<section id="content">
				<div class="sub-type faq">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">고객센터</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><a
										href="faqMain.do">고객센터</a></li>
									<li><strong>온라인 신문고</strong></li>
								</ol>
							</div>
						</div>
						<article class="faq-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li><a
											href="faqMain.do">자주하는
												질문</a></li>
										<li class="active"><a href="qnaForm.do">온라인 신문고</a></li>
									</ul>
								</div>
							</div>
							<form id="qnaForm" name="qnaForm" method="post"
								action="https://web.dominos.co.kr/bbs/qnaProc"
								enctype="multipart/form-data">
								<input type="hidden" id="email" name="email" value="" />
								<div class="tab-content active" id="online">
									<div class="top">
										<p>다미노피자를 이용하시면서 느꼈던 불편한 점이나 건의사항, 제품에 대한 의견을 남겨주시면 성심껏
											답변해드리겠습니다.</p>
										<p>※주문 취소/변경과 같은 긴급한 요청은 매장으로 연락 부탁드립니다.</p>
										<p class="txt_faq">
											다미노피자 고객만족센터 <a href="tel:080-860-3082">080-860-3082</a>
										</p>
									</div>
									<div class="privacy_agree">
										<dl>
											<dt>개인정보 수집 및 이용동의</dt>
											<dd>
												<div class="agree_wrap">
													개인정보보호정책은 청오디피케이㈜에서 운영하는 다미노피자 홈페이지 서비스(이하 다미노)를 이용하는 고객님의
													개인정보 보호를 위하여, 개인정보 수집의 목적과 그 정보의 정책적 ,시스템적 보안에 관한 규정입니다.<br>
													<br> * 개인정보의 수집 및 이용목적<br>
													<br> 1. 다미노는 고객님께서 신문고 서비스를 이용하는데 있어, 원활하게 문의사항의 접수 및
													답변이 이루어질 수 있도록 하기 위한 최소한의 정보를 수집합니다.<br>
													<br> 2. 제공하신 모든 정보는 상기 목적에 필요한 용도 이외로는 사용되지 않습니다.<br>
													<br> * 수집하는 개인정보의 항목<br>
													<br> 이름, 휴대전화, 이메일 : 고지의 전달 또는 원활한 의사소통 경로의 확보.<br>
													<br> * 보유기간 및 이용기간<br>
													<br> 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면
													파기됩니다. 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을
													이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.<br>
													<br> - 소비자의 불만 또는 분쟁처리에 관한 기록<br> 보존 근거 : 전자상거래
													등에서의 소비자보호에 관한 법률<br> 보존 기간 : 3년<br>
													<br> * 온라인 신문고 서비스 이용에 필요한 최소한의 개인정보 수집·이용에 동의하지 않을
													권리가 있으며, 동의 거부 시 거부한 내용에 대해 서비스가 제한될 수 있습니다.
												</div>
											</dd>
										</dl>
										<div class="privacy_chk">
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
									<div class="online_form">
										<ul>
											<li class="form_name"><label for="name">이름<span>*</span></label>
												<div class="form_group">
													<div class="form_field">
														<div class="form_item">
															<span class="i_label" style="position: absolute;"></span>
															<input type="text" name="name" id="name" class="i_text"
																maxlength="10">
														</div>
													</div>
													<span class="i_error">이름을 입력해주세요.</span>
												</div></li>
											<li class="form_phone"><label for="form_phone">휴대전화<span>*</span></label>
												<div class="form_group">
													<div class="form_field">
														<div class="select-type2 sel_box ">
															<select id="hand_tel1" name="hand_tel1">
																<option value="010">010</option>
																<option value="011">011</option>
																<option value="016">016</option>
																<option value="017">017</option>
																<option value="018">018</option>
																<option value="019">019</option>
															</select>
														</div>
													</div>
													<div class="form_field">
														<div class="form_item">
															<span class="i_label" style="position: absolute;"></span>
															<input type="text" name="hand_tel2" id="hand_tel2"
																class="i_text" maxlength="4"
																onkeyup="checkNum($(this), '숫자만 입력해주세요.');">
														</div>
													</div>
													<div class="form_field">
														<div class="form_item">
															<span class="i_label" style="position: absolute;"></span>
															<input type="text" name="hand_tel3" id="hand_tel3"
																class="i_text" maxlength="4"
																onkeyup="checkNum($(this), '숫자만 입력해주세요.');">
														</div>
													</div>
													<span class="i_error">휴대전화번호를 입력해주세요.</span>
												</div></li>
											<li class="form_email"><label for="email1">이메일<span>*</span></label>
												<div class="form_group">
													<div class="form_field">
														<div class="form_item">
															<label for="" class="i_label" style="position: absolute;"></label>
															<input type="text" name="email1" id="email1"
																class="i_text" maxlength="24">
														</div>
													</div>
													<div class="form_field">
														<span class="txt_at">@</span>
													</div>
													<div class="form_field">
														<div class="form_item">
															<label for="" class="i_label" style="position: absolute;"></label>
															<input type="text" name="email2" id="email2"
																class="i_text" maxlength="24">
														</div>
													</div>
													<div class="form_field">
														<div class="select-type2 sel_box">
															<select id="email3" name="email3"
																onChange="changeEmail(this.value);">
																<option value="naver.com">네이버</option>
																<option value="hanmail.net">한메일</option>
																<option value="gmail.com">지메일</option>
																<option value="hotmail.com">핫메일</option>
																<option value="nate.com">네이트</option>
																<option value="WRITE" selected>직접입력</option>
															</select>
														</div>
													</div>
													<span class="i_error">※등록결과 및 답변은 이메일로 알려드리오니, 정확한
														이메일을 기재하여 주시기 바랍니다.</span>
												</div></li>
											<li class="form_type"><label for="type_div3">유형분류<span>*</span></label>
												<div class="form_group">
													<div class="form_field">
														<div class="select-type2 sel_box">
															<select id="type_div3" name="type_div3">
																<option value="">선택</option>
																<option value="Y">본인이 주문한 경우</option>
																<option value="N">본인이 주문하지 않은 경우</option>
															</select>
														</div>
													</div>
													<div class="form_field">
														<div class="select-type2 sel_box">
															<select id="type_div1" name="type_div1">
																<option value="">선택</option>
																<option value="제품관련">제품관련</option>
																<option value="배달서비스 관련">배달서비스 관련</option>
																<option value="직원 서비스 관련">직원 서비스 관련</option>
																<option value="콜센타 관련">콜센타 관련</option>
																<option value="칭찬">칭찬</option>
																<option value="제안">제안</option>
																<option value="단순문의">단순문의</option>
																<option value="기타">기타</option>
															</select>
														</div>
													</div>
													<span class="i_error">유형을 선택하세요</span>
												</div></li>
											<li class="form_store"><label for="branch_region">매장선택<span>*</span></label>
												<div class="form_group">
													<div class="form_field">
														<div class="select-type2 sel_box">
															<select id="branch_region" name="branch_region"
																onChange="changeBranch(this.value);">
																<option value="">구 선택</option>
																<option value="종로구">종로구</option>
															</select>
														</div>
													</div>
													<div class="form_field">
														<div class="select-type2 sel_box">
															<select id="branch_code" name="branch_code">
																<option value="">매장명</option>
															</select>
														</div>
													</div>

													<span class="i_error">매장을 선택하세요</span>
												</div></li>
											<li class="form_order_num"><label for="order_no">주문번호</label>
												<div class="form_group">
													<div class="form_field">
														<div class="form_item">
															<span class="i_label" style="position: absolute;"></span>
															<input type="text" name="order_no" id="order_no"
																class="i_text" maxlength="20"
																onkeyup="checkNum($(this), '숫자만 입력해주세요.');">
														</div>
													</div>
												</div></li>
											<li class="form_title"><label for="subject">제목<span>*</span></label>
												<div class="form_group">
													<div class="form_field">
														<div class="form_item">
															<span class="i_label" style="position: absolute;"></span>
															<input type="text" name="subject" id="subject"
																class="i_text" maxlength="50">
														</div>
													</div>
													<span class="i_error">제목을 입력하세요</span>
												</div></li>
											<li class="form_write"><label for="qanContent">글작성<span>*</span></label>
												<div class="form_group">
													<div class="form_field">
														<div class="form_item">
															<span class="i_label" style="position: absolute;"></span>
															<textarea name="content" id="qanContent" class="i_text"></textarea>
														</div>
													</div>
													<span class="i_error">내용을 입력하세요</span>
												</div></li>
											<li class="form_add_file"><label for="">첨부파일</label>
												<div class="form_group">
													<div class="form_field">
														<div class="form_file">
															<div class="form_item">
																<input type="text" name="file1Txt" id="file1Txt"
																	class="i_text">
															</div>
															<label for="file1" class="ip_file btn_srch"><input
																type="file" id="file1" name="file1"
																onchange="document.getElementById('file1Txt').value=this.value;">파일선택</label>
														</div>
														<div class="form_file">
															<div class="form_item">
																<input type="text" name="file2Txt" id="file2Txt"
																	class="i_text">
															</div>
															<label for="file2" class="ip_file btn_srch"><input
																type="file" id="file2" name="file2"
																onchange="document.getElementById('file2Txt').value=this.value;">파일선택</label>
														</div>
														<div class="form_file">
															<div class="form_item">
																<input type="text" name="file3Txt" id="file3Txt"
																	class="i_text">
															</div>
															<label for="file3" class="ip_file btn_srch"><input
																type="file" id="file3" name="file3"
																onchange="document.getElementById('file3Txt').value=this.value;">파일선택</label>
														</div>
													</div>
													<p>※파일 총 용량이 10MB 미만인 경우만 등록 가능합니다(등록가능파일: jpg, gif,
														bmp)</p>
												</div></li>
										</ul>
									</div>
									<div class="btn-wrap">
										<a href="javascript:doReset();" class="btn-type v4">다시입력</a> <a
											href="javascript:proc();" class="btn-type v6">보내기</a>
									</div>
								</div>
							</form>
						</article>
					</div>
				</div>
			</section>
			<!-- //content -->
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