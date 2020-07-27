<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's</title>

	<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/ecommerce.js"></script><script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script><script async="" src="//fs.bizspring.net/fs4/logger.v4.1.js"></script><script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-TR97KL"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=AW-956654516&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script><script async="" src="//fs.bizspring.net/fs4/l4cts.v4.2.js"></script><script async="" src="//fs.bizspring.net/fs4/bstrk.1.js"></script><script async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" src="/resources/js/jquery1.11.1.js"></script>
	
	<script type="text/javascript" src="https://cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="/resources/js/selectbox.js"></script><!-- js 수정함. -->
	<script type="text/javascript" src="/resources/js/d2CommonUtil.js?ver=1.5"></script>
	<script type="text/javascript" src="/resources/js/Cookie.js"></script>
	<script type="text/javascript" src="https://cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>
	
	<link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/asset/css/font.css"> 
	<link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/pc/css/common.css"> 
	
	<!--메인에는 sub.css 호출하지않음-->
	<link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/pc/css/sub.css">
	<!--//메인에는 sub.css 호출하지않음  -->

	<script src="https://cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>
	
	<script src="https://cdn.dominos.co.kr/domino/pc/js/ui.js"></script>
	<script type="text/javascript" src="/resources/js/gcenmaps/gcenmap.js"></script><script src="/resources/js/gcenmaps/lib/system.js"></script><script src="/resources/js/gcenmaps/lib/basetype.js"></script><script src="/resources/js/gcenmaps/lib/excanvas.js"></script><script src="/resources/js/gcenmaps/lib/maps.js"></script><!--서브에는 main.js 호출하지않음-->
	<!--//서브에는 main.js 호출하지않음-->
	
	<!-- 기존 팝업 재사용위해 css 추가함. 추후 common.css 에 아래 소스 추가 예정 -->
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
	<script type="text/javascript">
	
	/*gps lsm 전역변수 */
	var lat;
	var lon;
	var xdot;
	var ydot;
	var address;
	var gps_yn;
	
	var CON_DOMAIN_URL = "http://web.dominos.co.kr";
	var CON_SSL_URL = "https://web.dominos.co.kr";
	var CON_STATIC_URL = "https://cdn.dominos.co.kr/renewal2018/w";
	function goLink(menuCode, link) {
		location.href = link;
	}

	$(document).ready(function() {
		$.ajaxSetup({cache:false});

		setBasketCnt();

		// 마이쿠폰 정보 조회(가입회원)
		
			$.ajax({
				type: "POST",
				url: "/mypage/mainMyCouponInfoAjax",
				dataType : "json",
				success:function(data) {
				 	if (data.resultData.status == "success") {
				 		$('#myMonth').text(data.resultData.myMonth+'월');
				 		$('#myLevel').text(data.resultData.myLevel);
				 		if(data.resultData.myCouponCnt > 0) {
				 			$(".none_coupon").hide();
					 		$(".exist_coupon").show();
					 		$('#myCouponCnt').html(data.resultData.myCouponCnt+"<span>개</span>");
					 		$('#gnbCoupon').text("("+data.resultData.myCouponCnt+")");
				 		}
					} else {
// 						console.log("마이쿠폰 정보 가져오기 실패");
					}
				}
			});		

		
		//상단 영문사이트 바로가기 버튼
		$(".select-type2.language").change(function() {
			location.href = $("#select-type2").val();
		});
	});

	function setBasketCnt() {
		var basketCnt = cookieManager.getCookie("BASKETCNT");
		var basket = cookieManager.getCookie("BASKET");
		var finish_basket = cookieManager.getCookie("FINISH_BASKET");

		if(basketCnt == "") basketCnt = "0";
		else if(basket != "" && basket == finish_basket) basketCnt = "0";
		
		if(basketCnt != "0"){ 
			$(".btn-cart > strong ").addClass("cart-count");
			$(".cart-count").text(basketCnt);
		}else{
			$(".btn-cart > strong").removeClass("cart-count");
		}
	}

	var goCart = function() {
		location.href="/basket/detail";
	};

	var doLogin = function() {
		location.href="/global/login";
	};

	var myOrderDetail = function() {
		var order_no = $('#tracker_order_no').val();
		location.href="/mypage/myOrderView?order_no="+order_no+"&pageNo=1";
	};
	
	
	var goPresentLogin = function(gubun) {
		var rtnUrl = "/voucher/list?gubun="+gubun;
		if("true" == "true"){
			location.href = rtnUrl;
		}else{
			location.href = "/global/login?returnUrl="+rtnUrl;	
		}
	};
	
	function appendLocation(paramArr) {
		var simpleAddress;
		
		gps_yn = 'Y';
		
		if (paramArr == null || paramArr.length == 0){
			return;
		}
		
		$.ajax({
		    type: "GET",
		    url: "/gis/getXyAddressAjax",
		    data: paramArr.join('&'),
		    
		    success:function(data) {
		        $('#myloc').html("");
		        
		        if(data.resultData.result.length > 0) {
		        	var html = '';
					html += '<div class="tip-box center" id="tip-box">';
					html += '<p>주변 매장의 프로모션을 확인해보세요!</p>';
					html += '</div>';
					
					$("#tip-box-top").append(html);
					$("#tip-box").delay(2000).fadeOut(1000);
					
		       		$.each(data.resultData.result, function(i, v) {
		       			if(v.roadaddr === ''){
		       				simpleAddress = v.sggname+' '+v.bemdname+' '+v.jbmain+(v.jbsub=='0'?'':'-'+v.jbsub);
		       				$('#myloc').html(simpleAddress);
		       				lat = v.lat;
		       				lon = v.lon;
		       				xdot = v.kx;
		       				ydot = v.ky;
		       				address = simpleAddress;
		       				
		       			}else{
		       				simpleAddress = v.roadname+' '+v.bdmain+(v.bdsub=='0'?'':'-'+v.bdsub);
		       				$('#myloc').html(simpleAddress);
		       				lat = v.lat;
		       				lon = v.lon;
		       				xdot = v.kx;
		       				ydot = v.ky;
		       				address = simpleAddress;
		       			}
		       		});
		   	    }else {
		       		 $('#myloc').html("주변 매장의 프로모션이 궁금하시면, 위치 서비스를 허용해주세요.");
		    	}
		    },
		    error: function (error){
		        alert("다시 시도해주세요.");
		    }
		    
		});
	}
	
	//현재 위치 받아오기

	var geo = {
		init : function() { 
			
			if ('geolocation' in navigator) {
				/* 지오로케이션 사용 가능 */
				navigator.geolocation.getCurrentPosition(geo.success, geo.error);
				
			} else {
				/* 지오로케이션 사용 불가능 */
				alert('geolocationx');
				alert('사용자의 브라우저는 지오로케이션을 지원하지 않습니다.');

				//geo.changeTab();
			}
		},
		success : function(position) {

			var latitude  = position.coords.latitude;
		    var longitude = position.coords.longitude;
		  	// console.log('<p>위도 : ' + latitude + '° <br>경도 : ' + longitude + '°</p>');

		    findLocation(latitude, longitude);
		},
		error : function(err) {
			
			var userAgent = navigator.userAgent.toString();

			if(/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream){ // iOS
				alert('아이폰 > 설정 >개인정보보호 > 위치서비스 > 다미노피자 항목의 위치접근허용을 체크해주세요.');
				return;
			} else {
				//alert('위치접근허용을 승인해주세요.');
				$('#myloc').html('주변 매장의 프로모션을 확인해보세요!');
				return;
				/* var latitude  = '37.539465';
				var longitude = '127.052185';

				findLocation(latitude,longitude);
				gps_yn = 'Y'; */
			}
		}
	}



	function findLocation(lat,lon) {
		//if (!!!optn) return;

		// 검색 파라미터 설정
		var paramArr = [];	
		paramArr[0] = 'lat=' + lat;
		paramArr[1] = 'lon=' + lon;
		
		appendLocation(paramArr);
	}
	
	function gpsLsm(gps_yn){
		if(gps_yn == 'Y'){
			address = encodeURIComponent(address);
			UI.layerPopUp({selId:'#pop-lsm', url:'/branch/gpsLsm', data:{lon:lon, lat:lat, xdot:xdot, ydot:ydot, address:address}});
			address = decodeURIComponent(address);
			_trk_call();
		}else{
			alert('위치접근허용을 승인해주세요.');	
		}
	}
	
	var _trk_call = function () {
	    // 트래킹
		var _trk_url = document.baseURI + '&_TRK_PI=WP_1P&_TRK_CP=LSM 팝업';
	    try {
	       	_trk_code_base = _trk_code_base.replace(/(du=).*?(&)/,'$1' + escape(_trk_url) + '$2');
	        _trk_flashEnvView("_TRK_PI=WP_1P","_TRK_CP=LSM 팝업");
	        /* console.log('TRK WEB_3_2 DONE!!'); */
	    } catch (e) {
	    	console.log(e.message);
	    }
		
	}
</script>

<script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/753034372/?random=1595833099673&amp;cv=9&amp;fst=1595833099673&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=8&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2oa7f0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fweb.dominos.co.kr%2Fmypage%2FqustionView%3Fidx%3D238307%26no%3D1%26pageNo%3D1&amp;ref=https%3A%2F%2Fweb.dominos.co.kr%2Fmypage%2FqustionList&amp;tiba=%EB%8F%84%EB%AF%B8%EB%85%B8%ED%94%BC%EC%9E%90%20-%20%EB%8B%B9%EC%8B%A0%EC%9D%98%20%EC%9D%B8%EC%83%9D%EC%97%90%20%EC%99%84%EB%B2%BD%ED%95%9C%20%ED%95%9C%EB%81%BC!%20Life%20Food%2C%20Domino's&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script><script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/956654516/?random=1595833099884&amp;cv=9&amp;fst=1595833099884&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=8&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2oa7f0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fweb.dominos.co.kr%2Fmypage%2FqustionView%3Fidx%3D238307%26no%3D1%26pageNo%3D1&amp;ref=https%3A%2F%2Fweb.dominos.co.kr%2Fmypage%2FqustionList&amp;tiba=%EB%8F%84%EB%AF%B8%EB%85%B8%ED%94%BC%EC%9E%90%20-%20%EB%8B%B9%EC%8B%A0%EC%9D%98%20%EC%9D%B8%EC%83%9D%EC%97%90%20%EC%99%84%EB%B2%BD%ED%95%9C%20%ED%95%9C%EB%81%BC!%20Life%20Food%2C%20Domino's&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script></head>
<body>
	
<div id="wrap">
	<header id="header" style="transform: translateY(-86.4px);">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="/main" class="btn-logo">
						<i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>
					
					<div class="util-nav">
								<a href="/global/logout">로그아웃</a>
								<a href="/mypage/myLevel">나의정보</a>
								<a href="javascript:goCart();" class="btn-cart">
									<i class="ico-cart"></i>
									<span class="hidden ">장바구니</span>
									<strong class="cart_count"></strong> <!-- count -->
								</a>
							<!--2020-03-17 추가(s)-->
		                <a href="javascript:void(0);" class="lang">
		                    <div class="select-type2 language">
		                    	<select id="select-type2">
									<option value="/main?locale=ko">KOR</option>
									<option value="/main?locale=en">ENG</option>
								</select>
		                    </div>
		                </a>
					</div>
				</div>
			</div>
				
			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active">
							<a href="/goods/list?dsp_ctgr=C0101"><span>메뉴</span></a>
						</li>
						<li>
							<a href="/ecoupon/index"><span>e-쿠폰</span></a>
						</li>
						<li>
							<a href="/branch"><span>매장검색</span></a>
						</li>
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
									<li><a href="/goods/dominosMoment">다미노 모멘트</a></li>
									<li><a href="/quickOrder/index">퀵 오더</a></li>
									<li><a href="/order/groupOrder">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="/bbs/faqList?view_gubun=W&amp;bbs_cd=online">고객센터</a>
								<ul>
									<li><a href="/bbs/faqList?view_gubun=W&amp;bbs_cd=online">자주하는 질문</a></li>
									<li><a href="/bbs/qnaForm">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="/company/contents/overview">회사소개</a>
								<ul>
									<li><a href="/company/contents/overview">한국다미노피자</a></li>
									<li><a href="/company/tvcfList">광고갤러리</a></li>
									<li><a href="/company/contents/society">사회공헌활동</a></li>
									<li><a href="/company/contents/chainstore1">가맹점 모집</a></li>
									<li><a href="/company/jobList?type=R">인재채용</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="/bbs/newsList?type=N">공지사항</a>
							<ul>
								<li><a href="/bbs/newsList?type=N">다미노뉴스</a></li>
								<li><a href="/bbs/newsList?type=P">보도자료</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
			<!-- //main 1dep menu -->
		</header><!-- //header -->
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
							<li><strong>1:1문의</strong></li>
						</ol>
					</div>
				</div>
				<article class="mypage-wrap mypage-grade mypage-counsil">
					<div class="menu-nav-wrap">
							<div class="menu-nav">
								<ul>
									<li><a href="/mypage/myLevel">매니아 등급</a></li>
									<li><a href="/mypage/myOrderList">주문내역</a></li>
									<li><a href="/mypage/myCoupon">쿠폰함</a></li>
									<li class="active"><a href="/mypage/qustionList">1:1문의</a></li>
									<li><a href="/member/userinfoConfirm">정보수정</a></li>
								</ul>
							</div>
						</div>
					<div class="info-wrap">
						<div class="user">
							<span>ㅇㅇㅇ</span>님께서 문의하신 내용입니다.
						</div>
						<div class="text-type">ㅇㅇㅇ님께서 문의하신 내용은 <strong>총 1건</strong> 입니다.</div>
					</div>
					<div class="myinfo-wrap">
	                    <div class="form">
	                        <dl class="cs">
										<dt>아이디</dt>
										<dd>${qnaboard.writerId }</dd>
										<dt>연락처</dt>
										<dd>${qnaboard.phone }</dd>
										<dt>이메일</dt>
										<dd>${qnaboard.email }</dd>
										<dt>문의유형</dt>
										<dd>${qnaboard.qnaType }</dd>
										<dt>매장선택</dt>
										<dd>${qnaboard.storeRegion }</dd>
										<dd>${qnaboard.storeName }</dd>
										<dt>제목</dt>
										<dd>${qnaboard.title }</dd>
							</dl>
							<dl>
								<c:forEach var="qnaboard" items="${boardList }">
									<dd>${qnaboard.seq }</dd>
									<dd><a href="myQuestion_view.do?seq=${qnaboard.seq}">${qnaboard.title}</a></dd>
									<dd>${qnaboard.writer }</dd>
									<dd><fmt:formatDate value="${qnaboard.regDate }" pattern="yyyy-MM-dd" /></dd>
									<dd>${qnaboard.storeRegion }</dd>
									<dd>${qnaboard.storeName }</dd>
								</c:forEach>
							</dl>
							
	                        <dl>
                                <dt class="top">문의내용</dt>
                                <dd>
                                    <div class="form-item">
                                        <textarea name="" id="content" cols="30" rows="10" readonly="">빠르고 친절하게 배달해주셔서 감사해요~
따뜻하고 맛있게 잘 먹었습니다!</textarea>
                                    </div>
                                </dd>
                            </dl>
                            <dl>
                                <dt class="top">답변</dt>
                                <dd>
                                    <div class="form-item">
                                        <textarea name="" id="content2" cols="30" rows="10" readonly="">저희 다미노피자를 이용해 주셔서 감사드립니다.

다미노피자를 찾아주시는 한 분 한 분의 고객님들께 
정성을 다해 만든 피자와 친절한 서비스로 찾아뵐 수 있도록 
최선의 노력을 다하고 있습니다. 

당연히 제공해 드려야 하는 서비스임에도 불구하고 
이렇듯 소중한 시간을 내시어 칭찬의 글을 올려주시니 
한없이 감사하고 또 더욱 열심히 해야 겠다는 생각이 듭니다. 

고객님의 말씀은 해당 매장 담당자에게 전달하였으며 
해당 직원 또한 너무나 기뻐하였습니다. 

고마우신 고객님의 글로 인해 힘입어 언제나 정성어린 서비스로 
고객님을 맞을 수 있도록 더욱 노력하는 밑거름으로 삼겠습니다. 

다미노피자를 이용해주시는 고객님께 다시 한번 감사드리며 
늘 웃음과 정성으로 찾아 뵙겠습니다. 

늘 건강하시고 행복하시길 바랍니다. 

감사합니다. </textarea>
                                    </div>
                                </dd>
                            </dl>
	                    </div>
	                    <div class="cs-guide">
                            <p class="text-type">등록하신 내용 및 답변은 회원정보상의 이메일로도 발송이 됩니다. 상담원과 통화를 원하시면 아래 번호로 전화주시기 바랍니다.</p>
                            <p class="title-type6">고객만족 센터<em>080-860-3082</em></p>
                        </div>
                        <div class="btn-wrap">
                            <a href="javascript:doDel('238307');" class="btn-type v5">삭제</a>
                            <a href="javascript:goList();" class="btn-type v4">목록</a>
                            <p>
                        </p></div>
	                </div>
				</article>
			</div>
		</div>
	</section>
</div>
<script type="text/javascript">
//목록
function goList(){
	location.href = "/mypage/qustionList?pageNo="+'1';
}

// 삭제
function doDel(idx){
	if(confirm("문의하신 사항을 삭제하시겠습니까?")){
		location.href = "/mypage/questionDelete?idx=" + idx;
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
					<li><a href="/bbs/faqList?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
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

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  
  ga('create', 'UA-40278626-1', 'auto', {'allowLinker': true});
  ga('require', 'linker');
  ga('linker:autoLink', ['cdn.dominos.co.kr'] );
  ga('send', 'pageview');

</script>
	<script type="text/javascript">var _TRK_LID="21550";var _L_TD="ssl.logger.co.kr";var _TRK_CDMN=".dominos.co.kr";</script>
	<script type="text/javascript">var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net" : "http://fs.bizspring.net";
	(function(b,s){var f=b.getElementsByTagName(s)[0],j=b.createElement(s);j.async=true;j.src='//fs.bizspring.net/fs4/bstrk.1.js';f.parentNode.insertBefore(j,f);})(document,'script');</script>
	<noscript><img alt="Logger Script" width="1" height="1" src="http://ssl.logger.co.kr/tracker.tsp?u=21550&amp;js=N" /></noscript>
	
	<script type="text/javascript">
	(function(b,s,t,c,k){b[k]=s;b[s]=b[s]||function(){(b[s].q=b[s].q||[]).push(arguments)};  var f=t.getElementsByTagName(c)[0],j=t.createElement(c);j.async=true;j.src='//fs.bizspring.net/fs4/l4cts.v4.2.js';f.parentNode.insertBefore(j,f);})(window,'_tcts_m',document,'script','BSAnalyticsObj');
	_tcts_m('15484','BCTS');
	</script>
	
	
<script>
cookieManager.makePCID("PCID", 10);

$(".select-type.language").change(function() {
	
	location.href = $("#select-type").val();
});
</script>

</body>
</html>