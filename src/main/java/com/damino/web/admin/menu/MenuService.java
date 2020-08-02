package com.damino.web.admin.menu;

import java.util.List;

import com.damino.web.admin.menu.paging.PizzaPaging;

public interface MenuService {
	public void insertPizza(PizzaVO vo); // ���� �޴� ���
	public void insertSide(SideVO vo); // ���̵� �޴� ���
	public void insertDrinkEtc(DrinkEtcVO vo); // ����&��Ÿ �޴� ���
	public void insertTopping(ToppingVO vo); // ���� �޴� ���
	
	public List<PizzaVO> getPizzaList(PizzaPaging pa); // ���� ��������
	public int countPizzaBoard(); // ���� ��
	public List<ToppingVO> getToppingList();
}
