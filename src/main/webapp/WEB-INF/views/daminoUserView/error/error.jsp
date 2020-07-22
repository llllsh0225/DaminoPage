<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

<title>DOMINO</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/font.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/user/sub.css' />">

</head>
<body>
	<!-- wrap  -->
	<div class="wrap">
		<!-- header -->
		<div id="container">
			<section id="content">
				<div class="error-wrap">
					<div class="error-inner">
						<div class="logo">
							<a href="main.do"> <i class="ico-domions"></i>
							</a>
						</div>
						<i class="ico-emoji1"></i> <strong class="title-type7">죄송합니다<br>요청하신
							페이지를 찾을 수 없습니다.
						</strong>
						<div class="sub-type3">현재 페이지가 존재하지 않거나, 이용할 수 없는 페이지 입니다.</div>
						<div class="btn-wrap">
							<a href="javascript:history.back(-1);" class="btn-type v4">이전
								페이지로 이동</a>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- //container -->
	</div>
	<!-- //wrap  -->
</body>
</html>

