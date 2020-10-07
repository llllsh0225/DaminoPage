package com.damino.web.admin.homepage.menu;

import java.util.List;

public interface MenuService {
	public void insertPizza(PizzaVO vo); // ���� �޴� ���
	public void insertSide(SideVO vo); // ���̵� �޴� ���
	public void insertDrinkEtc(DrinkEtcVO vo); // ����&��Ÿ �޴� ���
	public void insertTopping(ToppingVO vo); // ���� �޴� ���
	
	public List<PizzaVO> getPizzaList(); // ���� ��������
	public List<ToppingVO> getToppingList(); // ���� ��������
	public List<SideVO> getSideList(); // ���̵� ��������
	public List<DrinkEtcVO> getDrinkEtcList(); // ����&��Ÿ ��������
	
	public PizzaVO getPizza(PizzaVO vo);
	public SideVO getSide(SideVO vo);
	public DrinkEtcVO getDrinkEtc(DrinkEtcVO vo);
	public ToppingVO getTopping(ToppingVO vo);
	
	public List<PizzaVO> getNutrients();
	
	void deletePizza(PizzaVO vo);
	void deleteSide(SideVO vo);   
	void deleteDrinkEtc(DrinkEtcVO vo); 
	void deleteTopping(ToppingVO vo); 
	
	void updatePizza(PizzaVO vo);
	void updateSide(SideVO vo);
	void updateDrinkEtc(DrinkEtcVO vo);
	void updateTopping(ToppingVO vo);
}
