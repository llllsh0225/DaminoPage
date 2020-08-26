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

	public void insertPizzaBasket(UserBasketVO vo) {
		System.out.println("장바구니 추가");
		sqlSessionTemplate.insert("GoodsListDAO.insertPizzaBasket", vo);
	}

	@Override
	public List<UserBasketVO> getBasketPizza(String userid) {
		System.out.println("장바구니 목록");
		return sqlSessionTemplate.selectList("GoodsListDAO.getBasketPizza", userid);
	}

	@Override
	public void deleteSideInfo(UserBasketVO vo) {
		sqlSessionTemplate.update("GoodsListDAO.deleteSideInfo", vo);
	}

	@Override
	public void deleteEtcInfo(UserBasketVO vo) {
		sqlSessionTemplate.update("GoodsListDAO.deleteEtcInfo", vo);
	}

	@Override
	public void insertToppingBasket(UserBasketVO vo) {
		System.out.println("장바구니 토핑 추가");
		sqlSessionTemplate.insert("GoodsListDAO.insertToppingBasket", vo);
	}
	
	@Override
	public void insertSideBasket(UserBasketVO vo) {
		System.out.println("장바구니 사이드디시 추가");
		sqlSessionTemplate.insert("GoodsListDAO.insertSideBasket", vo);
	}
	
	@Override
	public void insertEtcBasket(UserBasketVO vo) {
		System.out.println("장바구니 음료 및 기타 추가");
		sqlSessionTemplate.insert("GoodsListDAO.insertEtcBasket", vo);
	}
	
	@Override
	public List<UserBasketVO> getBasketTopping(String userid) {
		System.out.println("토핑 목록 불러오기");
		return sqlSessionTemplate.selectList("GoodsListDAO.getBasketTopping", userid);
	}
	
	@Override
	public List<UserBasketVO> getBasketSide(String userid) {
		return sqlSessionTemplate.selectList("GoodsListDAO.getBasketSide", userid);
	}

	@Override
	public List<UserBasketVO> getBasketEtc(String userid) {
		return sqlSessionTemplate.selectList("GoodsListDAO.getBasketEtc", userid);
	}
	
	@Override
	public void deleteTopping(UserBasketVO vo) {
		System.out.println("토핑 삭제");
		sqlSessionTemplate.delete("GoodsListDAO.deleteTopping", vo);
	}

	@Override
	public void deletePizzaInfo(UserBasketVO vo) {
		sqlSessionTemplate.delete("GoodsListDAO.deletePizzaInfo", vo);
	}
	
	@Override
	public void deletePizzasTopping(UserBasketVO vo) {
		sqlSessionTemplate.delete("GoodsListDAO.deletePizzasTopping", vo);
	}

	@Override
	public int getNextGubun(String userid) {
		return sqlSessionTemplate.selectOne("GoodsListDAO.getNextGubun", userid);
	}

	@Override
	public void changeEtcCnt(UserBasketVO vo) {
		sqlSessionTemplate.update("GoodsListDAO.changeEtcCnt", vo);
	}

	@Override
	public void changeSideCnt(UserBasketVO vo) {
		sqlSessionTemplate.update("GoodsListDAO.changeSideCnt", vo);		
	}

	@Override
	public void changePizzaCnt(UserBasketVO vo) {
		sqlSessionTemplate.update("GoodsListDAO.changePizzaCnt", vo);		
	}

	@Override
	public void allDeleteP(UserBasketVO vo) {
		sqlSessionTemplate.delete("GoodsListDAO.allDeleteP", vo);
	}

	@Override
	public void allDeleteT(UserBasketVO vo) {
		sqlSessionTemplate.delete("GoodsListDAO.allDeleteT", vo);		
	}

	@Override
	public void allDeleteS(UserBasketVO vo) {
		sqlSessionTemplate.delete("GoodsListDAO.allDeleteS", vo);		
	}

	@Override
	public void allDeleteE(UserBasketVO vo) {
		sqlSessionTemplate.delete("GoodsListDAO.allDeleteE", vo);		
	}
	
	
}
