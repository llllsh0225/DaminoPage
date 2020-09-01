package com.damino.web.admin.menu.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.MenuDAO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.admin.menu.ToppingVO;

@Repository("menuDAO")
public class MenuDAOImpl implements MenuDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insertPizza(PizzaVO vo) {
		System.out.println("피자 메뉴 정보 / 피자 영양성분 등록");
		sqlSessionTemplate.insert("MenuDAO.insertPizza", vo);
	}

	@Override
	public void insertSide(SideVO vo) {
		System.out.println("사이드 메뉴 정보 / 사이드 영양성분 등록");
		sqlSessionTemplate.insert("MenuDAO.insertSide", vo);
	}

	@Override
	public void insertDrinkEtc(DrinkEtcVO vo) {
		System.out.println("음료&기타 메뉴 정보 등록");
		sqlSessionTemplate.insert("MenuDAO.insertDrinkEtc", vo);
	}

	@Override
	public void insertTopping(ToppingVO vo) {
		System.out.println("토핑 메뉴 정보 등록");
		sqlSessionTemplate.insert("MenuDAO.insertTopping", vo);
	}

	@Override
	public List<PizzaVO> getPizzaList() {
		System.out.println("피자 메뉴 가져오기");
		return sqlSessionTemplate.selectList("MenuDAO.getPizzaList");
	}

	@Override
	public List<ToppingVO> getToppingList() {
		System.out.println("토핑 메뉴 가져오기");
		return sqlSessionTemplate.selectList("MenuDAO.getToppingList");
	}
	
	@Override
	public List<SideVO> getSideList() {
		System.out.println("사이드 메뉴 가져오기");
		return sqlSessionTemplate.selectList("MenuDAO.getSideList");
	}

	@Override
	public List<DrinkEtcVO> getDrinkEtcList() {
		System.out.println("음료&기타 메뉴 가져오기");
		return sqlSessionTemplate.selectList("MenuDAO.getDrinkEtcList");
	}
	
	@Override
	public PizzaVO getPizza(PizzaVO vo) {
		System.out.println("피자 수정 DAO");
		return sqlSessionTemplate.selectOne("MenuDAO.getPizza", vo);
	}

	@Override
	public List<PizzaVO> getNutrients() {
		System.out.println("영양성분 가져오기");
		return sqlSessionTemplate.selectOne("MenuDAO.getNutrients");
	}

	@Override
	public SideVO getSide(SideVO vo) {
		System.out.println("사이드 수정 DAO");
		return sqlSessionTemplate.selectOne("MenuDAO.getSide", vo);
	}

	@Override
	public DrinkEtcVO getDrinkEtc(DrinkEtcVO vo) {
		System.out.println("음료&기타 수정 DAO");
		return sqlSessionTemplate.selectOne("MenuDAO.getDrinkEtc", vo);
	}

	@Override
	public ToppingVO getTopping(ToppingVO vo) {
		System.out.println("토핑 수정 DAO");
		return sqlSessionTemplate.selectOne("MenuDAO.getTopping", vo);
	}

	@Override
	public void deletePizza(PizzaVO vo) {
		System.out.println("피자 삭제 DAO");
		sqlSessionTemplate.delete("MenuDAO.deletePizza", vo);
	}

	@Override
	public void updatePizza(PizzaVO vo) {
		System.out.println("피자 업데이트");
		sqlSessionTemplate.update("MenuDAO.updatePizza", vo);
	}

	@Override
	public void updateSide(SideVO vo) {
		System.out.println("사이드 업데이트");
		sqlSessionTemplate.update("MenuDAO.updateSide", vo);
	}

	@Override
	public void updateDrinkEtc(DrinkEtcVO vo) {
		System.out.println("음료&기타 업데이트");
		sqlSessionTemplate.update("MenuDAO.updateDrinkEtc", vo);
	}

	@Override
	public void updateTopping(ToppingVO vo) {
		sqlSessionTemplate.update("MenuDAO.updateTopping", vo);
	}

	@Override
	public void deleteSide(SideVO vo) {
		System.out.println("사이드 삭제 DAO");
		sqlSessionTemplate.delete("MenuDAO.deleteSide", vo);
	}

	@Override
	public void deleteDrinkEtc(DrinkEtcVO vo) {
		System.out.println("음료 삭제 DAO");
		sqlSessionTemplate.delete("MenuDAO.deleteDrinkEtc", vo);
	}

	@Override
	public void deleteTopping(ToppingVO vo) {
		System.out.println("토핑 삭제 DAO");
		sqlSessionTemplate.delete("MenuDAO.deleteTopping", vo);
	}

	

}
