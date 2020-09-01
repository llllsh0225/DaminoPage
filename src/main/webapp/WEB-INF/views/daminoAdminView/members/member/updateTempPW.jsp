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
		// -- id --
		if($("#adminid").val() == ""){
			$("#id_alert").text("아이디를 입력해주세요..");
			$("#id_alert").show();
			$("#id_alert").focus();
			return false;
		} else {
			$("#id_alert").hide();
		}
		
		var code = "0000";
		var reset = "reset";
		
		// -- code --
		if ($("#adminCode").val() == reset) {
			alert(code + " 초기화 비번으로 설정되었습니다.\n 비밀번호를 수정해주세요. ");
		} else {
			$('#code_alert').text("코드가 일치하지 않습니다");
			$('#code_alert').show();
			$("#adminCode").focus();
			return false;
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
									<section id="container">
									<form action="changeTempPw.admdo" method="POST" onsubmit="return ad_checks()">
										<div class="form-group">
											<label class="small mb-1" for="inputAdminID">ID</label> 
											<input class="form-control py-4" id="adminid" name="adminid" type="text" placeholder="Enter ID" />
											<div class="text-type4" id="id_alert" style="display: none;"></div>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="AdminCode">코드</label> 
											<input class="form-control py-4" id="adminCode" name="adminCode" type="text" placeholder="Code" maxlength="5" />
											<input type="hidden" name="resetcode" value="0000"/>
											<div class="text-type4" id="code_alert" style="display: none;"></div>
										</div>
										<div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											<a class="small" href="login.admdo">로그인 페이지 이동</a>
											<button class="btn btn-primary" type="submit" id="submit">비밀번호 수정</button>
										</div>
									</form>
									</section>
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
