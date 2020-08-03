package com.damino.web.admin.market.member.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.login.UserVO;

@Controller
public class MarketAdminLoginController {
	@Autowired
	private MarketAdminLoginService marketAdminLoginService;
	
	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.GET)
	private String loginView(MarketAdminVO vo) {
		System.out.println("�α��� �������� �̵�");
		System.out.println(marketAdminLoginService.toString());
		return "members/managerLogin";
	}
	
//	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.POST)
//	private ModelAndView loginCheck(MarketAdminVO vo, ModelAndView mav, HttpSession session) {
//		System.out.println("�α��� ���� ó��");
//		
//		MarketAdminVO user = marketAdminLoginService.getMember(vo);
//		
//		if(user != null) {
//			System.out.println("�α��ο� �����Ͽ����ϴ�.");
//			mav.setViewName("main");
//			return mav;
//		}else {
//			System.out.println("�α��ο� �����Ͽ����ϴ�.");
//			
//			mav.setViewName("login/login");
//
//			return mav;
//		}
//	}
	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.POST)
	public ModelAndView loginCheck(String id, String pw, HttpSession session, ModelAndView mav) {
		MarketAdminVO check = marketAdminLoginService.checkMemberId(id);
		if(check != null) {
			if(pw.equals(check.getManagerPasswd())) {
				session.setAttribute("id", check.getManagerId());
				mav.addObject("id", check.getManagerId());
				mav.addObject("pw", check.getManagerPasswd());
				mav.setViewName("login_welcome");
				return mav;
			}else {
				mav.addObject("id_fail", id);
				mav.setViewName("login_fail_pw");
				return mav;
			}
		}else {
			mav.addObject("id_fail", id);
			mav.setViewName("login_fail_id");
			return mav;
		}
	}	
	
	@RequestMapping(value="/logout.smdo")
	public String logout(HttpSession session, Model model) {
		//�α׾ƿ� ������ �ۼ�, ������������ ���ư� �� �ֵ��� �����̷�Ʈ
		session.invalidate();
		return "members/managerLogin";
	}
}
	
