package com.damino.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewTestController {
	
	// ---- user main ----
	@RequestMapping("/main.do")
	public ModelAndView getMainPage() {
		System.out.println("메인페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main");
		
		return mav;
	}
	
	// ---- user main end ----
	
	// ---- user branch ----
	@RequestMapping("/branch.do")
	public ModelAndView getBranchPage() {
		System.out.println("매장검색 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/branch");
		
		return mav;
	}
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
	@RequestMapping("/quickOrder.do")
	public ModelAndView getQuickOrderPage() {
		System.out.println("퀵오더페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrder");
		
		return mav;
	}

	// ---- basket 폴더 ----
	@RequestMapping("/basketdetail.do")
	public ModelAndView getBasketDetailPage() {
		System.out.println("장바구니 상세페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket_detail");
		return mav;
	}
	
	@RequestMapping("/basketempty.do")
	public ModelAndView getBasketEmptyPage() {
		System.out.println("빈 장바구니 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket_empty");
		return mav;
	}
	
	// ---- basket 폴더 end ----
	
	// ---- board 폴더 ----
	@RequestMapping("/faqMain.do")
	public ModelAndView getFaqMainPage() {
		System.out.println("FAQ 메인페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_main");
		return mav;
	}
	
	@RequestMapping("/faqHomePage.do")
	public ModelAndView getFaqHomepagePage() {
		System.out.println("FAQ 홈페이지 관련 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_homePage");
		return mav;
	}
	
	@RequestMapping("/faqHowToOrder.do")
	public ModelAndView getFaqHowToOrderPage() {
		System.out.println("FAQ 피자 주문하기 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_howToOrder");
		return mav;
	}
	
	@RequestMapping("/faqOrderCheck.do")
	public ModelAndView getFaqOrderCheckPage() {
		System.out.println("FAQ 주문확인 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_orderCheck");
		return mav;
	}
	
	@RequestMapping("/faqSendPresent.do")
	public ModelAndView getFaqSendPresentPage() {
		System.out.println("FAQ 선물하기 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_sendPresent");
		return mav;
	}
	
	@RequestMapping("/faqWrapOrder.do")
	public ModelAndView getFaqWrapOrderPage() {
		System.out.println("FAQ 포장주문 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_wrapOrder");
		return mav;
	}
	
	
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
	
	@RequestMapping("/ecouponResult.do")
	public ModelAndView getEcouponResultPage() {
		System.out.println("ecoupon 등록결과 확인페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/ecoupon/ecouponResult");
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
	
	@RequestMapping("/law.do")
	public ModelAndView getLawPage() {
		System.out.println("이용약관 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/terms/law");
		return mav;
	}
	
	@RequestMapping("/privacy.do")
	public ModelAndView getPrivacyPage() {
		System.out.println("개인정보 처리방침 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/terms/privacy");
		return mav;
	}
	
	@RequestMapping("/quickOrderDefaultSet.do")
	public ModelAndView getQuickOrderDefault() {
		System.out.println("퀵오더 디폴트 세팅페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrder_defaultSetting");
		
		return mav;
	}
	
	@RequestMapping("/orderPage.do")
	public ModelAndView getOrderPage() {
		System.out.println("결제하기 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_page");
		return mav;
	}
	
	@RequestMapping("/orderorderDone.do")
	public ModelAndView getOrderOrderDone() {
		System.out.println("결제완료 페이지");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_orderDone");
		return mav;
	}
	
	@RequestMapping("/orderpage2.do")
	public ModelAndView getOrderPageTwo() {
		System.out.println("결제하기 페이지2 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_page2");
		return mav;
	}
	
	@RequestMapping("/findidpw.do")
	public ModelAndView getFindIdPw() {
		System.out.println("아이디/비밀번호 찾기 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/find_id_pw");
		return mav;
	}
	
	@RequestMapping("/changeinfo.do")
	public ModelAndView getChangeInfo() {
		System.out.println("회원 정보변경 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/change_info");
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
	
	@RequestMapping("/orderstatusCook.do")
	public ModelAndView getOrderStatusCook() {
		System.out.println("요리중->배달중->배달완료 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_cook");
		return mav;
	}
	
	@RequestMapping("/orderstatusDelivery.do")
	public ModelAndView getOrderStatusDelivery() {
		System.out.println("배달 위치 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_delivery");
		return mav;
	}
	
	@RequestMapping("/orderstatusdeliveryDone.do")
	public ModelAndView getOrderStatusDeliveryDone() {
		System.out.println("안전하게 전달하였습니다 페이지");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_deliveryDone");
		return mav;
	}
	
	@RequestMapping("/orderstatusReceive.do")
	public ModelAndView getOrderStatusReceive() {
		System.out.println("주문이 접수되었습니다 페이지");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_receive");
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
	@RequestMapping("/goodslist.do")
	public ModelAndView getOrderList() {
		System.out.println("제품 목록 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/goods/list");
		return mav;
	}
	
	@RequestMapping("/detail001pp.do")
	public ModelAndView getDetail001pp() {
		System.out.println("제품 -이베리코- 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/goods/detail001pp");
		return mav;
	}
	// --- end goods 폴더 ---
	
	// --- login 폴더 ---
	@RequestMapping("/login.do")
	public ModelAndView getLogin() {
		System.out.println("내 쿠폰함 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/login/login");
		return mav;
	}
	// --- end login 폴더 ---
	
	
	// --- mypage 폴더 ---
	@RequestMapping("/mycoupon.do")
	public ModelAndView getMyCoupon() {
		System.out.println("내 쿠폰함 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myCoupon");
		return mav;
	}
	
	@RequestMapping("/mylevel.do")
	public ModelAndView getMyLevel() {
		System.out.println("내 등급 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myLevel");
		return mav;
	}
	
	@RequestMapping("/myorderlistcancle.do")
	public ModelAndView getMyOrderListcancle() {
		System.out.println("내 주문 취소 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myOrderList_cancle");
		return mav;
	}
	
	@RequestMapping("/myorderlist.do")
	public ModelAndView getMyOrderList() {
		System.out.println("내 주문현황 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myOrderList");
		return mav;
	}
	
	
	
	@RequestMapping("/myuserinfoconfirm.do")
	public ModelAndView getMyUserInfoConfirm() {
		System.out.println("내 정보수정 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myUserInfoConfirm");
		return mav;
	}
	// --- end page 폴더 ---
	
	//-----daminoAdminView 영역 시작--------------------------
	
	@RequestMapping("/main.admdo")
	   public ModelAndView getAdminMainPage() {
	      System.out.println("메인페이지 열기");
	      
	      ModelAndView mav = new ModelAndView();
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
	
	@RequestMapping("/boardWrite.admdo")
	   public ModelAndView getAdminBoardWritePage() {
	      System.out.println("게시글 쓰기 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/board/boardWrite");
	      
	      return mav;
	   }
	
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
	@RequestMapping("/marketEdit.admdo")
	   public ModelAndView getAdminMarketEditPage() {
	      System.out.println("점포 수정 페이지 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/members/market/marketEdit");
	      
	      return mav;
	   }
	@RequestMapping("/marketList.admdo")
	public ModelAndView getAdminMarketListPage() {
		System.out.println("점포 목록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/market/marketList");
		
		return mav;
	}
	
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
	@RequestMapping("/memberInfo.admdo")
	public ModelAndView getAdminmembersInfoPage() {
		System.out.println("회원 정보 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/memberInfo");
		
		return mav;
	}
	@RequestMapping("/passwordChange.admdo")
	public ModelAndView getAdminPasswordChangePage() {
		System.out.println("비밀번호 변경 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/passwordChange");
		
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
	@RequestMapping("/menuInfo.admdo")
	public ModelAndView getAdminMenuInfoPage() {
		System.out.println("메뉴 정보 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/menuInfo");
		
		return mav;
	}
	@RequestMapping("/menuList.admdo")
	public ModelAndView getAdminMenuListPage() {
		System.out.println("메뉴 목록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
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
	@RequestMapping("/bannerBoardView.admdo")
	public ModelAndView getAdminBannerBoardViewPage() {
		System.out.println("배너 목록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/banner/bannerBoardView");
		
		return mav;
	}
	
	//sites > questionAndAnswer 폴더 시작 -------
	@RequestMapping("/qna_insert.admdo")
	public ModelAndView getAdminQna_insertPage() {
		System.out.println("문의사항 추가 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/questionAndAnswer/qna_insert");
		
		return mav;
	}
	@RequestMapping("/qna_list.admdo")
	public ModelAndView getAdminQna_listPage() {
		System.out.println("문의사항 목록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/questionAndAnswer/qna_list");
		
		return mav;
	}
	
	//sites > terms 폴더 시작 -------
	@RequestMapping("/terms_insert.admdo")
	public ModelAndView getAdminTerms_insertPage() {
		System.out.println("약관 추가 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/terms/terms_insert");
		
		return mav;
	}
	@RequestMapping("/terms_list.admdo")
	public ModelAndView getAdminTerms_listPage() {
		System.out.println("약관 목록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/terms/terms_list");
		
		return mav;
	}
	
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
	
	//store_sales 폴더 시작 -------

	@RequestMapping("/salesStatus.admdo")
	public ModelAndView getAdminSalesStatusPage() {
		System.out.println("매출 현황 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store_sales/salesStatus");
		
		return mav;
	}
	
	//daminoManagerView 영역 시작 -------------------------
	
	// ---- Manager Main ----
		@RequestMapping("/main.smdo")
		public ModelAndView getMainManagerPage() {
			System.out.println("메인페이지 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/main");
			
			return mav;
		}
	
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
		@RequestMapping("/managerLogin.smdo")
		public ModelAndView getManagerLoginPage() {
			System.out.println("로그인 페이지 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/members/managerLogin");
			
			return mav;
		}
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
		@RequestMapping("/orderList.smdo")
		public ModelAndView getOrderListPage() {
			System.out.println("주문 목록 페이지 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/order/orderList");
			
			return mav;
		}
		@RequestMapping("/orderSearch.smdo")
		public ModelAndView getOrderSearchPage() {
			System.out.println("주문 검색 페이지 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/order/orderSearch");
			
			return mav;
		}
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
