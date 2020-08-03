package com.damino.web.admin.member.regist;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AdminMemberController {
	//확인용 로그
	private static final Logger logger = LoggerFactory.getLogger(AdminMemberController.class);
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@RequestMapping(value = "/registAdminMember.admdo", method = RequestMethod.POST)
	public String postRegistAdmin(AdminMemberVO vo) {
		logger.info("postRegistAdmin");	
		adminMemberService.registAdminMember(vo);
		return "redirect:/login.admdo";
	}
	

}
