<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.damino.web.user.board.impl.QnaBoardDAOImpl"%>
<%@ page import="com.damino.web.user.board.QnaBoardVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
<style type="text/css">
	#qna_list_num {list-style:none; text-align:center; padding:15px; margin:20px;}
</style>
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">
	
	<script type="text/javascript" src="<c:url value='/resources/js/jquery1.11.1.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>" ></script>
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

<script type="text/javascript">
	function getStoreName(){
		var storeRegion = $('#sel2').val();
		var target = document.getElementById("sel3");
		
		$.ajax({
			url: 'searchStore.smdo',
			contentType : "application/json; charset=UTF-8;",
			type: 'post',
			dataType: 'json',   
			data : JSON.stringify({
				storeRegion : storeRegion,//searchStore 쿼리에서 필요한 값
			}),
			success: function(data) {
					
					if (data != null) {
						for(var i=0; i<data.length; i++){
							 target += ('<option value="'+ data[i] +'">'+
									 data[i] + '</option>');
							
						}
						
						$('#sel3').html(target);
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
	}
</script>
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
						<c:when test="${guest == 'guest' }">
							<!-- 비회원 로그인시 -->
							<div class="util-nav">
								guest 님&nbsp; <a href="login.do">회원가입</a><a href="logout.do">로그아웃</a> 
							</div>
						</c:when>
						<c:when test="${msg != 'login'}">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="login.do">회원가입</a>
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
		<div class="sub-type mypage">
			<div class="inner-box">
				<div class="page-title-wrap">
					<h2 class="page-title">나의정보</h2>
					<div class="depth-area">
						<ol>
							<li><a href="main.do">홈</a></li>
							<li><a href="mylevel.do">나의정보</a></li>
							<li><strong>1:1문의</strong></li>
						</ol>
					</div>
				</div>
				<article class="mypage-wrap mypage-grade mypage-counsil">
					<div class="menu-nav-wrap">
							<div class="menu-nav">
								<ul>
									<li><a href="mylevel.do">매니아 등급</a></li>
									<li><a href="myorderlist.do">주문내역</a></li>
									<li><a href="mycoupon.do">쿠폰함</a></li>
									<li class="active"><a href="myquestionlist.do">1:1문의</a></li>
									<li><a href="myuserinfoconfirm.do">정보수정</a></li>
								</ul>
							</div>
						</div>
					<div class="info-wrap">
						<div class="user">
							<span>${user.username }</span>님께서 문의하신 내용입니다.
						</div>
						<div class="text-type">${user.username }님께서 문의하신 내용은 <strong>총 ${count}건</strong> 입니다.</div>
					</div>
					<div class="counsil-wrap">
						<div class="table-type4">
							<table>
								<caption>피자 영양성분</caption>
								<colgroup>
									<col style="width:140px">
									<col>
									<col style="width:180px">
									<col style="width:180px">
								</colgroup>
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>등록일</th>
										<th>처리상태</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${count==0}">
										<td colspan="4">문의하신 내용이 없습니다.</td>
									</c:if>
									<c:forEach var="qnaboard" items="${boardList }">
									<tr>
											<td>${qnaboard.seq }</td>
											  <td><a href="myquestion_view.do?seq=${qnaboard.seq}">${qnaboard.title}</a></td>
											<!--<td><a href="javascript:goView()">${qnaboard.title}</a></td>-->
											<td><fmt:formatDate value="${qnaboard.regDate }" pattern="yyyy-MM-dd" /></td>
											<td>${qnaboard.result }</td>
									</tr>
									</c:forEach>
									</tbody>
							</table>
								<div id="qna_list_num">
									<ul>
										<c:if test="${pageMaker.prev}">
											<a class='pager-prev' href="myquestionlist.do${pageMaker.makeQuery(pageMaker.startPage - 1)}">[이전]</a>
										</c:if>
										<c:forEach var="i" begin="${pageMaker.startPage}" end="${pageMaker.endPage }">
										<c:if test="${pageMaker.startPage eq 0}">
											<a href="myquestionlist.do${pageMaker.makeQuery(i)}">[${i+1}]</a>
										</c:if>
										<c:if test="${pageMaker.startPage ne 0}">
											<a href="myquestionlist.do${pageMaker.makeQuery(i)}">[${i}]</a>
										</c:if>
										</c:forEach>
										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<a class='pager-next' href="myquestionlist.do${pageMaker.makeQuery(pageMaker.endPage + 1)}">[다음]</a>
										</c:if>
									</ul>
								</div>
						</div>
						<div class="pager-wrap">
							<div class="pager-inner">
								</div>
						</div>
						<div class="btn-wrap">
							<a href="javascript:UI.layerPopUp({selId:'#pop-write'});" class="btn-type v4">문의하기</a>
						</div>
					</div>
				</article>
			</div>
		</div>
	</section>
</div>

<!-- 문의하기 -->
<form name="qnaBoardInsert" id="qnaBoardInsert" method="post" action="javascript:proc()">
<div class="pop-layer" id="pop-write">
	<div class="dim"></div>
	<div class="pop-wrap">
		<div class="pop-title-wrap">
			<h2 class="pop-title v2">문의하기</h2>
		</div>
		<div class="pop-content">
			<div class="guide-box3">
				주문 취소 / 변경과 같은 긴급한 요청은 매장으로 연락 부탁드립니다.
			</div>
			<input type="hidden" id="userid" value="${sessionScope.userid}" />
			<input type="hidden" name="pageNo" id="pageNo" value="1">
			<input type="hidden" name="writerId" id="writerId" value="${user.userid }" />
			<input type="hidden" name="phone" id="phone" value="${user.phone }" />
			<input type="hidden" name="email" id="email" value="${user.email }" />
			<div class="step-wrap">
				<dl> 
					<dt>아이디</dt>
					<dd>${user.userid }</dd>
				</dl>
				<dl>
					<dt>연락처</dt>
					<dd>${user.phone }</dd>
				</dl>
				<dl>
					<dt>이메일</dt>
					<dd>${user.email }</dd>
				</dl>
			</div>
			<div class="step-wrap">
				<div class="form">
					<dl>
						<dt>문의유형</dt>
						<dd>
							<div class="form-item"> 
								<div class="select-type2">
									<select id="sel_qnaType" name="qnaType">
										<option value="0" <c:if test="${qnaType == 0}"></c:if>>선택</option>
										<option value="제품관련" <c:if test="${qnaType == '제품관련'}"></c:if>>제품관련</option>
										<option value="배달서비스 관련" <c:if test="${qnaType == '배달서비스 관련'}"></c:if>>배달서비스 관련</option>
										<option value="직원 서비스 관련" <c:if test="${qnaType == '직원 서비스 관련'}"></c:if>>직원 서비스 관련</option>
										<option value="콜센타 관련" <c:if test="${qnaType == '콜센타 관련'}"></c:if>>콜센타 관련</option>
										<option value="칭찬" <c:if test="${qnaType == '칭찬'}"></c:if>>칭찬</option>
										<option value="제안" <c:if test="${qnaType == '제안'}"></c:if>>제안</option>
										<option value="단순문의" <c:if test="${qnaType == '단순문의'}"></c:if>>단순문의</option>
										<option value="기타" <c:if test="${qnaType == '기타'}"></c:if>>기타</option>
									</select>
								</div>
							</div>
						</dd> 
					</dl>
					<dl>
						<dt>매장선택</dt>
						<dd class="form-group">
							<div class="form-item">
								<div class="select-type2">
									<select id="sel2" name="storeRegion" onChange="getStoreName();">
										<option value="">구 선택</option>
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
											<div class="select-type2">
												<select id="sel3" name="storeName">
												</select>
											</div>
										</div>
									</dd>
					</dl>
					<dl>
						<dt>제목</dt>
						<dd>
							<div class="form-item">
								<input type="text" id="title" name="title" />
							</div>
						</dd>
					</dl>
					<dl>
						<dt class="top">문의내용</dt>
						<dd>
							<div class="form-item">
								<textarea name="content" id="content" cols="30" rows="10"></textarea>
							</div>
						</dd>
					</dl>
				</div>
			</div>
			<div class="cs-guide">
				<p>등록하신 내용 및 답변은 회원정보상의 이메일로도 발송이 됩니다.<br/>상담원과 통화를 원하시면 아래 번호로 전화주시기 바랍니다.</p>
				<p>고객만족 센터 : <span>080-860-3082</span></p>
				<div class="btn-wrap">
					<a href="javascript:doReset();" class="btn-type v5">다시입력</a>
					<a href="javascript:proc();" class="btn-type v4">문의하기</a>
				</div>
			</div>
		</div>
		<a href="#" class="btn-close"></a>
	</div>
</div>
</form>
<!--//문의하기 -->

<form name="f" id="f" method="get" action="myquestionlist.do">
<input type="hidden" name="idx" id="idx" />
<input type="hidden" name="no" id="no" />
<input type="hidden" name="pageNo" id="pageNo" value="1">
<!--  <input type="hidden" name="writerId" id="writerId" value="${pageMaker.writerId }">-->

</form>

<script type="text/javascript">
//페이징
function paging(no){
	$("#pageNo").val(no);
	$('#f').attr("action", "myquestionlist.do");
	console.log($("#pageNo").val(no));
	$("#f").submit();
}

//문의 내역 상세보기
function goView(idx, no) {
	$('#idx').val(idx);
	$('#no').val(no);
	$('#f').attr("action", "myquestion_view.do");
	$('#f').submit();
}



//다시입력
function doReset(){
	if(confirm("입력한 내용을 모두 지우고 다시 입력하시겠습니까?")){
		document.q.reset();
		$("#qnaType").focus();
	}
}

//문의하기
function proc(){
	if($('#qnaType').val() == '') { alert('유형분류를 선택해주세요'); $('#qnaType').focus(); return;}
	if($('#title').val() == '') { alert('제목을 입력하세요'); $('#title').focus(); return;}
	if($('textarea[name=content]').val() == '') { alert('내용을 입력하세요.'); $('#content').focus(); return;}	
	var send = true;
	
		if(send == true){
	
		alert('등록중 입니다.');
		 var qnaType = $('#sel_qnaType').val();
		 $('#qnaBoardInsert').submit();
		 document.qnaBoardInsert.action='qnaInsertBoard.do';
		
	}
}

</script>
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
					<i class="ico-logo2"></i>
					<span class="tel">1577-3082</span>
				</div>
	
				<ul class="footer-contact">
					<li><a href="/contents/law">이용약관</a></li>
					<li class="on"><a href="/contents/privacy">개인정보처리방침</a></li>
					<li><a href="/bbs/faqList?view_gubun=W&bbs_cd=online">고객센터</a></li>
					<li><a href="/company/jobList?type=R">인재채용</a></li>
					<li><a href="/company/contents/chainstore1">가맹점모집</a></li>
					<li><a href="/order/groupOrder">단체주문</a></li>
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
					<div class="select-type language">
						<select id="select-type">
							<option value="/main?locale=ko">KOR</option>
							<option value="/main?locale=en">ENG</option>
						</select>
					</div>
	
					<dl class="app-box">
						<dt>DOWNLOAD APP</dt>
						<dd>
							<a href="https://itunes.apple.com/kr/app/dominopija-domino-pizza-korea/id371008429?mt=8"><i class="ico-ios"></i>ios 앱다운로드</a>
							<a href="https://play.google.com/store/apps/details?id=kr.co.d2.dominos"><i class="ico-android">안드로이드 앱다운로드</i></a>
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
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards.png" alt="">
						<p>식품안전<br>경영시스템 인증</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards2.png" alt="">
						<p>지식경제부<br>우수디자인 선정</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards3.png" alt="">
						<p>고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards4.png" alt="">
						<p>2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards5.png" alt="">
						<p>2019 프리미엄브랜드지수<br>피자전문점 부문 4년 연속 1위 수상</p>
					</li>
					<li>
						<img src="https://cdn.dominos.co.kr/domino/pc/images/list_awards6.png" alt="">
						<p>대학생 1000명이 선택한<br>2019 올해의 핫 브랜드 캠퍼스 잡앤조이 선정</p>
					</li>
				</ul>
			</div>
		</div>
	</footer>
	<!-- //footer -->
</div><!-- //wrap -->
</body>
</html>
