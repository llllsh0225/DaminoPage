package com.damino.web.user.quickorder.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.user.quickorder.QuickOrderDAO;
import com.damino.web.user.quickorder.QuickOrderService;

@Service("quickOrderService")
public class QuickOrderServiceImpl implements QuickOrderService {
	@Autowired
	private QuickOrderDAO quickOrderDAO;
	
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

}
