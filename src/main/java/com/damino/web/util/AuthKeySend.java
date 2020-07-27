package com.damino.web.util;

import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class AuthKeySend {
	private String api_key = "NCSBHSWQI1WZ802A"; // API KEY
	private String api_secret = "QMKPPRQWH3XTHNHXRFL5BSSYNV5EFYTG"; // API SECRET
	private String daminoTel = "01093613740"; // CoolSMS�� ��ϵ� �߽� ��ȣ

	/**
	 * ȸ������ ������ȣ �߽� �޼���
	 */
	public String sendAuthKey(String userTel) {
		Message sendKey = new Message(api_key, api_secret);
		String authKey = authKeyGen();
		
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", userTel);
		params.put("from", daminoTel);
		params.put("type", "SMS");
		params.put("message", "[�ٹ̳����� ȸ������] ������ȣ : " + authKey);

		try {
			JSONObject obj = (JSONObject) sendKey.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
		return authKey;
	}

	/**
	 * 4�ڸ� �Ϸù�ȣ ���� �޼���
	 */
	public String authKeyGen() {
		Random rand = new Random();
		String authKey = ""; // ������ ����� ���� (����Ű)

		for (int i=0; i<4; i++) {
			// 0~9 ���� ���� ����
			String ran = Integer.toString(rand.nextInt(10));

			// keyNum�� ������ ������ append
			authKey += ran;
		}
		return authKey;
	}
}
