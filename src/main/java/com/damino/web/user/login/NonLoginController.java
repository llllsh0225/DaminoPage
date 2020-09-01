package com.damino.web.user.login;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NonLoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="NonLogin.do", method = RequestMethod.POST)
	private ModelAndView nonloginCheck(@RequestParam("name") String name, UserVO vo, ModelAndView mav, HttpServletRequest request){
		HttpSession session = request.getSession(true);
		
		
		// 비회원 아이디에 랜덤 숫자 부여
		String num = "";
		
		Random rand = new Random();
		
		for (int i = 0; i < 5; i++) {
			num += Integer.toString(rand.nextInt(10));
		}
		
		System.out.println("일련번호 : " + num);
		System.out.println("회원 이름 : " + name);
		
		// 핸드폰번호
		String phone1 = request.getParameter("sel_hand_tel1");
		String phone2 = request.getParameter("hand_tel2");
		String phone3 = request.getParameter("hand_tel3");
		
		String phone = phone1 + phone2 + phone3;
		
		System.out.println(phone);
		// 비회원 정보 usermember 테이블에 insert
		vo.setUserid("guest" + num);
		vo.setUsername(name);
		vo.setPhone(phone);
		
		loginService.insertGuestInfo(vo);
		
		session.setAttribute("guest", "guest");
		session.setAttribute("msg", "login");
		session.setAttribute("userid", "guest" + num);
		session.setAttribute("username", name);
		mav.setViewName("main");
		return mav;
	}
}
