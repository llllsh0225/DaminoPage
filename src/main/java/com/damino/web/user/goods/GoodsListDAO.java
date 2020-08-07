package com.damino.web.user.goods;

import java.util.List;

public interface GoodsListDAO {
	public List<GoodsPizzaVO> getPizzaList(); // ���� ��� �ҷ�����
	public List<GoodsPizzaVO> getPizzaClassicList(); // ���� ��� �ҷ�����
	public List<GoodsSideVO> getSideList(); // ���̵�޴� ��� �ҷ�����
	public List<GoodsToppingVO> getToppingList(); // ���� ��� �ҷ����� 
	public List<GoodsDrinkEtcVO> getDrinkEtcList(); // ���� �� ��Ÿ ��� �ҷ����� 
	
	//����� ���� ���� �޴� �ҷ�����
	public List<GoodsPizzaVO> getUserPizzaGoods(); // ���� ��� �ҷ�����
}
