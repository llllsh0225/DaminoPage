package com.damino.web.user.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.banner.UserBannerService;
import com.damino.web.user.banner.UserBannerVO;

@Controller
public class UserMainController {
	@Autowired 
	UserBannerService userBannerService;
	
	// ---- user main ----
	@RequestMapping("/main.do")
	public ModelAndView getMainPage(Authentication auth) {
		System.out.println("메인페이지 열기");
		System.out.println("main 페이지 auth : " + auth);

		// -- 메인창 배너 생성
		System.out.println("메인 창 배너");
		List<UserBannerVO> bannerList = userBannerService.getUserBannerList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("bannerList", bannerList);
		mav.setViewName("/main");

		return mav;
	}
	
	@RequestMapping("/ceo.do")
	public ModelAndView getCeoPage() {
		System.out.println("회사소개 CEO 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/ceo");
		return mav;
	}
	
	@RequestMapping("/international.do")
	public ModelAndView getInternationalPage() {
		System.out.println("회사소개 International 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/international");
		return mav;
	}
	
	@RequestMapping("/location.do")
	public ModelAndView getLocationPage() {
		System.out.println("회사소개 Location 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/location");
		return mav;
	}
	
	@RequestMapping("/overview.do")
	public ModelAndView getOverviewPage() {
		System.out.println("회사소개 Overview 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/overview");
		return mav;
	}
	
	@RequestMapping("/chainstore1.do")
	public ModelAndView getChainstoreFirstPage() {
		System.out.println("가맹점모집 1페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore1");
		return mav;
	}
	
	@RequestMapping("/chainstore2.do")
	public ModelAndView getChainstoreSencondPage() {
		System.out.println("가맹점모집 2페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore2");
		return mav;
	}
	
	@RequestMapping("/chainstore3.do")
	public ModelAndView getChainstoreThiredPage() {
		System.out.println("가맹점모집 3페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore3");
		return mav;
	}
	
	@RequestMapping("/chainstore4.do")
	public ModelAndView getChainstoreFourthPage() {
		System.out.println("가맹점모집 4페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore4");
		return mav;
	}
	
	@RequestMapping("/mania.do")
	public ModelAndView getManiaPage() {
		System.out.println("매니아 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/service/mania");
		return mav;
	}
	
	@RequestMapping("/groupOrder.do")
	public ModelAndView getGroupOrder() {
		System.out.println("단체주문 페이지");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/groupOrder");
		return mav;
	}
}
