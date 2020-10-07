package com.damino.web.admin.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.banner.UserBannerService;
import com.damino.web.user.banner.UserBannerVO;

@Controller
public class AdminMainController {
	@Autowired
	private UserBannerService userBannerService;
	
	// ---- user main ----
	@RequestMapping("/main.do")
	public ModelAndView getMainPage(Authentication auth) {
		System.out.println("메인페이지 열기");
		System.out.println("main 페이지 auth : " + auth);
		
		//-- 메인창 배너 생성
		System.out.println("메인 창 배너");
		List<UserBannerVO> bannerList = userBannerService.getUserBannerList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("bannerList", bannerList);
		mav.setViewName("/main");
		
		return mav;
	}
}
