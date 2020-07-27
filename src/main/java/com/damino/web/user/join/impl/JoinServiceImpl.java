package com.damino.web.user.join.impl;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.damino.web.user.join.JoinService;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service("joinService")
public class JoinServiceImpl implements JoinService {

	@Override
	public void certifiedPhoneNumber(String phoneNumber, String authKey) {
		String api_key = "NCSGT81IOU5Z8QFW"; // API KEY
		String api_secret = "B5AFCHCWXWG3SYM1QVUHSOSOXD4BTXIJ"; // API SECRET
		String daminoTel = "01093613740"; // CoolSMS에 등록된 발신 번호

		Message sendKey = new Message(api_key, api_secret);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phoneNumber);
		params.put("from", daminoTel);
		params.put("type", "SMS");
		params.put("text", "[다미노피자 회원가입] 인증번호 : " + authKey);

		try {
			JSONObject obj = (JSONObject) sendKey.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}

	}

}
