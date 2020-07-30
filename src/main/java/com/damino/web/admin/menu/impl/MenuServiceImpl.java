package com.damino.web.admin.menu.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.menu.MenuDAO;
import com.damino.web.admin.menu.MenuService;
import com.damino.web.admin.menu.PizzaVO;

@Service("menuService")
public class MenuServiceImpl implements MenuService {
	@Autowired
	private MenuDAO menuDAO;
	
	@Override
	public void insertPizza(PizzaVO vo) {
		menuDAO.insertPizza(vo);
	}

}
