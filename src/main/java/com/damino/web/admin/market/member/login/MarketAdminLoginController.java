package com.damino.web.admin.market.member.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MarketAdminLoginController {
	@Autowired
	private MarketAdminLoginService marketAdminLoginService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.GET)
	private String loginView(MarketAdminVO vo) {
		System.out.println("로그인 페이지로 이동");
		System.out.println(marketAdminLoginService.toString());
		return "members/managerLogin";
	}
	
//	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.POST)
//	private ModelAndView loginCheck(MarketAdminVO vo, ModelAndView mav, HttpSession session) {
//		System.out.println("로그인 인증 처리");
//		
//		MarketAdminVO user = marketAdminLoginService.getMember(vo);
//		
//		if(user != null) {
//			System.out.println("로그인에 성공하였습니다.");
//			mav.setViewName("main");
//			return mav;
//		}else {
//			System.out.println("로그인에 실패하였습니다.");
//			
//			mav.setViewName("login/login");
//
//			return mav;
//		}
//	}
	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.POST)
	public ModelAndView loginCheck(String id, String pw, HttpSession session, ModelAndView mav) {
		MarketAdminVO check = marketAdminLoginService.checkMemberId(id);
		if(check != null) {
			if(pwdEncoder.matches(pw, check.getManagerPasswd())) {
				session.setAttribute("id", check.getManagerId());
				mav.addObject("id", check.getManagerId());
				mav.addObject("pw", check.getManagerPasswd());
				mav.setViewName("login_welcome");
				return mav;
			}else {
				mav.addObject("id_fail", id);
				mav.setViewName("login_fail_pw");
				return mav;
			}
		}else {
			mav.addObject("id_fail", id);
			mav.setViewName("login_fail_id");
			return mav;
		}
	}	
	
	@RequestMapping(value="/logout.smdo")
	public String logout(HttpSession session, Model model) {
		//로그아웃 로직을 작성, 로그인 페이지로 가도록 작성
		session.invalidate();
		return "members/managerLogin";
	}
}
	
