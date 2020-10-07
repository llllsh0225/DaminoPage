package com.damino.web.admin.homepage.faq.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.homepage.faq.FaqDAO;
import com.damino.web.admin.homepage.faq.FaqVO;

@Repository("faqDAO")
public class FaqDAOImpl implements FaqDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<FaqVO> getFaqList(FaqVO vo) {
		return sqlSessionTemplate.selectList("FaqDAO.getFaqList", vo);
	}

	@Override
	public FaqVO getFaq(FaqVO vo) {
		return sqlSessionTemplate.selectOne("FaqDAO.getFaq", vo);
	}

	@Override
	public void insertFaq(FaqVO vo) {
		sqlSessionTemplate.insert("FaqDAO.insertFaq", vo);
	}

	@Override
	public void updateFaq(FaqVO vo) {
		sqlSessionTemplate.update("FaqDAO.updateFaq", vo);
	}

	@Override
	public void deleteFaq(FaqVO vo) {
		sqlSessionTemplate.delete("FaqDAO.deleteFaq", vo);
	}

	/* main 홈페이지용 */
	@Override
	public List<FaqVO> faqMain() {
		System.out.println(" FaqMain [dao]");
		return sqlSessionTemplate.selectList("FaqDAO.getFaqMain");
	}


}
