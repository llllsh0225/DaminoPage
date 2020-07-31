package com.damino.web.user.regist;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistController {
	@Autowired
	private RegistService registService;
	
	@RequestMapping(value="/registMember.do", method=RequestMethod.POST)
	public String registMember(@ModelAttribute UserMemberVO vo) {
		System.out.println("회원 등록");
		System.out.println("이름 : " + vo.getUsername());
		System.out.println("아이디 : " + vo.getUserid());
		System.out.println("비밀번호 : " + vo.getUserpasswd());
		System.out.println("생년월일 : " + vo.getBirthday());
		System.out.println("성별 : " + vo.getSex());
		System.out.println("양력/음력: " + vo.getCyear());
		System.out.println("전화번호: " + vo.getPhone());
		System.out.println("이메일: " + vo.getEmail());
		System.out.println("SMS 수신여부: " + vo.getReceive_sms());
		System.out.println("Email 수신여부: " + vo.getReceive_dm());
		System.out.println("DM 수신여부: " + vo.getReceive_dm());
		registService.registMember(vo);
		return "redirect:regForm.do";
	}
}


