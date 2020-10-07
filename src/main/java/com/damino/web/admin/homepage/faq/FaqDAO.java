package com.damino.web.admin.homepage.faq;

import java.util.List;

public interface FaqDAO {
	public List<FaqVO> getFaqList(FaqVO vo); // faq 불러오기
	public FaqVO getFaq(FaqVO vo); // faq 상세보기
	public void insertFaq(FaqVO vo); // faq 등록
	public void updateFaq(FaqVO vo); // faq 수정
	public void deleteFaq(FaqVO vo); // faq 삭제
	
	public List<FaqVO> faqMain(); //홈페이지관리자 main용
}
