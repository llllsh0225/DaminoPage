
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
