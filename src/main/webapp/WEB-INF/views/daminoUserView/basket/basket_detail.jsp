<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Damino's</title>

<link rel="shortcut icon"
	href="https://cdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />

<script type="text/javascript"
	src="https://cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="https://cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/sub.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/user/card_add.css' />">

<script src="https://cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
<script src="https://cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>

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
	
	
<!-- 다음 주소 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script language=JavaScript>
	var pizzaArr = new Array();
	//var arr = new Array();
	var t_arr = new Array();
	var sideArr = new Array();
	var etcArr = new Array();

<c:forEach var="pizza" items="${basketList}">
	pizzaArr.push({
		p_price : "${pizza.p_price}",
		p_count : "${pizza.p_count}",
		p_name : "${pizza.p_name}",
		p_gubun : "${pizza.gubun}"
	}); 
</c:forEach>

<c:forEach var="topping" items="${toppingList}">
	t_arr.push({
		t_name : "${topping.t_name}",
		t_price : "${topping.t_price}",
		t_count : "${topping.t_count}",
		t_gubun : "${topping.gubun}"
	});
</c:forEach>
	
<c:forEach var="side" items="${sideList}">
	sideArr.push({
		s_name : "${side.s_name}",
		s_price : "${side.s_price}",
		s_count : "${side.s_count}"
	}); 
</c:forEach>

<c:forEach var="etc" items="${etcList}">
	etcArr.push({
		d_name : "${etc.d_name}",
		d_price : "${etc.d_price}",
		d_count : "${etc.d_count}"
}); 
</c:forEach>

</script>
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
<script language=JavaScript>
//총 합계 구하기
	
		//토핑 합계 계산
		var toppingPrice = 0;
		var toppingNum = Number($('#toppingNum').val());		
		
		//각 메뉴별 합계 계산을 위한 변수
		var pizza_total = 0;
		var side_total = 0;		
		var etc_total = 0;
		var totalPizzaPrice = 0;

		var sidePrice = 0;
		if (sideArr != null) {
			for (var s = 0; s < sideArr.length; s++) {
			//alert("테스트");
				sidePrice = (parseInt(sideArr[s].s_price, 10) * parseInt(sideArr[s].s_count));
				console.log("sidePrice : " + sidePrice);
				
				side_total += sidePrice;
				
				$('#side-total' + s).html(sidePrice);
				
				//천단위 구분 - 정규표현식
				var s_total = $('#side-total' + s).text();
				s_total = s_total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				$('#side-total' + s).html(s_total);
				
				sideSum();
					
				}
			}		
		var etcPrice = 0;
		if (etcArr != null) {
			for (var i = 0; i < etcArr.length; i++) {
					etcPrice = (parseInt(etcArr[i].d_price, 10) * parseInt(etcArr[i].d_count));
					console.log("etcPrice : " + etcPrice);
					
					etc_total += etcPrice;
					
					$('#etc-total' + i).html(etcPrice);
					
					//천단위 구분 - 정규표현식
					var e_total = $('#etc-total' + i).text();
					e_total = e_total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
					$('#etc-total' + i).html(e_total);
					
					etcSum();
		}
			
}

function checkCount(){
	//피자 row
	var p_length = pizzaArr.length;
	//사이드 row
	var s_length = sideArr.length;
	//음료및기타 row
	var e_length = etcArr.length;
	
	var total_length = Number( e_length);
	console.log("row 길이 : " + total_length);
	
	//피자, 사이드디시, 음료및기타 수량 체크 변수
	var p_totalCnt = 0;
	var s_totalCnt = 0;
	var e_totalCnt = 0;
	//사이드디시, 음료및기타 가격 체크 변수
	
	var userid = $('#userid').val();
	
	//음료가 있을 경우
	if(e_length > 0){
		for(var i=0; i<e_length; i++){
		var etcCount = Number($('#drinkSetNum' + i).val());
		e_totalCnt += Number(etcCount);
		}
		//alert("");
	}//END e_length
	
	//피자가 있을 경우
	if(p_length > 0){
			for(var i=0; i<p_length; i++){	
				var pizzaCount = Number($('#pizzaSetNum' + i).val());
				p_totalCnt += Number(pizzaCount);
			}//end p_length for
			//피자 수량 제한
			if(p_totalCnt >= 9){
						alert("피자는 최대 9판까지 주문 가능합니다. 피자 수량이 초기화됩니다");
						var changeCnt = 1;
						//수량 초기화
						$.ajax({
							url : 'defaultPizzaCnt.do',
							contentType : "application/json; charset=UTF-8;",
							type : 'post',
							data : JSON.stringify({
								seq : seq,
								userid : userid,
								changeCnt : changeCnt
							}),
							async : false,
							success : function(data) {
								if (data == 'success') {
									location.reload(true);
								} else {
									alert('실패');
									return;
								}
							},
							error : function() {
								alert('처리도중 오류가 발생했습니다.');
							}

						})
						
					}
						
			//음료가 있을 경우
			if(e_length > 0){
					for(var j=0; j<e_length; j++){
					var etcCount = Number($('#drinkSetNum' + j).val());
					e_totalCnt += Number(etcCount);
				
				if(Number(e_totalCnt) > Number((p_totalCnt)*2)){
					alert("음료및기타는 피자와 2:1 비율로 주문 가능합니다. 음료및기타 수량이 초기화됩니다");
					alert("p_totalCnt : "+p_totalCnt + "/e_totalCnt : " + e_totalCnt);
					var changeCnt = 1;
					//수량 초기화
					$.ajax({
						url : 'defaultEtcCnt.do',
						contentType : "application/json; charset=UTF-8;",
						type : 'post',
						data : JSON.stringify({
							userid : userid,
							changeCnt : changeCnt
						}),
						async : false,
						success : function(data) {
							if (data == 'success') {
								location.reload(true);
								
							} else {
								alert('실패');
								return;
							}
						},
						error : function() {
							alert('처리도중 오류가 발생했습니다.');
						}
					})
					}
				}//END e_length for
				}//END e_length
			
	}//END p_length
	
	//사이드디시와 음료및기타 1:1 비율 유지 
	else if(s_length > 0){
		for(var i=0; i<s_length; i++){	
			var sideCount = Number($('#sideNomalSetNum' + i).val());
			s_totalCnt += sideCount;
		}
		//사이드디시 수량 제한
		if(s_totalCnt >= 9){
				alert("사이드디시는 최대 9개까지 주문 가능합니다. 사이드디시 수량이 초기화됩니다");
				
				var changeCnt = 1;
				//수량 초기화
				$.ajax({
					url : 'defaultSideCnt.do',
					contentType : "application/json; charset=UTF-8;",
					type : 'post',
					data : JSON.stringify({
						seq : seq,
						userid : userid,
						changeCnt : changeCnt
					}),
					async : false,
					success : function(data) {
						if (data == 'success') {
							location.reload(true);
						} else {
							alert('실패');
							return;
						}
					},
					error : function() {
						alert('처리도중 오류가 발생했습니다.');
					}

				})
		}//END 사이드디시 수량 제한
		if(e_totalCnt >= s_totalCnt && s_totalCnt >= 1){
			alert("음료및기타는 사이드디시와 1:1 비율로 주문 가능합니다. 음료및기타 수량이 초기화됩니다");
			var changeCnt = 1;
			//수량 초기화
			$.ajax({
				url : 'defaultEtcCnt.do',
				contentType : "application/json; charset=UTF-8;",
				type : 'post',
				data : JSON.stringify({
					userid : userid,
					changeCnt : changeCnt
				}),
				async : false,
				success : function(data) {
					if (data == 'success') {
						location.reload(true);
					} else {
						alert('실패');
						return;
					}
				},
				error : function() {
					alert('처리도중 오류가 발생했습니다.');
				}
			})
		}//END e_totalCnt if
		//사이드디시와 음료만 있을 때 최소 주문금액 설정
		if(Number(side_total + etc_total) < 12000){
			alert("최소 주문금액은 12,000원 이상입니다");
			return;
		}
	}//END s_length
	
	//음료만 있는 경우
	if(s_totalCnt<=0 && p_totalCnt<=0 && e_totalCnt >= 1){
		alert("음료만 주문하실 수 없습니다. 장바구니를 확인해주세요");
		return;
	}
	
	//쿠폰 발급 및 주문페이지로 이동
	var couponName = $('#couponName').val();
	var couponNameArr = couponName.split(",");
	
	console.log("couponNameArr : " + couponNameArr.length);
	
	//사용자에게 당월 발급된 쿠폰이 없을 때 쿠폰 발급
	if(couponNameArr.length == 0){
		var userlevel = sessionStorage.getItem("userlevel");
		
		$.ajax({
			type : "POST",
			url : "insertManiaCoupon.do",
			contentType : "application/json; charset=utf-8;",
			data : JSON.stringify({
				userid : userid,
				userlevel : userlevel,
			}),
			async : false,
			success : function(res){
				if(res == 'success'){
					alert("매니아 쿠폰이 발급되었습니다");
					location.href="orderPage.do";
				}else if(res == 'duplicated'){ //당월 발급된 쿠폰이 있는 경우
					location.href="orderPage.do";
				}
			},
			error : function(err){
				alert("매니아 쿠폰 발급 과정에서 오류가 발생하였습니다. 잠시 후 다시 시도해주세요.");
			},
		});
		
	}else{
		location.href="orderPage.do";
	}
	
}//END checkCount()

function sum(){
	//alert("sum");

		//$('#total-price').html(Number(pizza_total + side_total + etc_total));
		$('#total-price').html(Number(pizza_total + side_total + etc_total));
		var total = $('#total-price').text();
		total = total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		$('#total-price').html(total);
} 
function sideSum(){
	//alert("sideSum");	
			//천단위 구분 - 정규표현식
			var s_total = $('#side-total' + s).text();
			s_total = s_total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$('#side-total' + s).html(s_total);
			//sideSum();
			
			$('#total-price').html(Number(side_total));
			var total = $('#total-price').text();
			total = total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$('#total-price').html(total);
			
			sum();

}
function etcSum(){
	
	//천단위 구분 - 정규표현식
	var e_total = $('#etc-total' + i).text();
	e_total = e_total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	$('#etc-total' + i).html(e_total);
	
	$('#total-price').html(Number(etc_total));
	var total = $('#total-price').text();
	total = total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	$('#total-price').html(total);
	
	sum();
}
function pizzaSum(){
	var toppingNum = Number($('#toppingNum').val());
	console.log("토핑 개수 = " + toppingNum);
	if (pizzaArr.length >= 1) {	
		
		if (t_arr.length >= 1) {
		//피자금액에 토핑 금액 합산
		
		//토핑 개수가 피자 개수보다 작을 경우
		if(t_arr.length <= pizzaArr.length){
			for (var i = 0; i < pizzaArr.length; i++) {	
			if(i == 0){
				toppingPrice = parseInt(t_arr[0].t_price, 10) * parseInt(t_arr[0].t_count, 10);
				totalPizzaPrice = Number(toppingPrice)+ (parseInt(pizzaArr[0].p_price, 10) * parseInt(pizzaArr[0].p_count, 10));
				pizza_total += totalPizzaPrice;
				
				$('#prd-total' + 0).html(totalPizzaPrice);
				p_total = $('#prd-total' + 0).text();
				
				//천단위 구분 - 정규표현식
				p_total = p_total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				$('#prd-total' + 0).html("<em>" + p_total + "</em>" + "원");
				sum();
			}
			else if(i != 0){
				var totalPizzaPrice = (parseInt(pizzaArr[i].p_price, 10) * parseInt(pizzaArr[i].p_count, 10));
				pizza_total += totalPizzaPrice;				
				
				$('#prd-total' + i).html(totalPizzaPrice);
				p_total = $('#prd-total' + i).text();
				
				//천단위 구분 - 정규표현식
				p_total = p_total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				$('#prd-total' + i).html("<em>" + p_total + "</em>" + "원");
				sum();
				}
			}
		}else{
		
		for (var i = 0; i < t_arr.length; i++) {	
			//i가 마지막일 때
			if(i == t_arr.length-1){
				toppingPrice -= parseInt(t_arr[i].t_price, 10) * parseInt(t_arr[i].t_count, 10);
				totalPizzaPrice = Number(toppingPrice)+ (parseInt(pizzaArr[i].p_price, 10) * parseInt(pizzaArr[i].p_count, 10));
				pizza_total += totalPizzaPrice;
				
				sum();
				return;
			}
			//현재 토핑 구분자가 다음 토핑 구분자와 일치할 때
			else if(t_arr[i].t_gubun == t_arr[i+1].t_gubun){
					toppingPrice += parseInt(t_arr[i].t_price, 10) * parseInt(t_arr[i].t_count, 10) + parseInt(t_arr[i+1].t_price, 10) * parseInt(t_arr[i+1].t_count, 10);
					totalPizzaPrice = Number(toppingPrice)+ (parseInt(pizzaArr[i].p_price, 10) * parseInt(pizzaArr[i].p_count, 10));
					
			}
			//현재 토핑 구분자가 다음 토핑 구분자와 일치하지 않을 때
			else if (t_arr[i].t_gubun != t_arr[i+1].t_gubun){
					toppingPrice = 0;
					toppingPrice += parseInt(t_arr[i+1].t_price, 10) * parseInt(t_arr[i+1].t_count, 10);
					totalPizzaPrice = Number(toppingPrice)+ (parseInt(pizzaArr[i].p_price, 10) * parseInt(pizzaArr[i].p_count, 10));
			}else{
				toppingPrice += parseInt(t_arr[i].t_price, 10) * parseInt(t_arr[i].t_count, 10);
				totalPizzaPrice = Number(toppingPrice)+ (parseInt(pizzaArr[i].p_price, 10) * parseInt(pizzaArr[i].p_count, 10));
			
			}
				pizza_total += totalPizzaPrice;
				
				$('#prd-total' + i).html(totalPizzaPrice);
				p_total = $('#prd-total' + i).text();
				
				//천단위 구분 - 정규표현식
				p_total = p_total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				$('#prd-total' + i).html("<em>" + p_total + "</em>" + "원");
				
				sum(); 
				}
			}
		}//end t_arr
		else{//토핑이 없을 경우
			toppingPrice = 0;
			for (var i = 0; i < pizzaArr.length; i++) {	
				var totalPizzaPrice = (parseInt(pizzaArr[i].p_price, 10) * parseInt(pizzaArr[i].p_count, 10));
				pizza_total += totalPizzaPrice;
				
				$('#prd-total' + i).html(totalPizzaPrice);
				p_total = $('#prd-total' + i).text();
				
				//천단위 구분 - 정규표현식
				p_total = p_total.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				$('#prd-total' + i).html("<em>" + p_total + "</em>" + "원");
				
				sum();
			}
		}
	}
}//END pizzaSum()

window.onload = function() {
// 배달주문 or 포장주문 세팅
	
	var gubun = sessionStorage.getItem("gubun");
	var address = sessionStorage.getItem("address");
	var storename = sessionStorage.getItem("storename");
	var storephone = sessionStorage.getItem("storephone");
	var storeaddr = sessionStorage.getItem("storeaddr");
	
	var addressDB = $('#addressDB').val();
	var storenameDB = $('#storenameDB').val();
	var storephoneDB = $('#storephoneDB').val();
	console.log("storephoneDB : " + storephoneDB);
	
		if(gubun == 'D'){
			$('#orderGubun').text("배달주문");
			
			$('#d_order').show();
			$('#w_order').hide();
			
			$('#address').text(address);
			$('#store').html('<span>' + storename + '</span>&nbsp;' + storephone);
		}else if(gubun == 'W'){
			$('#orderGubun').text("포장주문");
			
			$('#w_order').show();
			$('#d_order').hide();
			
			$('#storeinfo').text(storename + " (" + storephone + ")");
			$('#storeaddr').text(storeaddr);
		}else{
			$('#orderGubun').text("주문");
			$('#d_order').show();
			$('#w_order').hide();
			
			$('#address').text(addressDB);
			$('#store').html('<span>' + storenameDB + '</span>&nbsp;' + storephoneDB);
		}
		
//사용자 선택 정보 합계 계산
	sideSum();
	etcSum();
	sum();
	pizzaSum();
	
	//피자 row
	var p_length = pizzaArr.length;
	//사이드 row
	var s_length = sideArr.length;
	//음료및기타 row
	var e_length = etcArr.length;

	var total_length = Number( e_length);
	console.log("row 길이 : " + total_length);

	//피자, 사이드디시, 음료 수량 체크를 위한 변수
	var p_totalCnt = 0;
	var s_totalCnt = 0;
	var e_totalCnt = 0;

	//피자가 있을 경우
	if(p_length > 0){
		for(var i=0; i<p_length; i++){
			var pizzaCount = Number($('#pizzaSetNum' + i).val());
			p_totalCnt += Number(pizzaCount);
			console.log("pizzaCount : " + pizzaCount);
			console.log("p_total : " + p_total);

		}
	}
	//사이드디시가 있을 경우
	if(s_length > 0){
		for(var i=0; i<s_length; i++){
			var sideCount = Number($('#sideNomalSetNum' + i).val());
			s_totalCnt += Number(sideCount);
			console.log("sideCount : " + sideCount);
			console.log("s_total : " + s_total);
			
		}
	}

	//음료및기타가 있을 경우
	 if(e_length > 0){
		for(var i=0; i<e_length; i++){
			var etcCount = Number($('#drinkSetNum' + i).val());
			e_totalCnt += Number(etcCount);
			console.log("etcCount : " + etcCount);
			console.log("e_total : " + e_total);
			//alert("");
			
			/* if(e_total > (p_total)*2){
				alert("음료는 피자와 2:1 비율로 주문 가능합니다. 음료 수량이 초기화됩니다");
				var etcCount = Number($('#drinkSetNum' + i).val(1));
				return;
			} */
		}
	} 
//사용자 주소 추가

		var addressSeq = 0; // 주소 테이블 seq 값

		function addAddress() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 도로명 조합형 주소 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}
							// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
							if (fullRoadAddr !== '') {
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
										url : 'getStoreRegion.do',
										contentType : "application/json; charset=UTF-8;",
										type : 'post',
										data : JSON.stringify({
											guName : guName,
										}),
										async : false,
										success : function(data) {
											if (data == 'success') {
												console.log(data);
												// 상세주소 입력 페이지 열기

												window.open(
																"openDetailAddress.do",
																"상세주소 & 배달매장 입력",
																"top=50, left=60, width=450, height=580, directories='no', location='no', menubar='no', resizable='no', status='yes', toolbar='no'");
											} else {
												alert('배달 불가 주소입니다.');
												return;
											}
										},
										error : function() {
											alert('처리도중 오류가 발생했습니다.');
										}

									})
						}
					}).open();
		}

		function receiveDetailAddr(addr, selectStore) {
			$('#detailAddrVal').val(addr);
			$('#selectStore').val(selectStore);
		}

		function addAddr() {
			++addressSeq;

			alert(addressSeq);
			var address = $('#addrVal').val() + ' ' + $('#detailAddrVal').val(); // 배달 주소
			$('#address').text(address);

			var storeName = $('#selectStore').val(); // 배달 매장명
			$('#store').html("<span>" + storeName + "</span>");

			//var userid = $('#userid').val(); //컨트롤러에서 세션 아이디값을 추가해줘야함!
		}
}//END window.onload
	
function changeEtcCnt(sub_action, index, seq, orgCnt) {
	//피자 row
	var p_length = pizzaArr.length;
	//사이드 row
	var s_length = sideArr.length;
	//음료및기타 row
	var e_length = etcArr.length;
	
	//음료및기타 수량 체크 변수
	var e_totalCnt = 0;
	//변화된 수량을 담을 변수
	var changeCnt = 0;
	//최소 카운트 1로 제한
	if(orgCnt == 1 && sub_action == 'minus'){
		return;
	}
	if(sub_action === 'plus'){
	
			changeCnt = orgCnt + 1;		
	}//END PLUS
	else if (sub_action === 'minus'){
		changeCnt = orgCnt - 1;
		if(changeCnt <= 1){
			changeCnt = 1;
		}
	}
	//수량 변경
	var userid = $('#userid').val();
	
	$.ajax({
			url : 'changeEtcCnt.do',
			contentType : "application/json; charset=UTF-8;",
			type : 'post',
			data : JSON.stringify({
				seq : seq,
				userid : userid,
				changeCnt : changeCnt
			}),
			async : false,
			success : function(data) {
				if (data == 'success') {
					location.reload(true);
				} else {
					alert('실패');
					return;
				}
			},
			error : function() {
				alert('처리도중 오류가 발생했습니다.');
			}
		})
}

function changeSideCnt(sub_action, index, seq, orgCnt) {
	var userid = $('#userid').val();
	//피자 row
	var p_length = pizzaArr.length;
	//사이드 row
	var s_length = sideArr.length;
	//음료및기타 row
	var e_length = etcArr.length;
	//사이드디시 수량 체크 변수
	var s_totalCnt = 0;
	//변화된 수량을 담을 변수
	var changeCnt = 0;
	//최소 카운트 1로 제한
	if(orgCnt == 1 && sub_action == 'minus'){
		return;
	}
	if(sub_action === 'plus'){
		
		changeCnt = orgCnt + 1;
	}else if (sub_action === 'minus'){
		changeCnt = orgCnt - 1;
		if(changeCnt <= 1){
			changeCnt = 1;
		}
	}
	//수량 변경
	$.ajax({
			url : 'changeSideCnt.do',
			contentType : "application/json; charset=UTF-8;",
			type : 'post',
			data : JSON.stringify({
				seq : seq,
				userid : userid,
				changeCnt : changeCnt
			}),
			async : false,
			success : function(data) {
				if (data == 'success') {
					location.reload(true);
				} else {
					alert('실패');
					return;
				}
			},
			error : function() {
				alert('처리도중 오류가 발생했습니다.');
			}

		})
	
}

function changePizzaCnt(sub_action, index, seq, orgCnt) {
	//피자 row
	var p_length = pizzaArr.length;
	//사이드 row
	var s_length = sideArr.length;
	//음료및기타 row
	var e_length = etcArr.length;
	
	var userid = $('#userid').val();
	//피자 수량 체크 변수
	var p_totalCnt = 0;
	//변화된 수량을 담을 변수
	var changeCnt = 0;
	//최소 카운트 1로 제한
	if(orgCnt == 1 && sub_action == 'minus'){
		return;
	}
	if(sub_action === 'plus'){
		
		changeCnt = orgCnt + 1;
		
	}else if (sub_action === 'minus'){
		changeCnt = orgCnt - 1;
		if(changeCnt <= 1){
			changeCnt = 1;
		}
	}
	//수량 변경
	$.ajax({
			url : 'changePizzaCnt.do',
			contentType : "application/json; charset=UTF-8;",
			type : 'post',
			data : JSON.stringify({
				seq : seq,
				userid : userid,
				changeCnt : changeCnt
			}),
			success : function(data) {
				if (data == 'success') {
					location.reload(true);
				} else {
					alert('실패');
					return;
				}
			},
			error : function() {
				alert('처리도중 오류가 발생했습니다.');
			}

		})
	
}
function allDelete(){
	
	if (confirm("장바구니를 비우시겠습니까?")) {
		var userid = $('#userid').val();

		$.ajax({
			url : 'allDelete.do',
			contentType : "application/json; charset=UTF-8;",
			type : 'post',
			data : JSON.stringify({
				userid : userid
			}),

			success : function(data) {
				alert("삭제 성공");
				location.reload(true);
			},
			error : function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
		})
	}else {
		return;
	}
}
function toppingDelete(index) {
		var rowseq = index;

		if (confirm("선택하신 토핑을 삭제하시겠습니까?")) {
			var userid = $('#userid').val();

			$.ajax({
				url : 'deleteTopping.do',
				contentType : "application/json; charset=UTF-8;",
				type : 'post',
				data : JSON.stringify({
					userid : userid,
					seq : index
				}),

				success : function(data) {
					alert("삭제 성공");
					location.reload(true);
				},
				error : function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
		} else {
			return;
		}
	}
	function pizzaDelete(idx, gubun) {
		var rowseq = idx;
		var gubun = gubun;
		if (confirm("해당 정보를 삭제하시겠습니까?")) {

			var userid = $('#userid').val();

			$.ajax({
				url : 'pizzaDelete.do',
				contentType : "application/json; charset=UTF-8;",
				type : 'post',
				data : JSON.stringify({
					userid : userid,
					seq : rowseq,
					gubun : gubun
				}),
				async : false,
				success : function(data) {
					alert("삭제 성공");

					location.reload(true);
				},
				error : function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
		} else {
			return;
		}
	}

	function etcDelete(idx) {

		if (confirm("해당 정보를 삭제하시겠습니까?")) {
			var userid = $('#userid').val();

			$.ajax({
				url : 'etcDelete.do',
				contentType : "application/json; charset=UTF-8;",
				type : 'post',
				data : JSON.stringify({
					userid : userid,
					seq : idx
				}),
				async : false,
				success : function(data) {
					alert("삭제 성공");

					location.reload(true);
				},
				error : function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
		} else {
			return;
		}
	}

	function sideDelete(idx) {

		if (confirm("해당 정보를 삭제하시겠습니까?")) {
			var userid = $('#userid').val();

			$.ajax({
				url : 'sideDelete.do',
				contentType : "application/json; charset=UTF-8;",
				type : 'post',
				data : JSON.stringify({
					userid : userid,
					seq : idx
				}),
				async : false,
				success : function(data) {
					alert("삭제 성공");
					location.reload(true);
				},
				error : function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
		} else {
			return;
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
						<c:when test="${guest == 'guest' }">
							<!-- 비회원 로그인시 -->
							<div class="util-nav">
								guest 님&nbsp; <a href="regForm.do">회원가입</a><a href="logout.do">로그아웃</a> 
							</div>
						</c:when>
						<c:when test="${msg != 'login' }">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="regForm.do">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인 -->
							<div class="util-nav">
								${sessionScope.username } 님 &nbsp; <a href="logout.do">로그아웃</a>
								<a href="mylevel.do">나의정보</a> <a href="my_basket.do"
									class="btn-cart"> <i class="ico-cart"></i><span
									class="hidden">장바구니</span><strong class="cart_count cart-count"></strong>
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
		<style>
.gate-popup {
	width: 360px;
	height: auto;
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -60%);
	background: #fff
}

.gate-popup h1 img {
	width: 102px;
}

.gate-popup .title {
	margin-top: 28px;
	font-size: 24px;
	font-weight: 600;
}

.gate-popup .sub-txt {
	margin-top: 16px;
	line-height: 21px;
	font-size: 15px;
	color: #888888;
}

.gate-popup .info {
	margin-top: 30px;
	font-size: 17px;
	font-weight: 600;
	line-height: 27px;
}

.gate-popup .info .focus {
	color: #ff143c;
}

.gate-popup .progress {
	margin: 14px auto 15px;
	width: 220px;
	height: 8px;
	font-size: 0;
	background: #eee;
	border-radius: 7.5px;
	position: relative;
}

.gate-popup .progress .bar {
	display: block;
	position: absolute;
	left: 0;
	top: 0;
	height: 100%;
	background: #238ece;
	border-radius: 7.5px;
}

.gate-popup .notice {
	font-size: 14px;
	color: #888888;
}

.gate-popup .notice .ico {
	width: 14px;
	height: 14px;
	display: inline-block;
	border: 1px solid #888;
	border-radius: 100%;
	vertical-align: middle;
	margin-right: 4px;
	margin-bottom: 2px;
	position: relative
}

.gate-popup .notice .ico:before {
	content: '';
	display: inline-block;
	position: absolute;
	top: 3px;
	left: 5px;
	width: 1px;
	height: 1px;
	background: #888;
}

.gate-popup .notice .ico:after {
	display: inline-block;
	content: '';
	position: absolute;
	top: 6px;
	left: 5px;
	width: 1px;
	height: 4px;
	background: #888;
}

.gate-popup .btn-close {
	position: absolute;
	top: -20px;
	right: 20px;
	display: block;
	width: 27px;
	height: 27px;
	font-size: 0;
}

.gate-popup .btn-close:before, .gate-popup .btn-close:after {
	content: "";
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%) rotate(45deg);
	transform: translate(-50%, -50%) rotate(45deg);
	background: #111;
}

.gate-popup .btn-close:before {
	width: 2px;
	height: 27px;
}

.gate-popup .btn-close:after {
	width: 27px;
	height: 2px;
}
</style>
		<div id="container">
			<section id="content">
				<div class="sub-type cart">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">장바구니</h2>
							<div class="depth-area">
								<ol>
									<li><a href="main.do">홈</a></li>
									<li><strong>장바구니</strong></li>
								</ol>
							</div>
						</div>
						<article class="cart-area pay">
							<!-- 주소 -->
							<div class="step-wrap">
								<div class="title-wrap">
									<h3 class="title-type">
										<strong id="orderGubun"></strong>
									</h3>
								</div>
								<input type="hidden" id="userid" value="${userid}" />
								<input type="hidden" id="inactive" value="${inactive}" />
								<input type="hidden" id="couponName" value="${couponName }" />
								<input type="hidden" id="addressDB" value="${addressDB }" />
								<input type="hidden" id="storenameDB" value="${storenameDB }" />
								<input type="hidden" id="storephoneDB" value="${storephoneDB }" />
								<!-- 배달주문 div -->
								<div class="deli-info" id="d_order">
									<input type="hidden" id="addrVal" value="" /> <input
										type="hidden" id="detailAddrVal" value="" /> <input
										type="hidden" id="guVal" value="" /> <input type="hidden"
										id="selectStore" value="" />
									<div class="address" id="address"></div>
									<div class="store" id="store">
										<span id="d_storename"></span>&nbsp;
									</div>
									<div class="btn-wrap">
										<a href="getOrderPage.do?gubun=D" class="btn-type4-brd">수정</a>
									</div>
								</div>
								
								<!-- 포장주문 div -->
								<div class="deli-info" id="w_order">
							 	<div class="address" id="storeinfo">
								</div>
                                <p class="sub-address" id="storeaddr"></p>
                                <div class="btn-wrap">
                                    <a href="getOrderPage.do?gubun=W" class="btn-type4-brd">수정</a>
                                </div>
                            </div>
							</div>
							<!-- //주소 -->
							<!-- 주문 내역 -->
							<div class="step-wrap">
								<div class="title-wrap">
									<h3 class="title-type">
										<strong>주문내역</strong>
									</h3>
									<span class="summary side"> <a
										href="javascript:allDelete();">전체 삭제</a>
									</span>
									<input type="hidden" id="test" value="" />
									<input type="hidden" id="toppingNum" value="${fn:length(toppingList)}" />
								</div>
								<div class="cart-list" id="cart-list">
									<ul>

										<li class="category">
											<div>상품정보</div>
											<div>추가토핑</div>
											<div>수량</div>
											<div>금액</div>
											<div></div>
										</li>
										
										<c:forEach var="pizza" items="${basketList}" varStatus="status">
											<div class="hidden-info">
											<input type="hidden" id="gubun" value="${pizza.gubun}"/>
											</div>
											<c:if test="${pizza.p_name != null }">
												<li class="row" id="row${status.index}">
													
													<div class="prd-info" id="prd-info${status.index }">
														<div class="prd-img">
															<img
																src="<c:url value= '/resources/images/admin/goods/${pizza.p_image}' />" />
														</div>
														<div class="prd-cont">
															<div class="subject">${pizza.p_name}</div>
															<div class="option">${pizza.p_dough}/${pizza.p_size}</div>
															<div class="price">
																<fmt:formatNumber value="${pizza.p_price}" pattern="#,###" />원
															</div>
														</div>
													</div>
												
													<div class="prd-option"  id="prd-option${status.index }"  style="">
													<c:forEach var="toppingList" items="${toppingList}" varStatus="idx">
													<c:if test="${pizza.gubun eq toppingList.gubun && toppingList.t_name != null}">
														<ul>
														<li>
														<span>${toppingList.t_name}(<fmt:formatNumber value="${toppingList.t_price}" pattern="#,###" />원)x${toppingList.t_count}
														 <a href="javascript:toppingDelete(${toppingList.seq});"
															id="delPizza" class="close"> <span class="hidden">삭제</span>
															</a> 
														<input type="hidden" id="t_price${toppingList.gubun}" value="${toppingList.t_price}"/>
														</span>
														</li>
														</ul>
														
														<%-- <div id="prd-option${status.index }"></div>
														 <a href="javascript:toppingDelete(${pizza.seq});"
															id="delPizza" class="btn-close"> <span class="hidden">삭제</span> 
													</a>
													<input type="hidden" id="t_name" value="${topping.t_name}"/>--%>
													</c:if>
													</c:forEach> 
													</div>
													<div class="prd-quantity">
														<div class="quantity-box v2">
															<a href="javascript:void(0);"
																onclick="changePizzaCnt('minus',${status.index},${pizza.seq},${pizza.p_count})"
																class="minus"><button class="btn-minus goods"></button></a>
																<input type="number" class="qty0" id="pizzaSetNum${status.index}" value="${pizza.p_count}" readonly />
															<a href="javascript:void(0);" onclick="changePizzaCnt('plus',${status.index},${pizza.seq},${pizza.p_count})"
																class="plus"><button class="btn-plus goods"></button></a>
														<input type="hidden" id="pizzaName${status.index}" value="${pizza.p_name}">
														<input type="hidden" id="pizzaPrice${status.index}" value="${pizza.p_price}">
														</div>
													</div> 
													<input type="hidden" id="index" value="${status.index}"/>
													<div class="prd-total" id="prd-total${status.index}">
														<em><fmt:formatNumber value="${pizza.p_price}" pattern="#,###" /></em>원
													</div>
													<div class="prd-delete">
														<a href="javascript:pizzaDelete(${pizza.seq},${pizza.gubun});"
															id="delPizza" class="btn-close"> <span class="hidden">삭제</span>
														</a>

													</div>
												</li>
											</c:if>
										</c:forEach>
											<!-- end 피자 -->
										<c:forEach var="side" items="${sideList}" varStatus="status">
										 <c:if test="${side.s_name != null }">
												<li class="row" id="sideRow"> 
												 <div class="sold-out-btn" id="sold-out-btn0"
														style="display: none">
														<p>Sold Out</p>
														<a
															href="javascript:changeGoodsCnt('delete',0,'RPZ190GL', '1', 1, 0);"
															class="btn-type4-brd3">삭제</a>
													</div>
													<div class="prd-info">
														<div class="prd-img">
															<img id="pizzaI" src="<c:url value= '/resources/images/admin/goods/${goodsDetail.p_image}' />"/>
															<input type="hidden" id="pizzaImage" value="" />
														</div>
														<div class="prd-cont">
															<div class="subject">${side.s_name}</div>
															<div class="option"></div>
															<div class="price"><fmt:formatNumber value="${side.s_price}" pattern="#,###" />원</div>
														</div>
													</div>
													<div class="prd-option"></div>
													<div class="prd-quantity">
														<div class="quantity-box v2">
															<a href="javascript:void(0);"
																onclick="changeSideCnt('minus',${status.index},${side.seq},${side.s_count})">
																class="minus"><button class="btn-minus side"></button></a>
																<input type="number" class="qty0" id="sideNomalSetNum${status.index}"
																value="${side.s_count}" readonly />
																<input id="sideName${status.index}" type="hidden" value="${side.s_name}">
																<input id="sidePrice${status.index}" type="hidden" value="${side.s_price}">
																<a href="javascript:void(0);"
																onclick="changeSideCnt('plus',${status.index},${side.seq},${side.s_count})">
																class="plus"><button class="btn-plus side"></button></a>
														</div>
													</div>
													<div class="prd-total">
														<em id="side-total${status.index}">
														<fmt:formatNumber value="${side.s_price}" pattern="#,###" /></em>원 <input
															type="hidden" id="sidePrice" value="${side.s_price}" />
													</div>
													<div class="prd-delete">
														<a href="javascript:sideDelete(${side.seq});"
															class="btn-close"> <span class="hidden">삭제</span>
														</a>
													</div> 
												</li>
										  </c:if>
										  </c:forEach>
											<c:forEach var="etc" items="${etcList}" varStatus="status">
												<li class="row" id="etcRow${status.index}">
													<div class="sold-out-btn" id="sold-out-btn0"
														style="display: none">
														<p>Sold Out</p>
														<a
															href="javascript:changeGoodsCnt('delete',0,'RPZ190GL', '1', 1, 0);"
															class="btn-type4-brd3">삭제</a>
													</div>

													<div class="prd-info">
														<div class="prd-img">
															<img id="pizzaI" src="<c:url value= '/resources/images/admin/goods/' />"/>
															<input type="hidden" id="pizzaImage" value="" />
														</div>
														<div class="prd-cont">
															<div class="subject">${etc.d_name}</div>
															<div class="option"></div>
															<div class="price">
															<em>
															<fmt:formatNumber value="${etc.d_price}" pattern="#,###" /></em>원</div>
														</div>
													</div>
													<div class="prd-option"></div>
													<div class="prd-quantity">
														<div class="quantity-box v2">
															<a href="javascript:void(0);"
																onclick="changeEtcCnt('minus',${status.index},${etc.seq},${etc.d_count})"
																class="minus"><button class="btn-minus etc"></button></a> <input
																type="number" class="qty0" id="drinkSetNum${status.index}"
																value="${etc.d_count}" readonly /> <a
																href="javascript:void(0);"
																onclick="changeEtcCnt('plus',${status.index},${etc.seq},${etc.d_count})"
																class="plus"><button class="btn-plus etc"></button></a>
															<input id="etcName${status.index}" type="hidden" value="${etc.d_name}">
															<input id="etcPrice${status.index}" type="hidden" value="${etc.d_price}">
														</div>
													</div>
													<div class="prd-total">
														<em id="etc-total${status.index}">
														<fmt:formatNumber value="${etc.d_price}" pattern="#,###" /></em>원
													</div>
													<div class="prd-delete">
														<a
															href="javascript:etcDelete(${etc.seq});"
															class="btn-close"> <span class="hidden">삭제</span>
														</a>
													</div>
												</li>
										</c:forEach>
										<c:if test="${empty basketList && empty toppingList && empty sideList && empty etcList}">
											<article class="cart-area pay">
												<div class="step-wrap"></div>
												<div class="no-data">
													장바구니가 비어 있습니다.
													<p class="text-type">다미노피자의 맛있는 메뉴를 마음껏 골라 담으세요</p>
													<!-- 메뉴 추가 버튼 -->
													<div class="btn-wrap">
														<a href="goodslist.do" class="btn-type-brd"><i
															class="ico-plus"></i>메뉴 추가하기</a>
													</div>
													<!-- //메뉴 추가 버튼 -->
												</div>
											</article>
											<br></br>
										</c:if>
									</ul>
								</div>
							</div>

							<!-- //주문 내역 -->
							<!-- 총 주문 금액 -->
							<div class="step-wrap total-wrap">
								<div class="text-type">
									* 할인 적용은 다음 단계에서 가능합니다.<br /> * 피클&소스 기본 제공 안내<br /> - L : 피클
									L (120g) 1개 / 핫소스 2개 / 갈릭디핑소스 15g 2개, M : 피클 M (75g) 1개 / 핫소스
									1개 / 갈릭디핑소스 15g 1개<br /> - 씬 도우, 더블크러스트 이베리코, 치즈케이크 블랙타이거 피자는
									갈릭디핑소스 미 제공<br /> - 메뉴 > 음료&기타 추가 구매 가능
								</div>
								<div class="total-price2 side">
									<p>
										총 금액 <em id="total-price"></em>원
									</p>
								</div>
							</div>
							<!-- //총 주문 금액 -->
							<!-- 주문하기 버튼 -->

							<div class="btn-wrap">
								<!-- <a href="goodslist.do" class="btn-type-brd"> -->
								<a href="goodslist.do" class="btn-type-brd"><i
									class="ico-plus"></i>메뉴 추가하기</a> <a
									href="javascript:checkCount();"
									class="btn-type v3">주문하기</a>
							</div>
							<!-- //주문하기 버튼 -->
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
