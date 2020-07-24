package com.damino.web.user.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/loginTest.do", method=RequestMethod.GET)
	private String loginView(UserVO vo) {
		System.out.println("�α��� ȭ������ �̵�");
		System.out.println(loginService.toString());
		return "login/login";
	}
	
	@RequestMapping(value="/loginTest.do", method=RequestMethod.POST)
	private ModelAndView loginCheck(UserVO vo, ModelAndView mav, HttpSession session) {
		System.out.println("�α��� ���� ó��");
		
		UserVO user = loginService.getUser(vo);
		if(user != null) {
			System.out.println("�α��ο� �����Ͽ����ϴ�.");
			
			mav.setViewName("main");
			return mav;
		}else {
			System.out.println("�α��ο� �����Ͽ����ϴ�. ���̵� �Ǵ� ��й�ȣ�� Ȯ�����ּ���.");
			
			mav.setViewName("login/login");
			
			return mav;
		}
	}
}
