package com.damino.web.user.join;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JoinController {
	@Autowired
	private JoinService joinService;
	
	@RequestMapping("/sendAuthKey.do")
	@ResponseBody
	public String sendSMS(String phoneNumber) {
		System.out.println("인증번호 송신");
		String authKey = "";
		
		Random rand = new Random();
		for(int i=0; i<4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			authKey += ran;
		}
		
		System.out.println("수신자 번호 : " + phoneNumber);
		System.out.println("인증 번호 : " + authKey );
		
		joinService.certifiedPhoneNumber(phoneNumber, authKey);
		
		return authKey;
	}
}
