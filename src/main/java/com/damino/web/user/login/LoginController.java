package com.damino.web.user.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/loginTest.do", method=RequestMethod.GET)
	private String loginView(UserVO vo) {
		System.out.println("로그인 페이지로 이동");
		System.out.println(loginService.toString());
		return "login/login";
	}
	
	@RequestMapping(value="/loginTest.do", method=RequestMethod.POST)
	private ModelAndView loginCheck(UserVO vo, ModelAndView mav, HttpSession session) {
		System.out.println("로그인 인증 처리");
		
		UserVO user = loginService.getUser(vo);
		
		if(user != null) {
			System.out.println("로그인에 성공하였습니다.");
			mav.setViewName("main");
			return mav;
		}else {
			System.out.println("로그인에 실패하였습니다.");
			
			mav.setViewName("login/login");

			return mav;
		}
	}
	


	// id중복체크
	@RequestMapping(value ="/idcheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int idcheck(@RequestBody Map<String, Object> params, HttpServletRequest request){
		int count = 0;
		String userid = (String)params.get("userid");
		System.out.println(userid);
		
		count = loginService.idcheck(userid);
		System.out.println("count : "+ count);

		return count;
	}

//	@RequestMapping(value = "/checkSignup.do", method = RequestMethod.POST)
//	public String checkSignup(HttpServletRequest request, Model model) {
//		String id = request.getParameter("id");
//		int rowcount = loginService.checkSignup(vo);
//		
//		return String.valueOf(rowcount);
//	}
}
