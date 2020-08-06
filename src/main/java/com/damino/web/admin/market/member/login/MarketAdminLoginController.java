package com.damino.web.admin.market.member.login;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MarketAdminLoginController {
	@Autowired
	private MarketAdminLoginService marketAdminLoginService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder; // 비밀번호 암호화 기능 수행하는 객체
	
	@RequestMapping(value="/main.smdo", method=RequestMethod.GET)
	   public ModelAndView getAdminMainPage(HttpSession session, Model model) {
		  String id = (String)session.getAttribute("id");
		  System.out.println("관리자 화면의 메인페이지 열기");
	      if(id != null) {
	    	  ModelAndView mav = new ModelAndView();
	    	  mav.setViewName("/members/main_welcome");
	    	  return mav;
	      }else {
	    	  ModelAndView mav = new ModelAndView();
	    	  mav.setViewName("/members/main");
	    	  return mav;
	      }
	}	

	@RequestMapping(value="/managerLogin.smdo", method=RequestMethod.GET)
	public ModelAndView getManagerLoginPage() {
		System.out.println("로그인 페이지 열기");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/managerLogin");
		
		return mav;
	}
	
	@RequestMapping(value="/managerLogin.smdo", method=RequestMethod.POST)
	public ModelAndView loginCheck(String id, String pw, HttpSession session, ModelAndView mav) {
		MarketAdminVO check = marketAdminLoginService.checkMemberId(id);
		if(check != null) {
			if(pwdEncoder.matches(pw, check.getManagerPasswd())) {
				session.setAttribute("id", check.getManagerId());
				mav.addObject("id", check.getManagerId());
				mav.addObject("pw", check.getManagerPasswd());
				mav.setViewName("/members/login_welcome");
				return mav;
			}else {
				mav.addObject("id_fail", id);
				mav.setViewName("/members/login_fail_pw");
				return mav;
			}
		}else {
			mav.addObject("id_fail", id);
			mav.setViewName("/members/login_fail_id");
			return mav;
		}
	}	
	
	@RequestMapping(value="/logout.smdo")
	public String logout(HttpSession session, Model model) {
		//로그아웃 로직을 작성, 로그인 페이지로 가도록 작성
		session.invalidate();
		return "members/managerLogin";
	}
		
	@RequestMapping(value="/managerRegister2.smdo", method=RequestMethod.GET)
	public String managerChangePage(HttpSession session, Model model) {
		System.out.println("회원정보 수정 페이지 열기");
		String managerId = (String)session.getAttribute("id");
		MarketAdminVO manager = marketAdminLoginService.checkMemberId(managerId);
		model.addAttribute("manager", manager);
		return "members/managerRegister2";
	}
	
	@RequestMapping(value="/managerRegister2.smdo", method=RequestMethod.POST)
	public String managerChangePage(Model model, MarketAdminVO manager, HttpSession session) {
		System.out.println("회원정보 수정");
		
		String pwd = manager.getManagerPasswd();
		String managerPasswd = pwdEncoder.encode(pwd);
		manager.setManagerPasswd(managerPasswd);
		
		marketAdminLoginService.updateMember(manager);
		session.invalidate();
		System.out.println("수정이 완료 되었습니다.");
		return "redirect:/managerLogin.smdo";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@RequestMapping(value="member/update", method=RequestMethod.GET)
//	public String memberUpdate(HttpSession session, Model model) {
//		String id = (String)session.getAttribute("id");
//		MemberVO member = memberService.checkMemberId(id);
//		model.addAttribute("member", member);
//		return "member/update_form";
//	}
//	
//	@RequestMapping(value="member/update", method=RequestMethod.POST)
//	public String memberUpdate(Model model, MemberVO member) { 
//		memberService.updateMember(member);
//		return "redirect:../"; 
//	}
	
	
	
	
//	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.GET)
//	private String loginView(MarketAdminVO vo) {
//		System.out.println("로그인 페이지로 이동");
//		System.out.println(marketAdminLoginService.toString());
//		return "members/managerLogin";
//	}	
//	
//	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.POST)
//	private ModelAndView loginCheck(MarketAdminVO vo, ModelAndView mav, HttpSession session) {
//		System.out.println("로그인 인증 처리");
//		
//		MarketAdminVO user = marketAdminLoginService.getMember(vo);
//		
//		if(user != null) {
//			System.out.println("로그인에 성공하였습니다.");
//			mav.setViewName("main");
//			return mav;
//		}else {
//			System.out.println("로그인에 실패하였습니다.");
//			
//			mav.setViewName("login/login");
//
//			return mav;
//		}
//	}
}
	
