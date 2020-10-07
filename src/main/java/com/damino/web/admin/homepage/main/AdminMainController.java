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
		System.out.println("메인페이지 열기");
		String adminid = (String) session.getAttribute("adminid");
		if (adminid == null) {
			mav.setViewName("members/member/login");

			return mav;
		} else {

			System.out.println("세션 :" + adminid);
			List<FaqVO> faqMain = faqService.faqMain();
			System.out.println(faqMain.toString());
			System.out.println("---------------------- 구 분 선(Q&A) ----------------------------");

			List<BoardVO> boardListMain = boardService.BoardListMain();
			System.out.println(boardListMain.toString());
			System.out.println("---------------------- 구 분 선(게시판) ----------------------------");

			int orderCount = orderlistService.orderCount();
			System.out.println(" 총 주문건수 : " + orderCount);

			List<SalesVO> daily = salesStatusService.getDaily();
			System.out.println("주문내역에 있는 일일 목록 : " + daily);
			List<SalesVO> dailyCount = salesStatusService.getDailyCount();
			System.out.println("주문내역에 있는 일일 주문건수 목록 : " + dailyCount);

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
