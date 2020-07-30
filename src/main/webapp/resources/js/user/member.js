/**
 * 이름, 아이디 확인
 * @return
 * 
 */
function checks(){
	
	var getId = /^[a-zA-Z0-9]{6,16}$/;
	var getPw = !/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	var getName = /^[가-힣]+$/;

	//이름 공백 확인
	if($("#username").val() == ""){
		alert("이름을 입력해 주세요.");
		$("#username").focus();
		return false;
	}
	
	//이름 유효성 검사
	if(!getName.test($("#username").val())){
		alert("올바르지 않은 이름입니다.");
		$("#username").val("");
		$("#username").focus();
		return false;
	}
	
	//아이디 공백 확인
	if($("#userid").val() == ""){
		alert("아이디를 입력해주세요.");
		$("#userid").focus();
		return false;
	}
	
	//아이디 형식 확인
	if(!getId.test($("#userid").val())){
		alert("6~16자의 영문 대문자와 소문자로 입력해주세요.");
		$("#userid").val(""); 
		$("#userid").focus(); 
		return false; 
	}
	
	//비밀번호 공백 확인 
	if($("#userpasswd").val() == ""){ 
		alert("패스워드를 입력하세요"); 
		$("#userpasswd").focus(); 
		return false; 
	}

	//비밀번호 유효성검사 
	if(!getPw.test($("#userpasswd").val())){ 
		alert("숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다."); 
		$("#userpasswd").val(""); 
		$("#userpasswd").focus(); 
		return false; 
	}

	//비밀번호 동일여부
	if($("#userpasswd").val() != $("#passwordChk").val()){ 
		alert("패스워드가 일치하지 않습니다"); 
		$("#userpasswd").val(""); 
		$("#passwordChk").val(""); 
		$("#userpasswd").focus(); 
		return false; 
	}

}
	
	
/**
 * 약관동의
  
	 $(document).ready(function(){
	    $('.all-check').click( function(){
	        $('#location_yn','#agree_1','#agree_2').prop('checked', this.checked);
	    });
	});
*/


/**
 * 이메일 셀렉박스
 *
 * @param obj, obj2
 * @return
 */
function checkEmailState(obj, obj2) {
	if (obj.val() == "WRITE") {
		obj2.attr("readOnly", false);
		obj2.attr("disabled", false);
		obj2.val('');
		$('#email3').focus();
	} else {
		obj2.val(obj.val());
		obj2.attr("readOnly", true);
	}
}



/**
 * 인증번호 발송
 *
 * @param auth_type
 * @param email
 * @param hand_tel1
 * @param hand_tel2
 * @param hand_tel3
 * @return
 */
var memberAuthSendChk = false;
function memberAuthSend(auth_type, email, hand_tel1, hand_tel2, hand_tel3, gubun_type) {
	var errorTxt = "인증번호 발송 중 오류가 발생되었습니다. 다시 시도해주세요.";

	if(!memberAuthSendChk){
		memberAuthSendChk = true;
		$.ajax({
			type: "POST",
			url: "/member/authSendAjax",
			data: { "auth_type" : auth_type,
					"email" : email,
					"hand_tel1" : hand_tel1,
					"hand_tel2" : hand_tel2,
					"hand_tel3" : hand_tel3	 },
			dataType : "json",
			success:function(data) {
				if (data.status == "success") {
					$("#hdnAuthKey").val(data.msg);
					alert("인증번호가 발송되었습니다.\n인증번호 입력란에 수신된 인증번호를 입력해 주세요.");
				} else if (data.status == "hpError") {
					alert("전화번호 형태가 잘못 되었습니다.");
					if (gubun_type == "Y")
						showMemberInfo();
				} else if (data.status == "fail") {
					if (data.msg == "1min") {
						alert("인증번호 재발송은 발송 후 1분 후 가능합니다.");
					} else if (data.msg == "1day") {
						alert("인증번호 발송은 하루에 5회로 제한됩니다.");
					} else if (data.msg == "PCID ERROR") {
						alert("비정상적 접근입니다.");
					} 

					if (gubun_type == "Y")
						showMemberInfo();
				} else if (data.status == "error") { // SMS 모듈 오류
					alert(errorTxt);
				} else {
					alert("입력하신 정보가 불충분합니다 확인바랍니다.");
					if (gubun_type == "Y")
						showMemberInfo();
				}
				memberAuthSendChk = false;
			},
			error: function (error){
				alert('Error ==> ' + error);
				memberAuthSendChk = false;
			}
		});
	}
}