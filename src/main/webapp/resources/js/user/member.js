/**
 * 이름, 아이디 확인
 * @return
 * 
 */
function checks(){
	// 정규표현식
	var nameChk = RegExp(/^[가-힣]+$/);
	var idChk= RegExp(/^[a-zA-Z0-9]{4,12}$/);
	var emailChk = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);

	출처: https://cho-coding.tistory.com/49 [당 떨어질 땐 초코딩]

	// 생년월일 입력값
	var cyear = $('#cyear').val();
	var bmonth = $('#bmonth').val();
	var bday = $('#bday').val();
	
	// 핸드폰 인증여부 
	var phoneCheck = $('#phoneChk').val();
	
	// 이메일 입력값
	var email1 = $('#email1').val();
	var email2 = $('#email2').val();
	var email = email1 + "@" + email2;
	
	// 이름 공백 검사
	if($("#username").val() == ""){
		$('#name_alert').text("이름을 입력해주세요.");
	    $('#name_alert').show();
		$("#username").focus();
		return false;
	}else{
		$('#name_alert').hide();
	}
	
	// 이름 유효성 검사
	if(!nameChk.test($("#username").val())){ 
		$('#name_alert').text("이름 형식에 맞게 입력해주세요.");
	    $('#name_alert').show();
	    $("#username").val(""); 
		$("#username").focus();
		return false;
	}else{
		$('#name_alert').hide();
	}
	
	// 아이디 공백 확인
	if($("#userid").val() == ""){
		$('#id_alert').text("아이디를 입력해주세요.");
	    $('#id_alert').show();
		$("#userid").focus();
		return false;
	}else{
		$('#id_alert').hide();
	}
		
	// 아이디 유효성 검사
	if(!idChk.test($("#userid").val())){ 
		$('#id_alert').text("아이디는 영어 대/소문자, 숫자만 입력 가능합니다.");
	    $('#id_alert').show();
	    $("#userid").val("");
	    $("#userid").focus();
	    return false;
	}else{
		$('#id_alert').hide();
	}

	// 비밀번호 공백 검사
	if($("#userpasswd").val() == ""){ 
		$('#pwd_alert').text("비밀번호를 입력해주세요.");
	    $('#pwd_alert').show();
		$("#userpasswd").focus(); 
		return false; 
	}else{
		$('#pwd_alert').hide();
	}
	
	// 비밀번호 확인란 공백 검사
	if($("#passwordChk").val() == ""){ 
		$('#pwdChk_alert').text("비밀번호를 확인 해주세요.");
	    $('#pwdChk_alert').show();
		$("#passwordChk").focus(); 
		return false; 
	}else{
		$('#pwdChk_alert').hide();
	}
	
	// 비밀번호 일치 확인
	if($("#userpasswd").val() != $("#passwordChk").val()){ 
		$('#pwdChk_alert').text("비밀번호가 일치하지 않습니다.");
	    $('#pwdChk_alert').show();
		$("#passwordChk").val(""); 
		$("#passwordChk").focus(); 
		return false; 
	}else{
		$('#pwdChk_alert').hide();
	}

	// 생년월일 공백 검사
	if(cyear == "년" || bmonth == "월" || bday == "일"){
		$('#birth_alert').text("생년월일을 입력해주세요.");
	    $('#birth_alert').show();
	    return false;
	}else{
		$('#birth_alert').hide();
	}
	
	// 휴대폰 인증 여부 검사
	if(phoneCheck == "N"){
		$('#tel_alert').text("휴대폰 번호를 인증해주세요.");
	    $('#tel_alert').show();
	    return false;
	}else{
		$('#tel_alert').hide();
	}
	
	// 이메일 공백 검사
	if(email1 == "" || email2 == ""){
		$('#email_alert').text("이메일주소를 입력해주세요.");
	    $('#email_alert').show();
	    $('#email1').focus();
	    return false;
	}else{
		$('#email_alert').hide();
	}
	
	// 이메일 유효성 검사
	if(!emailChk.test(email)){
		$('#email_alert').text("이메일주소가 유효하지 않습니다.");
	    $('#email_alert').show();
	    $('#email1').val("");
	    $('#email2').val("");
	    $('#email1').focus();
	    return false;
	}else{
		$('#email_alert').hide();
	}
	
	// 필수약관 동의 여부 검사
	if(!$('#agree_2').val() == "Y" || !$('#agree_1').val() == "Y" || !$('#location_yn').val() == "Y"){
		alert("필수 약관에 동의해주세요");
		return false;
	}
	
	/**
	var getId = /^[a-zA-Z0-9]{6,16}$/;
	var getPw = !/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	var getName = /^[가-힣]+$/;
	var phoneCheck = $('#phoneCheck').val();
	
	
	if(!check(id, getId, "아이디는 4~12자의 영문 대소문자와 숫자로만 입력해주세요.")){
		return false;
	}


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

	//비밀번호 유효성검사  -------------> 여기부터 다시 확인
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
	
	// 핸드폰번호 인증여부 검사
	if(phoneCheck == "N"){
		alert("휴대폰번호를 인증해주세요");
		return false;
	}
	*/
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
