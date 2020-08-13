package com.damino.web.admin.member.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("adminid")
public class AdminMemberLoginController {
	
	@Autowired
	private AdminMemberLoginService adminMemberLoginService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;  //��й�ȣ ��ȣȭ ��� �����ϴ� ��ü 
	
	@RequestMapping(value = "/adminloginCheck.admdo" , method = RequestMethod.POST)
	private ModelAndView adminLoginCheck(AdminMemberLoginVO vo, ModelAndView mav, HttpServletRequest request) {
		System.out.println("[������ �α��� ����Ȯ��]");
		HttpSession session = request.getSession();
		
		String checker = "0000"; //�ʱ�ȭ���
		
		//����� �ӽ� ����ϰ��.
		if(vo.getAdminpassword().equals(checker)) {
			try {
				AdminMemberLoginVO adminidcheck = adminMemberLoginService.login(vo);
				boolean idMatch = vo.getAdminid().equals(adminidcheck.getAdminid());
				System.out.println("[�Է��� ���̵�] : " +vo.getAdminid());
				System.out.println("[DB ���翩��] : "+ idMatch);
				
				if(adminidcheck != null && idMatch) {
					System.out.println("-- �ʱ�ȭ ��� ���� --");
					System.out.println("������ : " + adminidcheck.getAdminid());
					
					session.setAttribute("adminid", adminidcheck.getAdminid());
					session.setAttribute("admin", adminidcheck);
					
					mav.addObject("msg","changepw");
					mav.setViewName("/members/member/passwordChange");
					return mav;
				} else if( adminidcheck!= null && idMatch == false){
					mav.addObject("msg", "fail"); // �޼��� ���.
					mav.setViewName("members/member/login"); //�α��� �������� �̵�
					return mav;
				}
					mav.setViewName("members/member/login"); //�α��� �������� �̵�
					return mav;
			} catch (NullPointerException e) {
				System.err.println("[nullpointer ����] : " + e); //sql���� ������ ���̵� ���� ���
				mav.addObject("msg", "fail"); // �޼��� ���.
				mav.setViewName("members/member/login"); //�α��� �������� �̵�
				return mav;
			}
			
		
		}else {
			try {
				AdminMemberLoginVO adminlogin = adminMemberLoginService.login(vo);
				boolean pwdMatch = pwdEncoder.matches(vo.getAdminpassword(), adminlogin.getAdminpassword()); //DB�� �մ� ����� �Է¹��� ����� ��ġ����Ȯ��
				System.out.println("[�Է��� ��й�ȣ] : "+ vo.getAdminpassword());
				System.out.println("[�н����� ��ġ����] : "+ pwdMatch);
				
				if( adminlogin != null && pwdMatch == true) { //sql���� ������ ����  null�� �ƴϰ� ��й�ȣ�� ��ġ�Ҷ�(�α��μ���)
					System.out.println("---- �α��� ����. ----");
					System.out.println("������ ���̵� : " + adminlogin.getAdminid());
					System.out.println("������ ��й�ȣ : " + adminlogin.getAdminpassword()); 
					// -- sql select��  adminid, adminpassword�� �����ͼ� Ȯ�� .
				
					session.setAttribute("adminid", adminlogin.getAdminid()); 
					session.setAttribute("admin", adminlogin); 
					// -- session��ü�� adminid�̶�� Ű�� �α����� �������� id���� ���� 
					// - session��ü admin��  adminlogin ��ü ����.
					mav.setViewName("main");
					return mav;	
					
				} else if( adminlogin != null && pwdMatch == false) { //sql�� ������ ���̶� �Է� ����� �ٸ� ���
					mav.addObject("msg", "fail"); // �޼��� ���.
					mav.setViewName("members/member/login"); //�α��� �������� �̵�
					return mav;
				} else {
					mav.setViewName("members/member/login"); //�α��� �������� �̵�
					return mav;
				}	
				
			} catch (NullPointerException e) { //sql���� ������ ���̵� ���� ���
				System.err.println("[nullpointer ����] : " + e);
				mav.addObject("msg", "fail"); // �޼��� ���.
				mav.setViewName("members/member/login"); //�α��� �������� �̵�
				return mav;
			}	
		}
		
	}
	
	// -- �α׾ƿ� --
	@RequestMapping("/logout.admdo")
	private ModelAndView logout(AdminMemberLoginVO vo, ModelAndView mav, HttpSession session) {
		System.out.println("---- �α׾ƿ� ----");
		System.out.println("��� : " + session.getAttribute("adminid")); //session 'adminid'
		session.invalidate(); //session �ʱ�ȭ
		mav.addObject("msg","logout"); // <<<< �̰� ���ܾ��ϳ�
		mav.addObject("adminid", vo.getAdminid()); // <<<< �̰� ���ܾ��ϳ�(20/0805)
		//mav.setViewName("members/member/login"); 
		mav.setViewName("main");
		return mav;
	}
	
}
