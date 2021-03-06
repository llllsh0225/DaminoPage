<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>다미노피자 - 매장관리자 로그인</title>
<link href="<c:url value='/resources/css/admin/styles.css' />" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
	crossorigin="anonymous"></script>
<script>
window.onload = function(){
	if(${msg eq 'loginfail'}){
		alert("아이디 또는 비밀번호가 일치하지 않습니다.");
	}
}

function inputCheck(){
	if($('#managerid').val() == ""){
		alert("아이디를 입력해주세요.");
		return false;
	}else if($('#managerpasswd').val() == ""){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
	return true;
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
									<h3 class="text-center font-weight-light my-4">Store Manager Login</h3>
								</div>
								<div class="card-body">
									<form action="managerLoginCheck.smdo" method="post" onsubmit="return inputCheck();">
										<div class="form-group">
											<label class="small mb-1" for="inputStoreManagerId">ID</label>
											<input class="form-control py-4" id="managerid"
												type="text" placeholder="Enter ID" name="managerid"/>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputStoreManagerPassword">Password</label>
											<input class="form-control py-4"
												id="managerpasswd" type="password"
												placeholder="Enter password" name="managerpasswd"/>
										</div>
										<div
											class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											<a class="small" href="passwordChange.smdo">비밀번호 찾기</a> 
											<input type="submit" id="loginbtn" class="btn btn-primary" value="로그인" />
										</div>
									</form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="managerRegister.smdo">매장관리자 계정 등록</a>
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
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; DaminoPizza 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/resources/js/admin/scripts.js'/>"></script>
</body>
</html>
