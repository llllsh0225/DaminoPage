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

}
