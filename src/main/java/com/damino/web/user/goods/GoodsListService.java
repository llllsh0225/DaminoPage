package com.damino.web.user.goods;

import java.util.List;

public interface GoodsListService {
	public List<GoodsPizzaVO> getPizzaList(); // 피자 목록 불러오기
	public List<GoodsSideVO> getSideList(); // 사이드메뉴 목록 불러오기
	public List<GoodsToppingVO> getToppingList(); // 토핑 목록 불러오기 
	public List<GoodsDrinkEtcVO> getDrinkEtcList(); // 음료 및 기타 목록 불러오기 
}
