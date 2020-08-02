package com.damino.web.admin.menu;

import java.util.List;


public interface MenuDAO {
	 
	public void insertPizza(PizzaVO vo); // 피자 메뉴 등록
	public void insertSide(SideVO vo); // 사이드 메뉴 등록
	public void insertDrinkEtc(DrinkEtcVO vo); // 음료&기타 메뉴 등록
	public void insertTopping(ToppingVO vo); // 토핑 메뉴 등록
	
	public List<PizzaVO> getPizzaList(); // 피자 가져오기
	public List<ToppingVO> getToppingList();
	
	public PizzaVO getPizza(PizzaVO vo);
}
