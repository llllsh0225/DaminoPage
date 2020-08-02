package com.damino.web.user.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
	private ModelAndView loginCheck(@ModelAttribute UserVO vo, ModelAndView mav, HttpSession session, HttpServletRequest request){
		System.out.println("�α��� ���� Ȯ��");
		// session.getAttribute("username");
		session = request.getSession();
		System.out.println(session);
		try {
			UserVO login = loginService.login(vo, session);
			boolean pwdMatch = pwdEncoder.matches(vo.getUserpasswd(), login.getUserpasswd());//�Էº�й�ȣ�� ��ȣȭ�� ��й�ȣ ��ġ���� Ȯ
			System.out.println("�н����� ��ġ���� : " + pwdMatch);
			System.out.println("�Է� ��й�ȣ : " + vo.getUserpasswd());
			System.out.println("login : "+login);
			
			if (login != null && pwdMatch == true) {
				System.out.println("�α��ο� �����Ͽ����ϴ�.");
				System.out.println(login);
				System.out.println("ȸ�� ���̵� : " + login.getUserid());
				System.out.println("ȸ�� ��й�ȣ : " + login.getUserpasswd());
				System.out.println("ȸ�� �̸� : " + login.getUsername());//sql select�� userid, userpasswd, username 3���� ������
				session.setAttribute("username", login.getUsername());//session ��ü�� username�̶�� Ű�� �α����� ȸ���� �̸��� ������ ����
				System.out.println("���� : " + session.getAttribute("username"));
				mav.setViewName("main");
				return mav;
			} else if(login != null && pwdMatch == false){
				System.out.println("��й�ȣ ����");
				// session.setAttribute("username", null);
				mav.setViewName("login/login");
				return mav;
			} else {
				// session.setAttribute("username", null);
				mav.setViewName("login/login");
				return mav;
			}
			
		} catch (NullPointerException e) { //sql����  ������ ���̵� ���� �� 
			System.out.println("���̵� ����");
			mav.setViewName("login/login");
			return mav;
		}
	}
	
	@RequestMapping("logout.do")
	private ModelAndView logout(ModelAndView mav, HttpSession session, HttpServletRequest request){
		System.out.println("�α׾ƿ�");
		System.out.println("���� : " + session.getAttribute("username"));
		loginService.logout(session, request);
		mav.setViewName("login/login");
		return mav;
	}
}