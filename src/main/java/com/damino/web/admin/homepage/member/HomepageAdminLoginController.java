package com.damino.web.admin.homepage.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomepageAdminLoginController {
	@Autowired
	private HomepageAdminMemService homepageAdminMemService;

	@RequestMapping("/memberInfo.admdo")
	public ModelAndView getUserList() {
		System.out.println("유저 목록");
		List<HomepageAdminMemVO> usersList = homepageAdminMemService.getUsersList();
		System.out.println(usersList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("members/member/memberInfo");
		mav.addObject("usersList", usersList);
		return mav;
	}
}
