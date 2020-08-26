package com.damino.web.user.goods.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.faq.FaqViewDAO;
import com.damino.web.user.faq.FaqViewVO;
import com.damino.web.user.goods.GoodsDrinkEtcVO;
import com.damino.web.user.goods.GoodsListDAO;
import com.damino.web.user.goods.GoodsListService;
import com.damino.web.user.goods.GoodsPizzaVO;
import com.damino.web.user.goods.GoodsSideVO;
import com.damino.web.user.goods.GoodsToppingVO;
import com.damino.web.user.goods.UserBasketVO;
import com.damino.web.user.quickorder.QuickOrderGoodsVO;

@Service("goodsListService")
public class GoodsListServiceImpl implements GoodsListService {

	@Autowired
	private GoodsListDAO goodsListDAO;
			
	@Override
	public List<GoodsPizzaVO> getPizzaList() {
		System.out.println("GoodsListServiceImpl getPizzaList()");
		return goodsListDAO.getPizzaList();
	}
	
	@Override
	public List<GoodsPizzaVO> getPizzaClassicList() {
		System.out.println("GoodsListServiceImpl getPizzaClassicList()");
		return goodsListDAO.getPizzaClassicList();
	}

	@Override
	public List<GoodsSideVO> getSideList() {
		System.out.println("GoodsListServiceImpl getSideList()");
		return goodsListDAO.getSideList();
	}

	@Override
	public List<GoodsDrinkEtcVO> getDrinkEtcList() {
		System.out.println("GoodsListServiceImpl getDrinkEtcList()");
		return goodsListDAO.getDrinkEtcList();
	}

	@Override
	public GoodsPizzaVO getUserPizzaGoods(GoodsPizzaVO vo) {
		System.out.println("GoodsListServiceImpl getUserPizzaGoods(GoodsPizzaVO vo)");
		return goodsListDAO.getUserPizzaGoods(vo);
	}

	@Override
	public GoodsPizzaVO getUserDoughGoods(GoodsPizzaVO vo) {
		System.out.println("GoodsListServiceImpl getUserDoughGoods(GoodsPizzaVO vo)");
		return goodsListDAO.getUserDoughGoods(vo);
	}
	
	@Override
	public List<GoodsToppingVO> getMainTopping() {
		System.out.println("GoodsListServiceImpl getMainTopping()");
		return goodsListDAO.getMainTopping();
	}

	@Override
	public List<GoodsToppingVO> getCheezeTopping() {
		System.out.println("GoodsListServiceImpl getCheezeTopping()");
		return goodsListDAO.getCheezeTopping();
	}

	@Override
	public List<GoodsToppingVO> getAfterTopping() {
		System.out.println("GoodsListServiceImpl getAfterTopping()");
		return goodsListDAO.getAfterTopping();
	}

	@Override
	public GoodsSideVO getUserSideGoods(GoodsSideVO vo) {
		System.out.println("GoodsListServiceImpl getUserSideGoods(GoodsSideVO vo)");
		return goodsListDAO.getUserSideGoods(vo);
	}

	@Override
	public GoodsToppingVO getUserTopping(GoodsToppingVO vo) {
		System.out.println("GoodsListServiceImpl getUserTopping(GoodsToppingVO vo)");
		return goodsListDAO.getUserTopping(vo);
	}

	@Override
	public GoodsPizzaVO getUserPizza(GoodsPizzaVO vo) {
		System.out.println("GoodsListServiceImpl getUserPizza(GoodsPizzaVO vo)");
		return goodsListDAO.getUserPizza(vo);
	}

	@Override
	public void insertPizzaBasket(UserBasketVO vo) {
		System.out.println("장바구니 피자 추가");
		goodsListDAO.insertPizzaBasket(vo);
	}
	
	@Override
	public void insertToppingBasket(UserBasketVO vo) {
		System.out.println("장바구니 토핑 추가");
		goodsListDAO.insertToppingBasket(vo);
	}
	
	@Override
	public void insertSideBasket(UserBasketVO vo) {
		System.out.println("장바구니 사이드디시 추가");
		goodsListDAO.insertSideBasket(vo);
	}
	
	@Override
	public void insertEtcBasket(UserBasketVO vo) {
		System.out.println("장바구니 음료 및 기타 추가");
		goodsListDAO.insertEtcBasket(vo);
	}
	
	@Override
	public List<UserBasketVO> getBasketPizza(String userid) {
		System.out.println("장바구니 피자 목록");
		return goodsListDAO.getBasketPizza(userid);
	}

	@Override
	public void deleteSideInfo(UserBasketVO vo) {
		System.out.println("사이드디시 정보 삭제");
		goodsListDAO.deleteSideInfo(vo);
	}

	@Override
	public void deleteEtcInfo(UserBasketVO vo) {
		System.out.println("음료 정보 삭제");
		goodsListDAO.deleteEtcInfo(vo);
	}

	@Override
	public List<UserBasketVO> getBasketTopping(String userid) {
		System.out.println("장바구니 토핑 목록");
		return goodsListDAO.getBasketTopping(userid);
	}
	
	@Override
	public List<UserBasketVO> getBasketSide(String userid) {
		return goodsListDAO.getBasketSide(userid);
	}

	@Override
	public List<UserBasketVO> getBasketEtc(String userid) {
		return goodsListDAO.getBasketEtc(userid);
	}
	@Override
	public void deleteTopping(UserBasketVO vo) {
		System.out.println("토핑 삭제");
		goodsListDAO.deleteTopping(vo);
	}
	
	@Override
	public void deletePizzaInfo(UserBasketVO vo) {
		System.out.println("피자 정보 삭제");
		goodsListDAO.deletePizzaInfo(vo);
	}
	
	@Override
	public void deletePizzasTopping(UserBasketVO vo) {
		System.out.println("피자의 토핑 정보 삭제");
		goodsListDAO.deletePizzasTopping(vo);
	}

	@Override
	public int getNextGubun(String userid) {
		return goodsListDAO.getNextGubun(userid);
	}

	@Override
	public void changeEtcCnt(UserBasketVO vo) {
		System.out.println("음료및기타 수량 변경");
		goodsListDAO.changeEtcCnt(vo);
		
	}

	@Override
	public void changeSideCnt(UserBasketVO vo) {
		System.out.println("사이드디시 수량 변경");
		goodsListDAO.changeSideCnt(vo);		
	}

	@Override
	public void changePizzaCnt(UserBasketVO vo) {
		System.out.println("피자 수량 변경");
		goodsListDAO.changePizzaCnt(vo);		
	}
	
}
