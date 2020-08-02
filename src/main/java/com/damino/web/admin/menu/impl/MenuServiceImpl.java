package com.damino.web.admin.menu.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.market.MarketVO;
import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.MenuDAO;
import com.damino.web.admin.menu.MenuService;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.admin.menu.ToppingVO;

@Service("menuService")
public class MenuServiceImpl implements MenuService {
	@Autowired
	private MenuDAO menuDAO;
	
	@Override
	public void insertPizza(PizzaVO vo) {
		menuDAO.insertPizza(vo);
	}

	@Override
	public void insertSide(SideVO vo) {
		menuDAO.insertSide(vo);
	}

	@Override
	public void insertDrinkEtc(DrinkEtcVO vo) {
		menuDAO.insertDrinkEtc(vo);
	}

	@Override
	public void insertTopping(ToppingVO vo) {
		menuDAO.insertTopping(vo);
	}


	@Override
	public List<PizzaVO> getPizzaList() {
		System.out.println("MenuServiceImpl getPizzaList()");
		return menuDAO.getPizzaList();
	}

	@Override
	public List<ToppingVO> getToppingList() {
		System.out.println("MenuServiceImpl getToppingList()");
		return menuDAO.getToppingList();
	}

	@Override
	public PizzaVO getPizza(PizzaVO vo) {
		return menuDAO.getPizza(vo);
		
	}
}
