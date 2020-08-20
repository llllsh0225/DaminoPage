package com.damino.web.user.login;

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
		HttpSession session = request.getSession();
		session.setAttribute("msg", "login");
		System.out.println("회원 이름 : " + name);
		mav.addObject("username", name);
		mav.setViewName("main");
		return mav;
	}
}
