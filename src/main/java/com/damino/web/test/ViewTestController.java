package com.damino.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewTestController {
	
	@RequestMapping("/main.do")
	public ModelAndView getMainPage() {
		System.out.println("메인페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main");
		
		return mav;
	}
	@RequestMapping("/quickOrdermain.do")
	public ModelAndView getQuickOrderPage() {
		System.out.println("퀵오더페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrdermain");
		
		return mav;
	}

	@RequestMapping("/basketdetail.do")
	public ModelAndView getBasketDetailPage() {
		System.out.println("장바구니 상세페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket-detail");
		return mav;
	}
	
	@RequestMapping("/basketempty.do")
	public ModelAndView getBasketEmptyPage() {
		System.out.println("빈 장바구니 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket-empty");
		return mav;
	}
	
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
	
	@RequestMapping("/userinfoconfirm.do")
	public ModelAndView getUserInfoConfirm() {
		System.out.println("회원 본인여부 확인 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/user_info_confirm");
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
	
	// -- goods 폴더 --
	@RequestMapping("/goodslist.do")
	public ModelAndView getOrderList() {
		System.out.println("제품 목록 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/goods/list");
		return mav;
	}
	
	@RequestMapping("/grouporderservice.do")
	public ModelAndView getGroupOrderService() {
		System.out.println("단체 주문 서비스 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/goods/groupOrderService");
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
	
	@RequestMapping("/myquestionlist.do")
	public ModelAndView getMyQuestionList() {
		System.out.println("내 질문내역 1:1 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myQuestionList");
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
	
	@RequestMapping("/boardView.admdo")
	   public ModelAndView getAdminBoardPage() {
	      System.out.println("게시글 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/board/boardView");
	      
	      return mav;
	   }
	
	@RequestMapping("/boardWrite.admdo")
	   public ModelAndView getAdminBoardWritePage() {
	      System.out.println("게시글 쓰기 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/board/boardWrite");
	      
	      return mav;
	   }
	
	@RequestMapping("/boardList.admdo")
	   public ModelAndView getAdminBoardListPage() {
	      System.out.println("게시글 목록 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/board/boardList");
	      
	      return mav;
	   }
	
	@RequestMapping("/login.admdo")
	   public ModelAndView getAdminLoginPage() {
	      System.out.println("로그인 페이지 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/member/login");
	      
	      return mav;
	   }
	@RequestMapping("/memberEdit.admdo")
	public ModelAndView getAdminMemberEditPage() {
		System.out.println("회원 수정 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/memberEdit");
		
		return mav;
	}
	@RequestMapping("/memberInfo.admdo")
	public ModelAndView getAdminMemberInfoPage() {
		System.out.println("회원 정보 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/memberInfo");
		
		return mav;
	}
	@RequestMapping("/passwordChange.admdo")
	public ModelAndView getAdminPasswordChangePage() {
		System.out.println("비밀번호 변경 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/passwordChange");
		
		return mav;
	}
	@RequestMapping("/regForm.admdo")
	public ModelAndView getAdminRegFormPage() {
		System.out.println("로그인 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/regForm");
		
		return mav;
	}
	
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


}
