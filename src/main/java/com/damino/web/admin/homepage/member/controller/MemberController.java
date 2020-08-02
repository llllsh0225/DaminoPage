package com.damino.web.admin.homepage.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.homepage.member.vo.MemberVO;
import com.damino.web.admin.hompage.member.service.IMemberService;

@Controller
public class MemberController {

	@Autowired
	IMemberService memberService;
	
	@RequestMapping(value="memberInfo.admdo", method=RequestMethod.GET)
	public ModelAndView getMemberList() {
		List<MemberVO> userList = memberService.selectAllMembers();
		System.out.println(userList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("members/member/memberInfo");
		mav.addObject("userList", userList);
		return mav;
	}
}
