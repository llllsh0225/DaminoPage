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
		System.out.println("���� �ֹ��ϱ� ������ ����");
		return sqlSessionTemplate.selectList("FaqViewDAO.getHowToOrderPage");
	}

}
