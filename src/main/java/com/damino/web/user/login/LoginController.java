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
		System.out.println("로그인 정보 확인");
		// session.getAttribute("username");
		session = request.getSession();
		System.out.println(session);
		try {
			UserVO login = loginService.login(vo, session);
			boolean pwdMatch = pwdEncoder.matches(vo.getUserpasswd(), login.getUserpasswd());//입력비밀번호와 암호화된 비밀번호 일치여부 확
			System.out.println("패스워드 일치여부 : " + pwdMatch);
			System.out.println("입력 비밀번호 : " + vo.getUserpasswd());
			System.out.println("login : "+login);
			
			if (login != null && pwdMatch == true) {
				System.out.println("로그인에 성공하였습니다.");
				System.out.println(login);
				System.out.println("회원 아이디 : " + login.getUserid());
				System.out.println("회원 비밀번호 : " + login.getUserpasswd());
				System.out.println("회원 이름 : " + login.getUsername());//sql select로 userid, userpasswd, username 3개만 가져옴
				session.setAttribute("username", login.getUsername());//session 객체에 username이라는 키에 로그인한 회원의 이름을 값으로 저장
				System.out.println("세션 : " + session.getAttribute("username"));
				mav.setViewName("main");
				return mav;
			} else if(login != null && pwdMatch == false){
				System.out.println("비밀번호 오류");
				// session.setAttribute("username", null);
				mav.setViewName("login/login");
				return mav;
			} else {
				// session.setAttribute("username", null);
				mav.setViewName("login/login");
				return mav;
			}
			
		} catch (NullPointerException e) { //sql에서  가져올 아이디가 없을 때 
			System.out.println("아이디 오류");
			mav.setViewName("login/login");
			return mav;
		}
	}
	
	@RequestMapping("logout.do")
	private ModelAndView logout(ModelAndView mav, HttpSession session, HttpServletRequest request){
		System.out.println("로그아웃");
		System.out.println("세션 : " + session.getAttribute("username"));
		loginService.logout(session, request);
		mav.setViewName("login/login");
		return mav;
	}
}