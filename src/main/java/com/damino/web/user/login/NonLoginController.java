package com.damino.web.user.login;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NonLoginController {

	@RequestMapping(value="NonLogin.do", method = RequestMethod.POST)
	private ModelAndView nonloginCheck(@RequestParam("name") String name, ModelAndView mav, HttpServletRequest request){
		HttpSession session = request.getSession(true);
		
		
		// 비회원 아이디에 랜덤 숫자 부여
		String num = "";
		
		Random rand = new Random();
		
		for (int i = 0; i < 5; i++) {
			num += Integer.toString(rand.nextInt(10));
		}
		
		System.out.println("일련번호 : " + num);
		System.out.println("회원 이름 : " + name);
		
		session.setAttribute("guest", "guest");
		session.setAttribute("msg", "login");
		session.setAttribute("userid", "guest" + num);
		session.setAttribute("username", name);
		mav.setViewName("main");
		return mav;
	}
}
