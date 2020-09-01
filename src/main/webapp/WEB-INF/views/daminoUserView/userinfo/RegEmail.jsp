<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<script>
function expireSession(){
	  alert("세션이 만료되었습니다");
	  
	  var userid = $('#userid').val(); // 유저 아이디
	  
	  $.ajax({
		  url:'allDelete.do',
		  contentType : "application/json; charset=UTF-8;",
		  type: 'post',
		  data : JSON.stringify({
			  userid : userid
		  }),
		  async : false,
		  success : function(data){
			  if(data == 'success'){
				  alert("성공");
				  location.href = "login.do";
			  }
		  },
			error: function() {
				alert('처리도중 오류가 발생했습니다. 다시 시도해주세요.');
			}
	  })
	  
	  
	}
	setTimeout('expireSession()',<%= request.getSession().getMaxInactiveInterval() * 1000 %>);
</script>
</head>
<body>
<div id="readFrame">

	<xmeta charset="UTF-8">
	<xmeta charset="euc-kr">
	
<!--  -->
		<input type="hidden" id="userid" value="${sessionScope.userid}" />
	<table cellpadding="0" cellspacing="0" border="0" width="780" style="margin:0 auto;background:url(https://cdn.dominos.co.kr/renewal2018/w/images/mail/img_visual6.png) no-repeat 50% 85px">

		<!-- logo -->
		<tbody><tr><td style="height:66px;padding:0 40px;background-color:#0078ae"><a href="#" style="display:block;:176px;" rel="noreferrer noopener" target="_blank"><img src="https://cdn.dominos.co.kr/renewal2018/w/images/mail/logo.png" alt="logo" style="display:block;border:0" loading="lazy"></a></td></tr>
		<!-- //logo -->

		<tr><td style="height:110px;border:2px solid #e2ddd5;border-width:0 2px;"></td></tr>

		<!-- title -->
		<tr><td style="border:2px solid #e2ddd5;border-width:0 2px;">
				<table cellpadding="0" cellspacing="0" border="0" width="776" style="margin:0 auto">
					<tbody><tr><td style="font-family:NanumGothic,Tahoma,sans-serif;font-size:24px;font-weight:bold;color:#38474f;text-align:center;line-height:24px;">
							도미노피자 회원정보 인증을 위한 인증번호입니다.
						</td></tr>
					<tr><td style="height:20px"></td></tr>
					<tr><td><span style="display:block;width:53px;height:2px;margin:0 auto;background-color:#f7a420"></span></td></tr>
					<tr><td style="height:20px"></td></tr>
					<tr><td style="font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#717171;text-align:center;line-height:22px;">
							안녕하세요. 도미노피자입니다.<br>
							회원정보 인증을 위해 아래의 인증번호를 홈페이지 인증번호 입력창에 입력 해 주세요.
						</td></tr>
				</tbody></table>
			</td></tr>
		<!-- //title -->

		<tr><td style="height:40px;border:2px solid #e2ddd5;border-width:0 2px;"></td></tr>

		<!-- content -->
		<tr><td style="border:2px solid #e2ddd5;border-width:0 2px">
				<table cellpadding="0" cellspacing="0" border="0" width="692" style="margin:0 auto;border:2px solid #c2beb8;background-color:#faf8f7">
					<tbody><tr><td style="height:30px"></td></tr>
					<tr><td style="font-family:NanumGothic,Tahoma,sans-serif;font-size:18px;font-weight:400;color:#554b3c;text-align:center;line-height:22px;">
							고객님의 회원정보 인증번호는 <strong style="color:#e51937">3541</strong> 입니다.
						</td></tr>
					<tr><td style="height:30px"></td></tr>
				</tbody></table>
			</td></tr>

		<tr><td style="height:10px;border:2px solid #e2ddd5;border-width:0 2px;"></td></tr>

		<tr><td style="padding:0 42px;border:2px solid #e2ddd5;border-width:0 2px">
				<ul style="margin:0;padding:0"><li style="padding-left:7px;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#f06418;text-align:center;line-height:20px;list-style:none;text-indent:-7px;">
						* 인증번호 입력창에 인증번호 입력 후 인증을 완료하셔야 아이디 찾기 또는 비밀번호 찾기가 정상적으로 완료됩니다.
					</li></ul>
			</td></tr>
		<!-- //content -->

		<tr><td style="height:55px;border:2px solid #e2ddd5;border-width:0 2px;"></td></tr>

		<!-- footer -->
		<tr><td style="padding:0 20px;background-color:#eeece9">
				<table cellpadding="0" cellspacing="0" border="0" width="740">
					<tbody><tr><td style="height:25px;"></td></tr>
					<tr><td>
							<ul style="margin:0;padding:0"><li style="margin-top:17px;padding-left:7px;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:18px;list-style:none;text-indent:-7px;letter-spacing:-1px">
									-  본 메일은 발신전용입니다. 문의사항은 admin@dominos.co.kr 또는 080-860-3082(고객센터)를 이용하여 주십시오.
								</li></ul>
						</td></tr>
					<tr><td style="height:25px;"></td></tr>
					<tr><td style="height:1px;background-color:#d5d0c8"></td></tr>
					<tr><td style="height:20px;"></td></tr>
					<tr><td>
							<table cellpadding="0" cellspacing="0" border="0" width="740">
								<tbody><tr><td style="width:190px;vertical-align:top">
										<img src="https://cdn.dominos.co.kr/renewal2018/w/images/mail/footer_phone.png" alt="" style="display:inline-block;border:0;vertical-align:middle" loading="lazy">
										<dl style="display:inline-block;margin:0 0 0 10px;padding:0;vertical-align:middle"><dt style="margin:0;padding:0;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;line-height:14px;">전화주문</dt><dd style="margin:9px 0 0 0;padding:0;font-family:NanumGothic,Tahoma,sans-serif;font-size:20px;font-weight:bold;color:#554b3c;line-height:20px;">1577-3082</dd></dl>
									</td><td style="width:550px;vertical-align:top">
										<ul style="margin:0;padding:0;font-size:0;"><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">135-928 서울특별시 강남구 언주로 315 청오디피케이㈜<span style="margin:0 5px">|</span></li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">문의 : admin@dominos.co.kr</li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">사업자 등록번호: 220-81-03371<span style="margin:0 5px">|</span></li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">통신판매업신고: 강남 5064호<span style="margin:0 5px">|</span></li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">개인정보 보호책임자 : 이명윤</li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">대표이사: 오광현</li></ul>
										<p style="margin:0;padding:0;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px">Copyrightsⓒ2016 by Domino’s Pizza. All rights reserved.</p>
									</td></tr>
							</tbody></table>
						</td></tr>
					<tr><td style="height:30px;"></td></tr>
				</tbody></table>
			</td></tr>
		<!-- //footer -->
	</tbody></table>


</xmeta></xmeta></div>
	

</body>
</html>
