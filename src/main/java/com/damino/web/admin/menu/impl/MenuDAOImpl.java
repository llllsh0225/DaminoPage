package com.damino.web.admin.menu.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.menu.MenuDAO;
import com.damino.web.admin.menu.PizzaVO;

@Repository("menuDAO")
public class MenuDAOImpl implements MenuDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insertPizza(PizzaVO vo) {
		System.out.println("피자 메뉴 정보 / 피자 영양성분 등록");
		sqlSessionTemplate.insert("MenuDAO.insertPizza", vo);
	}

}
