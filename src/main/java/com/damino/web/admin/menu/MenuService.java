package com.damino.web.admin.menu;

public interface MenuService {
	public void insertPizza(PizzaVO vo); // 피자 메뉴 등록
	public void insertSide(SideVO vo); // 사이드 메뉴 등록
	public void insertDrinkEtc(DrinkEtcVO vo); // 음료&기타 메뉴 등록
	public void insertTopping(ToppingVO vo); // 토핑 메뉴 등록
}
