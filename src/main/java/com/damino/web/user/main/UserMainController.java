package com.damino.web.user.main;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.board.BoardService;
import com.damino.web.admin.board.BoardVO;
import com.damino.web.admin.faq.FaqService;
import com.damino.web.admin.faq.FaqVO;
import com.damino.web.admin.orderlist.OrderlistService;
import com.damino.web.admin.salesstatus.SalesStatusService;
import com.damino.web.admin.salesstatus.SalesVO;
import com.damino.web.user.banner.UserBannerService;
import com.damino.web.user.banner.UserBannerVO;

@Controller
public class UserMainController {
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
