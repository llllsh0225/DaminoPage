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
		return sqlSessionTemplate.selectOne("salesStatusDAO.getCountMale");
	}

	@Override
	public int getCountF() {
		System.out.println("[chart count 여성유저");
		return sqlSessionTemplate.selectOne("salesStatusDAO.getCountFemale");
	}

	@Override
	public int getOrderPrice() {
		System.out.println("주문금액");
		return sqlSessionTemplate.selectOne("salesStatusDAO.getOrderPrice");
	}
	@Override
	public List<SalesVO> getDaily() {
		System.out.println("주문내역 일일로 yyyy-mm-dddd형태로 가져오기 (차트 x축)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getdaily");
	}

	@Override
	public List<SalesVO> getDailyCount() {
		System.out.println("주문내역 일일로 매출건수 가져오기 (차트 y축)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getdailyCount");
	}
// ======= ㄴmain =======--------------------------------------------------------
	
	@Override
	public List<SalesVO> getMonthly() {
		System.out.println("주문내역이 있는 최근 12개월 yyyy-mm형태로 가져오기(차트 x축)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getMonthly");
	}

	@Override
	public List<SalesVO> getMonthlySales() {
		System.out.println("주문내역이 있는 최근 12개월 월별 매출액 가져옴(차트 y축)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getMonthlySales");
	}

	@Override
	public List<SalesVO> getYearly() {
		System.out.println("주문내역이 있는 최근 5년 yyyy 형태로 가져오기 (차트x축)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getYearly");
	}

	@Override
	public List<SalesVO> getYearlySales() {
		System.out.println("주문내역이 있는 최근 5년 yyyy 형태로 가져오기 (차트x축)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getYearlySales");
	}

	@Override
	public List<SalesVO> getSalesList(SalesVO vo) {
		System.out.println("날짜별 주문내역 검색");
		return sqlSessionTemplate.selectList("salesStatusDAO.getSalesList", vo);
	}
	
	@Override
	public List<SalesVO> getDateSearch(SalesVO vo) {
		System.out.println("검색기간 날짜");
		return sqlSessionTemplate.selectList("salesStatusDAO.getDateSearch", vo);
	}
	
	@Override
	public List<SalesVO> getSalesSearch(SalesVO vo) {
		System.out.println("검색기간 날짜별 매출액");
		return sqlSessionTemplate.selectList("salesStatusDAO.getSalesSearch", vo);
	}

	@Override
	public List<SalesVO> getCountSearch(SalesVO vo) {
		System.out.println("검색기간 날짜별 주문건수");
		return sqlSessionTemplate.selectList("salesStatusDAO.getCountSearch", vo);
	}



}
