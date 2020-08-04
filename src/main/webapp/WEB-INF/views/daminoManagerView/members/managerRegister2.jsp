<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "org.json.simple.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>다미노피자 - 매장관리자 정보수정</title>
<link href="<c:url value='/resources/css/admin/styles.css' />" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
	crossorigin="anonymous">
</script>
<script>
function btnConfirms(){
	
	//이름 공백 확인
	if($("#managerName").val() == ""){
		$('#name_alert').text("이름을 입력해주세요");
		$('#name_alert').show();
		$('#name_alert').focus();
		return false;
	}else{
		$('#name_alert').hide();
	}
	//아이디 공백 확인
	if(checkIds != 0){
			$('#id_alert').text("ID 중복체크를 하세요!");
			$('#id_alert').show();
			$('#id_alert').focus();
		//	return;
			return false;	
		}else{
			$('#id_alert').hide();
		}
	if ($("#managerId").val() == ""){
		$('#id_alert').text("아이디를 입력해주세요");
		$('#id_alert').show();
		$('#id_alert').focus();
		//return;
		return false;
	}else{
		$('#id_alert').hide();
	}
	
	//비밀번호 공백 확인
	if($("#managerPasswd").val() == ""){
		$('#pwd_alert').text("비밀번호를 입력해주세요");
		$('#pwd_alert').show();
		$('#pwd_alert').focus();
		//return;
	 return false;
	}else{
		$('#pwd_alert').hide();
	}
	//비밀번호 확인 공백 확인
	if($("#ConfirmPassword").val() == ""){
		$('#pwdChk_alert').text("비밀번호 확인을 입력해주세요");
		$('#pwdChk_alert').show();
		$('#pwdChk_alert').focus();
	//	return;
	 return false;
	}else{
		$('#pwdChk_alert').hide();
	}
	//비밀번호와 비밀번호 확인 값 일치여부 확인
	if($("#managerPasswd").val() != $("#ConfirmPassword").val()){
		$('#pwdChk_alert').text("비밀번호 일치여부를 확인해주세요");
		$('#pwdChk_alert').show();
		$('#pwdChk_alert').focus();
	//	return;
	 return false;
	}else{
		$('#pwdChk_alert').hide();
	}
	//매장명 선택여부 확인
	if($("#storeName").val() == "지역을 선택해주세요"){
		$('#storeName_alert').text("매장명을 확인해주세요");
		$('#storeName_alert').show();
		$('#storeName_alert').focus();
	//	return;
	 return false;
	} else{
		$('#storeName_alert').hide();
	}

        $("#regManager").submit();
	
};


//구에 따라 셀렉트 박스에 매장 목록 노출
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
									<h3 class="text-center font-weight-light my-4">매장관리자 정보 수정</h3>
								</div>
								<div class="card-body" style="height:500px">
									<form name="regManager" id="regManager" action="managerRegister2.smdo" onsubmit="return btnConfirms();"
										method="post" >
										<!--수정1-->
										
										<div class="form-row">
											<div class="col-md-6">
											<label class="small mb-1">이름</label>
											<input class="form-control py-4" id="managerName" value="${manager.managerName}"
												name="managerName" placeholder="Name" />
												<div id="name_alert" style="display: none;"></div>
											</div>
											</div>
										<div class="form-row">
											<div class="col-md-6">
												<label class="small mb-1">아이디</label>
												<input type="text" class="form-control py-4" type="text" id="managerId" value="${manager.managerId}" readonly
												name="managerId" maxlength="16">
												<div id="id_alert" style="display: none;"></div>
											</div>
										</div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" >비밀번호</label>
													<input type="password" class="form-control py-4" id="managerPasswd" 
													name="managerPasswd" placeholder="Password" />
													<div id="pwd_alert" style="display: none;"></div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" >비밀번호
														확인</label> <input type="password" class="form-control py-4"
														id="ConfirmPassword" name="ConfirmPassword" placeholder="Confirm Password" />
														<div id="pwdChk_alert" style="display: none;"></div>
												</div>
											</div>
										</div>
										<!--수정2-->
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1">구 선택</label>
													<select class="form-control" id="storeRegion" name="storeRegion" onchange="getRegionList()">
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
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group"> <!-- class="form-control" -->
													<label class="small mb-1" >매장명</label>
													<select class="form-control" id="storeName" name="storeName" value="${manager.storeName}">
														<option value="">지역을 선택해주세요</option>
														<option value="명동점">명동점</option>
														<option value="신당점">신당점</option>
													</select>
													<div id="storeName_alert" style="display: none;"></div>
												</div>
											</div>
										</div>
										<div class="form-group mt-4 mb-0">
											<input type="submit" class="btn btn-primary btn-block"
											value="정보 변경" id="btnConfirm" />
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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/resources/js/admin/scripts.js'/>"></script>
</body>

</html>