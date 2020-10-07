package com.damino.web.admin.homepage.faq;

import java.util.List;

public interface FaqDAO {
	public List<FaqVO> getFaqList(FaqVO vo); // faq �ҷ�����
	public FaqVO getFaq(FaqVO vo); // faq �󼼺���
	public void insertFaq(FaqVO vo); // faq ���
	public void updateFaq(FaqVO vo); // faq ����
	public void deleteFaq(FaqVO vo); // faq ����
	
	public List<FaqVO> faqMain(); //Ȩ������������ main��
}
