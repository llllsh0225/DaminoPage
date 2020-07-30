package com.damino.web.user.join;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JoinController {
	@Autowired
	private JoinService joinService;
	
	@RequestMapping(value="/sendAuthKey.do", produces="text/json; charset=utf-8", method=RequestMethod.POST)
	@ResponseBody
	// �������� �߼� �޼ҵ�
	public String sendSMS(@RequestBody Map<String, Object> params, HttpServletRequest request){
		System.out.println("������ȣ �۽�");
		System.out.println(params.toString());
		
		String phoneNumber = (String) params.get("phoneNumber");
		String authKey = "";
		
		Random rand = new Random();
		for(int i=0; i<4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			authKey += ran;
		}
		
		System.out.println("������ ��ȣ : " + phoneNumber);
		System.out.println("���� ��ȣ : " + authKey );
		
		joinService.certifiedPhoneNumber(phoneNumber, authKey);
		
		return authKey;
	}
}
