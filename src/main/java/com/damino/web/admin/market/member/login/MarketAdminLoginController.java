package com.damino.web.admin.market.member.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.login.UserVO;

@Controller
public class MarketAdminLoginController {
	@Autowired
	private MarketAdminService marketAdminService;
	
	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.GET)
	private String loginView(MarketAdminVO vo) {
		System.out.println("로그인 페이지로 이동");
		System.out.println(marketAdminService.toString());
		return "members/managerLogin";
	}
	
	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.POST)
	private ModelAndView loginCheck(MarketAdminVO vo, ModelAndView mav, HttpSession session) {
		System.out.println("로그인 인증 처리");
		
		MarketAdminVO user = marketAdminService.getMember(vo);
		
		if(user != null) {
			System.out.println("로그인에 성공하였습니다.");
			mav.setViewName("main");
			return mav;
		}else {
			System.out.println("로그인에 실패하였습니다.");
			
			mav.setViewName("login/login");

			return mav;
		}
	}
	
}
