<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<!-- slick 배너용 css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='resources/css/slick.css' />">

<!-- js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery1.11.1.js'/>"></script>
<!-- 메인페이지 슬라이드 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery.flexslider.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/user/jquery-3.1.1.min.js'/>"></script>
<!-- 더보기 슬라이드로 내려오는 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/ui.js'/>"></script>
<!-- slick 배너용 js -->
<script type="text/javascript"
	src="<c:url value='/resources/js/user/slick.min.js' />"></script>
<!-- 다음 주소 api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
	var basketChk = sessionStorage.getItem("addBasket"); // 장바구니 추가 후 넘어온 상태인지 확인

	window.onload = function(){
		var addressListSize = Number($('#addressListSize').val()); // 저장된 배달주소 리스트 사이즈
		var storeListSize = Number($('#storeListSize').val()); // 저장된 포장매장 리스트 사이즈
		
		
		if($('#gubun').val() == 'D'){
			$('#delivery').show();
			$('#takeout').hide();
		}else{
			$('#takeout').show();
			$('#delivery').hide();
		}
		console.log("배달주소 리스트 수 : " + addressListSize);
		console.log("포장매장 리스트 수 : " + storeListSize);
		console.log("장바구니 추가 여부 : " + basketChk);
	}
	

	// 포장주문 or 배달주문 선택 함수	
	function selectOG(gubun){
		if(gubun == 'D'){
			$('#delivery').show();
			$('#takeout').hide();
		}else{
			$('#takeout').show();
			$('#delivery').hide();
		}
	}
	// ------------------ 포장주문 관련 함수 -------------------
	function storeAddressPop(){
		var storeListSize = Number($('#storeListSize').val());
		
		if(storeListSize >= 10){
			alert("포장매장은 10개까지 등록 가능합니다.");
			return;
		}else{
			window.open("openStoreAddr.do", "포장매장 선택", "top=50, left=60, width=420, height=580, directories='no', location='no', menubar='no', resizable='no', status='yes', toolbar='no'");
		}
		
	}
	// ------------------ 배달주문 관련 함수 -------------------
	
	// 주소 선택 창 (다음 API & 상세주소 자식창 open)
	function deliveryAddressPop(){
		var addressListSize = Number($('#addressListSize').val()); // 저장된 배달주소 리스트 사이즈
		
		if(addressListSize >= 10){
			alert("배달주소는 10개까지 등록 가능합니다.");
			return;
		}
		
		new daum.Postcode({
            oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if(data.buildingName !== '' && data.apartment === 'Y'){
                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if(extraRoadAddr !== ''){
                   extraRoadAddr = ' (' + extraRoadAddr + ')';
               }
               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
               if(fullRoadAddr !== ''){
                   fullRoadAddr += extraRoadAddr;
               }

               // 시,구,동까지의 주소 정보를 hidden에 저장
               $('#addrVal').val(fullRoadAddr);
               console.log("주소 : " + $('#addrVal').val());
               
               // 구 정보를 hidden에 저장
               var addrArr = fullRoadAddr.split(" "); // 스페이스바 구분자로 주소를 분리
               $('#guVal').val(addrArr[1]);
               var guName = $('#guVal').val();
               
               // '구'에 해당하는 매장명 목록을 받아오기
               $.ajax({
               	url : 'getGuStore.do',
   				contentType : "application/json; charset=UTF-8;",
   				type: 'post', 
   				data : JSON.stringify({
   					guName : guName,
   				}),
   				async : false,
   				success: function(data) {
   					if(data == 'success'){
   						console.log(data);
   						// 상세주소 입력 페이지 열기
   		                window.open("openDetailAddr.do", "상세주소 & 배달매장 입력", "top=50, left=60, width=450, height=580, directories='no', location='no', menubar='no', resizable='no', status='yes', toolbar='no'");
   					}else{
   						alert('배달 불가 주소입니다.');
   						return;
   					}
   				},
   				error: function() {
   					alert('처리도중 오류가 발생했습니다.');
   				}
               	
               })
           }
        }).open();
	}
	
	// 상세주소 & 배달매장 선택창에서 값 넘겨받기
	function receiveDetailAddr(addr, selectStore){
		$('#detailAddrVal').val(addr);
		$('#selectStore').val(selectStore);
	}
	
	// 배달주소지 추가
	function addAddrRow(){
		var addressListSize = Number($('#addressListSize').val()); // 저장된 배달주소 리스트 사이즈
		
		var userid = $('#userid').val();
		var address = $('#addrVal').val() + " " + $('#detailAddrVal').val();
		var storeName = $('#selectStore').val();
		$.ajax({
			url : 'insertDeliveryAddress.do',
			contentType : "application/json; charset=UTF-8;",
			type: 'post', 
			data : JSON.stringify({
				userid : userid,
				address : address,
				storeName : storeName,
			}),
			async : false,
			success: function(data) {
				// <li>를 추가
				$('#deladdress_list').append('<li id="addressli'+ addressListSize+'"><div class="chk-box selected" id="chk-box'+ addressListSize +'">'
				+ '<input type="radio" id="addressradio'+ addressListSize +'" name="addressradio" value="'+ address +'" checked="">'
				+ '<label class="checkbox" for="addressradio'+ addressListSize +'"></label></div>'
				+ '<dl><dt><label for="addressradio'+ addressListSize +'" id="addresslb'+ addressListSize +'">'+ address +'</label></dt>'
				+ '<dd><em id="storename'+ addressListSize +'">'+ storeName +'</em><span class="tel" id="storephone'+ addressListSize +'">'+ data +'</span></dd>'
				+ '<dd class="hash"><br></dd></dl>'
				+ '<a href="javascript:deleteAddress('+ addressListSize +');" class="btn-del"><span class="hidden">삭제</span></a></li>');
				
			},
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
		});
		
		$('#addressListSize').val(addressListSize + 1);
		
		if(Number($('#addressListSize').val()) == 1){
			location.reload();
		}
	}
	
	// 배달주소지 삭제
	function deleteAddress(idx){
		var addressListSize = Number($('#addressListSize').val()); // 저장된 배달주소 리스트 사이즈
		
		var userid = $('#userid').val();
		var address = $('#addresslb' + idx).text();
		
		$.ajax({
			url : 'deleteDeliveryAddress.do',
			contentType : "application/json; charset=UTF-8;",
			type: 'post', 
			data : JSON.stringify({
				userid : userid,
				address : address,
			}),
			async : false,
			success: function(data) {
				if(data == 'success'){
					$('#addressli' + idx).remove();
					
					$('#addressListSize').val(addressListSize - 1);
					
					if(Number($('#addressListSize').val()) == 0){
						location.reload();
					}
				}
				
			},
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
		});
		
	}
	
	//포장매장 선택창에서 값 넘겨받기
	function receiveStoreAddr(selectStoreName){
		$('#selStoreName').val(selectStoreName);
		alert('받은 값 : ' + document.getElementById('selStoreName').value);
	}
	
	//포장매장 추가
	function addStoreAddrRow(){
		var userid = $('#userid').val();
		var storename = $('#selStoreName').val();
		
		
		$.ajax({
			url : 'insertStoreAddress.do',
			contentType : "application/json; charset=UTF-8;",
			type: 'post', 
			data : JSON.stringify({
				userid : userid,
				storename : storename,
			}),
			async : false,
			success: function(data) {
				alert('insert 성공');
			},
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
		});
		location.reload();
	}
	
	// 포장주소지 삭제
	function deleteStoreAddress(idx){
		var userid = $('#userid').val();
		var storename = $('#storeaddressradio' + idx).val();
		
		$.ajax({
			url : 'deleteStoreAddress.do',
			contentType : "application/json; charset=UTF-8;",
			type: 'post', 
			data : JSON.stringify({
				userid : userid,
				storename : storename,
			}),
			async : false,
			success: function(data) {
				if(data == 'success'){
					$('#storeaddressli' + idx).remove();
					
				}
				
			},
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
		});
		location.reload();
	}
	
	// 메뉴 카테고리 선택 페이지로 주소 정보 넘기기
	function setAddress(){
		sessionStorage.clear(); // 세션에 저장된 정보 초기화
		
		var address = $('input[type="radio"][name="addressradio"]:checked').val();
		var sel_id = $('input[type="radio"][name="addressradio"]:checked').attr('id'); // 선택한 라디오버튼 id
		var sel_idx = Number(sel_id.replace('addressradio', '')); // 선택 index 값 얻어옴
		
		var storename = $('#storename' + sel_idx).text();
		var storephone = $('#storephone' + sel_idx).text();
		
		// 세션에 선택 정보들을 세팅
		sessionStorage.setItem("address", address);
		sessionStorage.setItem("storename", storename);
		sessionStorage.setItem("storephone", storephone);
		sessionStorage.setItem("gubun", "D"); // 주문 구분 'D' --> 배달주문
		
		if(basketChk == 'Y'){
			location.href="my_basket.do";
		}else{
			location.href="orderCategory.do";
		}
		
	}
	
	// 메뉴 카테고리 선택페이지로 포장매장 정보 넘기기
	function setStore(){
		sessionStorage.clear(); // 세션에 저장된 정보 초기화
		
		var storename = $('input[type="radio"][name="storeRadio"]:checked').val();
		var sel_id = $('input[type="radio"][name="storeRadio"]:checked').attr('id'); // 선택한 라디오버튼 id
		var sel_idx = Number(sel_id.replace('storeaddressradio', '')); // 선택 index 값 얻어옴
		
		var storephone = $('#wrapstorephone' + sel_idx).text();
		var storeaddr = $('#wrapstoreaddr' + sel_idx).text();
		
		
		// 세션에 선택 정보들을 세팅
		sessionStorage.setItem("storename", storename);
		sessionStorage.setItem("storephone", storephone);
		sessionStorage.setItem("storeaddr", storeaddr);
		sessionStorage.setItem("gubun", "W");; // 주문 구분 'W' --> 포장주문
		
		if(basketChk == 'Y'){
			location.href="my_basket.do";
		}else{
			location.href="orderCategory.do";
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
									<li><a href="faqMain.do">자주하는 질문</a></li>
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
<div id="container">
	<section id="content">
		<div class="sub-type order">
			<div class="inner-box">
				<div class="page-title-wrap">
					<h2 class="page-title">주문방법 선택</h2>
					<div class="depth-area">
						<ol>
							<li><a href="/main">홈</a></li>
							<li><strong>주문방법 선택 </strong></li>
						</ol>
					</div>
				</div>
				<article class="sel-order-area">
					<div class="menu-nav-wrap">
						<div class="menu-nav js_tab">
						<input type="hidden" id="userid" value="${sessionScope.userid}" />
						<input type="hidden" id="gubun" value="${param.gubun }"> <!-- 주문타입 구분 -->
						<input type="hidden" id="addrVal" value="" /> <!-- 상세주소 앞까지 저장 -->
						<input type="hidden" id="guVal" value="" /> <!-- 구 이름 저장 -->
						<input type="hidden" id="detailAddrVal" value="" /> <!-- 상세주소 저장 -->
						<input type="hidden" id="selectStore" value="" /><!-- 선택한 배달매장명 -->
						<input type="hidden" id="selStoreName" value=""/><!-- 선택한 포장매장명 -->
							<ul>
							<c:choose>
								<c:when test="${param.gubun == 'D' }">
									<li class="active">
										<a href="#delivery" onclick="selectOG('D');">배달 주문</a>
									</li>
									<li>
										<a href="#takeout" onclick="selectOG('W')">포장주문</a>
									</li>
								</c:when>
								<c:when test="${param.gubun == 'W' }">
									<li>
										<a href="#delivery" onclick="selectOG('D');">배달 주문</a>
									</li>
									<li class="active">
										<a href="#takeout" onclick="selectOG('W')">포장주문</a>
									</li>
								</c:when>
							</c:choose>
							</ul>
						</div>
					</div>
					<div class="tab-content active" id="delivery">
					<div class="text-link-area v2">
					</div>
						<div class="address-list">
						<!-- 컨트롤러에서 넘겨받은 주소 리스트의 크기 저장 -->
						<input type="hidden" id="addressListSize" value="${fn:length(deliveryAddressList)}">
							<ul id="deladdress_list">
							<c:if test="${fn:length(deliveryAddressList) == 0}"> <!-- 저장된 주소가 없을 때 -->
								<li>
									<div class="nostore">
										<p class="title-type">
											<i class="ico-noti"></i>배달주소를 등록해주세요.
										</p>
										<a href="javascript:deliveryAddressPop();" class="btn-type-brd2"><i class="ico-plus"></i>배달주소 등록</a>
									</div>
								</li>
							</c:if>
								<c:forEach var="deladdress" items="${deliveryAddressList }" varStatus="status">
									<li id="addressli${status.index }">
										<div class="chk-box selected" id="chk-box${status.index }">
											<input type="radio" id="addressradio${status.index }" name="addressradio" value="${deladdress.address}" checked=""> 
											<label class="checkbox" for="addressradio${status.index }"></label>
										</div>
											<dl>
												<dt>
													<label for="addressradio${status.index }" id="addresslb${status.index }">${deladdress.address }</label>
												</dt>
													<dd>
														<em id="storename${status.index }">${deladdress.storename }</em><span class="tel" id="storephone${status.index }">${deladdress.storephone }</span>
													</dd>
													<dd class="hash">
														<br>
													</dd>
											</dl> 
										<a href="javascript:deleteAddress(${status.index });" class="btn-del"><span class="hidden">삭제</span></a>
									</li>
								</c:forEach>
							</ul>
							<c:if test="${fn:length(deliveryAddressList) != 0 }">
								<div class="address-enter">
									<a href="javascript:deliveryAddressPop();" class="btn-type-brd2"><i class="ico-plus"></i>배달주소 등록</a>
										<div class="side guide-box">배달주소는 최대 10개까지만 등록 가능합니다.</div>
								</div>
								<div class="address-btn">
									<p class="title-type4">해당 배달주소로 주문을 진행하시겠습니까?</p>
									<a href="javascript:setAddress();" class="btn-type v3"> 선택 </a>
								</div>
							</c:if>
						</div>
					</div>
					<div class="tab-content" id="takeout">
						<div class="text-link-area v2"></div>
						<div class="address-list">
						<!-- 컨트롤러에서 넘겨받은 매장주소 리스트의 크기 저장 -->
						<input type="hidden" id="storeListSize" value="${fn:length(storeAddressList) }" />
							<ul id="straddress_list">
								<c:if test="${fn:length(storeAddressList) == 0}"> <!-- 저장된 주소가 없을 때 -->
									<li>
										<div class="nostore">
											<p class="title-type">
												<i class="ico-noti"></i>포장매장을 등록해주세요.
											</p>
											<a href="javascript:storeAddressPop();" class="btn-type-brd2"><i class="ico-plus"></i>포장매장 등록</a>
										</div>
									</li>
								</c:if>
								<c:forEach var="storeAddressList" items="${storeAddressList }" varStatus="status">
									<li id="storeaddressli${status.index }">
										<div class="chk-box selected" id="store-chk-box${status.index }">
											<input type="radio" id="storeaddressradio${status.index }" name="storeRadio" class="address" value="${storeAddressList.storename }" checked="">
											<label class="checkbox" for="storeaddressradio${status.index }"></label>
										</div>
										<dl>
											<dt>
												<label for="storeaddressradio${status.index }" id="storenamelb${status.index }">
													<em>${storeAddressList.storename }</em>
														<span class="tel" id="wrapstorephone${status.index }">${storeAddressList.storephone }</span>
												</label>
											</dt>
											<dd>
												<span class="adr" id="wrapstoreaddr${status.index }">${storeAddressList.storeaddress }</span>
											</dd>
											<a href="javascript:deleteStoreAddress(${status.index });" class="btn-del"><span class="hidden">삭제</span></a>
										</dl>
									</li>
								</c:forEach>
							</ul>
							<c:if test="${fn:length(storeAddressList) != 0 }">
								<div class="address-enter">
									<a href="javascript:storeAddressPop();" class="btn-type-brd2"><i class="ico-plus"></i>포장매장 등록</a>
									<div class="side guide-box">포장매장은 최대 10개까지만 등록 가능합니다.</div>
								</div>
								<div class="address-btn">
									<p class="title-type4">해당 매장으로 주문을 진행하시겠습니까?</p>
									<a href="javascript:setStore();" class="btn-type v3"> 선택 </a>
								</div>
							</c:if>
						</div>
					</div>
				</article>
			</div>
		</div>
	</section>
	
	<!-- 팝업 배달주소등록 -->
	<div class="pop-layer" id="pop-address"></div>
	<!-- 팝업 배달주소선택 -->
	<div class="pop-layer" id="pop-address3"></div>
	<!--//팝업 배달주소선택 -->
	
	<div class="pop-layer type2" id="pop-spot">
	</div>
	
	<!-- //팝업 배달주소등록 -->
	<!-- 팝업 포장매장등록   -->
	<div class="pop-layer" id="pop-store-takeout"></div>
	<!-- //팝업 포장매장등록   -->
	
	<div class="pop-layer pop-full" id="pop-store">
		<div class="dim"></div>
		<div class="pop-wrap">
			<div class="pop-title-wrap">
				<h2 class="pop-title">매장 상세정보</h2>
			</div>
			<div class="pop-content">
				<div class="store-view">
					<div class="store-info-box">
					<input type="hidden" id="branch_code" value="">
					<input type="hidden" id="detail_branch_name" value="">
					<input type="hidden" id="detail_branch_tel" value="">
						<ul>
							<li>
								<h3 id="detail_name">김포구래점</h3>
								<p class="promotion"><span class="type" id="detail_on_sale">온라인 방문포장 30%</span><span class="type2" id="detail_off_sale">오프라인 방문포장 30%</span></p>
								<div class="btn-wrap">
									<a href="javascript:setBranch($('#branch_code').val(), $('#detail_branch_name').val(), $('#detail_branch_tel').val());" class="btn-type v3">선택</a>
								</div>
							</li>
							<li>
								<dl>
									<dt>전화번호</dt>
									<dd id="detail_tel">091-996-30525</dd>
								</dl>
								<dl>
									<dt>주소</dt>
									<dd id="detail_address">경기도 김포시 김포한강9로 12번길 97-10</dd>
								</dl>
								<dl>
									<dt>영업시간</dt>
									<dd id="detail_business_hours">11:00 ~ 22:00</dd>
								</dl>
								<dl>
									<dt>위치정보</dt>
									<dd id="detail_location_info">나비마을 나비초등학교 사거리 계롱리슈빌 203동 후문</dd>
								</dl>
								<dl>
									<dt>주차정보</dt>
									<dd id="detail_parking_info">매장 후면 1대</dd>
								</dl>
								<dl>
									<dt>특이사항</dt>
									<dd id="detail_etc">-</dd>
								</dl>
							</li>
						</ul>
					</div>
					<div class="store-map-area" id="map_detail_canvas">

					</div>
					<div class="store-slider" id="detail_photos">
						
					</div>
				</div>
			</div>
			<a href="#" class="btn-close"></a>
		</div>
	</div>
	<!-- //팝업 포장매장등록   -->
	
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