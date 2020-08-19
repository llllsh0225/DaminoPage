package com.damino.web.user.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NonLoginController {

	@RequestMapping(value="NonLogin.do", method = RequestMethod.POST)
	private ModelAndView nonloginCheck(@RequestParam("name") String name, ModelAndView mav){
		
		System.out.println("회원 이름 : " );//sql select로 userid, userpasswd, username 3개만 가져옴
		mav.addObject("name", name);
		mav.setViewName("main");
		return mav;
	}
}
