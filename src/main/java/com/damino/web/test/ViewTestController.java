package com.damino.web.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.board.BoardService;
import com.damino.web.admin.board.BoardVO;
import com.damino.web.admin.orderlist.OrderlistService;
import com.damino.web.admin.salesstatus.SalesStatusService;
import com.damino.web.admin.salesstatus.SalesVO;
import com.damino.web.user.banner.UserBannerService;
import com.damino.web.user.banner.UserBannerVO;

@Controller
public class ViewTestController {
	
	@Autowired
	private UserBannerService userBannerService;
	
	// ---- user main ----
	@RequestMapping("/main.do")
	public ModelAndView getMainPage(Authentication auth) {
		System.out.println("메인페이지 열기");
		System.out.println("main 페이지 auth : " + auth);
		
		//-- 메인창 배너 생성
		System.out.println("메인 창 배너");
		List<UserBannerVO> bannerList = userBannerService.getUserBannerList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("bannerList", bannerList);
		mav.setViewName("/main");
		
		return mav;
	}
	
	@RequestMapping("/testPrice.admdo")
	public ModelAndView getTestPrice() {
		System.out.println("결제 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/testPrice");
		
		return mav;
	}
	
	// ---- user main end ----
	
	// ---- user branch ----
//	@RequestMapping("/branch.do")
//	public ModelAndView getBranchPage() {
//		System.out.println("매장검색 페이지 열기");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/branch");
//		
//		return mav;
//	}
	// ---- user branch end ----
	
	//-----user email 인증 -------
	@RequestMapping("/emailForm.do")
	public ModelAndView getEmailPage() {
		System.out.println("이메일 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/emailForm");
		
		return mav;
	}
	//-----user email 회원가입 축하 ------
		@RequestMapping("/email_Reg.do")
		public ModelAndView getEmail_RegPage() {
			System.out.println("회원가입 축하 이메일 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/userinfo/email_Reg");
			
			return mav;
		}
	//-----user 회원가입 페이지 -------
	@RequestMapping("/regForm.do")
	   public ModelAndView getUserRegFormPage() {
	      System.out.println("사용자 회원 가입 페이지 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/userinfo/regForm");
	      
	      return mav;
	   }
	@RequestMapping("/regResult.do")
	   public ModelAndView getUserRegResultPage() {
	      System.out.println("사용자 회원 가입 결과 페이지 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/userinfo/regResult");
	      
	      return mav;
	   
	}
	

	// ---- basket 폴더 ----
	/*
	 * @RequestMapping("/basketdetail.do") public ModelAndView getBasketDetailPage()
	 * { System.out.println("장바구니 상세페이지 열기");
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * mav.setViewName("/basket/basket_detail"); return mav; }
	 */
	
	@RequestMapping("/basketempty.do")
	public ModelAndView getBasketEmptyPage() {
		System.out.println("빈 장바구니 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket_empty");
		return mav;
	}
	// ---- basket 폴더 end ----
	
	// ---- board 폴더 ----
	
	
	
	@RequestMapping("/qnaForm.do")
	public ModelAndView getQnaFormPage() {
		System.out.println("1:1 문의 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/qnaForm");
		return mav;
	}
	// ---- board 폴더 end ----
	
	// ---- company 폴더 ----
	
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
	// ---- company 폴더 end ----
	
	// ---- ecoupon 폴더 ----
	@RequestMapping("/ecouponInput.do")
	public ModelAndView getEcouponInputPage() {
		System.out.println("ecoupon 입력페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/ecoupon/ecouponInput");
		return mav;
	}
	
	// ---- ecoupon 폴더 end ----
	
	// ---- error 폴더 ----
	@RequestMapping("/error.do")
	public ModelAndView getErrorPage() {
		System.out.println("에러페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/error/error");
		return mav;
	}
	// ---- error 폴더 end ----
	
	
	@RequestMapping("/mania.do")
	public ModelAndView getManiaPage() {
		System.out.println("매니아 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/service/mania");
		return mav;
	}
	
	
	@RequestMapping("/quickOrderDefaultSet.do")
	public ModelAndView getQuickOrderDefault() {
		System.out.println("퀵오더 디폴트 세팅페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrder_defaultSetting");
		
		return mav;
	}
	
	
	@RequestMapping("/findidpw.do")
	public ModelAndView getFindIdPw() {
		System.out.println("아이디/비밀번호 찾기 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/find_id_pw");
		return mav;
	}
	
	
	@RequestMapping("/signup1.do")
	public ModelAndView getSignUp1() {
		System.out.println("회원가입 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/sign_up_1");
		return mav;
	}
	
	@RequestMapping("/withdrawal.do")
	public ModelAndView getWithdrawal() {
		System.out.println("회원탈퇴 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/withdrawal");
		return mav;
	}
	
	@RequestMapping("/orderpage3.do")
	public ModelAndView getOrderPageThree() {
		System.out.println("주문완료 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_page3");
		return mav;
	}
	
	@RequestMapping("/groupOrder.do")
	public ModelAndView getGroupOrder() {
		System.out.println("단체주문 페이지");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/groupOrder");
		return mav;
	}
	
	// -- goods 폴더 --
	/*
	 * @RequestMapping("/goodslist.do") public ModelAndView getOrderList() {
	 * System.out.println("제품 목록 열기");
	 * 
	 * ModelAndView mav = new ModelAndView(); mav.setViewName("/goods/list"); return
	 * mav; }
	 */
	
	
	// --- end goods 폴더 ---
	
	
	
	// --- end login 폴더 ---
	
	
	// --- mypage 폴더 ---
	
	
	
	/*
	 * @RequestMapping(value="/user/mylevel.do") public String getMyLevel() throws
	 * Exception { System.out.println("내 등급 열기"); return "/mypage/myLevel"; }
	 */
	
	
	
	// --- end page 폴더 ---
	
	//-----daminoAdminView 영역 시작--------------------------
	@Autowired
	private OrderlistService orderlistService;
	@Autowired
	private SalesStatusService salesStatusService;
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value= "/main.admdo" , method=RequestMethod.GET)
	   public ModelAndView getAdminMainPage(ModelAndView mav) {
	      System.out.println("메인페이지 열기");
	       
	      List<BoardVO> boardListMain = boardService.BoardListMain();
	      System.out.println(boardListMain.toString());
	      System.out.println("---------------------- 구 분 선 ----------------------------");
	      
	      int orderCount = orderlistService.orderCount();
	      System.out.println(" 총 주문건수 : " + orderCount);
	      
	      List<SalesVO> daily = salesStatusService.getDaily();
	      System.out.println("주문내역에 있는 일일 목록 : " + daily);
	      List<SalesVO> dailyCount = salesStatusService.getDailyCount();
	      System.out.println("주문내역에 있는 일일 주문건수 목록 : " + dailyCount);
	      
	      mav.addObject("daily", daily);
	      mav.addObject("dailyCount", dailyCount);
	      mav.addObject("boardListMain",boardListMain);
	      mav.addObject("orderCount", orderCount );	
	      mav.setViewName("/main");
	      
	      return mav;
	   }
	
	//board 폴더 시작 --------
//	@RequestMapping("/boardView.admdo")
//	   public ModelAndView getAdminBoardPage() {
//	      System.out.println("게시글 열기");
//	      
//	      ModelAndView mav = new ModelAndView();
//	      mav.setViewName("/board/boardView");
//	      
//	      return mav;
//	   }
	
	
	//error 폴더 시작 --------
	@RequestMapping("/error_401.admdo")
	   public ModelAndView getAdminError401Page() {
	      System.out.println("401 에러 페이지 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/error/error_401");
	      
	      return mav;
	   }
	@RequestMapping("/error_404.admdo")
	public ModelAndView getAdminError404Page() {
		System.out.println("404 에러 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/error/error_404");
		
		return mav;
	}
	@RequestMapping("/error_500.admdo")
	public ModelAndView getAdminError500Page() {
		System.out.println("500 에러 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/error/error_500");
		
		return mav;
	}
	//members > market 폴더 시작 ---------
	/*
	 * @RequestMapping("/marketEdit.admdo") public ModelAndView
	 * getAdminMarketEditPage() { System.out.println("점포 수정 페이지 열기");
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * mav.setViewName("/members/market/marketEdit");
	 * 
	 * return mav; }
	 * 
	 * @RequestMapping("/marketList.admdo") public ModelAndView
	 * getAdminMarketListPage() { System.out.println("점포 목록 페이지 열기");
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * mav.setViewName("/members/market/marketList");
	 * 
	 * return mav; }
	 */
	
	//members > member 폴더 시작 ---------
	@RequestMapping("/login.admdo")
	   public ModelAndView getAdminLoginPage() {
	      System.out.println("로그인 페이지 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/members/member/login");
	      
	      return mav;
	   }
	@RequestMapping("/memberEdit.admdo")
	public ModelAndView getAdminmembersEditPage() {
		System.out.println("회원 수정 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/memberEdit");
		
		return mav;
	}
//	@RequestMapping("/memberInfo.admdo")
//	public ModelAndView getAdminmembersInfoPage() {
//		System.out.println("회원 정보 페이지 열기");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/members/member/memberInfo");
//		
//		return mav;
//	}
	@RequestMapping("/passwordChange.admdo")
	public ModelAndView getAdminPasswordChangePage() {
		System.out.println("비밀번호 변경 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/passwordChange");
		
		return mav;
	}
	
	@RequestMapping("/updateTempPW.admdo")
	public ModelAndView getAdminPasswordTempPage() {
		System.out.println("초기화 비밀번호 변경 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/updateTempPW");
		
		return mav;
	}
	
	@RequestMapping("/regForm.admdo")
	public ModelAndView getAdminRegFormPage() {
		System.out.println("회원 가입 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/regForm");
		
		return mav;
	}
	@RequestMapping("/smsForm.admdo")
	public ModelAndView getAdminSmsFormPage() {
		System.out.println("문자 발송 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/smsForm");
		
		return mav;
	}
	@RequestMapping("/emailForm.admdo")
	public ModelAndView getAdminEmailFormPage() {
		System.out.println("이메일 발송 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/emailForm");
		
		return mav;
	}
	//menu 폴더 시작 --------------
	@RequestMapping("/insertMenu_drink.admdo")
	public ModelAndView getAdminInsertMenu_drinkPage() {
		System.out.println("메뉴추가 - 음료 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_drink");
		
		return mav;
	}
	@RequestMapping("/insertMenu_pizza.admdo")
	public ModelAndView getAdminInsertMenu_pizzaPage() {
		System.out.println("메뉴추가 - 피자 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_pizza");
		
		return mav;
	}
	@RequestMapping("/insertMenu_side.admdo")
	public ModelAndView getAdminInsertMenu_sidePage() {
		System.out.println("메뉴추가 - 사이드디쉬 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_side");
		
		return mav;
	}
	@RequestMapping("/insertMenu_topping.admdo")
	public ModelAndView getAdminInsertMenu_toppingPage() {
		System.out.println("메뉴추가 - 토핑 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_topping");
		
		return mav;
	}
//	@RequestMapping("/menuInfo.admdo")
//	public ModelAndView getAdminMenuInfoPage() {
//		System.out.println("메뉴 정보 페이지 열기");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/menu/menuInfo");
//		
//		return mav;
//	}
//	@RequestMapping("/menuList.admdo")
//	public ModelAndView getAdminMenuListPage() {
//		System.out.println("메뉴 목록 페이지 열기");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/menu/menuList");
//		
//		return mav;
//	}
	//noticeBoard 폴더 시작 ------
	
	@RequestMapping("/noticeBoardEdit.admdo")
	public ModelAndView getAdminNoticeBoardEditPage() {
		System.out.println("게시판 리스트 수정 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/noticeBoard/noticeBoardEdit");
		
		return mav;
	}
	@RequestMapping("/noticeBoardView.admdo")
	public ModelAndView getAdminNoticeBoardViewPage() {
		System.out.println("게시판 리스트 목록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/noticeBoard/noticeBoardView");
		
		return mav;
	}
	
	//sites > banner 폴더 시작 -------
	
	@RequestMapping("/bannerBoardEdit.admdo")
	public ModelAndView getAdminBannerBoardEditPage() {
		System.out.println("배너 수정 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/banner/bannerBoardEdit");
		
		return mav;
	}
	/*
	@RequestMapping("/bannerBoardView.admdo")
	public ModelAndView getAdminBannerBoardViewPage() {
		System.out.println("배너 목록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/banner/bannerBoardView");
		
		return mav;
	}
	*/
	//sites > questionAndAnswer 폴더 시작 -------
	@RequestMapping("/qna_insert.admdo")
	public ModelAndView getAdminQna_insertPage() {
		System.out.println("문의사항 추가 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/questionAndAnswer/qna_insert");
		
		return mav;
	}
	
	//sites > terms 폴더 시작 -------
	
	//store 폴더 시작 -------
	/*
	 * @RequestMapping("/storeEdit.admdo") public ModelAndView
	 * getAdminStoreEditPage() { System.out.println("매장 수정 페이지 열기");
	 * 
	 * ModelAndView mav = new ModelAndView(); mav.setViewName("/store/storeEdit");
	 * 
	 * return mav; }
	 */
	@RequestMapping("/storeRegForm.admdo")
	public ModelAndView getAdminStoreRegFormPage() {
		System.out.println("매장 등록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeRegForm");
		
		return mav;
	}
//	@RequestMapping("/storeView.admdo")
//	public ModelAndView getAdminStoreViewPage() {
//		System.out.println("매장 조회 페이지 열기");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/store/storeView");
//		
//		return mav;
//	}
	
//	//store_sales 폴더 시작 -------
//
//	@RequestMapping("/salesStatus.admdo")
//	public ModelAndView getAdminSalesStatusPage() {
//		System.out.println("매출 현황 페이지 열기");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/store_sales/salesStatus");
//		
//		return mav;
//	}
	
	//daminoManagerView 영역 시작 -------------------------
	
	// ---- Manager Main ----
//		@RequestMapping("/main.smdo")
//		public ModelAndView getMainManagerPage() {
//			System.out.println("메인페이지 열기");
//			
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("/main");
//			
//			return mav;
//		}
//		
//		@RequestMapping("/main_welcome.smdo")
//		public ModelAndView getMainManagerWelcomePage() {
//			System.out.println("메인페이지 열기");
//			
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("/main_welcome");
//			
//			return mav;
//		}
		
	//error 폴더 시작 ------
		@RequestMapping("/error_401.smdo")
		   public ModelAndView getManagerError401Page() {
		      System.out.println("401 에러 페이지 열기");
		      
		      ModelAndView mav = new ModelAndView();
		      mav.setViewName("/error/error_401");
		      
		      return mav;
		   }
		@RequestMapping("/error_404.smdo")
		public ModelAndView getManagerError404Page() {
			System.out.println("404 에러 페이지 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/error/error_404");
			
			return mav;
		}
		@RequestMapping("/error_500.smdo")
		public ModelAndView getManagerError500Page() {
			System.out.println("500 에러 페이지 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/error/error_500");
			
			return mav;
		}
	
	//members 폴더 시작 -----------
//		@RequestMapping("/managerLogin.smdo")
//		public ModelAndView getManagerLoginPage() {
//			System.out.println("로그인 페이지 열기");
//			
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("/members/managerLogin");
//			
//			return mav;
//		}
		@RequestMapping("/managerRegister.smdo")
		public ModelAndView getManagerRegisterPage() {
			System.out.println("회원가입 페이지 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/members/managerRegister");
			
			return mav;
		}
		@RequestMapping("/passwordChange.smdo")
		public ModelAndView getManagerPasswordChangePage() {
			System.out.println("비밀번호 변경 페이지 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/members/passwordChange");
			
			return mav;
		}
		
	//order 폴더 시작 ---------
		
	//statistics 폴더 시작 ---------
	@RequestMapping("/statistics_list.smdo")
	public ModelAndView getStatistics_listPage() {
		System.out.println("매출 현황 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/statistics/statistics_list");
		
		return mav;
	}
	//store 폴더 시작 ---------
	@RequestMapping("/storeManagerInfo.smdo")
	public ModelAndView getStoreManagerInfoPage() {
		System.out.println("매출 현황 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeManagerInfo");
		
		return mav;
	}
	
	
}
