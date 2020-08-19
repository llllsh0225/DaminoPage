package com.damino.web.user.goods.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.goods.GoodsDrinkEtcVO;
import com.damino.web.user.goods.GoodsListDAO;
import com.damino.web.user.goods.GoodsPizzaVO;
import com.damino.web.user.goods.GoodsSideVO;
import com.damino.web.user.goods.GoodsToppingVO;
import com.damino.web.user.goods.UserBasketVO;

@Service("goodsListDAO")
public class GoodsListDAOImpl implements GoodsListDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<GoodsPizzaVO> getPizzaList() {
		System.out.println("GoodsListDAOImpl getPizzaList()");
		return sqlSessionTemplate.selectList("GoodsListDAO.getPizzaList");
	}
	
	@Override
	public List<GoodsPizzaVO> getPizzaClassicList() {
		System.out.println("GoodsListDAOImpl getPizzaClassicList()");
		return sqlSessionTemplate.selectList("GoodsListDAO.getPizzaClassicList");
	}

	@Override
	public List<GoodsSideVO> getSideList() {
		System.out.println("GoodsListDAOImpl getSideList()");
		return sqlSessionTemplate.selectList("GoodsListDAO.getSideList");
	}

	@Override
	public List<GoodsDrinkEtcVO> getDrinkEtcList() {
		System.out.println("GoodsListDAOImpl getDrinkEtcList()");
		return sqlSessionTemplate.selectList("GoodsListDAO.getDrinkEtcList");
	}

	
	@Override
	public GoodsPizzaVO getUserPizzaGoods(GoodsPizzaVO vo) {
		System.out.println("GoodsListDAOImpl getUserPizzaGoods(GoodsPizzaVO vo)");
		return sqlSessionTemplate.selectOne("GoodsListDAO.getUserPizzaGoods", vo);
		
	}

	@Override
	public GoodsPizzaVO getUserDoughGoods(GoodsPizzaVO vo) {
		System.out.println("GoodsListDAOImpl getUserDoughGoods(GoodsPizzaVO vo)");
		return sqlSessionTemplate.selectOne("GoodsListDAO.getUserDoughGoods", vo);
	}

	@Override
	public List<GoodsToppingVO> getMainTopping() {
		System.out.println("GoodsListDAOImpl getMainTopping()");
		return sqlSessionTemplate.selectList("GoodsListDAO.getMainTopping");
	}
	
	@Override
	public List<GoodsToppingVO> getCheezeTopping() {
		System.out.println("GoodsListDAOImpl getCheezeTopping()");
		return sqlSessionTemplate.selectList("GoodsListDAO.getCheezeTopping");
	}

	@Override
	public List<GoodsToppingVO> getAfterTopping() {
		System.out.println("GoodsListDAOImpl getAfterTopping()");
		return sqlSessionTemplate.selectList("GoodsListDAO.getAfterTopping");
	}

	@Override
	public GoodsSideVO getUserSideGoods(GoodsSideVO vo) {
		System.out.println("GoodsListDAOImpl getUserSideGoods(GoodsSideVO vo)");
		return sqlSessionTemplate.selectOne("GoodsListDAO.getUserSideGoods", vo);
	}

	@Override
	public GoodsToppingVO getUserTopping(GoodsToppingVO vo) {
		System.out.println("GoodsListDAOImpl getUserTopping(GoodsToppingVO vo)");
		return sqlSessionTemplate.selectOne("GoodsListDAO.getUserTopping", vo);
		}

	@Override
	public GoodsPizzaVO getUserPizza(GoodsPizzaVO vo) {
		System.out.println("GoodsListDAOImpl getUserPizza(GoodsPizzaVO vo)");
		return sqlSessionTemplate.selectOne("GoodsListDAO.getUserPizza", vo);
	}

	public void insertBasket(UserBasketVO vo) {
		System.out.println("장바구니 추가");
		sqlSessionTemplate.insert("GoodsListDAO.insertBasket", vo);
	}

	@Override
	public List<UserBasketVO> getBasketList(String userid) {
		System.out.println("장바구니 목록");
		return sqlSessionTemplate.selectList("GoodsListDAO.getBasketList", userid);
	}

	
	
}
