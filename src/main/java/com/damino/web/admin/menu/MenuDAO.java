package com.damino.web.admin.menu;

public interface MenuDAO {
	public void insertPizza(PizzaVO vo); // ���� �޴� ���
	public void insertSide(SideVO vo); // ���̵� �޴� ���
	public void insertDrinkEtc(DrinkEtcVO vo); // ����&��Ÿ �޴� ���
	public void insertTopping(ToppingVO vo); // ���� �޴� ���
}