package com.damino.web.user.faq.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.faq.FaqViewDAO;
import com.damino.web.user.faq.FaqViewVO;

@Repository("faqViewDAO")
public class FaqViewDAOImpl implements FaqViewDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<FaqViewVO> getHowToOrderPage() {
		System.out.println("FAQ 피자 주문하기 페이지 열기");
		return sqlSessionTemplate.selectList("FaqViewDAO.getHowToOrderPage");
	}

	@Override
	public List<FaqViewVO> getOrderCheckPage() {
		System.out.println("FAQ 주문 확인 페이지 열기");
		return sqlSessionTemplate.selectList("FaqViewDAO.getOrderCheckPage");
	}

	@Override
	public List<FaqViewVO> getWrapOrderPage() {
		System.out.println("FAQ 포장 주문 페이지 열기");
		return sqlSessionTemplate.selectList("FaqViewDAO.getWrapOrderPage");
	}

	@Override
	public List<FaqViewVO> getSendPresentPage() {
		System.out.println("FAQ 피자 선물하기 페이지 열기");
		return sqlSessionTemplate.selectList("FaqViewDAO.getSendPresentPage");
	}

	@Override
	public List<FaqViewVO> getAboutHomepagePage() {
		System.out.println("FAQ 홈페이지 관련 페이지 열기");
		return sqlSessionTemplate.selectList("FaqViewDAO.getAboutHomepagePage");
	}

}
