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
	private BCryptPasswordEncoder pwdEncoder; // ��й�ȣ ��ȣȭ ��� �����ϴ� ��ü 
	
	// -- Ȩ������������ ��������� --
	@RequestMapping("/regForm.admdo")
	public ModelAndView getAdminRegFormPage() {
		System.out.println("ȸ�� ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/regForm");
		
		return mav;
	}

	
	// -- Ȩ������������ ��� --
	@RequestMapping(value = "/registAdminMember.admdo", method = RequestMethod.POST)
	public String postRegistAdmin(@ModelAttribute AdminMemberVO vo,ModelAndView mav, HttpServletRequest request) throws Throwable {
		
		//��й�ȣ ��ȣ ó��
		String pwd = vo.getAdminpassword();
		String adminpassword = pwdEncoder.encode(pwd);
		vo.setAdminpassword(adminpassword);
		
		
		adminMemberService.registAdminMember(vo);
		return "redirect:/login.admdo"; //�α���â���� �̵�.
	}
	
	// -- Ȩ������ ������ id�ߺ�Ȯ�� --
	@RequestMapping(value ="/adminidCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int admincheck(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		int cnt_admin = 0;
		String adminid = (String)params.get("adminid");
		System.out.println("#Controller[id] : "+ adminid);
		
		cnt_admin = adminMemberService.admincheck(adminid);
		System.out.println("[cnt_admin] :"+ cnt_admin);// --- �ߺ��ϰ��  1 , ��밡�� 0 ---
		return cnt_admin;
	}
	
	// -- ��й�ȣ ���������� --
	@RequestMapping("/passwordChange.admdo")
	public ModelAndView getAdminPasswordChangePage() {
		System.out.println("��й�ȣ ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/passwordChange");
		
		return mav;
	}
	
	// -- �ʱ�ȭ�� ��й�ȣ���������� --
	@RequestMapping("/updateTempPW.admdo")
	public ModelAndView getAdminPasswordTempPage() {
		System.out.println("�ʱ�ȭ ��й�ȣ ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/updateTempPW");
		
		return mav;
	}
	

	// -- �ӽ� ������� ��ü --
	@RequestMapping(value= "/changeTempPw.admdo", method = RequestMethod.POST)
	public ModelAndView changeTempPw(@ModelAttribute AdminMemberVO vo, ModelAndView mav, HttpServletRequest request) {
		System.out.println("-- �ӽ� ��й�ȣ�� ��ü --");
		
		String adminid = request.getParameter("adminid");
		String changepw = request.getParameter("resetcode");
		
		System.out.println("==== id Ȯ�� ==== : "+ adminid );
		System.out.println("==== code(�ӽú��) ==== :" + changepw);
			
		vo.setAdminpassword(changepw); //�ӽú���� '���'�ڸ��� set
		
		adminMemberService.changeTempPW(vo);
		
		mav.setViewName("/members/member/login");
		return mav;
	}
	
	//�ӽú���� �� ���(��ȣȭ)�� ��ü
	@RequestMapping(value = "/changeNewPW.admdo", method = RequestMethod.POST)
	public ModelAndView changeNewPW(@ModelAttribute AdminMemberVO vo,ModelAndView mav, HttpServletRequest request, HttpSession session) {
		
		//��ȣȭ
		String pwd = vo.getAdminpassword();
		System.out.println("==== pwed Ȯ�� ==== : "+ pwd );
		String adminpassword = pwdEncoder.encode(pwd);
		vo.setAdminpassword(adminpassword);
		
		adminMemberService.changeNewPw(vo);
	
		System.out.println("��� : " + session.getAttribute("adminid")); //session 'adminid'
		session.invalidate(); //session �ʱ�ȭ
		
		mav.addObject("msg","change");
		mav.setViewName("/members/member/login");
		return mav;
	}
	
	

}

