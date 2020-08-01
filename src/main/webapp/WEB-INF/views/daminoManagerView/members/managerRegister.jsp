<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>다미노피자 - 매장관리자 등록</title>
<link href="<c:url value='/resources/css/admin/styles.css' />" rel="stylesheet" />
<!-- <style>
	#managerId{
		clear : both;
	}
</style> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
	crossorigin="anonymous">
</script>
<script>
function idCheck(){
	var managerId = $("#managerId").val();
	$.ajax({
		url : "managerIdCheck.smdo",
		type : "POST",
		contentType : "application/json; charset=UTF-8;",
		dataType : "json",
		data : JSON.stringify({
			managerId : managerId,
		}),
		success : function(data){
			if(data > 0){
				alert("아이디 중복");
				$('#id_alert').text("이미 사용중인 아이디입니다.");
				$('#id_alert').show();
				return;
			}else{
				alert("사용가능");
				$('#id_alert').text("사용 가능한 아이디입니다.");
				$('#id_alert').show();
			}
		},
		error : function(err){
			alert("등록에 실패했습니다");
		}
	});
}

function regCheck(){
	var theForm = document.managerRegister;
	if(!theForm.managerName.value){
		alert("이름을 입력해 주세요");
		theForm.managerName.focus();
		return;
	}
	if(!theForm.managerId.value){
		alert("아이디를 입력해 주세요");
		theForm.managerId.focus();
		return;
	}
	if(!theForm.managerPasswd.value){
		alert("비밀번호를 입력해 주세요");
		theForm.managerPasswd.focus();
		return;
	}
	if(theForm.ConfirmPassword.value != theForm.managerPasswd.value){
		alert("비밀번호가 일치하지 않습니다.");
		theForm.ConfirmPassword.focus();
		return;
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
									<h3 class="text-center font-weight-light my-4">매장관리자 계정 등록</h3>
								</div>
								<div class="card-body" style="height:500px">
									<form name="frm" id="frm" action="registMarketAdminMember.smdo" name="form1"
										method="post" onsubmit="return regCheck()">
										<!--수정1-->
										
										<div class="form-row">
											<div class="col-md-6">
											<label class="small mb-1">이름</label>
											<input class="form-control py-4" id="managerName"
												name="managerName" placeholder="Name" />
											</div>
											</div>
										<div class="form-row">
											<div class="col-md-6">
												<label class="small mb-1">아이디</label> <input
													class="form-control py-4" id="managerId" name="managerId" placeholder="Id">
											</div>
											<div class="col-md-2" style="padding: 15px">
												<a href="javascript:idCheck();" class="btn btn-primary"
													style="margin: 2px">중복확인</a>
												<div id="id_alert" style="display: none;"></div>
											</div>
										</div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" >비밀번호</label>
													<input class="form-control py-4" id="managerPasswd"
													name="managerPasswd" placeholder="Password" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" >비밀번호
														확인</label> <input class="form-control py-4"
														id="ConfirmPassword" name="ConfirmPassword" placeholder="Confirm Password" />
												</div>
											</div>
										</div>
										<!--수정2-->
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1">구 선택</label>
													<select class="form-control py-4" id="storeRegion">
														<option value="1">강남구</option>
														<option>강동구</option>
														<option>강북구</option>
														<option>강서구</option>
														<option>관악구</option>
														<option>광진구</option>
														<option>구로구</option>
														<option>금천구</option>
														<option>노원구</option>
														<option>도봉구</option>
														<option>동대문구</option>
														<option>동작구</option>
														<option>마포구</option>
														<option>서대문구</option>
														<option>서초구</option>
														<option>성동구</option>
														<option>성북구</option>
														<option>송파구</option>
														<option>양천구</option>
														<option>영등포구</option>
														<option>용산구</option>
														<option>은평구</option>
														<option>종로구</option>
														<option>중구</option>
														<option>중랑구</option>
													</select>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" >매장명</label>
													<select class="form-control py-4" id="storeName">
														<option>명동점</option>
														<option>신당점</option>
														<c:if test="${storeRegion == 1}">
															<option>샤로수길점</option>
															<option>서초점</option>
														</c:if>
													</select>
												</div>
											</div>
										</div>
										<div class="form-group mt-4 mb-0">
											<input type="submit" class="btn btn-primary btn-block"
											value="승인 신청"/>
											<input type="reset" class="btn-delete"
											style="display: block; width: 100%" value="다시 입력"/>
										</div>
									</form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="managerLogin.smdo">로그인 페이지로 돌아가기</a>
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