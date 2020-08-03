package com.damino.web.user.faq;

import java.util.List;

public interface FaqViewService {
	public List<FaqViewVO> getHowToOrderPage(); // 피자 주문하기 페이지 열기
	public List<FaqViewVO> getOrderCheckPage(); // 주문 확인 페이지 열기
	public List<FaqViewVO> getWrapOrderPage(); // 포장 주문 페이지 열기
	public List<FaqViewVO> getSendPresentPage(); // 피자 선물하기 페이지 열기
	public List<FaqViewVO> getAboutHomepagePage(); // 홈페이지 관련 페이지 열기
}
