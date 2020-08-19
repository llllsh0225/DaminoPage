package com.damino.web.user.userlevel;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserLevelController {
	@Autowired
	private UserLevelService userLevelService;
	
	@RequestMapping("/mylevel.do")
	public ModelAndView getMyLevel(ModelAndView mav, HttpSession session) {
		System.out.println("내 등급 열기");
		String userid = (String) session.getAttribute("userid");
		
		// 3개월 간의 주문 건수
		int orderCnt = userLevelService.getUsersOrderCnt(userid);
		
		
		// 1월 1일부터 현재까지의 총 주문액
		int payCnt = userLevelService.getUsersPayCnt(userid);
		
		mav.addObject("payCnt", payCnt);
		mav.addObject("orderCnt", orderCnt);
		mav.setViewName("/mypage/myLevel");
		
		return mav;
	}
}
