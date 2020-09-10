package com.damino.web.user.regist.impl;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.regist.RegistService;
import com.damino.web.user.regist.UserMemberDAO;
import com.damino.web.user.regist.UserMemberVO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service("registService")
public class RegistServiceImpl implements RegistService {
	@Autowired
	private UserMemberDAO userMemberDAO;

	@Override
	public void registMember(UserMemberVO vo) {
		System.out.println("RegistMemberImpl registMember(vo)");
		userMemberDAO.registUserMember(vo);
	}

	@Override
	public void certifiedPhoneNumber(String phoneNumber, String authKey) {
		String api_key = "NCSGT81IOU5Z8QFW"; // API KEY
		String api_secret = "B5AFCHCWXWG3SYM1QVUHSOSOXD4BTXIJ"; // API SECRET
		String daminoTel = "01093613740"; // CoolSMS�� ��ϵ� �߽� ��ȣ

		Message sendKey = new Message(api_key, api_secret);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phoneNumber);
		params.put("from", daminoTel);
		params.put("type", "SMS");
		params.put("text", "[�ٹ̳�����] ������ȣ : " + authKey);

		try {
			JSONObject obj = (JSONObject) sendKey.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}

	}
	
	
	//�ߺ�üũ
	//id
	@Override
	public int idcheck(String userid) {
		System.out.println("#service[id] : " + userid);
		return userMemberDAO.idcheck(userid);
	}
	
	//email
	@Override
	public int emailcheck(String email) {
		System.out.println("#service[email] : " + email);
		return userMemberDAO.emailcheck(email);
	}

	
}