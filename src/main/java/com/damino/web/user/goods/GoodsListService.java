package com.damino.web.user.goods;

import java.util.List;

public interface GoodsListService {
	public List<GoodsPizzaVO> getPizzaList(); // �����̾� ���� ��� �ҷ�����
	public List<GoodsPizzaVO> getPizzaClassicList(); // Ŭ���� ���� ��� �ҷ�����
	public List<GoodsSideVO> getSideList(); // ���̵�޴� ��� �ҷ�����
	public List<GoodsToppingVO> getMainTopping(); // ���� ���� ��� �ҷ����� 
	public List<GoodsToppingVO> getCheezeTopping(); // ġ�� ���� ��� �ҷ����� 
	public List<GoodsToppingVO> getAfterTopping(); // ������ ���� ��� �ҷ����� 
	public List<GoodsDrinkEtcVO> getDrinkEtcList(); // ���� �� ��Ÿ ��� �ҷ����� 


//------------------����� ���� --------------------
	//����� ���� ���� �޴� �ҷ�����
	public GoodsPizzaVO getUserPizzaGoods(GoodsPizzaVO vo);
	//����� ���� - ���̵��� �޴� �ҷ�����
	public GoodsSideVO getUserSideGoods(GoodsSideVO vo);
	//����� ���� - ���� �޴� �ҷ�����
	public List<GoodsToppingVO> getUserTopping();
	//����� ���� - ���� ���� ���� �ҷ�����
	public GoodsPizzaVO getUserDoughGoods(GoodsPizzaVO vo);
}
