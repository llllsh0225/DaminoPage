package com.damino.web.admin.market.member.login;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes({"managername", "managerid", "storeregion", "storename"})
public class MarketAdminLoginController {
	@Autowired
	private MarketAdminLoginService marketAdminLoginService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder; // 비밀번호 암호화 기능 수행하는 객체
	
	@RequestMapping("/main.smdo")
	   public ModelAndView getAdminMainPage(HttpSession session, ModelAndView mav) {
		  String managerid = (String)session.getAttribute("managerid");
		  System.out.println("관리자 화면의 메인페이지 열기");
	      if(managerid == null) {
	    	  System.out.println(managerid);
	    	  mav.setViewName("/members/managerLogin");
	    	  return mav;
	      }else {
	    	  mav.setViewName("/members/main");
	    	  return mav;
	      }
	}	

	@RequestMapping("/managerLogin.smdo")
	public ModelAndView getManagerLoginPage() {
		System.out.println("로그인 페이지 열기");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/managerLogin");
		
		return mav;
	}
	
	@RequestMapping(value="/managerLoginCheck.smdo", method=RequestMethod.POST)
	public ModelAndView managerLoginCheck(@ModelAttribute MarketAdminVO vo, String managerpasswd, ModelAndView mav, HttpSession session, HttpServletRequest request) {
		System.out.println("로그인 정보 확인");
		session = request.getSession();
		
		MarketAdminVO managerLogin = marketAdminLoginService.managerLogin(vo);
		System.out.println(managerLogin);
		System.out.println(vo.getManagerid());
		System.out.println(managerLogin.getManagerpasswd());
		
		boolean pwdMatch = pwdEncoder.matches(managerpasswd, managerLogin.getManagerpasswd());
		System.out.println(pwdMatch);
		if(managerLogin!=null && pwdMatch==true) {
			String checkMem = managerLogin.getCheckMem(); //매장관리자 승인여부 체크
			if(checkMem.equals("Y")) {
				mav.addObject("managerid", managerLogin.getManagerid());
				mav.addObject("managername", managerLogin.getManagername());
				mav.addObject("storeregion", managerLogin.getStoreregion());
				mav.addObject("storename", managerLogin.getStorename());
				
				session.setAttribute("msg", "managerLogin");
				mav.setViewName("/members/main");
			}
		}else {
			System.out.println("오류");
		}
		
		return mav;
	}	
	
	@RequestMapping(value="/logout.smdo")
	public String logout(HttpSession session, HttpServletRequest request) {
		//로그아웃 로직을 작성, 로그인 페이지로 가도록 작성
		session=request.getSession();
		session.invalidate();
		return "members/managerLogin";
	}
		
//	@RequestMapping(value="/managerRegister2.smdo", method=RequestMethod.GET)
//	public String managerChangePage(HttpSession session, Model model) {
//		System.out.println("회원정보 수정 페이지 열기");
//		String managerId = (String)session.getAttribute("id");
//		MarketAdminVO manager = marketAdminLoginService.checkMemberId(managerId);
//		model.addAttribute("manager", manager);
//		return "members/managerRegister2";
//	}
	
//	@RequestMapping(value="/managerRegister2.smdo", method=RequestMethod.POST)
//	public String managerChangePage(Model model, MarketAdminVO manager, HttpSession session) {
//		System.out.println("회원정보 수정");
//		
//		String pwd = manager.getManagerpasswd();
//		String managerPasswd = pwdEncoder.encode(pwd);
//		manager.setManagerpasswd(managerPasswd);
//		
//		marketAdminLoginService.updateMember(manager);
//		session.invalidate();
//		System.out.println("수정이 완료 되었습니다.");
//		return "redirect:/managerLogin.smdo";
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
	
