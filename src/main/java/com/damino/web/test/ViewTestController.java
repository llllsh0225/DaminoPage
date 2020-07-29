package com.damino.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewTestController {
	
	// ---- user main ----
	@RequestMapping("/main.do")
	public ModelAndView getMainPage() {
		System.out.println("���������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main");
		
		return mav;
	}
	
	// ---- user main end ----
	
	// ---- user branch ----
	@RequestMapping("/branch.do")
	public ModelAndView getBranchPage() {
		System.out.println("����˻� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/branch");
		
		return mav;
	}
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
	@RequestMapping("/quickOrder.do")
	public ModelAndView getQuickOrderPage() {
		System.out.println("������������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrder");
		
		return mav;
	}

	// ---- basket ���� ----
	@RequestMapping("/basketdetail.do")
	public ModelAndView getBasketDetailPage() {
		System.out.println("��ٱ��� �������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket_detail");
		return mav;
	}
	
	@RequestMapping("/basketempty.do")
	public ModelAndView getBasketEmptyPage() {
		System.out.println("�� ��ٱ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket_empty");
		return mav;
	}
	
	// ---- basket ���� end ----
	
	// ---- board ���� ----
	@RequestMapping("/faqMain.do")
	public ModelAndView getFaqMainPage() {
		System.out.println("FAQ ���������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_main");
		return mav;
	}
	
	@RequestMapping("/faqHomePage.do")
	public ModelAndView getFaqHomepagePage() {
		System.out.println("FAQ Ȩ������ ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_homePage");
		return mav;
	}
	
	@RequestMapping("/faqHowToOrder.do")
	public ModelAndView getFaqHowToOrderPage() {
		System.out.println("FAQ ���� �ֹ��ϱ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_howToOrder");
		return mav;
	}
	
	@RequestMapping("/faqOrderCheck.do")
	public ModelAndView getFaqOrderCheckPage() {
		System.out.println("FAQ �ֹ�Ȯ�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_orderCheck");
		return mav;
	}
	
	@RequestMapping("/faqSendPresent.do")
	public ModelAndView getFaqSendPresentPage() {
		System.out.println("FAQ �����ϱ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_sendPresent");
		return mav;
	}
	
	@RequestMapping("/faqWrapOrder.do")
	public ModelAndView getFaqWrapOrderPage() {
		System.out.println("FAQ �����ֹ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_wrapOrder");
		return mav;
	}
	
	
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
	
	@RequestMapping("/ecouponResult.do")
	public ModelAndView getEcouponResultPage() {
		System.out.println("ecoupon ��ϰ�� Ȯ�������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/ecoupon/ecouponResult");
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
	
	@RequestMapping("/law.do")
	public ModelAndView getLawPage() {
		System.out.println("�̿��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/terms/law");
		return mav;
	}
	
	@RequestMapping("/privacy.do")
	public ModelAndView getPrivacyPage() {
		System.out.println("�������� ó����ħ ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/terms/privacy");
		return mav;
	}
	
	@RequestMapping("/quickOrderDefaultSet.do")
	public ModelAndView getQuickOrderDefault() {
		System.out.println("������ ����Ʈ ���������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrder_defaultSetting");
		
		return mav;
	}
	
	@RequestMapping("/orderPage.do")
	public ModelAndView getOrderPage() {
		System.out.println("�����ϱ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_page");
		return mav;
	}
	
	@RequestMapping("/orderorderDone.do")
	public ModelAndView getOrderOrderDone() {
		System.out.println("�����Ϸ� ������");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_orderDone");
		return mav;
	}
	
	@RequestMapping("/orderpage2.do")
	public ModelAndView getOrderPageTwo() {
		System.out.println("�����ϱ� ������2 ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_page2");
		return mav;
	}
	
	@RequestMapping("/findidpw.do")
	public ModelAndView getFindIdPw() {
		System.out.println("���̵�/��й�ȣ ã�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/find_id_pw");
		return mav;
	}
	
	@RequestMapping("/changeinfo.do")
	public ModelAndView getChangeInfo() {
		System.out.println("ȸ�� �������� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/change_info");
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
	
	@RequestMapping("/orderstatusCook.do")
	public ModelAndView getOrderStatusCook() {
		System.out.println("�丮��->�����->��޿Ϸ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_cook");
		return mav;
	}
	
	@RequestMapping("/orderstatusDelivery.do")
	public ModelAndView getOrderStatusDelivery() {
		System.out.println("��� ��ġ ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_delivery");
		return mav;
	}
	
	@RequestMapping("/orderstatusdeliveryDone.do")
	public ModelAndView getOrderStatusDeliveryDone() {
		System.out.println("�����ϰ� �����Ͽ����ϴ� ������");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_deliveryDone");
		return mav;
	}
	
	@RequestMapping("/orderstatusReceive.do")
	public ModelAndView getOrderStatusReceive() {
		System.out.println("�ֹ��� �����Ǿ����ϴ� ������");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_receive");
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
	@RequestMapping("/goodslist.do")
	public ModelAndView getOrderList() {
		System.out.println("��ǰ ��� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/goods/list");
		return mav;
	}
	
	@RequestMapping("/detail001pp.do")
	public ModelAndView getDetail001pp() {
		System.out.println("��ǰ -�̺�����- ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/goods/detail001pp");
		return mav;
	}
	// --- end goods ���� ---
	
	// --- login ���� ---
	@RequestMapping("/login.do")
	public ModelAndView getLogin() {
		System.out.println("�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/login/login");
		return mav;
	}
	// --- end login ���� ---
	
	
	// --- mypage ���� ---
	@RequestMapping("/mycoupon.do")
	public ModelAndView getMyCoupon() {
		System.out.println("�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myCoupon");
		return mav;
	}
	
	@RequestMapping("/mylevel.do")
	public ModelAndView getMyLevel() {
		System.out.println("�� ��� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myLevel");
		return mav;
	}
	
	@RequestMapping("/myorderlistcancle.do")
	public ModelAndView getMyOrderListcancle() {
		System.out.println("�� �ֹ� ��� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myOrderList_cancle");
		return mav;
	}
	
	@RequestMapping("/myorderlist.do")
	public ModelAndView getMyOrderList() {
		System.out.println("�� �ֹ���Ȳ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myOrderList");
		return mav;
	}
	
	
	
	@RequestMapping("/myuserinfoconfirm.do")
	public ModelAndView getMyUserInfoConfirm() {
		System.out.println("�� �������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myUserInfoConfirm");
		return mav;
	}
	// --- end page ���� ---
	
	//-----daminoAdminView ���� ����--------------------------
	
	@RequestMapping("/main.admdo")
	   public ModelAndView getAdminMainPage() {
	      System.out.println("���������� ����");
	      
	      ModelAndView mav = new ModelAndView();
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
	
	@RequestMapping("/boardWrite.admdo")
	   public ModelAndView getAdminBoardWritePage() {
	      System.out.println("�Խñ� ���� ����");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/board/boardWrite");
	      
	      return mav;
	   }
	
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
	@RequestMapping("/marketEdit.admdo")
	   public ModelAndView getAdminMarketEditPage() {
	      System.out.println("���� ���� ������ ����");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/members/market/marketEdit");
	      
	      return mav;
	   }
	@RequestMapping("/marketList.admdo")
	public ModelAndView getAdminMarketListPage() {
		System.out.println("���� ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/market/marketList");
		
		return mav;
	}
	
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
	@RequestMapping("/memberInfo.admdo")
	public ModelAndView getAdminmembersInfoPage() {
		System.out.println("ȸ�� ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/memberInfo");
		
		return mav;
	}
	@RequestMapping("/passwordChange.admdo")
	public ModelAndView getAdminPasswordChangePage() {
		System.out.println("��й�ȣ ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/passwordChange");
		
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
	@RequestMapping("/menuInfo.admdo")
	public ModelAndView getAdminMenuInfoPage() {
		System.out.println("�޴� ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/menuInfo");
		
		return mav;
	}
	@RequestMapping("/menuList.admdo")
	public ModelAndView getAdminMenuListPage() {
		System.out.println("�޴� ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
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
	@RequestMapping("/bannerBoardView.admdo")
	public ModelAndView getAdminBannerBoardViewPage() {
		System.out.println("��� ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/banner/bannerBoardView");
		
		return mav;
	}
	
	//sites > questionAndAnswer ���� ���� -------
	@RequestMapping("/qna_insert.admdo")
	public ModelAndView getAdminQna_insertPage() {
		System.out.println("���ǻ��� �߰� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/questionAndAnswer/qna_insert");
		
		return mav;
	}
	@RequestMapping("/qna_list.admdo")
	public ModelAndView getAdminQna_listPage() {
		System.out.println("���ǻ��� ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/questionAndAnswer/qna_list");
		
		return mav;
	}
	
	//sites > terms ���� ���� -------
	@RequestMapping("/terms_insert.admdo")
	public ModelAndView getAdminTerms_insertPage() {
		System.out.println("��� �߰� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/terms/terms_insert");
		
		return mav;
	}
	@RequestMapping("/terms_list.admdo")
	public ModelAndView getAdminTerms_listPage() {
		System.out.println("��� ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/terms/terms_list");
		
		return mav;
	}
	
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
	
	//store_sales ���� ���� -------

	@RequestMapping("/salesStatus.admdo")
	public ModelAndView getAdminSalesStatusPage() {
		System.out.println("���� ��Ȳ ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store_sales/salesStatus");
		
		return mav;
	}
	
	//daminoManagerView ���� ���� -------------------------
	
	// ---- Manager Main ----
		@RequestMapping("/main.smdo")
		public ModelAndView getMainManagerPage() {
			System.out.println("���������� ����");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/main");
			
			return mav;
		}
	
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
		@RequestMapping("/managerLogin.smdo")
		public ModelAndView getManagerLoginPage() {
			System.out.println("�α��� ������ ����");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/members/managerLogin");
			
			return mav;
		}
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
		@RequestMapping("/orderList.smdo")
		public ModelAndView getOrderListPage() {
			System.out.println("�ֹ� ��� ������ ����");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/order/orderList");
			
			return mav;
		}
		@RequestMapping("/orderSearch.smdo")
		public ModelAndView getOrderSearchPage() {
			System.out.println("�ֹ� �˻� ������ ����");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/order/orderSearch");
			
			return mav;
		}
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
