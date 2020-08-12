package com.damino.web.user.quickorder.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.user.quickorder.QuickOrderDAO;

@Repository("quickOrderDAO")
public class QuickOrderDAOImpl implements QuickOrderDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<PizzaVO> getPizzaNames() {
		System.out.println("���� ��ǰ�� ����Ʈ ��������");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getPizzaNames");
	}

	@Override
	public PizzaVO getPizzaDough(String p_name) {
		System.out.println("���� ���� ���� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaDough", p_name);
	}

	@Override
	public List<SideVO> getSideNames() {
		System.out.println("���̵� ��ǰ�� ����Ʈ ��������");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getSideNames");
	}

	@Override
	public List<DrinkEtcVO> getDrinkNames() {
		System.out.println("����&��Ÿ ��ǰ�� ����Ʈ ��������");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getDrinkNames");
	}

	@Override
	public int getPizzaLPrice(String goodsName) {
		System.out.println("L ������ ���� ���� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaLPrice", goodsName);
	}

	@Override
	public int getDoughPrice(String dough) {
		System.out.println("���� ���� ���� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getDoughPrice", dough);
	}

	/**
	@Override
	public Map<String, Integer> getToppingPrice(Map<String, Object> toppings) {
		System.out.println("���� ���� ����Ʈ ��������");
		return sqlSessionTemplate.selectMap("QuickOrderDAO.getToppingPrice", toppings, "topping");
	}
	*/

}
