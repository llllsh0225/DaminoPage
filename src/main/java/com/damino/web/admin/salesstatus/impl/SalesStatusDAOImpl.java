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
		return sqlSessionTemplate.selectOne("salesStatusDAO.getCountMale");
	}

	@Override
	public int getCountF() {
		System.out.println("[chart count ��������");
		return sqlSessionTemplate.selectOne("salesStatusDAO.getCountFemale");
	}

	@Override
	public int getOrderPrice() {
		System.out.println("�ֹ��ݾ�");
		return sqlSessionTemplate.selectOne("salesStatusDAO.getOrderPrice");
	}
	@Override
	public List<SalesVO> getDaily() {
		System.out.println("�ֹ����� ���Ϸ� yyyy-mm-dddd���·� �������� (��Ʈ x��)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getdaily");
	}

	@Override
	public List<SalesVO> getDailyCount() {
		System.out.println("�ֹ����� ���Ϸ� ����Ǽ� �������� (��Ʈ y��)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getdailyCount");
	}
// ======= ��main =======--------------------------------------------------------
	
	@Override
	public List<SalesVO> getMonthly() {
		System.out.println("�ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getMonthly");
	}

	@Override
	public List<SalesVO> getMonthlySales() {
		System.out.println("�ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getMonthlySales");
	}

	@Override
	public List<SalesVO> getYearly() {
		System.out.println("�ֹ������� �ִ� �ֱ� 5�� yyyy ���·� �������� (��Ʈx��)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getYearly");
	}

	@Override
	public List<SalesVO> getYearlySales() {
		System.out.println("�ֹ������� �ִ� �ֱ� 5�� yyyy ���·� �������� (��Ʈx��)");
		return sqlSessionTemplate.selectList("salesStatusDAO.getYearlySales");
	}

	@Override
	public List<SalesVO> getSalesList(SalesVO vo) {
		System.out.println("��¥�� �ֹ����� �˻�");
		return sqlSessionTemplate.selectList("salesStatusDAO.getSalesList", vo);
	}
	
	@Override
	public List<SalesVO> getDateSearch(SalesVO vo) {
		System.out.println("�˻��Ⱓ ��¥");
		return sqlSessionTemplate.selectList("salesStatusDAO.getDateSearch", vo);
	}
	
	@Override
	public List<SalesVO> getSalesSearch(SalesVO vo) {
		System.out.println("�˻��Ⱓ ��¥�� �����");
		return sqlSessionTemplate.selectList("salesStatusDAO.getSalesSearch", vo);
	}

	@Override
	public List<SalesVO> getCountSearch(SalesVO vo) {
		System.out.println("�˻��Ⱓ ��¥�� �ֹ��Ǽ�");
		return sqlSessionTemplate.selectList("salesStatusDAO.getCountSearch", vo);
	}



}
