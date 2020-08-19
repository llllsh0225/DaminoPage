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
		System.out.println("�� ��� ����");
		String userid = (String) session.getAttribute("userid");
		
		// 3���� ���� �ֹ� �Ǽ�
		int orderCnt = userLevelService.getUsersOrderCnt(userid);
		
		
		// 1�� 1�Ϻ��� ��������� �� �ֹ���
		int payCnt = userLevelService.getUsersPayCnt(userid);
		
		mav.addObject("payCnt", payCnt);
		mav.addObject("orderCnt", orderCnt);
		mav.setViewName("/mypage/myLevel");
		
		return mav;
	}
}
