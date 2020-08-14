package com.damino.web.user.quickorder.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.user.quickorder.QuickOrderAddressVO;
import com.damino.web.user.quickorder.QuickOrderDAO;
import com.damino.web.user.quickorder.QuickOrderGoodsVO;
import com.damino.web.user.quickorder.QuickOrderService;

@Service("quickOrderService")
public class QuickOrderServiceImpl implements QuickOrderService {
	@Autowired
	private QuickOrderDAO quickOrderDAO;
	
	@Override
	public List<QuickOrderGoodsVO> getQuickOrderGoodsList(String userid) {
		return quickOrderDAO.getQuickOrderGoodsList(userid);
	}

	@Override
	public List<QuickOrderAddressVO> getQuickOrderAddressList(String userid) {
		return quickOrderDAO.getQuickOrderAddressList(userid);
	}
	
	@Override
	public int getGoodsNexRowSeq(String userid) {
		return quickOrderDAO.getGoodsNexRowSeq(userid);
	}

	@Override
	public int getAddressNexRowSeq(String userid) {
		return quickOrderDAO.getAddressNexRowSeq(userid);
	}
	
	@Override
	public QuickOrderAddressVO getDefaultDeliveryAddress(String userid) {
		return quickOrderDAO.getDefaultDeliveryAddress(userid);
	}

	@Override
	public List<PizzaVO> getPizzaNames() {
		return quickOrderDAO.getPizzaNames();
	}

	@Override
	public PizzaVO getPizzaDough(String p_name) {
		return quickOrderDAO.getPizzaDough(p_name);
	}

	@Override
	public List<SideVO> getSideNames() {
		return quickOrderDAO.getSideNames();
	}

	@Override
	public List<DrinkEtcVO> getDrinkNames() {
		return quickOrderDAO.getDrinkNames();
	}

	@Override
	public int getPizzaLPrice(String goodsName) {
		return quickOrderDAO.getPizzaLPrice(goodsName);
	}

	@Override
	public int getDoughPrice(String dough) {
		return quickOrderDAO.getDoughPrice(dough);
	}

	@Override
	public int getPizzaMPrice(String goodsName) {
		return quickOrderDAO.getPizzaMPrice(goodsName);
	}

	@Override
	public int getSidePrice(String goodsName) {
		return quickOrderDAO.getSidePrice(goodsName);
	}

	@Override
	public int getDrinkEtcPrice(String goodsName) {
		return quickOrderDAO.getDrinkEtcPrice(goodsName);
	}

	@Override
	public void insertQuickOrderGoods(QuickOrderGoodsVO vo) {
		quickOrderDAO.insertQuickOrderGoods(vo);
	}

	@Override
	public void deleteQuickOrderGoods(QuickOrderGoodsVO vo) {
		quickOrderDAO.deleteQuickOrderGoods(vo);
	}

	@Override
	public String getStorePhone(String storeName) {
		return quickOrderDAO.getStorePhone(storeName);
	}

	@Override
	public void insertQuickOrderAddress(QuickOrderAddressVO vo) {
		quickOrderDAO.insertQuickOrderAddress(vo);
	}

	@Override
	public void deleteQuickOrderAddress(QuickOrderAddressVO vo) {
		quickOrderDAO.deleteQuickOrderAddress(vo);
	}

	@Override
	public void setDefaultDeliveryAddress(QuickOrderAddressVO vo) {
		quickOrderDAO.setDefaultDeliveryAddress(vo);
	}

	@Override
	public void releaseDefaultDeliveryAddress(QuickOrderAddressVO vo) {
		quickOrderDAO.releaseDefaultDeliveryAddress(vo);
	}



}
