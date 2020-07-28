/**
 * 이름, 아이디 확인
 * @param id
 * @return
 * 
 */
function checks(){
	
	var getId = /^[a-zA-Z0-9]{6,12}$/
	var getPw = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	//이름 공백 확인
	if($("#name").val() == ""){
		alert("이름을 입력해 주세요.");
		$("#name").focus();
		return false;
	}
	
	//아이디 공백 확인
	if($("#id").val() == ""){
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		return false;
	}
	//아이디 형식 확인
	if(!getId.test($("#id").val())){
		alert("6~12자의 영문 대문자와 소문자로 입력해주세요.");
		$("#id").val(""); 
		$("#id").focus(); 
		return false; 
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