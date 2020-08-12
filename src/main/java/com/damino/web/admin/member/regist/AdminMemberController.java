package com.damino.web.admin.member.regist;



import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberService adminMemberService;

	@Autowired
	private BCryptPasswordEncoder pwdEncoder; // ��й�ȣ ��ȣȭ ��� �����ϴ� ��ü 
	
	@RequestMapping(value = "/registAdminMember.admdo", method = RequestMethod.POST)
	public String postRegistAdmin(@ModelAttribute AdminMemberVO vo,ModelAndView mav, HttpServletRequest request) throws Throwable {
		
		//��й�ȣ ��ȣ ó��
		String pwd = vo.getAdminpassword();
		String adminpassword = pwdEncoder.encode(pwd);
		vo.setAdminpassword(adminpassword);
		
		
		adminMemberService.registAdminMember(vo);
		return "redirect:/login.admdo"; //�α���â���� �̵�.
	}
	
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
	
	//�ӽ� ��й�ȣ
	/*
	 * 	#service[admin] : AdminMemberVO [adminid=null, adminpassword=null]
		#DAO[�ӽ� ��й�ȣ �߱�] :AdminMemberVO [adminid=null, adminpassword=null] ���� ����
	 * 
	 * 
	 * */
	
	@RequestMapping("changeTempPw.admdo")
	public ModelAndView changeTempPw(@ModelAttribute AdminMemberVO vo, ModelAndView mav, HttpServletRequest request) {
		System.out.println("-- �ӽ� ��й�ȣ�� ��ü --");
		adminMemberService.changeTempPW(vo);
		
		mav.setViewName("/members/member/login");
		return mav;
	}
	

}

/*
 * member/regForm ��Ȳ
 *
 * <section id="container">
 * <form action="registAdminMember.admdo" method="POST"> 
 * <button class="btn btn-primary btn-block" type="submit" id="submit">���� �����</button> 
 * </form> 
 * </section>
 */