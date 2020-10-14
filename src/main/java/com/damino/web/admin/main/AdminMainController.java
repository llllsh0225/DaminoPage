package com.damino.web.admin.main;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.board.BoardService;
import com.damino.web.admin.board.BoardVO;
import com.damino.web.admin.faq.FaqService;
import com.damino.web.admin.faq.FaqVO;
import com.damino.web.admin.orderlist.OrderlistService;
import com.damino.web.admin.salesstatus.SalesStatusService;
import com.damino.web.admin.salesstatus.SalesVO;

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
	
	@RequestMapping(value= "/main.admdo" , method=RequestMethod.GET)
	   public ModelAndView getAdminMainPage(ModelAndView mav, HttpSession session) {
	      System.out.println("메인페이지 열기");
	      String adminid = (String) session.getAttribute("adminid");
	      if(adminid==null) {
	    	  mav.setViewName("members/member/login");
		      
		      return mav;
	      }else {
	      
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
		      mav.addObject("boardListMain",boardListMain);
		      mav.addObject("faqMain", faqMain);
		      mav.addObject("orderCount", orderCount );	
		      mav.setViewName("/main");
		      
		      return mav;
	      }
	   }
	
	@RequestMapping("/ceo.do")
	public ModelAndView getCeoPage() {
		System.out.println("회사소개 CEO 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/ceo");
		return mav;
	}
	
	@RequestMapping("/international.do")
	public ModelAndView getInternationalPage() {
		System.out.println("회사소개 International 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/international");
		return mav;
	}
	
	@RequestMapping("/location.do")
	public ModelAndView getLocationPage() {
		System.out.println("회사소개 Location 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/location");
		return mav;
	}
	
	@RequestMapping("/overview.do")
	public ModelAndView getOverviewPage() {
		System.out.println("회사소개 Overview 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/overview");
		return mav;
	}
	
	@RequestMapping("/chainstore1.do")
	public ModelAndView getChainstoreFirstPage() {
		System.out.println("가맹점모집 1페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore1");
		return mav;
	}
	
	@RequestMapping("/chainstore2.do")
	public ModelAndView getChainstoreSencondPage() {
		System.out.println("가맹점모집 2페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore2");
		return mav;
	}
	
	@RequestMapping("/chainstore3.do")
	public ModelAndView getChainstoreThiredPage() {
		System.out.println("가맹점모집 3페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore3");
		return mav;
	}
	
	@RequestMapping("/chainstore4.do")
	public ModelAndView getChainstoreFourthPage() {
		System.out.println("가맹점모집 4페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore4");
		return mav;
	}
	
	@RequestMapping("/mania.do")
	public ModelAndView getManiaPage() {
		System.out.println("매니아 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/service/mania");
		return mav;
	}
	
	@RequestMapping("/groupOrder.do")
	public ModelAndView getGroupOrder() {
		System.out.println("단체주문 페이지");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/groupOrder");
		return mav;
	}
}
