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
		System.out.println("로그인 화면으로 이동");
		System.out.println(loginService.toString());
		return "login/login";
	}
	
	@RequestMapping(value="/loginTest.do", method=RequestMethod.POST)
	private ModelAndView loginCheck(UserVO vo, ModelAndView mav, HttpSession session) {
		System.out.println("로그인 인증 처리");
		
		UserVO user = loginService.getUser(vo);
		if(user != null) {
			System.out.println("로그인에 성공하였습니다.");
			
			mav.setViewName("main");
			return mav;
		}else {
			System.out.println("로그인에 실패하였습니다. 아이디 또는 비밀번호를 확인해주세요.");
			
			mav.setViewName("login/login");
			
			return mav;
		}
	}
}
