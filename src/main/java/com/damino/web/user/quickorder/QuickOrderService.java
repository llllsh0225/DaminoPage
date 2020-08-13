package com.damino.web.user.quickorder;

import java.util.List;
import java.util.Map;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;

public interface QuickOrderService {
	public List<PizzaVO> getPizzaNames(); // 퀵오더 셀렉트박스 피자제품명 리스트 가져오기
	public List<SideVO> getSideNames(); // 퀵오더 셀렉트박스 사이드제품명 리스트 가져오기
	public List<DrinkEtcVO> getDrinkNames(); // 퀵오더 셀렉트박스 음료&기타 제품명 리스트 가져오기
	public PizzaVO getPizzaDough(String p_name); // 제품명에 해당하는 선택 가능 도우 가져오기
	public int getPizzaLPrice(String goodsName); // L 사이즈 피자 가격 가져오기
	public int getPizzaMPrice(String goodsName); // M 사이즈 피자 가격 가져오기
	public int getDoughPrice(String dough); // 선택된 피자 도우 가격 가져오기
	public int getSidePrice(String goodsName); // 사이드메뉴 가격 가져오기
	public int getDrinkEtcPrice(String goodsName); // 음료&기타 가격 가져오기
}
