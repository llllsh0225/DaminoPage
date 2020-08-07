package com.damino.web.admin.menu;

import java.util.List;


public interface MenuDAO {
	 
	public void insertPizza(PizzaVO vo); // ���� �޴� ���
	public void insertSide(SideVO vo); // ���̵� �޴� ���
	public void insertDrinkEtc(DrinkEtcVO vo); // ����&��Ÿ �޴� ���
	public void insertTopping(ToppingVO vo); // ���� �޴� ���
	
	public List<PizzaVO> getPizzaList(); // ���� ��������
	public List<ToppingVO> getToppingList(); // ���� ��������
	public List<SideVO> getSideList(); // ���̵� ��������
	public List<DrinkEtcVO> getDrinkEtcList(); // ����&��Ÿ ��������
	
	public PizzaVO getPizza(PizzaVO vo); // ���� ������ ��������
	public SideVO getSide(SideVO vo); // ���̵� ������ ��������
	public DrinkEtcVO getDrinkEtc(DrinkEtcVO vo); // ����&��Ÿ ������ ��������
	public ToppingVO getTopping(ToppingVO vo); // ���� ������ ��������
	
	public List<PizzaVO> getNutrients(); // ���缺�� ��������
	
	
	void deletePizza(PizzaVO vo); // ���� ����
	void updatePizza(PizzaVO vo); // ���� ������Ʈ
}
