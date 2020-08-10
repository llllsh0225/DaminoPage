package com.damino.web.user.goods;

import java.util.List;

public interface GoodsListService {
	public List<GoodsPizzaVO> getPizzaList(); // �����̾� ���� ��� �ҷ�����
	public List<GoodsPizzaVO> getPizzaClassicList(); // Ŭ���� ���� ��� �ҷ�����
	public List<GoodsSideVO> getSideList(); // ���̵�޴� ��� �ҷ�����
	public List<GoodsToppingVO> getToppingList(); // ���� ��� �ҷ����� 
	public List<GoodsDrinkEtcVO> getDrinkEtcList(); // ���� �� ��Ÿ ��� �ҷ����� 
	
	//����� ���� ���� �޴� �ҷ�����
	public GoodsPizzaVO getUserPizzaGoods(GoodsPizzaVO vo);
	//����� ���� - ���� ���� ���� �ҷ�����
	public GoodsPizzaVO getUserDoughGoods(GoodsPizzaVO vo);
}
