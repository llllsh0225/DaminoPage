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
	public List<GoodsToppingVO> getToppingList() {
		System.out.println("GoodsListDAOImpl getToppingList()");
		return sqlSessionTemplate.selectList("GoodsListDAO.getToppingList");
	}

	@Override
	public List<GoodsDrinkEtcVO> getDrinkEtcList() {
		System.out.println("GoodsListDAOImpl getDrinkEtcList()");
		return sqlSessionTemplate.selectList("GoodsListDAO.getDrinkEtcList");
	}

	
	
}
