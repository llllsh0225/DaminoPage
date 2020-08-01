package com.damino.web.user.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	@RequestMapping(value="/loginTest.do", method=RequestMethod.GET)
	private String loginView(UserVO vo) {
		System.out.println("로그인 페이지로 이동");
		System.out.println(loginService.toString());
		return "login/login";
	}
	
	@RequestMapping(value="/loginSuccess.do", method=RequestMethod.POST)
	private ModelAndView loginCheck(UserVO vo, ModelAndView mav, HttpSession session) {
		System.out.println("로그인 정보 확인");
		//session.getAttribute("username");
		UserVO login = loginService.login(vo);
		boolean pwdMatch = pwdEncoder.matches(vo.getUserid(), login.getUserpasswd());
		
		if(login != null && pwdMatch==true) {
			System.out.println("로그인에 성공하였습니다.");
			//session.setAttribute("username", login);
			mav.setViewName("main");
			return mav;
		}else {
			System.out.println("로그인에 실패하였습니다.");
			//session.setAttribute("username", null);
			mav.setViewName("login/login");
			return mav;
		}
	}

}
