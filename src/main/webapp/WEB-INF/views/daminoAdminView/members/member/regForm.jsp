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
	crossorigin="anonymous">
	
</script>


<script>
function registCheckValChange() {
	$('#registCheck').val("N"); //등록체크 거름망
}

//amdinid 중복체크
function idCheck() {
	var adminid = $("#adminid").val();

	$.ajax({
		url : "adminidCheck.do",
		type : "POST",
		contentType : "application/json; charset=UTF-8;",
		dataType : "json",
		data : JSON.stringify({
			adminid : adminid,
		}),
		success : function(data) {
			if (data > 0) {
				alert("아이디 중복");
				$('#id_alert').text("이미 사용중인 아이디입니다.");
				$('#id_alert').show();
			} else {
				$('#registCheck').val("Y");
				alert("사용가능");
				$('#id_alert').text("사용가능 아이디입니다.");
				$('#id_alert').show();
			}
		},
		error : function(err) {
			alert("실패!");
		}
	});
}

//공백확인
//id
	function ad_checks() {
		if ($("#adminid").val() == "") {
			$('#id_alert').text("아이디를 입력해주세요.");
			$('#id_alert').show();
			$("#adminid").focus();
			return false;
		} else {
			$('#id_alert').hide();
		}
		//pw	
		if ($("#adminpassword").val() == "") {
			$('#pw_alert').text("비밀번호를 입력해주세요.");
			$('#pw_alert').show();
			$("#adminpassword").focus();
			return false;
		} else {
			$('#pw_alert').hide();
		}
		//pw확인	
		if ($("#adminConfirmpassword").val() == "") {
			$('#pwc_alert').text("비밀번호를 입력해주세요.");
			$('#pwc_alert').show();
			$("#adminConfirmpassword").focus();
			return false;
		} else {
			$('#pwc_alert').hide();
		}
		//pw 일치 불일치
		if ($("#adminpassword").val() != $("#adminConfirmpassword").val()) {
			$('#pwc_alert').text("비밀번호가 일치하지 않습니다");
			$('#pwc_alert').show();
			$('#adminConfirmpassword').val("");
			$("#adminConfirmpassword").focus();
			return false;
		} else {
			$('#pwc_alert').hide();
		}
		//코드 확인
		var code = "GoodDamino";
		

		if($('#registCheck').val()== "Y") {
			if ($("#adminCode").val() == code) {
				alert($("#adminid").val() + "님이 \n 새로운 관리자로 등록되었습니다. ");
			} else {
				alert("확인 코드가 잘못 입력되어있습니다.");
				$("#adminCode").focus();
				return false;
			}
		}else{
			alert("중복검사를 실시하여 주세요.");
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
						<div class="col-lg-7">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">관리자 계정 등록</h3>
								</div>
								<div class="card-body">
									<section id="container">
										<form action="registAdminMember.admdo" method="POST"
											onsubmit="return ad_checks()">
											<!--.admdo로 가기전 유효성 검사 -->
											<input type="hidden" name="registCheck" id="registCheck"
												value="N">
											<div class="form-group">
												<label class="small mb-1" for="inputAdminID">아이디</label> <input
													class="form-control py-4" type="text" id="adminid"
													name="adminid" maxlength="16" placeholder="ID"
													onchange="registCheckValChange()" /> <a
													href="javascript:idCheck();" class="btn-type v7">중복확인</a>
											</div>
											<div class="text-type4" id="id_alert" style="display: none;"></div>
											<div class="form-row">
												<div class="col-md-6">
													<div class="form-group">
														<label class="small mb-1" for="inputAdminPassword">비밀번호</label>
														<input class="form-control py-4" type="Password"
															id="adminpassword" name="adminpassword"
															placeholder="password" />
														<div class="text-type4" id="pw_alert"
															style="display: none;"></div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="small mb-1" for="inpuConfirmPassword">비밀번호
															확인</label> <input class="form-control py-4"
															id="adminConfirmpassword" type="password"
															placeholder="Confirm password" />
														<div class="text-type4" id="pwc_alert"
															style="display: none;"></div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="small mb-1" for="AdminCode">코드</label> <input
													class="form-control py-4" id="adminCode" type="text"
													placeholder="Code" maxlength="11" />
												<div class="text-type4" id="code_alert"
													style="display: none;"></div>
											</div>
											<div class="form-group mt-4 mb-0">
												<button class="btn btn-primary btn-block" type="submit"
													id="submit">계정 만들기</button>
											</div>
										</form>
										<!-- //end form --------------- -->
									</section>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="login.admdo">로그인 페이지로 돌아가기</a>
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
						<div class="text-muted">Copyright &copy; Your Website 2020</div>
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