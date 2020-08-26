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
		System.out.println("[chart count 남성유저");
		return sqlSessionTemplate.selectOne("salesStausDAO.getCountMale");
	}

	@Override
	public int getCountF() {
		System.out.println("[chart count 여성유저");
		return sqlSessionTemplate.selectOne("salesStausDAO.getCountFemale");
	}

	@Override
	public int getOrderPrice() {
		System.out.println("주문금액");
		return sqlSessionTemplate.selectOne("salesStausDAO.getOrderPrice");
	}

	@Override
	public List<SalesVO> getMonthly() {
		System.out.println("주문내역이 있는 최근 12개월 yyyy-mm형태로 가져오기(차트 x축)");
		return sqlSessionTemplate.selectList("salesStausDAO.getMonthly");
	}

	@Override
	public List<SalesVO> getMonthlySales() {
		System.out.println("주문내역이 있는 최근 12개월 월별 매출액 가져옴(차트 y축)");
		return sqlSessionTemplate.selectList("salesStausDAO.getMonthlySales");
	}

}
