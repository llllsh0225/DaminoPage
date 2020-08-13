<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Damino Administration</title>
<!-- link - css -->
<link rel="stylesheet" type="text/css" 
	href="<c:url value='/resources/css/admin/styles.css' />">
<link rel="stylesheet" type="text/css" 
	href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css'/>" crossorigin="anonymous" />
<style>
.text-type4 {
	color: #ff143c;
	font-size: 13px;
	line-height: 1;
}
</style>

<script type="text/javascript" 
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>" crossorigin="anonymous">
</script>

<script>
	//
	// -- 공백 검사 --
	function ad_checks(){		
		// -- 이전pw --
		if($("#prePW").val() == ""){
			alert("이전 비밀번호 칸이 비어있습니다.");
			$("#prePW").focus();
			return false;
		}else if($("#prePW").val() != "0000" ){
			alert("초기화된 비밀번호 로 입력해주세요.");
			$("#prePW").focus();
			return false;
		}
		
		// -- 새 pw --
		if($("#newPW").val() == ""){
			alert("새 비밀번호 칸이 비어있습니다.");
			$("#newPW").focus();
			return false;
		}
		
		// -- 새 비번과 이전비번 일치불일치.
		if($("#newPW").val() == $("#prePW").val()){
			alert("이전과 새 비밀번호가 같습니다.\n 서로 다르게 해주세요.");
			$("#newPW").focus();
			return false;
		}
		
	}
	
	function updateAdmin(){
		if(ad_checks() == false){
			alert("다시 작성해주세요");
		}else{
			alert('비밀번호가 변경되었습니다.');
			document.changePW.action='changeNewPW.admdo';
			document.changePW.submit();
		}
		
	}
	
	
	
	
</script>

</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">회원 비번 수정</h3>
								</div>
								<div class="card-body">
									<div class="small mb-3 text-muted">* 아이디를 입력하고 받으신 코드를 입력하세요.</div>
									<div class="small mb-3 text-muted">** 임시비밀번호로 저장됩니다.</div>
									<c:if test="${msg=='changepw'}">
										<script>
											alert(" -- 초기화 비밀번호 로그인 입니다. --\ -- 비밀번호를 수정해주세요 -- ");
										</script>
									</c:if>
									<section id="container">
									<form name="changePW" id="changePW" method="POST" onsubmit="return ad_checks()">
										<div class="form-group">
											<label class="small mb-1" for="inputAdminID">ID</label> 
											<input class="form-control py-4" id="adminid" type="text" value="${sessionScope.adminid}" disabled="disabled" /> <!-- ????????? -->
											<input type="hidden" name="adminid" value="${sessionScope.adminid }"/>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputAdminPassword">현재 Password</label>
											<input class="form-control py-4" id="prePW" name="prepassword" type="password" value="" placeholder="Enter password" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputAdminPassword">수정 Password</label>
											<input class="form-control py-4" id="newPW" name="adminpassword" type="password" value="" placeholder="Enter password" />
										</div>
										<div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											<input type="button" class="btn-primary" value="비밀번호 수정" onclick="updateAdmin()"/>
										</div>
									</form>
									</section>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a class="small" href="main.admdo">메인페이지</a> 
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Damino Pizza 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms &amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="<c:url value='https://code.jquery.com/jquery-3.5.1.min.js'/>" crossorigin="anonymous"></script>
	<script src="<c:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js'/>" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/admin/scripts.js'/>"></script>
</body>
</html>
