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
		System.out.println("���������� ����");
		System.out.println("main ������ auth : " + auth);
		
		//-- ����â ��� ����
		System.out.println("���� â ���");
		List<UserBannerVO> bannerList = userBannerService.getUserBannerList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("bannerList", bannerList);
		mav.setViewName("/main");
		
		return mav;
	}
	
	@RequestMapping("/testPrice.admdo")
	public ModelAndView getTestPrice() {
		System.out.println("���� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/testPrice");
		
		return mav;
	}
	
	// ---- user main end ----
	
	// ---- user branch ----
//	@RequestMapping("/branch.do")
//	public ModelAndView getBranchPage() {
//		System.out.println("����˻� ������ ����");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/branch");
//		
//		return mav;
//	}
	// ---- user branch end ----
	
	//-----user email ���� -------
	@RequestMapping("/emailForm.do")
	public ModelAndView getEmailPage() {
		System.out.println("�̸��� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/emailForm");
		
		return mav;
	}
	//-----user email ȸ������ ���� ------
		@RequestMapping("/email_Reg.do")
		public ModelAndView getEmail_RegPage() {
			System.out.println("ȸ������ ���� �̸��� ����");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/userinfo/email_Reg");
			
			return mav;
		}
	//-----user ȸ������ ������ -------
	@RequestMapping("/regForm.do")
	   public ModelAndView getUserRegFormPage() {
	      System.out.println("����� ȸ�� ���� ������ ����");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/userinfo/regForm");
	      
	      return mav;
	   }
	@RequestMapping("/regResult.do")
	   public ModelAndView getUserRegResultPage() {
	      System.out.println("����� ȸ�� ���� ��� ������ ����");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/userinfo/regResult");
	      
	      return mav;
	   
	}
	

	// ---- basket ���� ----
	/*
	 * @RequestMapping("/basketdetail.do") public ModelAndView getBasketDetailPage()
	 * { System.out.println("��ٱ��� �������� ����");
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * mav.setViewName("/basket/basket_detail"); return mav; }
	 */
	
	@RequestMapping("/basketempty.do")
	public ModelAndView getBasketEmptyPage() {
		System.out.println("�� ��ٱ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket_empty");
		return mav;
	}
	// ---- basket ���� end ----
	
	// ---- board ���� ----
	
	
	
	@RequestMapping("/qnaForm.do")
	public ModelAndView getQnaFormPage() {
		System.out.println("1:1 ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/qnaForm");
		return mav;
	}
	// ---- board ���� end ----
	
	// ---- company ���� ----
	
	@RequestMapping("/ceo.do")
	public ModelAndView getCeoPage() {
		System.out.println("ȸ��Ұ� CEO ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/ceo");
		return mav;
	}
	
	@RequestMapping("/international.do")
	public ModelAndView getInternationalPage() {
		System.out.println("ȸ��Ұ� International ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/international");
		return mav;
	}
	
	@RequestMapping("/location.do")
	public ModelAndView getLocationPage() {
		System.out.println("ȸ��Ұ� Location ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/location");
		return mav;
	}
	
	@RequestMapping("/overview.do")
	public ModelAndView getOverviewPage() {
		System.out.println("ȸ��Ұ� Overview ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/overview");
		return mav;
	}
	
	@RequestMapping("/chainstore1.do")
	public ModelAndView getChainstoreFirstPage() {
		System.out.println("���������� 1������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore1");
		return mav;
	}
	
	@RequestMapping("/chainstore2.do")
	public ModelAndView getChainstoreSencondPage() {
		System.out.println("���������� 2������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore2");
		return mav;
	}
	
	@RequestMapping("/chainstore3.do")
	public ModelAndView getChainstoreThiredPage() {
		System.out.println("���������� 3������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore3");
		return mav;
	}
	
	@RequestMapping("/chainstore4.do")
	public ModelAndView getChainstoreFourthPage() {
		System.out.println("���������� 4������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/company/chainstore4");
		return mav;
	}
	// ---- company ���� end ----
	
	// ---- ecoupon ���� ----
	@RequestMapping("/ecouponInput.do")
	public ModelAndView getEcouponInputPage() {
		System.out.println("ecoupon �Է������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/ecoupon/ecouponInput");
		return mav;
	}
	
	// ---- ecoupon ���� end ----
	
	// ---- error ���� ----
	@RequestMapping("/error.do")
	public ModelAndView getErrorPage() {
		System.out.println("���������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/error/error");
		return mav;
	}
	// ---- error ���� end ----
	
	
	@RequestMapping("/mania.do")
	public ModelAndView getManiaPage() {
		System.out.println("�ŴϾ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/service/mania");
		return mav;
	}
	
	
	@RequestMapping("/quickOrderDefaultSet.do")
	public ModelAndView getQuickOrderDefault() {
		System.out.println("������ ����Ʈ ���������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrder_defaultSetting");
		
		return mav;
	}
	
	
	@RequestMapping("/findidpw.do")
	public ModelAndView getFindIdPw() {
		System.out.println("���̵�/��й�ȣ ã�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/find_id_pw");
		return mav;
	}
	
	
	@RequestMapping("/signup1.do")
	public ModelAndView getSignUp1() {
		System.out.println("ȸ������ ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/sign_up_1");
		return mav;
	}
	
	@RequestMapping("/withdrawal.do")
	public ModelAndView getWithdrawal() {
		System.out.println("ȸ��Ż�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/withdrawal");
		return mav;
	}
	
	@RequestMapping("/orderpage3.do")
	public ModelAndView getOrderPageThree() {
		System.out.println("�ֹ��Ϸ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_page3");
		return mav;
	}
	
	@RequestMapping("/groupOrder.do")
	public ModelAndView getGroupOrder() {
		System.out.println("��ü�ֹ� ������");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/groupOrder");
		return mav;
	}
	
	// -- goods ���� --
	/*
	 * @RequestMapping("/goodslist.do") public ModelAndView getOrderList() {
	 * System.out.println("��ǰ ��� ����");
	 * 
	 * ModelAndView mav = new ModelAndView(); mav.setViewName("/goods/list"); return
	 * mav; }
	 */
	
	
	// --- end goods ���� ---
	
	
	
	// --- end login ���� ---
	
	
	// --- mypage ���� ---
	
	
	
	/*
	 * @RequestMapping(value="/user/mylevel.do") public String getMyLevel() throws
	 * Exception { System.out.println("�� ��� ����"); return "/mypage/myLevel"; }
	 */
	
	
	
	// --- end page ���� ---
	
	//-----daminoAdminView ���� ����--------------------------
	@Autowired
	private OrderlistService orderlistService;
	@Autowired
	private SalesStatusService salesStatusService;
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value= "/main.admdo" , method=RequestMethod.GET)
	   public ModelAndView getAdminMainPage(ModelAndView mav) {
	      System.out.println("���������� ����");
	       
	      List<BoardVO> boardListMain = boardService.BoardListMain();
	      System.out.println(boardListMain.toString());
	      System.out.println("---------------------- �� �� �� ----------------------------");
	      
	      int orderCount = orderlistService.orderCount();
	      System.out.println(" �� �ֹ��Ǽ� : " + orderCount);
	      
	      List<SalesVO> daily = salesStatusService.getDaily();
	      System.out.println("�ֹ������� �ִ� ���� ��� : " + daily);
	      List<SalesVO> dailyCount = salesStatusService.getDailyCount();
	      System.out.println("�ֹ������� �ִ� ���� �ֹ��Ǽ� ��� : " + dailyCount);
	      
	      mav.addObject("daily", daily);
	      mav.addObject("dailyCount", dailyCount);
	      mav.addObject("boardListMain",boardListMain);
	      mav.addObject("orderCount", orderCount );	
	      mav.setViewName("/main");
	      
	      return mav;
	   }
	
	//board ���� ���� --------
//	@RequestMapping("/boardView.admdo")
//	   public ModelAndView getAdminBoardPage() {
//	      System.out.println("�Խñ� ����");
//	      
//	      ModelAndView mav = new ModelAndView();
//	      mav.setViewName("/board/boardView");
//	      
//	      return mav;
//	   }
	
	
	//error ���� ���� --------
	@RequestMapping("/error_401.admdo")
	   public ModelAndView getAdminError401Page() {
	      System.out.println("401 ���� ������ ����");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/error/error_401");
	      
	      return mav;
	   }
	@RequestMapping("/error_404.admdo")
	public ModelAndView getAdminError404Page() {
		System.out.println("404 ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/error/error_404");
		
		return mav;
	}
	@RequestMapping("/error_500.admdo")
	public ModelAndView getAdminError500Page() {
		System.out.println("500 ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/error/error_500");
		
		return mav;
	}
	//members > market ���� ���� ---------
	/*
	 * @RequestMapping("/marketEdit.admdo") public ModelAndView
	 * getAdminMarketEditPage() { System.out.println("���� ���� ������ ����");
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * mav.setViewName("/members/market/marketEdit");
	 * 
	 * return mav; }
	 * 
	 * @RequestMapping("/marketList.admdo") public ModelAndView
	 * getAdminMarketListPage() { System.out.println("���� ��� ������ ����");
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * mav.setViewName("/members/market/marketList");
	 * 
	 * return mav; }
	 */
	
	//members > member ���� ���� ---------
	@RequestMapping("/login.admdo")
	   public ModelAndView getAdminLoginPage() {
	      System.out.println("�α��� ������ ����");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/members/member/login");
	      
	      return mav;
	   }
	@RequestMapping("/memberEdit.admdo")
	public ModelAndView getAdminmembersEditPage() {
		System.out.println("ȸ�� ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/memberEdit");
		
		return mav;
	}
//	@RequestMapping("/memberInfo.admdo")
//	public ModelAndView getAdminmembersInfoPage() {
//		System.out.println("ȸ�� ���� ������ ����");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/members/member/memberInfo");
//		
//		return mav;
//	}
	@RequestMapping("/passwordChange.admdo")
	public ModelAndView getAdminPasswordChangePage() {
		System.out.println("��й�ȣ ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/passwordChange");
		
		return mav;
	}
	
	@RequestMapping("/updateTempPW.admdo")
	public ModelAndView getAdminPasswordTempPage() {
		System.out.println("�ʱ�ȭ ��й�ȣ ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/updateTempPW");
		
		return mav;
	}
	
	@RequestMapping("/regForm.admdo")
	public ModelAndView getAdminRegFormPage() {
		System.out.println("ȸ�� ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/regForm");
		
		return mav;
	}
	@RequestMapping("/smsForm.admdo")
	public ModelAndView getAdminSmsFormPage() {
		System.out.println("���� �߼� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/smsForm");
		
		return mav;
	}
	@RequestMapping("/emailForm.admdo")
	public ModelAndView getAdminEmailFormPage() {
		System.out.println("�̸��� �߼� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/emailForm");
		
		return mav;
	}
	//menu ���� ���� --------------
	@RequestMapping("/insertMenu_drink.admdo")
	public ModelAndView getAdminInsertMenu_drinkPage() {
		System.out.println("�޴��߰� - ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_drink");
		
		return mav;
	}
	@RequestMapping("/insertMenu_pizza.admdo")
	public ModelAndView getAdminInsertMenu_pizzaPage() {
		System.out.println("�޴��߰� - ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_pizza");
		
		return mav;
	}
	@RequestMapping("/insertMenu_side.admdo")
	public ModelAndView getAdminInsertMenu_sidePage() {
		System.out.println("�޴��߰� - ���̵�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_side");
		
		return mav;
	}
	@RequestMapping("/insertMenu_topping.admdo")
	public ModelAndView getAdminInsertMenu_toppingPage() {
		System.out.println("�޴��߰� - ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_topping");
		
		return mav;
	}
//	@RequestMapping("/menuInfo.admdo")
//	public ModelAndView getAdminMenuInfoPage() {
//		System.out.println("�޴� ���� ������ ����");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/menu/menuInfo");
//		
//		return mav;
//	}
//	@RequestMapping("/menuList.admdo")
//	public ModelAndView getAdminMenuListPage() {
//		System.out.println("�޴� ��� ������ ����");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/menu/menuList");
//		
//		return mav;
//	}
	//noticeBoard ���� ���� ------
	
	@RequestMapping("/noticeBoardEdit.admdo")
	public ModelAndView getAdminNoticeBoardEditPage() {
		System.out.println("�Խ��� ����Ʈ ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/noticeBoard/noticeBoardEdit");
		
		return mav;
	}
	@RequestMapping("/noticeBoardView.admdo")
	public ModelAndView getAdminNoticeBoardViewPage() {
		System.out.println("�Խ��� ����Ʈ ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/noticeBoard/noticeBoardView");
		
		return mav;
	}
	
	//sites > banner ���� ���� -------
	
	@RequestMapping("/bannerBoardEdit.admdo")
	public ModelAndView getAdminBannerBoardEditPage() {
		System.out.println("��� ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/banner/bannerBoardEdit");
		
		return mav;
	}
	/*
	@RequestMapping("/bannerBoardView.admdo")
	public ModelAndView getAdminBannerBoardViewPage() {
		System.out.println("��� ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/banner/bannerBoardView");
		
		return mav;
	}
	*/
	//sites > questionAndAnswer ���� ���� -------
	@RequestMapping("/qna_insert.admdo")
	public ModelAndView getAdminQna_insertPage() {
		System.out.println("���ǻ��� �߰� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/questionAndAnswer/qna_insert");
		
		return mav;
	}
	
	//sites > terms ���� ���� -------
	
	//store ���� ���� -------
	/*
	 * @RequestMapping("/storeEdit.admdo") public ModelAndView
	 * getAdminStoreEditPage() { System.out.println("���� ���� ������ ����");
	 * 
	 * ModelAndView mav = new ModelAndView(); mav.setViewName("/store/storeEdit");
	 * 
	 * return mav; }
	 */
	@RequestMapping("/storeRegForm.admdo")
	public ModelAndView getAdminStoreRegFormPage() {
		System.out.println("���� ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeRegForm");
		
		return mav;
	}
//	@RequestMapping("/storeView.admdo")
//	public ModelAndView getAdminStoreViewPage() {
//		System.out.println("���� ��ȸ ������ ����");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/store/storeView");
//		
//		return mav;
//	}
	
//	//store_sales ���� ���� -------
//
//	@RequestMapping("/salesStatus.admdo")
//	public ModelAndView getAdminSalesStatusPage() {
//		System.out.println("���� ��Ȳ ������ ����");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/store_sales/salesStatus");
//		
//		return mav;
//	}
	
	//daminoManagerView ���� ���� -------------------------
	
	// ---- Manager Main ----
//		@RequestMapping("/main.smdo")
//		public ModelAndView getMainManagerPage() {
//			System.out.println("���������� ����");
//			
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("/main");
//			
//			return mav;
//		}
//		
//		@RequestMapping("/main_welcome.smdo")
//		public ModelAndView getMainManagerWelcomePage() {
//			System.out.println("���������� ����");
//			
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("/main_welcome");
//			
//			return mav;
//		}
		
	//error ���� ���� ------
		@RequestMapping("/error_401.smdo")
		   public ModelAndView getManagerError401Page() {
		      System.out.println("401 ���� ������ ����");
		      
		      ModelAndView mav = new ModelAndView();
		      mav.setViewName("/error/error_401");
		      
		      return mav;
		   }
		@RequestMapping("/error_404.smdo")
		public ModelAndView getManagerError404Page() {
			System.out.println("404 ���� ������ ����");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/error/error_404");
			
			return mav;
		}
		@RequestMapping("/error_500.smdo")
		public ModelAndView getManagerError500Page() {
			System.out.println("500 ���� ������ ����");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/error/error_500");
			
			return mav;
		}
	
	//members ���� ���� -----------
//		@RequestMapping("/managerLogin.smdo")
//		public ModelAndView getManagerLoginPage() {
//			System.out.println("�α��� ������ ����");
//			
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("/members/managerLogin");
//			
//			return mav;
//		}
		@RequestMapping("/managerRegister.smdo")
		public ModelAndView getManagerRegisterPage() {
			System.out.println("ȸ������ ������ ����");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/members/managerRegister");
			
			return mav;
		}
		@RequestMapping("/passwordChange.smdo")
		public ModelAndView getManagerPasswordChangePage() {
			System.out.println("��й�ȣ ���� ������ ����");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/members/passwordChange");
			
			return mav;
		}
		
	//order ���� ���� ---------
		
	//statistics ���� ���� ---------
	@RequestMapping("/statistics_list.smdo")
	public ModelAndView getStatistics_listPage() {
		System.out.println("���� ��Ȳ ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/statistics/statistics_list");
		
		return mav;
	}
	//store ���� ���� ---------
	@RequestMapping("/storeManagerInfo.smdo")
	public ModelAndView getStoreManagerInfoPage() {
		System.out.println("���� ��Ȳ ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeManagerInfo");
		
		return mav;
	}
	
	
}
