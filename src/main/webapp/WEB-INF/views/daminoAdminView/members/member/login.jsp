<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />

<title>Page Title - SB Admin</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/admin/styles.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css'/>"
	crossorigin="anonymous" />
	
<style>
.text-type4 {
	color: #ff143c;
	font-size: 13px;
	line-height: 1;
}
</style>

<script type="text/javascript"
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>"
	crossorigin="anonymous"></script>
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
									<h3 class="text-center font-weight-light my-4">admin
										Manager</h3>
								</div>
								<div class="card-body">
									<form id="adminlogin" name="adminlogin"
										action="adminloginCheck.admdo" method="post">
										<div class="form-group">
											<label class="small mb-1" for="inputAdminId">ID</label> 
											<input class="form-control py-4" id="adminid" name="adminid" type="text" placeholder="Enter ID" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputAdminPassword">Password</label>
											<input class="form-control py-4" id="adminpassword" name="adminpassword" type="password" placeholder="Enter password" />
										</div>
										<c:if test="${msg=='change' }">
											<script>
												alert(" -- 비밀번호가 수정되었습니다. --");
											</script>
										</c:if>
										<c:if test="${msg=='fail'}">
											<script>
												alert(" -- 관리자 로그인 실패 -- ");
											</script>
											<div class="text-type4" id="idpwcheck">
												아이디 또는 비밀번호를 다시 확인해주시길바랍바니다.
											</div>
										</c:if>
										<!-- 비밀번호 저장 -->
										<!--  
										<div class="form-group">
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input"
													id="rememberPasswordCheck" type="checkbox" /> 
												<label class="custom-control-label" for="rememberPasswordCheck">비밀번호 저장</label>
											</div>
										</div>
										-->
										<div
											class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											<a class="small" href="updateTempPW.admdo">비밀번호 찾기</a> 
											<input type="submit" id="loginbtn" class="btn btn-primary" value="로그인" />
											<!--  
											<a class="btn btn-primary" href="login.admdo">Login</a>
											-->
										</div>
									</form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="regForm.admdo">관리자 계정 등록</a>
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
						<div class="text-muted">Copyright &copy; Damino Pizza 2020</div>
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
	<script src="js/scripts.js"></script>
</body>
</html>
