package com.damino.web.user.quickorder.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.market.MarketVO;
import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.user.quickorder.QuickOrderAddressVO;
import com.damino.web.user.quickorder.QuickOrderDAO;
import com.damino.web.user.quickorder.QuickOrderGoodsVO;

@Repository("quickOrderDAO")
public class QuickOrderDAOImpl implements QuickOrderDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<QuickOrderGoodsVO> getQuickOrderGoodsList(String userid) {
		System.out.println(userid + "ȸ���� ������ ��ǰ ����Ʈ ��������");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getQuickOrderGoodsList", userid);
	}

	@Override
	public List<QuickOrderAddressVO> getQuickOrderAddressList(String userid) {
		System.out.println(userid + "ȸ���� ������ �ּ� ����Ʈ ��������");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getQuickOrderAddressList", userid);
	}
	
	@Override
	public int getGoodsNexRowSeq(String userid) {
		System.out.println(userid + "�� ��� ��ǰ���̺� rowseq �� ���� ū �� + 1");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getGoodsNextRowSeq", userid);
	}

	@Override
	public int getAddressNexRowSeq(String userid) {
		System.out.println(userid + "�� ������ �ּ����̺� rowseq �� ���� ū �� + 1");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getAddressNextRowSeq", userid);
	}
	
	@Override
	public QuickOrderAddressVO getDefaultDeliveryAddress(String userid) {
		System.out.println("����Ʈ�� ������ ����ּ� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getDefaultDeliveryAddress", userid);
	}
	
	@Override
	public List<PizzaVO> getPizzaNames() {
		System.out.println("���� ��ǰ�� ����Ʈ ��������");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getPizzaNames");
	}

	@Override
	public PizzaVO getPizzaDough(String p_name) {
		System.out.println("���� ���� ���� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaDough", p_name);
	}

	@Override
	public List<SideVO> getSideNames() {
		System.out.println("���̵� ��ǰ�� ����Ʈ ��������");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getSideNames");
	}

	@Override
	public List<DrinkEtcVO> getDrinkNames() {
		System.out.println("����&��Ÿ ��ǰ�� ����Ʈ ��������");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getDrinkNames");
	}

	@Override
	public int getPizzaLPrice(String goodsName) {
		System.out.println("L ������ ���� ���� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaLPrice", goodsName);
	}

	@Override
	public int getDoughPrice(String dough) {
		System.out.println("���� ���� ���� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getDoughPrice", dough);
	}

	@Override
	public int getPizzaMPrice(String goodsName) {
		System.out.println("M ������ ���� ���� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaMPrice", goodsName);
	}

	@Override
	public int getSidePrice(String goodsName) {
		System.out.println("���̵�޴� ���� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getSidePrice", goodsName);
	}

	@Override
	public int getDrinkEtcPrice(String goodsName) {
		System.out.println("����&��Ÿ ���� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getDrinkEtcPrice", goodsName);
	}

	@Override
	public void insertQuickOrderGoods(QuickOrderGoodsVO vo) {
		System.out.println("������ ��ǰ ���");
		sqlSessionTemplate.insert("QuickOrderDAO.insertQuickOrderGoods", vo);
	}

	@Override
	public void deleteQuickOrderGoods(QuickOrderGoodsVO vo) {
		System.out.println("������ ��ǰ ����");
		sqlSessionTemplate.delete("QuickOrderDAO.deleteQuickOrderGoods", vo);
	}

	@Override
	public String getStorePhone(String storeName) {
		System.out.println("��޸��� ��ȭ��ȣ ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getStorePhone", storeName);
	}

	@Override
	public void insertQuickOrderAddress(QuickOrderAddressVO vo) {
		System.out.println("������ �ּ� ���� ���");
		sqlSessionTemplate.insert("QuickOrderDAO.insertQuickOrderAddress", vo);
	}

	@Override
	public void deleteQuickOrderAddress(QuickOrderAddressVO vo) {
		System.out.println("������ �ּ� ���� ����");
		sqlSessionTemplate.delete("QuickOrderDAO.deleteQuickOrderAddress", vo);
	}

	@Override
	public void setDefaultDeliveryAddress(QuickOrderAddressVO vo) {
		System.out.println("����Ʈ ����� ����");
		sqlSessionTemplate.update("QuickOrderDAO.setDefaultDeliveryAddress", vo);
	}

	@Override
	public void releaseDefaultDeliveryAddress(QuickOrderAddressVO vo) {
		System.out.println("���� ������ ����Ʈ ����� ����");
		sqlSessionTemplate.update("QuickOrderDAO.releaseDefaultDeliveryAddress", vo);
	}

	@Override
	public MarketVO getBusinessHour(String storename) {
		System.out.println(storename + "���� �����ð� ��������");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getBusinessHour", storename);
	}

	

}
