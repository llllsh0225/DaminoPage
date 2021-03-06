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
		window.onload = function(){
			var target = document.getElementById("selDeliveryStore");
			
			var storeNameList = $('#storeNameList').val();
			storeNameList = storeNameList.substring(1, storeNameList.length-1);
			var storeNameListArr = storeNameList.split(", ");
			for(var i=0; i<storeNameListArr.length; i++){
				 target += ('<option value="'+ storeNameListArr[i] +'">'+ storeNameListArr[i] + '</option>');
			}
			$('#selDeliveryStore').html(target);
		}
		
		function sendDetailAddrInfo(){
			var detailAddr = $('#detailAddr').val();
			var selectStore = $('#selDeliveryStore').val();
			opener.receiveDetailAddr(detailAddr, selectStore);
			opener.addAddrRow();
			close();
		}
	</script>
</head>
<body>
	<div id="wrap" style="width:400px; height:600;">
		<form>
			<input type="hidden" id="storeNameList" value="${storeNameList }" />
			<h3 class="title-type2" style="text-align:center; margin-top:50px; margin-bottom:20px;">1. 상세주소를 입력해주세요.</h3>
			<input type="text" id="detailAddr" name="detailAddr" size="30" style="margin-left:10px; margin-right:10px; margin-bottom:30px;"/>

			<h3 class="title-type2" style="text-align:center; margin-top:80px; margin-bottom:20px;">2. 배달매장을 선택해주세요.</h3>
			<select id="selDeliveryStore" style="margin-left:10px; margin-right:10px; margin-bottom:50px;">
			</select>
			<a href="javascript:sendDetailAddrInfo();" class="btn-type5" style="margin-left:130px; margin-bottom:50px;">정보 입력</a>
		</form>
	</div>
</body>
</html>
