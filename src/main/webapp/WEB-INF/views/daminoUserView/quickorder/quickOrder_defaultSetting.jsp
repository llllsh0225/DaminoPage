<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "org.json.simple.*" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="utf-8">
<title>다미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's</title>
	
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
	<script type="text/javascript">
	var toppingCnt = 0; // 선택 토핑 전체 카운트
	var toppingStr = ""; // 선택 토핑 정보를 저장할 문자열
	var selectToppingNameArr = []; // 선택된 토핑이름을 저장할 배열
	var selectToppingCntArr = []; // 선택된 토핑 수량을 저장할 배열
	var selectToppingPriceArr = []; // 선택된 토핑의 가격을 저장할 배열
	var totalOrderPrice = 0; // 최종 주문 가격 초기화
	var totalDBGoodsPrice = 0; // DB에서 불러온 제품 가격 총합을 저장하는 변수
	var goodsNextRowSeq; // 메뉴 테이블 다음 rowseq 값
	var addressNextRowSeq; // 주소 테이블 다음 rowseq 값
	var storeNextRowSeq; // 포장매장 테이블 다음 rowseq 값
	
		$(document).ready(function(){
			goodsNextRowSeq = Number($('#goodsNextRowSeq').val()); // 제품 테이블 시퀀스 (제품 추가할 때 마다 +1)
			addressNextRowSeq = Number($('#addressNextRowSeq').val()); // 주소 테이블 시퀀스 (주소 추가할 때 마다 +1)
			storeNextRowSeq = Number($('#storeNextRowSeq').val()); // 포장매장 테이블 시퀀스 (매장 추가 할 때 마다 +1)
			
			
			if($('#dsp_ctgr').val() == ""){
				$('.pizza_option').hide();
			}
			
			$('.topping-wrap').hide();
			
			// 총 가격 계산
			$('#quickOrderList tbody tr').each(function(){
				var goodsTotalPriceHTML = $(this).find('td').eq(2).html();
				var goodsTotalPrice = Number((goodsTotalPriceHTML.slice(0,-1)).replace(',', '')); 
				totalDBGoodsPrice += goodsTotalPrice;
			});
			
			$('#totalOrderPrice').text(totalDBGoodsPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));

			if(${defaultAddress ne null} && ${defaultStore eq null}){
				$('#order_deli').prop('checked', true);
			}else if(${defaultStore ne null} && ${defaultAddress eq null}){
				$('#order_visit').prop('checked', true);
			}
			
			if($('#order_deli').prop('checked')){
				$('#d_orderinfo').show();
				
				$('#w_orderinfo').hide();
				$('#wrap_lately').hide();
			}else{
				$('#w_orderinfo').show();
				
				$('#d_orderinfo').hide();
				$('#order_lately').hide();
			}
			
		});
		function selectBoxControl(){
			var optValue = $('#dsp_ctgr').val();
			if(optValue == "PIZZA"){
				$('.pizza_option').show();
				getPizzaName();
			}else if(optValue == "SIDE"){
				$('.pizza_option').hide();
				selectToppingNameArr = [];
				selectToppingCntArr = [];
				selectToppingPriceArr = [];
				getSideName();
			}else if(optValue == "DRINK"){
				$('.pizza_option').hide();
				selectToppingNameArr = [];
				selectToppingCntArr = [];
				selectToppingPriceArr = [];
				getDrinkName();
			}
		}

		function getPizzaName(callbackFunc){
			var target = document.getElementById("goods_code"); // 제품명 셀렉트박스
			var ctgr = $('#dsp_ctgr').val(); // 제품 카테고리명
			
			$.ajax({
				url: 'getPizzaNames.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post',
				dataType: 'json',   
				data : JSON.stringify({
					ctgr : ctgr, // 컨트롤러로 보낼 제품 카테고리 명
				}),
				success: function(data) {
					if (data != null) {
						target += ('<option value="">제품</option>');
						for(var i=0; i<data.length; i++){
							target += ('<option value="'+ data[i] +'">'+ data[i] + '</option>');
						}
						$('#goods_code').html(target);
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
		function getPizzaDough(){
			var target = document.getElementById("dough"); // 선택 가능 도우 셀렉트박스
			var p_name = $('#goods_code').val(); // 컨트롤러로 보낼 피자 제품명
			var ctgr = $('#dsp_ctgr').val(); // 제품 카테고리명
			
			$('#dough option:eq(1)').prop("selected", "selected"); // 선택된 제품이 바뀔 때 도우 셀렉트박스의 첫번째 값("도우")을 셀렉트
			$('#size option:eq(0)').prop("selected", "selected"); // 선택된 도우가 바뀔 때 사이즈 셀렉트박스의 첫번째 값("사이즈")을 셀렉트
			$('.topping-wrap').hide();
			
			if(ctgr != "PIZZA"){
				return;
			}else{
				$.ajax({
					url: 'getPizzaDough.do',
					contentType : "application/json; charset=UTF-8;",
					type: 'post',
					dataType: 'json',   
					data : JSON.stringify({
						p_name : p_name,
					}),
					success: function(data) {
						if (data != null) {
							target += ('<option value="">도우</option>');
							for(var i=0; i<data.length; i++){
								target += ('<option value="'+ data[i] +'">'+ data[i] + '</option>');
							}
							$('#dough').html(target);
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
		}
		function getSize(){
			var target = document.getElementById("size"); // 사이즈 선택 셀렉트박스
			$('#size option:eq(1)').prop("selected", "selected"); // 선택된 도우가 바뀔 때 사이즈 셀렉트박스의 첫번째 값("사이즈")을 셀렉트
			$('.topping-wrap').hide();
			
			target += ('<option value="">사이즈</option>');
			target += ('<option value="L">L</option>');
			target += ('<option value="M">M</option>');
			
			$('#size').html(target);
			
		}
		
		function getSideName(){
			var target = document.getElementById("goods_code"); // 제품명 셀렉트박스
			var ctgr = $('#dsp_ctgr').val(); // 제품 카테고리명
			
			$.ajax({
				url: 'getSideNames.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post',
				dataType: 'json',   
				data : JSON.stringify({
					ctgr : ctgr, // 컨트롤러로 보낼 제품 카테고리 명
				}),
				success: function(data) {
					if (data != null) {
						target += ('<option value="">제품</option>');
						for(var i=0; i<data.length; i++){
							target += ('<option value="'+ data[i] +'">'+ data[i] + '</option>');
						}
						$('#goods_code').html(target);
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
		function getDrinkName(){
			var target = document.getElementById("goods_code"); // 제품명 셀렉트박스
			var ctgr = $('#dsp_ctgr').val(); // 제품 카테고리명
			
			$.ajax({
				url: 'getDrinkNames.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post',
				dataType: 'json',   
				data : JSON.stringify({
					ctgr : ctgr, // 컨트롤러로 보낼 제품 카테고리 명
				}),
				success: function(data) {
					if (data != null) {
						target += ('<option value="">제품</option>');
						for(var i=0; i<data.length; i++){
							target += ('<option value="'+ data[i] +'">'+ data[i] + '</option>');
						}
						$('#goods_code').html(target);
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
		
		function toppingShowOrHide(){
			var size = $('#size').val();
			if(size != ""){
				$('.topping-wrap').show();
			}else{
				$('.topping-wrap').hide();
			}
		}
		function qtyMinus(){
			var qty = Number($('#qty').val());
			
			qty -= 1;
			$('#qty').val(qty);
			
			if(qty == 0){
				$('#qty').val(1);
			}
		}
		
		function qtyPlus(){
			var qty = Number($('#qty').val());
			
			qty += 1;
			$('#qty').val(qty);
			
			if(qty == 10){
				alert("수량은 최대 9개 까지 선택 가능합니다.");
				$('#qty').val(9);
			}
		}
		
		function mainToppingQtyMinus(idx){ // 메인토핑 개수 마이너스 & 전체 토핑개수 카운트
			var mainToppingQty = Number($('#mainToppingQty' + idx).val());
			var mainToppingName = $('#mainToppingName' + idx).val();
			var mainToppingPrice = Number($('#mainToppingPrice' + idx).val());
			var selectToppingNameIdx = selectToppingNameArr.indexOf(mainToppingName);
			
			mainToppingQty -= 1; // 버튼을 클릭하면 메인토핑 개수 -1
			$('#mainToppingQty' + idx).val(mainToppingQty); // 메인토핑 개수를 위에서 마이너스 한 값으로 다시 세팅
			
			if(mainToppingQty == 0){ // 만약 메인토핑수가 0이라면
				$('#mainToppingQty' + idx).val(0); // 마이너스값이 되지 않게 0으로 세팅
				mainToppingQty = Number($('#mainToppingQty' + idx).val());
				toppingCnt -= 1; // 전체 토핑 카운트를 -1
				
				selectToppingCntArr.splice(selectToppingNameIdx, 1);
				selectToppingNameArr.splice(selectToppingNameIdx, 1);
				selectToppingPriceArr.splice(selectToppingNameIdx, 1);
		
			}else if(mainToppingQty < 0){ // 만약 메인토핑 개수가 음수값이라면
				$('#mainToppingQty' + idx).val(0); // 음수값이 되지 않게 0으로 세팅 (전체 토핑 카운트는 그대로 둔다.)
			}else{
				toppingCnt -= 1; // 전체 토핑 카운트가 0도 아니고 음수도 아니라면 -1
				
				selectToppingCntArr.splice(selectToppingNameIdx, 1, mainToppingQty);
			}
			console.log(toppingCnt);
		}
		
		function mainToppingQtyPlus(idx){ // 메인토핑 개수 플러스 & 전체 토핑개수 카운트
			// 선택된 토핑 정보 저장 변수
			var mainToppingQty = Number($('#mainToppingQty' + idx).val()); // 선택된 메인토핑 개수
			var mainToppingName = $('#mainToppingName' + idx).val(); // 선택된 메인토핑 이름
			var mainToppingPrice = Number($('#mainToppingPrice' + idx).val()); // 선택된 메인토핑 가격
			var selectToppingNameIdx = selectToppingNameArr.indexOf(mainToppingName);
			
			mainToppingQty += 1; // 버튼을 클릭하면 메인토핑 개수 +1
			toppingCnt += 1; // 버튼을 클릭하면 전체 토핑 카운트 +1
			$('#mainToppingQty' + idx).val(mainToppingQty); // 메인토핑 개수를 위에서 플러스 한 값으로 다시 세팅
			
			if(toppingCnt > 5){ // 만약 전체 토핑 카운트가 5보다 크다면
				alert("토핑은 5개까지 선택 가능합니다.");
				toppingCnt = 5; // 5 이상으로 넘어가지 않게 다시 5로 세팅
				$('#mainToppingQty' + idx).val(mainToppingQty-1); // 메인토핑 개수는 6에서 -1 한 값으로 다시 세팅
			}
			
			// 선택토핑정보 배열에 저장
			if(!selectToppingNameArr.includes(mainToppingName)){
				selectToppingNameArr.push(mainToppingName);
				selectToppingCntArr.push(mainToppingQty);
				selectToppingPriceArr.push(mainToppingPrice);
			}else{
				selectToppingCntArr.splice(selectToppingNameIdx, 1, mainToppingQty);
			}
		}
		
		function cheezeToppingQtyMinus(idx){
			var cheezeToppingQty = Number($('#cheezeToppingQty' + idx).val());
			var cheezeToppingName = $('#cheezeToppingName' + idx).val();
			var cheezeToppingPrice = Number($('#cheezeToppingPrice' + idx).val());
			var selectToppingNameIdx = selectToppingNameArr.indexOf(cheezeToppingName);
			
			cheezeToppingQty -= 1;
			$('#cheezeToppingQty' + idx).val(cheezeToppingQty);
			
			if(cheezeToppingQty == 0){
				$('#cheezeToppingQty' + idx).val(0);
				cheezeToppingQty = Number($('#cheezeToppingQty' + idx).val());
				toppingCnt -= 1;
				
				selectToppingCntArr.splice(selectToppingNameIdx, 1);
				selectToppingNameArr.splice(selectToppingNameIdx, 1);
				selectToppingPriceArr.splice(selectToppingNameIdx, 1);
			}else if(cheezeToppingQty < 0){
				$('#cheezeToppingQty' + idx).val(0);
			}else{
				toppingCnt -= 1;
				
				selectToppingCntArr.splice(selectToppingNameIdx, 1, cheezeToppingQty);
			}
			console.log(toppingCnt);
		}
		
		function cheezeToppingQtyPlus(idx){
			var cheezeToppingQty = Number($('#cheezeToppingQty' + idx).val());
			var cheezeToppingName = $('#cheezeToppingName' + idx).val();
			var cheezeToppingPrice = Number($('#cheezeToppingPrice' + idx).val());
			var selectToppingNameIdx = selectToppingNameArr.indexOf(cheezeToppingName);
			
			cheezeToppingQty += 1;
			toppingCnt += 1;
			$('#cheezeToppingQty' + idx).val(cheezeToppingQty);
			
			if(toppingCnt > 5){
				alert("토핑은 5개까지 선택 가능합니다.");
				toppingCnt = 5;
				$('#cheezeToppingQty' + idx).val(cheezeToppingQty-1);
			}
			
			if(!selectToppingNameArr.includes(cheezeToppingName)){
				selectToppingNameArr.push(cheezeToppingName);
				selectToppingCntArr.push(cheezeToppingQty);
				selectToppingPriceArr.push(cheezeToppingPrice);
			}else{
				selectToppingCntArr.splice(selectToppingNameIdx, 1, cheezeToppingQty);
				
			}
		}
		
		function afterToppingQtyMinus(idx){
			var afterToppingQty = Number($('#afterToppingQty' + idx).val());
			var afterToppingName = $('#afterToppingName' + idx).val();
			var afterToppingPrice = Number($('#afterToppingPrice' + idx).val());
			var selectToppingNameIdx = selectToppingNameArr.indexOf(afterToppingName);
			
			afterToppingQty -= 1;
			$('#afterToppingQty' + idx).val(afterToppingQty);
			
			if(afterToppingQty == 0){
				$('#afterToppingQty' + idx).val(0);
				afterToppingQty = Number($('#afterToppingQty' + idx).val());
				toppingCnt -= 1;
				
				selectToppingCntArr.splice(selectToppingNameIdx, 1);
				selectToppingNameArr.splice(selectToppingNameIdx, 1);
				selectToppingPriceArr.splice(selectToppingNameIdx, 1);
			}else if(afterToppingQty < 0){
				$('#afterToppingQty' + idx).val(0);
			}else{
				toppingCnt -= 1;
				
				selectToppingCntArr.splice(selectToppingNameIdx, 1, afterToppingQty);
			}
			console.log(toppingCnt);
		}
		
		function afterToppingQtyPlus(idx){
			var afterToppingQty = Number($('#afterToppingQty' + idx).val());
			var afterToppingName = $('#afterToppingName' + idx).val();
			var afterToppingPrice = Number($('#afterToppingPrice' + idx).val());
			var selectToppingNameIdx = selectToppingNameArr.indexOf(afterToppingName);
			
			afterToppingQty += 1;
			toppingCnt += 1;
			$('#afterToppingQty' + idx).val(afterToppingQty);
			
			if(toppingCnt > 5){
				alert("토핑은 5개까지 선택 가능합니다.");
				toppingCnt = 5;
				$('#afterToppingQty' + idx).val(afterToppingQty-1);
			}
			
			if(!selectToppingNameArr.includes(afterToppingName)){
				selectToppingNameArr.push(afterToppingName);
				selectToppingCntArr.push(afterToppingQty);
				selectToppingPriceArr.push(afterToppingPrice);
			}else{
				
				selectToppingCntArr.splice(selectToppingNameIdx, 1, afterToppingQty);
			}
		}
		
		function addGoods(){
			++goodsNextRowSeq;
			
			alert(goodsNextRowSeq);
			// 선택된 옵션 value
			var selectCtgr = $('#dsp_ctgr').val();
			var selectGoodsName = $('#goods_code').val();
			var selectDough = $('#dough').val();
			var selectSize = $('#size').val();
			var selectQty = Number($('#qty').val()); // 선택 수량
			
			var goodsPrice = 0; // 최종 선택된 제품가격 초기화
			var doughPrice = 0; // 최종 선택된 도우가격 초기화
			var totalPrice = 0; // 계산된 각 제품의 총가격 초기화
			
			var goods = ""; // 최종 선택된 제품정보 초기화
			toppingStr = ""; // 토핑 정보 초기화
			
			// 제품 추가 전 미선택 항목이 있는지 검사
			var sizeIdx = $('#size option').index($('#size option:selected'));
			var doughIdx = $('#dough option').index($('#dough option:selected'));
			var goodsCodeIdx = $('#goods_code option').index($('#goods_code option:selected'));
			var ctgrIdx = $('#dsp_ctgr option').index($('#dsp_ctgr option:selected'));

			if($('#dsp_ctgr').val() == "PIZZA"){ // 피자를 선택했을 때
				if(goodsCodeIdx == 0){
					alert("제품명을 선택하세요.");
					return false;
				}else if(doughIdx == 0){
					alert("도우를 선택하세요.");
					return false;
				}else if(sizeIdx == 0){
					alert("사이즈를 선택하세요.");
					return false;
				}
				
				// 선택된 토핑정보를 전역변수 문자열(toppingStr)에 저장
				for(var i=0; i<selectToppingNameArr.length; i++){
					toppingStr += "<br>" + "-" + selectToppingNameArr[i] + "(" + selectToppingCntArr[i] + ")";
				}
				
				goods = selectGoodsName + " " + selectDough + " " + selectSize + toppingStr;

			}else{ // 피자 외의 메뉴를 선택했을 때
				if(ctgrIdx == 0){
					alert("제품 카테고리를 선택하세요.");
					return false;
				}else if(goodsCodeIdx == 0){
					alert("제품명을 선택하세요.");
					return false;
				}
				goods = selectGoodsName;
			}
			
			// 선택한 제품의 가격 컨트롤러에서 받아오기
			$.ajax({
				url : 'getGoodsPrice.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post',
				dataType: 'json',   
				data : JSON.stringify({
					selectCtgr : selectCtgr,
					selectGoodsName : selectGoodsName,
					selectDough : selectDough,
					selectSize : selectSize,
				}),
				async : false,
				success: function(data) {
					if(data.length > 1){
						goodsPrice = Number(data[0]);
						doughPrice = Number(data[1]);
					}else{
						goodsPrice = Number(data[0]);
					}
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다.');
				}
			});
			
			// 총가격 계산
			totalPrice += (Number(goodsPrice) * Number(selectQty)) + (Number(doughPrice) * Number(selectQty));
			
			for(var i=0; i<selectToppingPriceArr.length; i++){
				totalPrice += selectToppingPriceArr[i] * selectToppingCntArr[i];
			}
			
			// DB에 제품 정보 insert
			var goodsList = document.getElementById("goods_list");
			$('#quick_goods').val(goods); // hidden에 제품명 저장
			$('#quick_qty').val(selectQty); // hidden에 제품수량 저장
			$('#quick_price').val(totalPrice); // hidden에 제품가격 저장
			
			var userid = $('#userid').val(); // 유저 아이디
			var quick_goods = $('#quick_goods').val(); // 제품명
			var quick_qty = $('#quick_qty').val(); // 제품 수량
			var quick_price = $('#quick_price').val(); // 제품 가격
			var rowseq = goodsNextRowSeq; // 제품목록 테이블 행 시퀀스
			
			$.ajax({
				url : 'insertQuickOrderGoods.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post', 
				data : JSON.stringify({
					userid : userid,
					quick_goods : quick_goods,
					quick_qty : quick_qty,
					quick_price : quick_price,
					rowseq : rowseq,
				}),
				async : false,
				success: function(data) {
					if(data == 'success'){
						// 행을 추가할 tbody
						var orderInfo = goodsList.insertRow(goodsList.rows.length);
						var goodsCell = orderInfo.insertCell(0);
						var cntCell = orderInfo.insertCell(1);
						var priceCell = orderInfo.insertCell(2);
						var delCell = orderInfo.insertCell(3);
						var goodsPriceSum = 0; // 총가격 계산을 위한 변수
						
						goodsCell.innerHTML = goods;
						cntCell.innerHTML = selectQty;
						priceCell.innerHTML = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원';
						delCell.innerHTML = '<td><a href="javascript:removeGoods(' + goodsNextRowSeq + ');" id="delBtn' + goodsNextRowSeq + '" class="btn"><span class="btn-type4-brd2">삭제</span></a></td>';
						
						
						$('#quickOrderList tbody tr').each(function(){
							var goodsTotalPriceHTML = $(this).find('td').eq(2).html();
							var goodsTotalPrice = Number(goodsTotalPriceHTML.slice(0,-1).replace(',',''));
							goodsPriceSum += goodsTotalPrice;
						});
						
						$('#totalOrderPrice').text(goodsPriceSum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					}
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
			
		}
		
		function removeGoods(idx){
			// DB에 저장된 해당 row를 삭제
			var rowseq = idx;
			var userid = $('#userid').val(); // 유저 아이디
			
			$.ajax({
				url : 'deleteQuickOrderGoods.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post', 
				data : JSON.stringify({
					userid : userid,
					rowseq : rowseq,
				}),
				async : false,
				success: function(data) {
					if(data == 'success'){
						// 제품 목록 테이블의 해당 row를 삭제
						var selectRemoveTr = $('#delBtn' + idx).closest('tr');
						var selectRemovePriceHTML = selectRemoveTr.find('td').eq(2).html();
						var selectRemovePrice = Number(selectRemovePriceHTML.slice(0,-1).replace(',',''));
						var totalOrderPriceNow = Number($('#totalOrderPrice').text().replace(',',''));
						totalOrderPriceNow -= selectRemovePrice;
						$('#totalOrderPrice').text(totalOrderPriceNow.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
						selectRemoveTr.remove();
					}
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
		}
		
		// 배달주문 or 포장주문 선택
		function select_dw(param){
			if(param == 'D'){ // 배달주문을 선택했을 때
				$('#d_orderinfo').show();
				
				$('#w_orderinfo').hide();
				$('#wrap_lately').hide();
			}else if(param == 'W'){ // 포장주문을 선택했을 때
				$('#w_orderinfo').show();
				
				$('#d_orderinfo').hide();
				$('#order_lately').hide();
			}
		}
		
		function openOrderLatelyWrap(param){
			if(param == 'D'){ // 배달주소 변경 클릭 시
				$('#order_lately').toggle();
			}else if(param == 'W'){ // 포장매장 변경 클릭 시
				$('#wrap_lately').toggle();
			}
			
		}
		
		function addDelivery(){
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
		
		function receiveDetailAddr(addr, selectStore){
			$('#detailAddrVal').val(addr);
			$('#selectStore').val(selectStore);
		}
		
		function addAddrRow(){
			++addressNextRowSeq;
			
			alert(addressNextRowSeq);
			
			// 행을 추가할 tbody
			var deliveryAddrList = document.getElementById("addr_list_o");
			var rowseq = addressNextRowSeq; // 주소 테이블 행 번호
			var address = $('#addrVal').val() + ' ' + $('#detailAddrVal').val(); // 배달 주소
			var storeName = $('#selectStore').val(); // 배달 매장명
			var userid = $('#userid').val(); // 유저 아이디
			
			// DB 테이블에 주소 정보 insert
			$.ajax({
				url : 'insertQuickOrderAddress.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post', 
				data : JSON.stringify({
					userid : userid,
					address : address,
					storeName : storeName,
					rowseq : rowseq,
				}),
				async : false,
				success: function(data) {
					if(data == 'success'){
						// 행을 추가할 tbody
						var addrInfo = deliveryAddrList.insertRow(deliveryAddrList.rows.length);
						var addrCell = addrInfo.insertCell(0);
						var storeCell = addrInfo.insertCell(1);
						var btnCell = addrInfo.insertCell(2);
						
						addrCell.innerHTML = $('#addrVal').val() +' ' + $('#detailAddrVal').val();
						storeCell.innerHTML = $('#selectStore').val();
						btnCell.innerHTML = '<div class="btn-wrap"><a href="javascript:setDelivery(' + addressNextRowSeq + ');" id="selAddrBtn' + addressNextRowSeq + '" class="btn-type4-brd3">선택</a>' + 
						'<a href="javascript:deleteDelivery(' + addressNextRowSeq + ');" id="delAddrBtn' + addressNextRowSeq + '" class="btn-type4-brd2">삭제</a></div>';
					}
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
		}
		
		function deleteDelivery(idx){
			// DB에 저장된 해당 row를 삭제
			var rowseq = idx;
			var userid = $('#userid').val(); // 유저 아이디
			
			$.ajax({
				url : 'deleteQuickOrderAddress.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post', 
				data : JSON.stringify({
					userid : userid,
					rowseq : rowseq,
				}),
				async : false,
				success: function(data) {
					if(data == 'success'){
						// 주소테이블의 해당 행을 삭제
						var selectAddrTr = $('#delAddrBtn' + idx).closest('tr');
						var selAddrCell = selectAddrTr.find('td').eq(0).html(); // 선택한 배송지 주소
						var selAddr = selAddrCell; // 선택된 매장정보
						
						if(selAddr == $('#addr_O').text()){
							$('#addr_O').text('배달주소를 선택해주세요.');
						}
						selectAddrTr.remove();
					}
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
		}
		
		function setDelivery(idx){
			// 디폴트 배달 주소로 설정
			var userid =$('#userid').val(); // 유저 아이디
			var rowseq = idx; // 주소 테이블의 rowseq
			
			// DB에 디폴트 배달주소로 설정
			$.ajax({
				url : 'setDefaultDeliveryAddress.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post', 
				data : JSON.stringify({
					userid : userid,
					rowseq : rowseq,
				}),
				async : false,
				success: function(data) {
					if(data == 'success'){
						var selectAddrTr = $('#selAddrBtn' + idx).closest('tr'); // 선택한 주소 테이블 로우
						var selAddrCell = selectAddrTr.find('td').eq(0).html(); // 배달지 주소
						var selAddr = $('#addr_O').text(selAddrCell); // 선택된 주소를 세팅
					}
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			});
		}
		
		// 포장주문 관련 함수
		function storeAddressPop(){
			window.open("openStoreAddr.do", "포장매장 선택", "top=50, left=60, width=420, height=580, directories='no', location='no', menubar='no', resizable='no', status='yes', toolbar='no'");
		}
		
		//포장매장 선택창에서 값 넘겨받기
		function receiveStoreAddr(selectStoreName){
			$('#wrapStoreName').val(selectStoreName);
			var storename = $('#wrapStoreName').val();
			
			$.ajax({
				url : 'getWrapStoreInfo.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post', 
				data : JSON.stringify({
					storename : storename,
				}),
				async : false,
				success : function(data){
					var storeInfoArr = data.split(",");
					$('#wrapStoreAddr').val(storeInfoArr[0]);
					$('#wrapStorePhone').val(storeInfoArr[1]);
					
					console.log("포장매장 주소 : " + $('#wrapStoreAddr').val());
					console.log("포장매장 전화번호 : " + $('#wrapStorePhone').val());
				},
				error : function(err){
					alert("오류");
				}
			})
		}
		
		// 포장매장 추가
		function addStoreAddrRow(){
			
			// 행을 추가할 tbody
			var storeList = document.getElementById("store_list_o");
			var rowseq = storeNextRowSeq; // 주소 테이블 행 번호
			var storename = $('#wrapStoreName').val(); // 포장 매장명
			var address = $('#wrapStoreAddr').val(); // 포장매장 주소
			var storephone = $('#wrapStorePhone').val(); // 포장매장 전화번호
			var userid = $('#userid').val(); // 유저 아이디
			
			// DB 테이블에 주소 정보 insert
			$.ajax({
				url : 'insertQuickOrderStore.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post', 
				data : JSON.stringify({
					userid : userid,
					address : address,
					storename : storename,
					storephone : storephone,
					rowseq : rowseq,
				}),
				async : false,
				success: function(data) {
					if(data == 'success'){
						// 행을 추가할 tbody
						var storeInfo = storeList.insertRow(storeList.rows.length);
						var storenameCell = storeInfo.insertCell(0);
						var storeaddrCell = storeInfo.insertCell(1);
						var btnCell = storeInfo.insertCell(2);
						
						storenameCell.innerHTML = $('#wrapStoreName').val() +' (' + $('#wrapStorePhone').val() + ')';
						storeaddrCell.innerHTML = $('#wrapStoreAddr').val();
						btnCell.innerHTML = '<div class="btn-wrap"><a href="javascript:setStore(' + storeNextRowSeq + ');" id="selStoreBtn' + storeNextRowSeq + '" class="btn-type4-brd3">선택</a>' + 
						'<a href="javascript:deleteStore(' + storeNextRowSeq + ');" id="delStoreBtn' + storeNextRowSeq + '" class="btn-type4-brd2">삭제</a></div>';
						
						++storeNextRowSeq;
					}
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
		}
		
		// 디폴트 포장매장 주소로 설정
		function setStore(idx){
			
			var userid =$('#userid').val(); // 유저 아이디
			var rowseq = idx; // 주소 테이블의 rowseq
			
			// DB에 디폴트 배달주소로 설정
			$.ajax({
				url : 'setDefaultWrapStore.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post', 
				data : JSON.stringify({
					userid : userid,
					rowseq : rowseq,
				}),
				async : false,
				success: function(data) {
					if(data == 'success'){
						var selectStoreTr = $('#selStoreBtn' + idx).closest('tr'); // 선택한 매장 테이블 로우
						var selStoreCell = selectStoreTr.find('td').eq(0).html(); // 선택한 매장명+전화번호
						var selStore = $('#store_O').text(selStoreCell.replace('&nbsp;',' ')); // 선택된 매장정보를 세팅
					}
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			});
		}
		
		// 포장매장 row 삭제
		function deleteStore(idx){
			// DB에 저장된 해당 row를 삭제
			var rowseq = idx;
			var userid = $('#userid').val(); // 유저 아이디
			
			$.ajax({
				url : 'deleteQuickOrderStore.do',
				contentType : "application/json; charset=UTF-8;",
				type: 'post', 
				data : JSON.stringify({
					userid : userid,
					rowseq : rowseq,
				}),
				async : false,
				success: function(data) {
					if(data == 'success'){
						// 주소테이블의 해당 행을 삭제
						var selectStoreTr = $('#delStoreBtn' + idx).closest('tr');
						var selStoreCell = selectStoreTr.find('td').eq(0).html(); // 선택한 매장명+전화번호
						var selStore = selStoreCell.replace('&nbsp;',' '); // 선택된 매장정보
						
						if(selStore == $('#store_O').text()){
							$('#store_O').text('포장매장을 선택해주세요.');
						}
						selectStoreTr.remove();
					}
				},
				error: function() {
					alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			})
		}
		
		function goSave(){
			alert("퀵오더가 저장되었습니다.");
			location.href="quickOrder.do";
	
		}
	</script>
</head>
<body>	
<div id="wrap">
	<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="main.do" class="btn-logo">
						<i class="ico-logo"></i>
						<h1 class="hidden">다미노피자</h1>
					</a>
					
					<c:choose>
						<c:when test="${msg != 'login' }">
							<!-- 비로그인 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> <a href="login.do">회원가입</a>
							</div>
						</c:when>
						<c:when test="${msg=='logout' }">
							<!-- 비로그인 : 추후에 Spring Security로 비로그인 유저는 아예 접근 불가 하도록 처리 -->
							<div class="util-nav">
								<a href="login.do">로그인</a> 
								<a href="login.do">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인 -->
							<div class="util-nav">
								${user.username } 님  &nbsp;
								<a href="logout.do">로그아웃</a>
								<a href="mylevel.do">나의정보</a>
								<a href="#" class="btn-cart"> <i class="ico-cart"></i> </a>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
				
			<!-- main 1dep menu -->
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
			<!-- //main 1dep menu -->
		</header><!-- //header -->
<style>
.order_adr_wrap .order_adr{display: none}
.order_adr_wrap .order_adr.open{display: block}
.order_adr_wrap .lately_adr{display: none}
.order_adr_wrap .lately_adr.active{display: block}
</style>

<!-- container -->
<div id="container">
	<form name="f" id="f" method="post" action="/quickOrder/save">
	<!-- content -->
		<section id="content">
			<div class="sub-type quick">
				<div class="inner-box">
					<div class="page-title-wrap">
						<h2 class="page-title">다미노 서비스</h2>
						<div class="depth-area">
							<ol>
								<li><a href="main.do">홈</a></li>
								<li><a href="damino.do">다미노 서비스</a></li>
								<li><strong>퀵오더</strong></li>
							</ol>
						</div>
					</div>
					<article class="quick-area">
						<div class="menu-nav-wrap">
							<div class="menu-nav">
								<ul>
									<li><a href="mania.do">매니아 혜택</a></li>
									<li><a href="quickOrder.do">퀵 오더</a></li>
									<li><a href="groupOrder.do">단체주문 서비스</a></li>
								</ul>
							</div>
						</div>
						<div class="quick-setting">
							<div class="step-wrap">
								<div class="title-wrap">
									<h3 class="title-type2">제품설정</h3>
								</div>
								<div class="form-group2">
									<div class="form-field">
										<div class="select-type type2">
											<select id="dsp_ctgr" class="" onchange="selectBoxControl()">
												<option value="">카테고리</option>
												<option value="PIZZA">피자</option>
												<option value="SIDE">사이드디시</option>
												<option value="DRINK">음료&amp;기타</option>
											</select>
										</div>
									</div>
									<div class="form-field">
										<div class="select-type type2 v2">
											<select class="" id="goods_code" onchange="getPizzaDough()">
												<option value="">제품</option>
											</select>
										</div>
									</div>
									<div class="form-field pizza_option">
										<div class="select-type type2">
											<select class="pizza_option" id="dough" onchange="getSize()">
												<option value="">도우</option>
											</select>
										</div>
									</div>
									<div class="form-field pizza_option">
										<div class="select-type type2">
											<select class="pizza_option" id="size" onchange="toppingShowOrHide()">
												<option value="">사이즈</option>
											</select>
										</div>
									</div>
									<div class="form-field">
										<div class="quantity-box v2">
											<button type="button" class="btn-minus goods" onclick="qtyMinus()"></button>
											<input type="number" class="opt_qty" value="1" id="qty" max="9">
											<button type="button" class="btn-plus goods" onclick="qtyPlus()"></button>
										</div>
									</div>
									<a href="javascript:addGoods();" class="btn-type-brd"><i class="ico-plus"></i>제품 추가하기</a>
								</div>
								<div class="topping-wrap topping">
									<div class="topping-menu close topping" onclick="javascript:addTopping();">
										<a href="#" class="btn-toggle-close">
											토핑 추가하기
											<span class="hidden">열기</span>
										</a>
									</div>
									<div class="js_toggle_box close">
										<div class="title-wrap">
											<div class="text-type3">
												* 토핑추가는 피자 한판 당 5개까지 추가 가능
											</div>
											<div class="notice-text side">
												<a href="javascript:UI.layerPopUp({selId:'#pop-allergy2'})">토핑 알레르기 유발성분</a>
											</div>
										</div>
										<div class="tab-type js_tab">
											<ul>
												<li class="active"><a href="#topping1">메인</a></li>
												<li><a href="#topping2">치즈</a></li>
												<li><a href="#topping3">애프터</a></li>
											</ul>
										</div>
										
										<div id="allQuickToppingLayer">
											<div id="topping1" class="tab-content active">
											<div class="menu-list-v2">
												<ul>
													<c:forEach var="mainToppingList" items="${mainToppingList}" varStatus="status">
													<li>
														<div class="prd-img">
															<img class="lazyload"
															src="<c:url value= '/resources/images/admin/goods/${mainToppingList.t_image}'/>"
															data-src="<c:url value= '/resources/images/admin/goods/${mainToppingList.t_image}'
															 />" />
														</div>
						
														<div class="prd-cont">
															<div class="subject">${mainToppingList.t_name}</div>
															<div class="price-box">
																<strong><fmt:formatNumber value="${mainToppingList.t_price}" pattern="#,###" />원</strong>
															</div>
							
														<div class="quantity-box">
															<button type="button" class="btn-minus topping" onclick="mainToppingQtyMinus(${status.index})"></button>
															<input class="setNum" type="number" id="mainToppingQty${status.index }" value="0" readonly="">
															<input class="setName" type="hidden" id="mainToppingName${status.index }" value="${mainToppingList.t_name}">
															<input class="setCode" type="hidden" id="mainToppingCode${status.index }" value="${mainToppingList.t_code}">
															<input class="setPrice" type="hidden" id="mainToppingPrice${status.index }" value="${mainToppingList.t_price}">
															<button type="button" class="btn-plus topping" onclick="mainToppingQtyPlus(${status.index})"></button>
														</div>
														</div>
													</li>
													</c:forEach>
				 							</ul>	
										</div>
									</div>
		
									<div id="topping2" class="tab-content">
										<div class="menu-list-v2">
											<ul>
												<c:forEach var="cheezeToppingList" items="${cheezeToppingList}" varStatus="status">
												<li>
													<div class="prd-img">
														<img class="lazyload" 
														src="<c:url value= '/resources/images/admin/goods/${cheezeToppingList.t_image}'/>"
														data-src="<c:url value= '/resources/images/admin/goods/${cheezeToppingList.t_image}'/>">
													</div>
							
													<div class="prd-cont">
														<div class="subject">${cheezeToppingList.t_name}</div>
															<div class="price-box">
																<strong><fmt:formatNumber value="${cheezeToppingList.t_price}" pattern="#,###" />원</strong>
															</div>
							
														<div class="quantity-box">
															<button type="button" class="btn-minus topping" onclick="cheezeToppingQtyMinus(${status.index})"></button>
															<input class="setNum" type="number" id="cheezeToppingQty${status.index }" value="0" readonly="">
															<input class="setName" type="hidden" id="cheezeToppingName${status.index }" value="${cheezeToppingList.t_name}">
															<input class="setCode" type="hidden" id="cheezeToppingCode${status.index }" value="${cheezeToppingList.t_code}">
															<input class="setPrice" type="hidden" id="cheezeToppingPrice${status.index }" value="${cheezeToppingList.t_price}">
															<button type="button" class="btn-plus topping" onclick="cheezeToppingQtyPlus(${status.index})"></button>
														</div>
													</div>
												</li>
												</c:forEach>
				 							</ul>	
										</div>
									</div> 
			
									<div id="topping3" class="tab-content">
										<div class="menu-list-v2">
											<ul>
												<c:forEach var="afterToppingList" items="${afterToppingList}" varStatus="status">
												<li>
													<div class="prd-img">
														<img class="lazyload" 
														src="<c:url value= '/resources/images/admin/goods/${afterToppingList.t_image}'/>"
														data-src="<c:url value= '/resources/images/admin/goods/${afterToppingList.t_image}'/>">
													</div>
						
													<div class="prd-cont">
														<div class="subject">${afterToppingList.t_name}</div>
														<div class="price-box">
															<strong><fmt:formatNumber value="${afterToppingList.t_price}" pattern="#,###" />원</strong>
														</div>
														
														<div class="quantity-box">
															<button type="button" class="btn-minus topping" onclick="afterToppingQtyMinus(${status.index})"></button>
															<input class="setNum" type="number" id="afterToppingQty${status.index }" value="0" readonly="">
															<input class="setName" type="hidden" id="afterToppingName${status.index }" value="${afterToppingList.t_name}">
															<input class="setCode" type="hidden" id="afterToppingCode${status.index }" value="${afterToppingList.t_code}">
															<input class="setPrice" type="hidden" id="afterToppingPrice${status.index }" value="${afterToppingList.t_price}">
															<button type="button" class="btn-plus topping" onclick="afterToppingQtyPlus(${status.index})"></button>
														</div>
													</div>
												</li>
												</c:forEach>
				 							</ul>	
										</div>
									</div> 		
										</div>
									</div>
								</div>
								<div class="table-type3">
									<input type="hidden" id="quick_goods" name="quick_goods" value=""/>
									<input type="hidden" id="quick_qty" name="quick_qty" value=""/>
									<input type="hidden" id="quick_price" name="quick_price" value="" />
									<input type="hidden" id="rowseq" name="rowseq" value="" />
									<input type="hidden" id="userid" name="userid" value="${userid}" />
									<input type="hidden" id="totalDBGoodsPrice" value="0" />
									<input type="hidden" id="goodsNextRowSeq" value="${goodsNextRowSeq }" />
									
									<table id="quickOrderList">
										<caption>제품설정</caption>
										<colgroup>
											<col style="width:420px">
											<col style="width:250px">
											<col style="width:265px">
											<col style="width:264px">
										</colgroup>
										<thead>
											<tr>
												<th>주문제품</th>
												<th>수량</th>
												<th>가격</th>
												<th>수정</th>
											</tr>
										</thead>
										<tbody id="goods_list">
											<c:forEach var="goods" items="${quickOrderGoodsList }">
											<tr>
												<td>${goods.quick_goods }</td>
												<td>${goods.quick_qty }</td>
												<td><fmt:formatNumber value="${goods.quick_price }" pattern="#,###" />원</td>
												<td>
													<a href="javascript:removeGoods(${goods.rowseq });" id="delBtn${goods.rowseq }" class="btn">
													<span class="btn-type4-brd2">삭제</span></a>
												</td>
											</tr>
											</c:forEach>
										</tbody>
										<tfoot>
											<tr>
												<td colspan="4">총 주문 금액 <em id="totalOrderPrice">0</em>원</td>
											</tr>
										</tfoot>
									</table>
								
								</div>
							</div>
							<div class="step-wrap">
								<div class="title-wrap">
									<h3 class="title-type2">배송방법 및 배송지/매장 설정</h3>
								</div>
								
								<div class="form">
									<div class="chk-box">
										<input type="radio" name="order_gubun" value="O" id="order_deli" onclick="select_dw('D');" checked>
										<label class="checkbox" for="order_deli"></label>
										<label for="order_deli">배달주문</label>
									</div>
									<div class="chk-box">
										<input type="radio" name="order_gubun" value="W" id="order_visit" onclick="select_dw('W');">
										<label class="checkbox" for="order_visit"></label>
										<label for="order_visit">방문포장</label>
									</div>
								</div>
								
								<div class="toggle-wrap">
									<div class="toggle-menu">
										<div class="order_adr_wrap">
											<div id="d_orderinfo" class="order_adr open">
													<div class="menu-wrap close">
														<dl>
															<dt>배달주소</dt>
															<c:choose>
																<c:when test="${defaultAddress eq null }">
																	<dd id="addr_O">배달주소를 선택해주세요.</dd>
																</c:when>
																<c:otherwise>
																	<dd id="addr_O">${defaultAddress.address }</dd>
																</c:otherwise>
															</c:choose>
														</dl>
														<a href="javascript:;" class="btn-toggle-close" onclick="openOrderLatelyWrap('D');">
															배달주소 변경
															<span class="hidden">열기</span>
														</a>
													</div>
												</div>
												<div id="w_orderinfo" class="order_adr order_adr_none">
													<div class="menu-wrap close">
														<dl>
															<dt>포장매장</dt>
															<c:choose>
																<c:when test="${defaultStore eq null }">
																	<dd id="store_O">포장매장을 선택해주세요.</dd>
																</c:when>
																<c:otherwise>
																	<dd id="store_O">${defaultStore.storename }&nbsp;&#40;${defaultStore.storephone }&#41;</dd>
																</c:otherwise>
															</c:choose>
														</dl>
														<a href="javascript:;" class="btn-toggle-close" onclick="openOrderLatelyWrap('W');">
															포장매장 변경
															<span class="hidden">열기</span>
														</a>
													</div>
												</div>
												<div class="js_toggle_box1 close">
												<div class="table-type2">
													<div class="order_lately_wrap">
														<!--배달주문-->
														<div id="order_lately" class="order_lately lately_adr">
															<input type="hidden" id="addrVal" value="" />
															<input type="hidden" id="detailAddrVal" value="" />
															<input type="hidden" id="guVal" value="" />
															<input type="hidden" id="selectStore" value="" />
															<input type="hidden" id="addressNextRowSeq" value="${addressNextRowSeq }" />
															<table>
																<caption>배송방법 및 배송지/매장 설정</caption>
																<colgroup>
																	<col style="width:530px">
																	<col style="width:370px">
																	<col>
																</colgroup>
																<thead>
																	<tr>
																		<th>최근 배송지</th>
																		<th>배달매장</th>
																		<th></th>
																	</tr>
																</thead>
																<tbody id="addr_list_o">
																<c:forEach var="address" items="${quickOrderAddressList }">
																	<tr>
																		<td>${address.address }</td>
																		<td>${address.storename }</td>
																		<td>
																			<div class="btn-wrap">
																			<a href="javascript:setDelivery(${address.rowseq });" id="selAddrBtn${address.rowseq }" class="btn-type4-brd3">선택</a>
																			<a href="javascript:deleteDelivery(${address.rowseq });" id="delAddrBtn${address.rowseq }" class="btn-type4-brd2">삭제</a></div>
																		</td>
																	</tr>
																</c:forEach>
																</tbody>
																<tfoot>
																	<tr>
																		<td colspan="3">
																			<a href="javascript:addDelivery();" class="btn-type-brd">
																				<i class="ico-plus"></i>신규 배송지 등록
																			</a>
																		</td>
																	</tr>
																</tfoot>
															</table>
														</div>
														<!--//배달주문-->
															
														<!--방문포장-->
														<div id="wrap_lately" class="order_lately lately_adr">
															<!-- hidden 영역 -->
															<input type="hidden" id="wrapStoreName" value="" />
															<input type="hidden" id="wrapStoreAddr" value="" />
															<input type="hidden" id="wrapStorePhone" value="" />
															<input type="hidden" id="storeNextRowSeq" value="${storeNextRowSeq }" />
															<table>
																<caption>배송방법 및 배송지/매장 설정</caption>
																<colgroup>
																	<col style="width:395px">
																	<col style="width:420px">
																	<col>
																</colgroup>
																<thead>
																	<tr>
																		<th>매장명</th>
																		<th>매장정보</th>
																		<th></th>
																	</tr>
																</thead>
																<tbody id="store_list_o">
																<c:forEach var="store" items="${quickOrderStoreList }">
																	<tr>
																		<td>${store.storename }&nbsp;&#40;${store.storephone }&#41;</td>
																		<td>${store.storeaddr }</td>
																		<td>
																			<div class="btn-wrap">
																			<a href="javascript:setStore(${store.rowseq });" id="selStoreBtn${store.rowseq }" class="btn-type4-brd3">선택</a>
																			<a href="javascript:deleteStore(${store.rowseq });" id="delStoreBtn${store.rowseq }" class="btn-type4-brd2">삭제</a></div>
																		</td>
																	</tr>
																</c:forEach>
																</tbody>
																<tfoot>
																	<tr>
																		<td colspan="3">
																			<a href="javascript:storeAddressPop();" class="btn-type-brd">
																				<i class="ico-plus"></i>포장매장 등록
																			</a>
																		</td>
																	</tr>
																</tfoot>
															</table>
														</div>
														<!--//방문포장-->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="text-type2">
									<p>- 추가하신 제품 중 내맘대로 피자/반값/특가/세트제품은 제외됩니다.</p>
								</div>
							</div>
							<div class="btn-wrap">
								<a href="index" class="btn-type-brd3">취소</a>
								<a href="javascript:goSave();" class="btn-type v3">저장</a>
							</div>
						</div>
					</article>
				</div>
			</div>
			<div class="pop-layer" id="pop-allergy2">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title">토핑 알레르기 유발성분</h2>
        </div>
        <div class="pop-content">
            <div class="allergy_guide">
                <p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와 같이 제품별 상세 내용을 표기하여 안내해드립니다.<br>(괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발 가능식품)</p>
                <dl>
                    <dt>* 알레르기 유발 가능 식품 : </dt>
                    <dd>토마토, 아황산류(이를 첨가하여 최종제품에 SO2로 10mg/kg 이상 함유한 경우에 한한다), 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합 포함)</dd>
                </dl>
            </div>
            <div class="table-type v2">
                <table class="tbl_type">
                    <caption>유발성분 표</caption>
                    <colgroup>
                        <col width="5%">
                        <col width="25%">
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>NO</th>
                        <th>토핑</th>
                        <th>알레르기 유발성분 표기</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
							<td>1</td>
							<td>치즈류</td>
							<td>우유</td>
						</tr>
						<tr>
							<td>2</td>
							<td>베이컨</td>
							<td>돼지고기</td>
						</tr>
						<tr>
							<td>3</td>
							<td>페퍼로니</td>
							<td>돼지고기, 쇠고기</td>
						</tr>
						<tr>
							<td>4</td>
							<td>감자</td>
							<td>대두, 이산화황</td>
						</tr>
						<tr>
							<td>5</td>
							<td>햄</td>
							<td>돼지고기, 쇠고기, 대두, 계란</td>
						</tr>
						<tr>
							<td>6</td>
							<td>불고기</td>
							<td>쇠고기,대두,밀,아황산류</td>
						</tr>
						<tr>
							<td>7</td>
							<td>로스트 포테이토</td>
							<td>대두</td>
						</tr>
						<tr>
							<td>8</td>
							<td>포크 </td>
							<td>돼지고기,쇠고기,대두,밀,계란</td>
						</tr>
						<tr>
							<td>9</td>
							<td>호스래디시 소스</td>
							<td>계란,우유,대두</td>
						</tr>
						<tr>
							<td>10</td>
							<td>베이컨칩</td>
							<td>돼지고기</td>
						</tr>
						<tr>
							<td>11</td>
							<td>선드라이 토마토</td>
							<td>토마토</td>
						</tr>
						<tr>
							<td>12</td>
							<td>마요네즈</td>
							<td>난류,대두</td>
						</tr>
						<tr>
							<td>13</td>
							<td>갈릭올리브믹스</td>
							<td>계란,우유,대두</td>
						</tr>
						<tr>
							<td>14</td>
							<td>케이준새우살 </td>
							<td>케이준소스(대두,토마토,닭고기,조개류(굴)),새우(새우)</td>
						</tr>
						<tr>
							<td>15</td>
							<td>새송이 버섯</td>
							<td>대두</td>
						</tr>
						<tr>
							<td>16</td>
							<td>와규 크럼블</td>
							<td>쇠고기,대두,밀</td>
						</tr>
						<tr>
							<td>17</td>
							<td>비스테카 스테이크</td>
							<td>쇠고기,밀,대두,토마토</td>
						</tr>	
						<tr>
							<td>18</td>
							<td>그릴드비프</td>
							<td>쇠고기,대두,밀</td>
						</tr>		
						<tr>
							<td>19</td>
							<td>블랙타이거 슈림프</td>
							<td>새우</td>
						</tr>
						<tr>
							<td>20</td>
							<td>블랙앵거스 비프</td>
							<td>쇠고기, 대두, 밀, 계란</td>
						</tr>
						<tr>
							<td>21</td>
							<td>랍스터살</td>
							<td></td>
						</tr>
						<tr>
							<td>22</td>
							<td>고구마 무스</td>
							<td>계란,우유,대두,밀</td>
						</tr>
						<tr>
							<td>23</td>
							<td>고구마 큐브</td>
							<td></td>
						</tr>
						<tr>
							<td>24</td>
							<td>New 고구마 무스</td>
							<td>계란,우유,대두,밀</td>
						</tr>
						<tr>
							<td>25</td>
							<td>머쉬룸</td>
							<td></td>
						</tr>
						<tr>
							<td>26</td>
							<td>이베리코 스테이크</td>
							<td>돼지고기,대두,밀</td>
						</tr>
						<tr>
							<td>27</td>
							<td>통새우</td>
							<td>새우</td>
						</tr>
						<tr>
							<td>28</td>
							<td>문어</td>
							<td>대두,밀,우유,새우,쇠고기,조개류</td>
						</tr>					
						<tr>
							<td>29</td>
							<td>비프 스테이크</td>
							<td>대두,밀,토마토,쇠고기</td>
						</tr>
						<tr>
							<td>30</td>
							<td>BBQ포크</td>
							<td>대두,밀,토마토,돼지고기,쇠고기</td>
						</tr>
						<tr>
							<td>31</td>
							<td>호스래디시 스퀴드</td>
							<td>오징어, 계란, 우유, 대두</td>
						</tr>
						<tr>
							<td>32</td>
							<td>스위트 칠리크랩</td>
							<td>게, 대두, 밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)</td>
						</tr>
						<tr>
							<td>33</td>
							<td>오리엔탈 통새우</td>
							<td>새우, 우유, 대두, 밀, 토마토, 닭고기, 쇠고기, 조개류(굴)</td>
						</tr>
                    </tbody>
                </table>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div></section>
	</form>
	<!-- //content -->
</div>
<!-- //container -->

<div class="map-area" id="map_detail_canvas" style="display:none">
				
</div>

<!-- 팝업 배달주소조회  -->
<div class="pop-layer" id="pop-address">
</div>
<!--// 팝업 배달주소조회  -->

<!-- 팝업 배달주소등록  -->
<div class="pop-layer" id="pop-address3">
</div>	
<!--// 팝업 배달주소등록  -->
<!-- 팝업 포장매장등록   -->
<div class="pop-layer" id="pop-store-takeout">
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
						<li><a href="law.do">이용약관</a></li>
						<li class="on"><a href="privacy.do">개인정보처리방침</a></li>
						<li><a href="faqMain.do">고객센터</a></li>
						<li><a href="groupOrder.do">단체주문</a></li>
				</ul>
	
				<div class="footer-info">
               		<p>03138 서울특별시 중구 돈화문로 26 단성골드빌딩 KG아이티뱅크｜대표이사 : 오수현, 강수현, 정민균, 정민식, 김진혁</p>
               		<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이승재</p>
               		<p>문의 : admin@daminos.co.kr</p>
               		<p>Copyright ⓒ Damino’s Pizza. All rights reserved.</p>

               		<p class="notice">KG아이티뱅크의 사전 서면동의 없이 다미노 피자(PC, 모바일, 앱)의 일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
              	</div>
	
				<div class="footer-cont">
				
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
</div><!-- //wrap -->
</body>
</html>