package com.damino.web.admin.menu;

import java.util.List;


public interface MenuDAO {
	 
	public void insertPizza(PizzaVO vo); // 피자 메뉴 등록
	public void insertSide(SideVO vo); // 사이드 메뉴 등록
	public void insertDrinkEtc(DrinkEtcVO vo); // 음료&기타 메뉴 등록
	public void insertTopping(ToppingVO vo); // 토핑 메뉴 등록
	
	public List<PizzaVO> getPizzaList(); // 피자 가져오기
	public List<ToppingVO> getToppingList(); // 토핑 가져오기
	public List<SideVO> getSideList(); // 사이드 가져오기
	public List<DrinkEtcVO> getDrinkEtcList(); // 음료&기타 가져오기
	
	public PizzaVO getPizza(PizzaVO vo); // 피자 수정값 가져오기
	public SideVO getSide(SideVO vo); // 사이드 수정값 가져오기
	public DrinkEtcVO getDrinkEtc(DrinkEtcVO vo); // 음료&기타 수정값 가져오기
	public ToppingVO getTopping(ToppingVO vo); // 토핑 수정값 가져오기
	
	public List<PizzaVO> getNutrients(); // 영양성분 가져오기
	
	
	void deletePizza(PizzaVO vo); // 피자 삭제
	void updatePizza(PizzaVO vo); // 피자 업데이트
}
