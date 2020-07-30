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
		System.out.println("ȸ�� ���");
		System.out.println("�̸� : " + vo.getUsername());
		System.out.println("���̵� : " + vo.getUserid());
		System.out.println("��й�ȣ : " + vo.getUserpasswd());
		System.out.println("������� : " + vo.getBirthday());
		System.out.println("���� : " + vo.getSex());
		System.out.println("���/����: " + vo.getCyear());
		System.out.println("��ȭ��ȣ: " + vo.getPhone());
		System.out.println("�̸���: " + vo.getEmail());
		System.out.println("SMS ���ſ���: " + vo.getReceive_sms());
		System.out.println("Email ���ſ���: " + vo.getReceive_dm());
		System.out.println("DM ���ſ���: " + vo.getReceive_dm());
		registService.registMember(vo);
		return "redirect:regForm.do";
	}
}


