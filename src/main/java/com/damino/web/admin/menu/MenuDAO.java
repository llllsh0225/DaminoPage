package com.damino.web.admin.menu;

import java.util.List;


public interface MenuDAO {
	 
	public void insertPizza(PizzaVO vo); // ���� �޴� ���
	public void insertSide(SideVO vo); // ���̵� �޴� ���
	public void insertDrinkEtc(DrinkEtcVO vo); // ����&��Ÿ �޴� ���
	public void insertTopping(ToppingVO vo); // ���� �޴� ���
	
	public List<PizzaVO> getPizzaList(); // ���� ��������
	public List<ToppingVO> getToppingList();
	
	public PizzaVO getPizza(PizzaVO vo);
}
