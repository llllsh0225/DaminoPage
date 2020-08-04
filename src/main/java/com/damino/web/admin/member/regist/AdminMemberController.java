package com.damino.web.admin.member.regist;



import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


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
		return "redirect:/login.admdo"; //로그인창으로 이동.
	}
	
	@RequestMapping(value ="/adminidCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int admincheck(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		int cnt_admin = 0;
		String adminid = (String)params.get("adminid");
		System.out.println("#Controller[id] : "+ adminid);
		
		cnt_admin = adminMemberService.admincheck(adminid);
		System.out.println("[cnt_admin] :"+ cnt_admin);// --- 중복일경우  1 , 사용가능 0 ---
		return cnt_admin;
	}
	

}

/*
 * member/regForm 상황
 *
 * <section id="container">
 * <form action="registAdminMember.admdo" method="POST"> 
 * <button class="btn btn-primary btn-block" type="submit" id="submit">계정 만들기</button> 
 * </form> 
 * </section>
 */