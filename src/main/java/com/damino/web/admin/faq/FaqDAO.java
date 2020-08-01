package com.damino.web.admin.faq;

import java.util.List;

public interface FaqDAO {
	public List<FaqVO> getFaqList(); // faq 목록 불러오기
	public List<FaqVO> getFaqTypeList(String faq_type); // faq 카테고리별 검색
	public FaqVO getFaq(FaqVO vo); // faq 상세보기
	public void insertFaq(FaqVO vo); // faq 등록
	public void updateFaq(FaqVO vo); // faq 수정
	public void deleteFaq(FaqVO vo); // faq 삭제
}
