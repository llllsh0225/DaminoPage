package com.damino.web.admin.homepage.regist;



import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.homepage.login.AdminMemberLoginVO;


@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberService adminMemberService;

	@Autowired
	private BCryptPasswordEncoder pwdEncoder; // 비밀번호 암호화 기능 수행하는 객체 
	
	// -- 홈페이지관리자 등록페이지 --
	@RequestMapping("/regForm.admdo")
	public ModelAndView getAdminRegFormPage() {
		System.out.println("회원 가입 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/regForm");
		
		return mav;
	}

	
	// -- 홈페이지관리자 등록 --
	@RequestMapping(value = "/registAdminMember.admdo", method = RequestMethod.POST)
	public String postRegistAdmin(@ModelAttribute AdminMemberVO vo,ModelAndView mav, HttpServletRequest request) throws Throwable {
		
		//비밀번호 암호 처리
		String pwd = vo.getAdminpassword();
		String adminpassword = pwdEncoder.encode(pwd);
		vo.setAdminpassword(adminpassword);
		
		
		adminMemberService.registAdminMember(vo);
		return "redirect:/login.admdo"; //로그인창으로 이동.
	}
	
	// -- 홈페이지 관리자 id중복확인 --
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
	
	// -- 비밀번호 변경페이지 --
	@RequestMapping("/passwordChange.admdo")
	public ModelAndView getAdminPasswordChangePage() {
		System.out.println("비밀번호 변경 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/passwordChange");
		
		return mav;
	}
	
	// -- 초기화시 비밀번호변경페이지 --
	@RequestMapping("/updateTempPW.admdo")
	public ModelAndView getAdminPasswordTempPage() {
		System.out.println("초기화 비밀번호 변경 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/updateTempPW");
		
		return mav;
	}
	

	// -- 임시 비번으로 교체 --
	@RequestMapping(value= "/changeTempPw.admdo", method = RequestMethod.POST)
	public ModelAndView changeTempPw(@ModelAttribute AdminMemberVO vo, ModelAndView mav, HttpServletRequest request) {
		System.out.println("-- 임시 비밀번호로 교체 --");
		
		String adminid = request.getParameter("adminid");
		String changepw = request.getParameter("resetcode");
		
		System.out.println("==== id 확인 ==== : "+ adminid );
		System.out.println("==== code(임시비번) ==== :" + changepw);
			
		vo.setAdminpassword(changepw); //임시비번을 '비번'자리에 set
		
		adminMemberService.changeTempPW(vo);
		
		mav.setViewName("/members/member/login");
		return mav;
	}
	
	//임시비번을 현 비번(암호화)로 교체
	@RequestMapping(value = "/changeNewPW.admdo", method = RequestMethod.POST)
	public ModelAndView changeNewPW(@ModelAttribute AdminMemberVO vo,ModelAndView mav, HttpServletRequest request, HttpSession session) {
		
		//암호화
		String pwd = vo.getAdminpassword();
		System.out.println("==== pwed 확인 ==== : "+ pwd );
		String adminpassword = pwdEncoder.encode(pwd);
		vo.setAdminpassword(adminpassword);
		
		adminMemberService.changeNewPw(vo);
	
		System.out.println("대상 : " + session.getAttribute("adminid")); //session 'adminid'
		session.invalidate(); //session 초기화
		
		mav.addObject("msg","change");
		mav.setViewName("/members/member/login");
		return mav;
	}
	
	

}

