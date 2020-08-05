package com.damino.web.user.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


@Controller
@SessionAttributes("username")
public class LoginController {
	@Autowired
	private LoginService loginService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;

	
	@RequestMapping(value = "/loginCheck.do", method = RequestMethod.POST)
	private ModelAndView loginCheck(@ModelAttribute UserVO vo, Authentication auth, ModelAndView mav, HttpServletRequest request){
		System.out.println("�α��� ���� Ȯ��");
		System.out.println("auth : " +auth);
		HttpSession session = request.getSession();
		try {
			UserVO login = loginService.login(vo);
			boolean pwdMatch = pwdEncoder.matches(vo.getUserpasswd(), login.getUserpasswd());//�Էº�й�ȣ�� ��ȣȭ�� ��й�ȣ ��ġ���� Ȯ
			System.out.println("�н����� ��ġ���� : " + pwdMatch);
			System.out.println("�Է� ��й�ȣ : " + vo.getUserpasswd());
			
			if (login != null && pwdMatch == true) {//sql���� ������ ���� null�� �ƴϰ� ��й�ȣ ��ġ���ΰ� true�̸� �α��� ���� 
				System.out.println("�α��ο� �����Ͽ����ϴ�.");
				System.out.println("ȸ�� ���̵� : " + login.getUserid());
				System.out.println("ȸ�� ��й�ȣ : " + login.getUserpasswd());
				System.out.println("ȸ�� �̸� : " + login.getUsername());//sql select�� userid, userpasswd, username 3���� ������
				System.out.println("ȸ�� ��� : " + login.getUserlevel());
				session.setAttribute("username", login.getUsername());//session ��ü�� username�̶�� Ű�� �α����� ȸ���� �̸��� ������ ����
				session.setAttribute("userid", login.getUserid()); // session ��ü�� userid��� Ű�� �α����� ȸ���� ���̵� ������ ����
				session.setAttribute("userlevel", login.getUserlevel()); // session ��ü�� userlevel ����
				session.setAttribute("user", login); // session ��ü�� "user"�� login �� ��� ��ü�� ����
				mav.setViewName("main");
				return mav;
			} else if(login != null && pwdMatch == false){//sql���� ���̵�� ���������� ��й�ȣ�� Ʋ�����
				mav.addObject("msg", "fail");
				mav.setViewName("login/login");
				return mav;
			} else {
				mav.setViewName("login/login");
				return mav;
			}
			
		} catch (NullPointerException e) { //sql����  ������ ���̵� ���� ���
			mav.addObject("msg", "fail");
			mav.setViewName("login/login");
			return mav;
		}
	}
	
	@RequestMapping("logout.do")
	private ModelAndView logout(UserVO vo, ModelAndView mav, HttpSession session){
		System.out.println("�α׾ƿ�");
		System.out.println(session.getAttribute("username"));
		session.invalidate();
		mav.addObject("msg", "logout"); // logout �޼��� ����
		mav.addObject("username", vo.getUsername());
		mav.setViewName("main");
		return mav;
		
	}
}