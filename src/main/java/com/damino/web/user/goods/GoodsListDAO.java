package com.damino.web.user.goods;

import java.util.List;

import com.damino.web.user.board.QnaBoardVO;
import com.damino.web.user.quickorder.QuickOrderGoodsVO;

public interface GoodsListDAO {
	public List<GoodsPizzaVO> getPizzaList(); // 피자 목록 불러오기
	public List<GoodsPizzaVO> getPizzaClassicList(); // 피자 목록 불러오기
	public List<GoodsSideVO> getSideList(); // 사이드메뉴 목록 불러오기
	public List<GoodsToppingVO> getMainTopping(); // 메인 토핑 목록 불러오기 
	public List<GoodsToppingVO> getCheezeTopping(); // 치즈 토핑 목록 불러오기 
	public List<GoodsToppingVO> getAfterTopping(); // 애프터 토핑 목록 불러오기 
	
	public List<GoodsDrinkEtcVO> getDrinkEtcList(); // 음료 및 기타 목록 불러오기 
	
//------------------사용자 선택 --------------------
	//사용자 선택 -피자 메뉴 불러오기(2번째는 이름만 비교)
	public GoodsPizzaVO getUserPizzaGoods(GoodsPizzaVO vo);
	public GoodsPizzaVO getUserPizza(GoodsPizzaVO vo);
	//사용자 선택 - 사이드디시 메뉴 불러오기
	public GoodsSideVO getUserSideGoods(GoodsSideVO vo);
	//사용자 선택 - 토핑 메뉴 불러오기
	public GoodsToppingVO getUserTopping(GoodsToppingVO vo);
	
	//사용자 선택 - 선택 가능 도우 불러오기
	public GoodsPizzaVO getUserDoughGoods(GoodsPizzaVO vo);
	
	//장바구니 - 피자 메뉴 삽입
	public void insertPizzaBasket(UserBasketVO vo);
	//장바구니 - 토핑 삽입
	public void insertToppingBasket(UserBasketVO vo);
	//장바구니 - 사이드디시 삽입
	public void insertSideBasket(UserBasketVO vo);
	//장바구니 - 음료 및 기타 삽입
	public void insertEtcBasket(UserBasketVO vo);
	
	//장바구니 - 테이블 구분자 불러오기
	public int getNextGubun(String userid);
	
	//장바구니 피자 메뉴 불러오기
	public List<UserBasketVO> getBasketPizza(String userid);
	//장바구니 토핑 메뉴 불러오기
	public List<UserBasketVO> getBasketTopping(String userid);
	//장바구니 사이드디시 메뉴 불러오기
	public List<UserBasketVO> getBasketSide(String userid);
	//장바구니 음료 및 기타 메뉴 불러오기
	public List<UserBasketVO> getBasketEtc(String userid);	
	
//-----수량 변경-------------------------------
	//장바구니 - 음료 및 기타 변경
	public void changeEtcCnt(UserBasketVO vo);
	//장바구니 - 사이드디시 변경
	public void changeSideCnt(UserBasketVO vo);
	//장바구니 - 피자 변경
	public void changePizzaCnt(UserBasketVO vo);

//------삭제-----------------------------------
	//장바구니 - 전체 삭제(피자)
	public void allDeleteP(UserBasketVO vo);
	//장바구니 - 전체 삭제(토핑)
	public void allDeleteT(UserBasketVO vo);
	//장바구니 - 전체 삭제(사이드디시)
	public void allDeleteS(UserBasketVO vo);
	//장바구니 - 전체 삭제(음료및기타)
	public void allDeleteE(UserBasketVO vo);
	
	//장바구니 - 토핑 삭제
	public void deleteTopping(UserBasketVO vo);		
	//장바구니 - 피자 삭제
	public void deletePizzaInfo(UserBasketVO vo);
	//장바구니 - 피자 연관 토핑정보 삭제
	public void deletePizzasTopping(UserBasketVO vo);
	
	//장바구니 - 사이드디시 삭제
	public void deleteSideInfo(UserBasketVO vo);
	//장바구니 - 음료 삭제
	public void deleteEtcInfo(UserBasketVO vo);
	
}
