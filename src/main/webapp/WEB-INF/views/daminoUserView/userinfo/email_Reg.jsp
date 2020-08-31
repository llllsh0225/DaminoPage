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
    <table cellpadding="0" cellspacing="0" border="0" width="780" style="margin:0 auto;background:url(http://cdn.dominos.co.kr/renewal2018/w/img/mail/img_visual2.png) no-repeat 50% 100px">

        <!-- logo -->
        <tbody><tr><td style="height:66px;padding:0 40px;background-color:#0078ae"><a href="#" style="display:block;:176px;" rel="noreferrer noopener" target="_blank"><img src="http://cdn.dominos.co.kr/renewal2018/w/img/mail/logo_new.jpg" alt="logo" style="display:block;border:0" loading="lazy"></a></td></tr>
        <!-- //logo -->

        <tr><td style="height:110px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>

        <!-- title -->
        <tr><td style="border:1px solid #E5E2DD;border-width:0 1px;">
                <table cellpadding="0" cellspacing="0" border="0" width="776" style="margin:0 auto">
                    <tbody><tr><td style="font-family:NanumGothic,Tahoma,sans-serif;font-size:24px;font-weight:bold;color:#38474f;text-align:center;line-height:24px;">
                            WELCOME TO DOMINO'S PIZZA!
                        </td></tr>
                    <tr><td style="height:20px"></td></tr>
                    <tr><td><span style="display:block;width:53px;height:1px;margin:0 auto;background-color:#f7a420"></span></td></tr>
                    <tr><td style="height:20px"></td></tr>
                    <tr><td style="font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#717171;text-align:center;line-height:14px;">
                            도미노피자에서 제공해드리는 다양한 혜택을 즐겨보세요~
                        </td></tr>
                </tbody></table>
            </td></tr>
        <!-- //title -->

        <tr><td style="height:40px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>

        <!-- content -->
        <tr><td style="border:1px solid #E5E2DD;border-width:0 1px;">
                <table cellpadding="0" cellspacing="0" border="0" width="692" style="margin:0 auto;border:1px solid #E5E0D6; background-color:#faf8f7">
                    <tbody><tr><td style="height:20px"></td></tr>
                    <tr><td>
                            <table cellpadding="0" cellspacing="0" border="0" width="688">
                                <tbody><tr><td style="width:300px;padding-left:15px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:left;line-height:22px;">
                                        <strong style="display:inline-block;width:95px;font-weight:400">이름</strong> <span style="color:#0078ae">강수현</span>
                                    </td><!--td rowspan="4" style="width:1px;background-color:#d3cfcb"&gt;&lt;/td&gt;
                                    &lt;td rowspan="4" style="width:387px;padding-left:30px;font-size:0;"&gt;
                                        &lt;div style="display:inline-block;width:137px;height:33px;padding:64px 0 0 30px;background:url(https://cdn.dominos.co.kr/renewal2018/w/images/mail/img_coupon.png) no-repeat 0 0;vertical-align:bottom;font-family:NanumGothic,Tahoma,sans-serif;font-size:16px;font-weight:600;color:#38474f;text-align:left;line-height:16px;"&gt;
                                            20% 할인쿠폰
                                        &lt;/div&gt;
                                        &lt;dl style="display:inline-block;margin:0 0 0 25px;padding:0;vertical-align:bottom"&gt;
                                            &lt;dt style="margin:0;padding:0;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:left;line-height:14px;"&gt;신규회원 가입축하&lt;strong style="display:block;margin-top:10px;font-size:18px;color:#554b3c;line-height:18px;"&gt;20% 할인쿠폰&lt;/strong&gt;&lt;/dt&gt;
                                            &lt;dd style="margin:10px 0 0 0;padding:0"&gt;&lt;a href="http://web.dominos.co.kr" style="display:block;"&gt;&lt;img src="https://cdn.dominos.co.kr/renewal2018/w/images/mail/btn_coupon.png" alt="쿠폰 확인하기" style="display:block;"&gt;&lt;/a&gt;&lt;/dd&gt;
                                        &lt;/dl&gt;
                                    &lt;/td--><!-- &lt;td rowspan="4" style="width:344px;padding-left:15px;padding-top:20px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:left;line-height:22px;"&gt;

                                    &lt;/td&gt; --></tr>
                                <tr><td style="width:300px;padding-left:15px;padding-top:20px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:left;line-height:22px;">
                                        <strong style="display:inline-block;width:95px;font-weight:400">아이디</strong> <span style="color:#0078ae">rkdtngus1122</span>
                                    </td></tr>
                                <tr><td style="width:300px;padding-left:15px;padding-top:20px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:left;line-height:22px;">
                                        <strong style="display:inline-block;width:95px;font-weight:400">휴대전화</strong> <span style="color:#0078ae">010-9174-9355</span>
                                    </td></tr>
                                <tr><td style="width:300px;padding-left:15px;padding-top:20px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:left;line-height:22px;">
                                        <strong style="display:inline-block;width:95px;font-weight:400">이메일</strong> <span style="color:#0078ae">rkdtngus1122@naver.com</span>
                                    </td></tr>
                            </tbody></table>
                        </td></tr>
                    <tr><td style="height:20px"></td></tr>
                </tbody></table>
            </td></tr>

        <tr><td style="height:20px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>







        <!-- 2017-03-27 // 혜택 수정 (s)-->
        <tr><td style="padding:10px 0px 0px 48px;border:1px solid #E5E2DD;border-width:0 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:18px;font-weight:400;color:#38474f;text-align:left;line-height:18px;">
                온라인 회원이면 누구나 누릴 수 있는 <strong style="color:#ea445d;">도미노 온라인 매니아!</strong>

            </td></tr>
        <tr><td style="height:25px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>
        <tr><td style="padding:0px 0px 10px 48px; border:1px solid #E5E2DD;border-width:0 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#717171;text-align:left;line-height:22px;">
                최근 3개월간 온라인 주문내역을 바탕으로 다양한 할인혜택을 드리고 있으며,<br>상위 일부 고객님께는 최고등급 및 혜택을 제공하고 있습니다.
            </td></tr>

        <tr><td style="height:20px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>

        <tr><td style="border:1px solid #E5E2DD;border-width:0 1px">
                <table cellpadding="0" cellspacing="0" border="0" width="692" style="margin:0 auto;border:1px solid #EDE9E1; background-color:#faf8f7">
                    <tbody><tr><td style="height:30px"></td></tr>
                    <tr><td style="padding:10px 0px 5px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:16px;font-weight:bold;color:#554b3c;text-align:left;line-height:16px;">
                            도미노피자 온라인 매니아 혜택
                        </td></tr>
                    <tr><td style="height:10px"></td></tr>
                    <tr><td style="padding:0px 0px 5px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    -  회원가입 시 온라인 매니아 Regular 등급 혜택 즉시 제공
                                </li><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    -  가입 시 E-mail과 SMS 수신동의 또는 기존정보 업데이트 시, 방문포장 40% 할인 제공
                                </li></ul>
                        </td></tr>
                    <tr><td style="height:25px"></td></tr>
                    <tr><td style="padding:5px 0px 0px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:16px;font-weight:500;color:#767067;text-align:left;line-height:22px;list-style:none;">도미노 회원만을 위한 특별한 서비스</td></tr>
                    <tr><td style="height:10px"></td></tr>
                    <tr><td style="padding-right:20px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:500;color:#ea445d;text-align:right;line-height:22px;list-style:none;">2020년 7월 1일 기준</td></tr>
                    <tr><td style="height:5px"></td></tr>
                    <tr><td>
                            <table cellpadding="0" cellspacing="0" border="0" width="658" style="margin:0 auto;border:1px solid #bdb8b2;border-width:1px 1px 0 0">
                                <colgroup><col width="20%"><col width="20%"><col width="20%"><col width="20%"><col width="20%"></colgroup>
                                <thead><tr><th colspan="1" rowspan="1" style="height:42px;border:1px solid #bdb8b2;border-width:0 0 1px 1px;background-color:#eae7e6;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:700;color:#554b3c;">등급</th><th colspan="1" rowspan="1" style="height:42px;border:1px solid #bdb8b2;border-width:0 0 1px 1px;background-color:#eae7e6;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:700;color:#554b3c;">Regular</th><th colspan="1" rowspan="1" style="height:42px;border:1px solid #bdb8b2;border-width:0 0 1px 1px;background-color:#eae7e6;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:700;color:#554b3c;">Premium</th><th colspan="1" rowspan="1" style="height:42px;border:1px solid #bdb8b2;border-width:0 0 1px 1px;background-color:#eae7e6;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:700;color:#554b3c;">VIP</th><th colspan="1" rowspan="1" style="height:42px;border:1px solid #bdb8b2;border-width:0 0 1px 1px;background-color:#eae7e6;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:700;color:#554b3c;">ROYAL</th></tr></thead>
                                <tbody><tr><td style="height:86px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">등급 산정 조건</td><td style="height:86px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">최근 3개월<br>주문횟수<br>0~1회 구매고객</td><td style="height:86px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">최근 3개월<br>주문횟수<br>2~5회 구매고객</td><td style="height:86px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">최근 3개월<br>주문횟수<br>6회 이상 구매고객</td><td style="height:86px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">전년 70만원 이상<br>구매고객</td></tr><tr><td rowspan="4" style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">혜택<br>(매월제공)</td><td colspan="3" style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">배달주문<br>20% 할인쿠폰</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">상시 배달주문<br>20% 할인</td></tr><tr><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">배달주문<br>20% 할인쿠폰</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">배달주문<br>25% 할인쿠폰</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">배달주문<br>30% 할인쿠폰</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">배달주문<br>30% 할인쿠폰</td></tr><tr><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">-</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">방문포장<br>30% 할인쿠폰</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">방문포장<br>35% 할인쿠폰</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">방문포장<br>40% 할인쿠폰</td></tr><tr><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">-</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">-</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">생일 방문포장<br>50% 할인쿠폰</td><td style="height:66px;border:1px solid #bdb8d2;border-width:0 0 1px 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;text-align:center;line-height:22px">생일 방문포장<br>50% 할인쿠폰</td></tr></tbody>
                            </table>
                        </td></tr>
                    <tr><td style="height:40px"></td></tr>
                </tbody></table>
            </td></tr>

        <tr><td style="height:15px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>

        <tr><td style="border:1px solid #E5E2DD;border-width:0 1px">
                <table cellpadding="0" cellspacing="0" border="0" width="692" style="margin:0 auto;border:1px solid #EDE9E1; background-color:#faf8f7">
                    <tbody><tr><td style="height:28px"></td></tr>
                    <tr><td style="padding:10px 0px 5px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:16px;font-weight:bold;color:#554b3c;text-align:left;line-height:16px;">
                            도미노피자 틴매니아 혜택
                        </td></tr>
                    <tr><td style="height:5px"></td></tr>
                    <tr><td style="padding-left:25px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    * 10대 고객에게만 드리는 특별한 혜택
                                </li></ul>
                        </td></tr>
					<tr><td style="height:10px"></td></tr>
					<tr><td style="padding-left:25px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    - 도미챗 전용 : 클래식 피자 배달 25%, 방문포장 35% 할인쿠폰 각 1매
                                </li></ul>
                        </td></tr>
					<tr><td style="padding-left:25px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    - 마이키친 전용 : 배달 25%, 방문포장 35% 할인쿠폰 각 1매
                                </li></ul>
                        </td></tr>
					
					<tr><td style="height:20px"></td></tr>
					
                    <tr><td style="padding:10px 0px 5px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:16px;font-weight:bold;color:#554b3c;text-align:left;line-height:16px;">
                            유의사항
                        </td></tr>
                    <tr><td style="height:5px"></td></tr>
                    <tr><td style="padding:0px 0px 5px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    1. 틴매니아는 나의 정보에 등록된 생년월일을 기준으로 만 10세 이상 만 19세 이하 고객들에게만 제공되는<br>혜택입니다. (만 20세 진입시 혜택 자동 삭제)
                                </li></ul>
                        </td></tr>
                    <tr><td style="padding:0px 0px 5px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    2. 생년월일 미표기/오표기로 인하여 틴매니아 혜택이 제한될 수 있습니다.
                                </li></ul>
                        </td></tr>
					<tr><td style="padding:0px 0px 0px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    3. 당사의 사정에 따라 사전 공지 없이 변경되거나 조기 종료될 수 있습니다.
                                </li></ul>
                        </td></tr>
                    <tr><td style="padding:0px 0px 0px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    ※ 신규 회원 가입은 만 14세 미만 아동의 개인정보 보호를 위해 만 14세 이상만 가능합니다.
                                </li></ul>
                        </td></tr>
					
                    <tr><td style="height:30px"></td></tr>
                </tbody></table>
            </td></tr>

        <tr><td style="height:30px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>

		<tr><td style="border:1px solid #E5E2DD;border-width:0 1px;">
                <table cellpadding="0" cellspacing="0" border="0" width="692" style="margin:0 auto;border:1px solid #EDE9E1; background-color:#faf8f7">
                    <tbody><tr><td style="height:30px"></td></tr>
                    <tr><td style="padding:10px 0px 5px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:16px;font-weight:bold;color:#554b3c;text-align:left;line-height:16px;">
                            특가메뉴
                        </td></tr>
                    <tr><td style="height:5px"></td></tr>
                    <tr><td style="padding-left:15px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:25px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    - 특가메뉴 등 온라인 주문에서만 가능한 다양한 상품 이용가능
                                </li></ul>
                        </td></tr>
                    <tr><td style="height:20px"></td></tr>
                    <tr><td style="padding:10px 0px 5px 28px;font-family:NanumGothic,Tahoma,sans-serif;font-size:16px;font-weight:bold;color:#554b3c;text-align:left;line-height:16px;">
                            참여혜택, 소식지
                        </td></tr>
                    <tr><td style="height:5px"></td></tr>
                    <tr><td style="padding-left:25px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;">
                            <ul style="margin:0;padding:0"><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    -  도미노피자 관련 행사 진행 시, 참여혜택 및 소식지를 제공해드립니다.
                                </li><li style="padding-left:9px;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#767067;text-align:left;line-height:22px;list-style:none;text-indent:-9px;">
                                    -  온라인 주문 고객님께 발송되는 설문조사 참여 시 20% 할인쿠폰을 제공해드립니다.
                                </li></ul>
                        </td></tr>
                    <tr><td style="height:30px"></td></tr>
                </tbody></table>
            </td></tr>
		
		 <tr><td style="height:10px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>
		
        <tr><td style="padding:0 48px;border:1px solid #E5E2DD;border-width:0 1px;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#f06418;text-align:left;line-height:12px;">
                * 회원가입시에 기재되는 개인정보 및 귀하에 관한 기타 다른정보에 대해서는 개인정보보호정책에 철저히 보호됩니다.
            </td></tr>
        <!-- 2017-03-27 // 혜택 수정 (e)-->

        <tr><td style="height:47px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>

        <tr><td style="border:1px solid #E5E2DD;border-width:0 1px;font-size:0;text-align:center">
                <a href="http://web.dominos.co.kr" style="display:inline-block;vertical-align:top" rel="noreferrer noopener" target="_blank"><img src="http://cdn.dominos.co.kr/renewal2018/w/img/mail/btn_home.png" alt="도미노피자 바로가기" style="display:block;border:0" loading="lazy"></a>
            </td></tr>

        <!-- //content -->

        <tr><td style="height:48px;border:1px solid #E5E2DD;border-width:0 1px;"></td></tr>

        <!-- footer -->
        <tr><td style="padding:0 20px;background-color:#eeece9">
                <table cellpadding="0" cellspacing="0" border="0" width="740">
                    <tbody><tr><td style="height:25px;"></td></tr>
                    <tr><td>
                            <ul style="margin:0;padding:0"><li style="padding-left:7px;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:18px;list-style:none;text-indent:-7px;letter-spacing:-1px">
                                    -  본 메일은 정보통신망 이용촉진 및 정보보호 등에 관한 법률시행규칙 등 관련규정에 의거하여 <span style="color:#e51937">2020년 07월 09일</span> 기준으로 회원님의 이메일 수신 동의 여부를 확인한 결과 회원님께서 수신에 동의하셨기에 발송되었습니다.
                                </li><li style="margin-top:17px;padding-left:7px;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:18px;list-style:none;text-indent:-7px;letter-spacing:-1px">
                                -  수신을 원하지 않으시면, <a href="http://web.dominos.co.kr/global/modDmds?email=rkdtngus1122@naver.com" rel="noreferrer noopener" target="_blank">여기</a>를 클릭하셔서 정보메일 수신동의를 수정하여 주시기 바랍니다.<br>   (If you don’t want this type of information or e-mail, please click the refuse here.)
                                </li><li style="margin-top:17px;padding-left:7px;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:18px;list-style:none;text-indent:-7px;letter-spacing:-1px">
                                    -  본 메일은 발신전용입니다. 문의사항은 webmaster@dominos.co.kr 또는 080-860-3082(고객센터)를 이용하여 주십시오.
                                </li></ul>
                        </td></tr>
                    <tr><td style="height:25px;"></td></tr>
                    <tr><td style="height:1px;background-color:#d5d0c8"></td></tr>
                    <tr><td style="height:20px;"></td></tr>
                    <tr><td>
                            <table cellpadding="0" cellspacing="0" border="0" width="740">
                                <tbody><tr><td style="width:190px;vertical-align:top">
                                        <img src="http://cdn.dominos.co.kr/renewal2018/w/img/mail/footer_phone.png" alt="" style="display:inline-block;border:0;vertical-align:middle" loading="lazy">
                                        <dl style="display:inline-block;margin:0 0 0 10px;padding:0;vertical-align:middle"><dt style="margin:0;padding:0;font-family:NanumGothic,Tahoma,sans-serif;font-size:14px;font-weight:400;color:#554b3c;line-height:14px;">전화주문</dt><dd style="margin:9px 0 0 0;padding:0;font-family:NanumGothic,Tahoma,sans-serif;font-size:20px;font-weight:bold;color:#554b3c;line-height:20px;">1577-3082</dd></dl>
                                    </td><td style="width:550px;vertical-align:top">
                                        <ul style="margin:0;padding:0;font-size:0;"><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">135-928 서울특별시 강남구 언주로 315 청오디피케이㈜<span style="margin:0 5px">|</span></li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">문의 : webmaster@dominos.co.kr</li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">사업자 등록번호: 220-81-03371<span style="margin:0 5px">|</span></li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">통신판매업신고: 강남 5064호<span style="margin:0 5px">|</span></li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">개인정보 보호책임자 : 이명윤</li><li style="display:inline-block;vertical-align:top;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px;list-style:none">대표이사: 오광현</li></ul>
                                        <p style="margin:0;padding:0;font-family:NanumGothic,Tahoma,sans-serif;font-size:12px;font-weight:400;color:#847e76;text-align:left;line-height:22px">Copyrightⓒ2016 Domino’s Pizza All rights reserved.</p>
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
