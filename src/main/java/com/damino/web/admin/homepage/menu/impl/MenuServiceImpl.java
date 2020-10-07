package com.damino.web.admin.homepage.menu.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.homepage.market.MarketVO;
import com.damino.web.admin.homepage.menu.DrinkEtcVO;
import com.damino.web.admin.homepage.menu.MenuDAO;
import com.damino.web.admin.homepage.menu.MenuService;
import com.damino.web.admin.homepage.menu.PizzaVO;
import com.damino.web.admin.homepage.menu.SideVO;
import com.damino.web.admin.homepage.menu.ToppingVO;

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
	public List<SideVO> getSideList() {
		System.out.println("MenuServiceImpl getSideList()");
		return menuDAO.getSideList();
	}
	
	@Override
	public List<DrinkEtcVO> getDrinkEtcList() {
		return menuDAO.getDrinkEtcList();
	}
	
	
	@Override
	public PizzaVO getPizza(PizzaVO vo) {
		return menuDAO.getPizza(vo);
		
	}

	@Override
	public List<PizzaVO> getNutrients() {
		return menuDAO.getNutrients();
	}

	@Override
	public SideVO getSide(SideVO vo) {
		return menuDAO.getSide(vo);
	}

	@Override
	public DrinkEtcVO getDrinkEtc(DrinkEtcVO vo) {
		return menuDAO.getDrinkEtc(vo);
	}

	@Override
	public ToppingVO getTopping(ToppingVO vo) {
		return menuDAO.getTopping(vo);
	}

	@Override
	public void deletePizza(PizzaVO vo) {
		menuDAO.deletePizza(vo);
	}

	@Override
	public void updatePizza(PizzaVO vo) {
		menuDAO.updatePizza(vo);
	}

	@Override
	public void updateSide(SideVO vo) {
		menuDAO.updateSide(vo);
	}

	@Override
	public void updateDrinkEtc(DrinkEtcVO vo) {
		menuDAO.updateDrinkEtc(vo);
	}

	@Override
	public void updateTopping(ToppingVO vo) {
		menuDAO.updateTopping(vo);
	}

	@Override
	public void deleteSide(SideVO vo) {
		menuDAO.deleteSide(vo);
	}

	@Override
	public void deleteDrinkEtc(DrinkEtcVO vo) {
		menuDAO.deleteDrinkEtc(vo);
	}

	@Override
	public void deleteTopping(ToppingVO vo) {
		menuDAO.deleteTopping(vo);
	}
	
	
}
