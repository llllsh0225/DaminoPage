package com.damino.web.user.userlevel;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		
		if(orderCnt != 0) {
			mav.addObject("orderCnt", orderCnt);
		}else {
			mav.addObject("orderCnt", 0);
		}
		
		// 1�� 1�Ϻ��� ��������� �� �ֹ���
		int payCnt = userLevelService.getUsersPayCnt(userid);
		
		if(payCnt != 0) {
			mav.addObject("payCnt", payCnt);
		}else {
			mav.addObject("payCnt", 0);
		}

		mav.setViewName("/mypage/myLevel");
		
		return mav;
	}
}
