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
		System.out.println("피자 제품명 리스트 가져오기");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getPizzaNames");
	}

	@Override
	public PizzaVO getPizzaDough(String p_name) {
		System.out.println("선택 가능 도우 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaDough", p_name);
	}

	@Override
	public List<SideVO> getSideNames() {
		System.out.println("사이드 제품명 리스트 가져오기");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getSideNames");
	}

	@Override
	public List<DrinkEtcVO> getDrinkNames() {
		System.out.println("음료&기타 제품명 리스트 가져오기");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getDrinkNames");
	}

	@Override
	public int getPizzaLPrice(String goodsName) {
		System.out.println("L 사이즈 피자 가격 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaLPrice", goodsName);
	}

	@Override
	public int getDoughPrice(String dough) {
		System.out.println("피자 도우 가격 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getDoughPrice", dough);
	}

	/**
	@Override
	public Map<String, Integer> getToppingPrice(Map<String, Object> toppings) {
		System.out.println("토핑 가격 리스트 가져오기");
		return sqlSessionTemplate.selectMap("QuickOrderDAO.getToppingPrice", toppings, "topping");
	}
	*/

}
