package com.damino.web.admin.market.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsersController {
	@Autowired
	private UsersService usersService;

	@RequestMapping("/memberInfo.admdo")
	public ModelAndView getUserList() {
		System.out.println("유저 목록");
		List<UsersVO> usersList = usersService.getUsersList();
		System.out.println(usersList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("members/member/memberInfo");
		mav.addObject("usersList", usersList);
		return mav;
	}
}
