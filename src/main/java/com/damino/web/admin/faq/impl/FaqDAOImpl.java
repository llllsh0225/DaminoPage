package com.damino.web.admin.faq.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.faq.FaqDAO;
import com.damino.web.admin.faq.FaqVO;

@Repository("faqDAO")
public class FaqDAOImpl implements FaqDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<FaqVO> getFaqList() {
		System.out.println("FAQ ����Ʈ ��ȸ");
		return sqlSessionTemplate.selectList("FaqDAO.getFaqList");
	}

	@Override
	public void insertFaq(FaqVO vo) {
		System.out.println("FAQ ���");
		sqlSessionTemplate.insert("FaqDAO.insertFaq", vo);
	}

	@Override
	public FaqVO getFaq(FaqVO vo) {
		System.out.println("FAQ �󼼺���");
		return sqlSessionTemplate.selectOne("FaqDAO.getFaq", vo);
	}

	@Override
	public void updateFaq(FaqVO vo) {
		System.out.println("FAQ ����");
		sqlSessionTemplate.update("FaqDAO.updateFaq", vo);
	}

	@Override
	public void deleteFaq(FaqVO vo) {
		System.out.println("FAQ ����");
		sqlSessionTemplate.delete("FaqDAO.deleteFaq", vo);
	}

	@Override
	public List<FaqVO> getFaqTypeList(String faq_type) {
		System.out.println("FAQ ī�װ��� ����Ʈ �ҷ�����");
		return sqlSessionTemplate.selectOne("FaqDAO.getFaqTypeList", faq_type);
	}

}
