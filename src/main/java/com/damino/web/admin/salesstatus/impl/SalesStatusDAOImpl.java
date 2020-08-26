package com.damino.web.admin.salesstatus.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.salesstatus.SalesStatusDAO;
import com.damino.web.admin.salesstatus.SalesVO;

@Repository("salesStatusDAO")
public class SalesStatusDAOImpl implements SalesStatusDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int getCountM() {
		System.out.println("[chart count ��������");
		return sqlSessionTemplate.selectOne("salesStausDAO.getCountMale");
	}

	@Override
	public int getCountF() {
		System.out.println("[chart count ��������");
		return sqlSessionTemplate.selectOne("salesStausDAO.getCountFemale");
	}

	@Override
	public int getOrderPrice() {
		System.out.println("�ֹ��ݾ�");
		return sqlSessionTemplate.selectOne("salesStausDAO.getOrderPrice");
	}

	@Override
	public List<SalesVO> getMonthly() {
		System.out.println("�ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)");
		return sqlSessionTemplate.selectList("salesStausDAO.getMonthly");
	}

	@Override
	public List<SalesVO> getMonthlySales() {
		System.out.println("�ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)");
		return sqlSessionTemplate.selectList("salesStausDAO.getMonthlySales");
	}

}
