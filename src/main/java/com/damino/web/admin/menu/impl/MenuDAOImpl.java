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
		System.out.println("���� �޴� ���� / ���� ���缺�� ���");
		sqlSessionTemplate.insert("MenuDAO.insertPizza", vo);
	}

	@Override
	public void insertSide(SideVO vo) {
		System.out.println("���̵� �޴� ���� / ���̵� ���缺�� ���");
		sqlSessionTemplate.insert("MenuDAO.insertSide", vo);
	}

	@Override
	public void insertDrinkEtc(DrinkEtcVO vo) {
		System.out.println("����&��Ÿ �޴� ���� ���");
		sqlSessionTemplate.insert("MenuDAO.insertDrinkEtc", vo);
	}

	@Override
	public void insertTopping(ToppingVO vo) {
		System.out.println("���� �޴� ���� ���");
		sqlSessionTemplate.insert("MenuDAO.insertTopping", vo);
	}

	@Override
	public List<PizzaVO> getPizzaList() {
		System.out.println("���� �޴� ��������");
		return sqlSessionTemplate.selectList("MenuDAO.getPizzaList");
	}

	@Override
	public List<ToppingVO> getToppingList() {
		System.out.println("���� �޴� ��������");
		return sqlSessionTemplate.selectList("MenuDAO.getToppingList");
	}
	
	@Override
	public List<SideVO> getSideList() {
		System.out.println("���̵� �޴� ��������");
		return sqlSessionTemplate.selectList("MenuDAO.getSideList");
	}

	@Override
	public List<DrinkEtcVO> getDrinkEtcList() {
		System.out.println("����&��Ÿ �޴� ��������");
		return sqlSessionTemplate.selectList("MenuDAO.getDrinkEtcList");
	}
	
	@Override
	public PizzaVO getPizza(PizzaVO vo) {
		System.out.println("���� ���� DAO");
		return sqlSessionTemplate.selectOne("MenuDAO.getPizza", vo);
	}

	@Override
	public List<PizzaVO> getNutrients() {
		System.out.println("���缺�� ��������");
		return sqlSessionTemplate.selectOne("MenuDAO.getNutrients");
	}

	@Override
	public SideVO getSide(SideVO vo) {
		System.out.println("���̵� ���� DAO");
		return sqlSessionTemplate.selectOne("MenuDAO.getSide", vo);
	}

	@Override
	public DrinkEtcVO getDrinkEtc(DrinkEtcVO vo) {
		System.out.println("����&��Ÿ ���� DAO");
		return sqlSessionTemplate.selectOne("MenuDAO.getDrinkEtc", vo);
	}

	@Override
	public ToppingVO getTopping(ToppingVO vo) {
		System.out.println("���� ���� DAO");
		return sqlSessionTemplate.selectOne("MenuDAO.getTopping", vo);
	}

	@Override
	public void deletePizza(PizzaVO vo) {
		System.out.println("���� ���� DAO");
		sqlSessionTemplate.delete("MenuDAO.deletePizza", vo);
	}

	@Override
	public void updatePizza(PizzaVO vo) {
		System.out.println("���� ������Ʈ");
		sqlSessionTemplate.update("MenuDAO.updatePizza", vo);
	}

	@Override
	public void updateSide(SideVO vo) {
		System.out.println("���̵� ������Ʈ");
		sqlSessionTemplate.update("MenuDAO.updateSide", vo);
	}

	@Override
	public void updateDrinkEtc(DrinkEtcVO vo) {
		System.out.println("����&��Ÿ ������Ʈ");
		sqlSessionTemplate.update("MenuDAO.updateDrinkEtc", vo);
	}

	@Override
	public void updateTopping(ToppingVO vo) {
		sqlSessionTemplate.update("MenuDAO.updateTopping", vo);
	}

	@Override
	public void deleteSide(SideVO vo) {
		System.out.println("���̵� ���� DAO");
		sqlSessionTemplate.delete("MenuDAO.deleteSide", vo);
	}

	@Override
	public void deleteDrinkEtc(DrinkEtcVO vo) {
		System.out.println("���� ���� DAO");
		sqlSessionTemplate.delete("MenuDAO.deleteDrinkEtc", vo);
	}

	@Override
	public void deleteTopping(ToppingVO vo) {
		System.out.println("���� ���� DAO");
		sqlSessionTemplate.delete("MenuDAO.deleteTopping", vo);
	}

	

}
