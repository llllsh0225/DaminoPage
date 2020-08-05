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
		System.out.println("로그인 정보 확인");
		System.out.println("auth : " +auth);
		HttpSession session = request.getSession();
		try {
			UserVO login = loginService.login(vo);
			boolean pwdMatch = pwdEncoder.matches(vo.getUserpasswd(), login.getUserpasswd());//입력비밀번호와 암호화된 비밀번호 일치여부 확
			System.out.println("패스워드 일치여부 : " + pwdMatch);
			System.out.println("입력 비밀번호 : " + vo.getUserpasswd());
			
			if (login != null && pwdMatch == true) {//sql에서 가져온 값이 null이 아니고 비밀번호 일치여부가 true이면 로그인 성공 
				System.out.println("로그인에 성공하였습니다.");
				System.out.println("회원 아이디 : " + login.getUserid());
				System.out.println("회원 비밀번호 : " + login.getUserpasswd());
				System.out.println("회원 이름 : " + login.getUsername());//sql select로 userid, userpasswd, username 3개만 가져옴
				System.out.println("회원 등급 : " + login.getUserlevel());
				session.setAttribute("username", login.getUsername());//session 객체에 username이라는 키에 로그인한 회원의 이름을 값으로 저장
				session.setAttribute("userid", login.getUserid()); // session 객체에 userid라는 키에 로그인한 회원의 아이디를 값으로 저장
				session.setAttribute("userlevel", login.getUserlevel()); // session 객체에 userlevel 저장
				session.setAttribute("user", login); // session 객체의 "user"에 login 한 멤버 객체를 저장
				mav.setViewName("main");
				return mav;
			} else if(login != null && pwdMatch == false){//sql에서 아이디는 가져왔으나 비밀번호가 틀린경우
				mav.addObject("msg", "fail");
				mav.setViewName("login/login");
				return mav;
			} else {
				mav.setViewName("login/login");
				return mav;
			}
			
		} catch (NullPointerException e) { //sql에서  가져올 아이디가 없는 경우
			mav.addObject("msg", "fail");
			mav.setViewName("login/login");
			return mav;
		}
	}
	
	@RequestMapping("logout.do")
	private ModelAndView logout(UserVO vo, ModelAndView mav, HttpSession session){
		System.out.println("로그아웃");
		System.out.println(session.getAttribute("username"));
		session.invalidate();
		mav.addObject("msg", "logout"); // logout 메세지 세팅
		mav.addObject("username", vo.getUsername());
		mav.setViewName("main");
		return mav;
		
	}
}