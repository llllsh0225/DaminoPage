package com.damino.web.admin.menu.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.MenuDAO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.admin.menu.ToppingVO;

@Repository("menuDAO")
public class MenuDAOImpl implements MenuDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insertPizza(PizzaVO vo) {
		System.out.println("피자 메뉴 정보 / 피자 영양성분 등록");
		sqlSessionTemplate.insert("MenuDAO.insertPizza", vo);
	}

	@Override
	public void insertSide(SideVO vo) {
		System.out.println("사이드 메뉴 정보 / 사이드 영양성분 등록");
		sqlSessionTemplate.insert("MenuDAO.insertSide", vo);
	}

	@Override
	public void insertDrinkEtc(DrinkEtcVO vo) {
		System.out.println("음료&기타 메뉴 정보 등록");
		sqlSessionTemplate.insert("MenuDAO.insertDrinkEtc", vo);
	}

	@Override
	public void insertTopping(ToppingVO vo) {
		System.out.println("토핑 메뉴 정보 등록");
		sqlSessionTemplate.insert("MenuDAO.insertTopping", vo);
	}

}
