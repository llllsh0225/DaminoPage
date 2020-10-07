package com.damino.web.admin.homepage.menu;

import java.util.List;

public interface MenuService {
	public void insertPizza(PizzaVO vo); // 피자 메뉴 등록
	public void insertSide(SideVO vo); // 사이드 메뉴 등록
	public void insertDrinkEtc(DrinkEtcVO vo); // 음료&기타 메뉴 등록
	public void insertTopping(ToppingVO vo); // 토핑 메뉴 등록
	
	public List<PizzaVO> getPizzaList(); // 피자 가져오기
	public List<ToppingVO> getToppingList(); // 토핑 가져오기
	public List<SideVO> getSideList(); // 사이드 가져오기
	public List<DrinkEtcVO> getDrinkEtcList(); // 음료&기타 가져오기
	
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
