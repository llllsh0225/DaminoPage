package com.damino.web.admin.faq;

import java.util.List;

public interface FaqDAO {
	public List<FaqVO> getFaqList(); // faq ��� �ҷ�����
	public List<FaqVO> getFaqTypeList(String faq_type); // faq ī�װ��� �˻�
	public FaqVO getFaq(FaqVO vo); // faq �󼼺���
	public void insertFaq(FaqVO vo); // faq ���
	public void updateFaq(FaqVO vo); // faq ����
	public void deleteFaq(FaqVO vo); // faq ����
}
