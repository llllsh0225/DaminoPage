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
	
	if($("#phoneCheck").val == "N"){
		alert("핸드폰번호를 인증해주세요.");
		return false;
	}

}
	

$(document).ready(function(){
	$('#agree_all1').click(function(){
		if($('#agree_all1').prop('checked')){
			$('#location_yn').prop('checked', true);
			$('#agree_1').prop('checked', true);
			$('#agree_2').prop('checked', true);
		}else{
			$('#location_yn').prop('checked', false);
			$('#agree_1').prop('checked', false);
			$('#agree_2').prop('checked', false);
		}
	});
	$('#agree_all2').click(function(){
		if($('#agree_all2').prop('checked')){
			$('#chk_ds_fl').prop('checked', true);
			$('#chk_dm_fl').prop('checked', true);
			$('#chk_o_dm_fl').prop('checked', true);
		}else{
			$('#chk_ds_fl').prop('checked', false);
			$('#chk_dm_fl').prop('checked', false);
			$('#chk_o_dm_fl').prop('checked', false);
		}
	});
});



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
