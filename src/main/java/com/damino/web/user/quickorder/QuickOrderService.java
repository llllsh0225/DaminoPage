package com.damino.web.user.quickorder;

import java.util.List;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;

public interface QuickOrderService {
	public List<QuickOrderGoodsVO> getQuickOrderGoodsList(String userid); // userid�� �ش��ϴ� ������ ��ǰ ����Ʈ ��������
	public List<QuickOrderAddressVO> getQuickOrderAddressList(String userid); // userid�� �ش��ϴ� ������ �ּ� ����Ʈ ��������
	public int getGoodsNexRowSeq(String userid); // userid�� �ش��ϴ� ������ rowseq �� ���� ū ������ +1
	public int getAddressNexRowSeq(String userid); // userid�� �ش��ϴ� ������ �ּ� rowseq �� ���� ū ������ +1
	public QuickOrderAddressVO getDefaultDeliveryAddress(String userid); // ����Ʈ�� ������ ����ּ� ��������
	
	public List<PizzaVO> getPizzaNames(); // ������ ����Ʈ�ڽ� ������ǰ�� ����Ʈ ��������
	public List<SideVO> getSideNames(); // ������ ����Ʈ�ڽ� ���̵���ǰ�� ����Ʈ ��������
	public List<DrinkEtcVO> getDrinkNames(); // ������ ����Ʈ�ڽ� ����&��Ÿ ��ǰ�� ����Ʈ ��������
	public PizzaVO getPizzaDough(String p_name); // ��ǰ�� �ش��ϴ� ���� ���� ���� ��������
	
	public int getPizzaLPrice(String goodsName); // L ������ ���� ���� ��������
	public int getPizzaMPrice(String goodsName); // M ������ ���� ���� ��������
	public int getDoughPrice(String dough); // ���õ� ���� ���� ���� ��������
	public int getSidePrice(String goodsName); // ���̵�޴� ���� ��������
	public int getDrinkEtcPrice(String goodsName); // ����&��Ÿ ���� ��������
	
	public void insertQuickOrderGoods(QuickOrderGoodsVO vo); // ������ ��ǰ insert
	public void deleteQuickOrderGoods(QuickOrderGoodsVO vo); // ������ ��ǰ delete
	
	public String getStorePhone(String storeName); // ��޸����� ��ȭ��ȣ ���� ��������
	public void insertQuickOrderAddress(QuickOrderAddressVO vo); // ������ �ּ����� insert
	public void deleteQuickOrderAddress(QuickOrderAddressVO vo); // ������ �ּ����� delete
	
	public void setDefaultDeliveryAddress(QuickOrderAddressVO vo); // ����Ʈ ����� ����
	public void releaseDefaultDeliveryAddress(QuickOrderAddressVO vo); // ���� ������ ����Ʈ ����� ����
}
