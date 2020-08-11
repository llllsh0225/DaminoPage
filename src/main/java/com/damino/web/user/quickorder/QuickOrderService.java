package com.damino.web.user.quickorder;

import java.util.List;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;

public interface QuickOrderService {
	public List<PizzaVO> getPizzaNames(); // ������ ����Ʈ�ڽ� ������ǰ�� ����Ʈ ��������
	public List<SideVO> getSideNames(); // ������ ����Ʈ�ڽ� ���̵���ǰ�� ����Ʈ ��������
	public List<DrinkEtcVO> getDrinkNames(); // ������ ����Ʈ�ڽ� ����&��Ÿ ��ǰ�� ����Ʈ ��������
	public PizzaVO getPizzaDough(String p_name); // ��ǰ�� �ش��ϴ� ���� ���� ���� ��������
}
