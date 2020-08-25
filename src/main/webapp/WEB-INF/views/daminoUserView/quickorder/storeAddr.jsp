<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>퀵 오더 설정- 다미노피자</title>
	
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

	<script type="text/javascript">
		function getRegionList(callBackFunc) {
			
			var target = document.getElementById("storeName");
			var storeRegion = $("#storeRegion").val();
				
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
							 console.log(target);
							
							$('#storeName').html(target);
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
		
		function sendStoreAddrInfo(){
			var selectStoreName = $('#storeName').val();
			opener.receiveStoreAddr(selectStoreName);
			opener.addStoreAddrRow();
			close();
		}
		
	</script>
</head>
<body>
	<div id="wrap" style="width:400px; height:600;">
		<form>
			<input type="hidden" id="storeNameList" value="${storeNameList }" />
			<input type="hidden" id="userid" name="userid" value="${sessionScope.userid }"/>
			<h3 class="title-type2" style="text-align:center; margin-top:50px; margin-bottom:20px;">1. 구를 선택해주세요.</h3>
			<select id="storeRegion" name="storeRegion" onchange="getRegionList()" style="margin-left:10px; text-align:center; margin-top:20px; margin-bottom:20px;">
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
				<option value="중구" selected>중구</option>
				<option value="중랑구">중랑구</option>
			</select>
			
			<h3 class="title-type2" style="text-align:center; margin-top:80px; margin-bottom:20px;">2. 포장매장을 선택해주세요.</h3>
			<select id="storeName" name="storename" style="margin-left:10px; margin-right:10px; margin-bottom:50px;">
				<option value="">지역을 선택해주세요</option>
				<option value="명동점">명동점</option>
				<option value="신당점">신당점</option>
			</select>
			<a href="javascript:sendStoreAddrInfo();" class="btn-type5" style="margin-left:130px; margin-bottom:50px;">정보 입력</a>
		</form>
	</div>
</body>
</html>
