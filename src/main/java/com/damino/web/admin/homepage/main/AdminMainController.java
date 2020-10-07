package com.damino.web.admin.homepage.main;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.homepage.board.BoardService;
import com.damino.web.admin.homepage.board.BoardVO;
import com.damino.web.admin.homepage.faq.FaqService;
import com.damino.web.admin.homepage.faq.FaqVO;
import com.damino.web.admin.homepage.orderlist.OrderlistService;
import com.damino.web.admin.homepage.salesstatus.SalesStatusService;
import com.damino.web.admin.homepage.salesstatus.SalesVO;

@Controller
public class AdminMainController {
	@Autowired
	private OrderlistService orderlistService;
	@Autowired
	private SalesStatusService salesStatusService;
	@Autowired
	private BoardService boardService;
	@Autowired
	private FaqService faqService;

	@RequestMapping(value = "/main.admdo", method = RequestMethod.GET)
	public ModelAndView getAdminMainPage(ModelAndView mav, HttpSession session) {
		System.out.println("���������� ����");
		String adminid = (String) session.getAttribute("adminid");
		if (adminid == null) {
			mav.setViewName("members/member/login");

			return mav;
		} else {

			System.out.println("���� :" + adminid);
			List<FaqVO> faqMain = faqService.faqMain();
			System.out.println(faqMain.toString());
			System.out.println("---------------------- �� �� ��(Q&A) ----------------------------");

			List<BoardVO> boardListMain = boardService.BoardListMain();
			System.out.println(boardListMain.toString());
			System.out.println("---------------------- �� �� ��(�Խ���) ----------------------------");

			int orderCount = orderlistService.orderCount();
			System.out.println(" �� �ֹ��Ǽ� : " + orderCount);

			List<SalesVO> daily = salesStatusService.getDaily();
			System.out.println("�ֹ������� �ִ� ���� ��� : " + daily);
			List<SalesVO> dailyCount = salesStatusService.getDailyCount();
			System.out.println("�ֹ������� �ִ� ���� �ֹ��Ǽ� ��� : " + dailyCount);

			mav.addObject("daily", daily);
			mav.addObject("dailyCount", dailyCount);
			mav.addObject("boardListMain", boardListMain);
			mav.addObject("faqMain", faqMain);
			mav.addObject("orderCount", orderCount);
			mav.setViewName("/main");

			return mav;
		}
	}
}
