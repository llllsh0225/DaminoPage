package com.damino.web.user.goods;

import java.util.List;

import com.damino.web.user.board.QnaBoardVO;

public interface GoodsListDAO {
	public List<GoodsPizzaVO> getPizzaList(); // 피자 목록 불러오기
	public List<GoodsPizzaVO> getPizzaClassicList(); // 피자 목록 불러오기
	public List<GoodsSideVO> getSideList(); // 사이드메뉴 목록 불러오기
	public List<GoodsToppingVO> getToppingList(); // 토핑 목록 불러오기 
	public List<GoodsDrinkEtcVO> getDrinkEtcList(); // 음료 및 기타 목록 불러오기 
	
	//사용자 선택 피자 메뉴 불러오기
	public GoodsPizzaVO getUserPizzaGoods(GoodsPizzaVO vo);
	//사용자 선택 - 선택 가능 도우 불러오기
	public GoodsPizzaVO getUserDoughGoods(GoodsPizzaVO vo);
}
