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
	//����� ���� -���� �޴� �ҷ�����(2��°�� �̸��� ��)
		public GoodsPizzaVO getUserPizzaGoods(GoodsPizzaVO vo);
		public GoodsPizzaVO getUserPizza(GoodsPizzaVO vo);
	//����� ���� - ���̵��� �޴� �ҷ�����
	public GoodsSideVO getUserSideGoods(GoodsSideVO vo);
	//����� ���� - ���� �޴� �ҷ�����
	public GoodsToppingVO getUserTopping(GoodsToppingVO vo);
	//����� ���� - ���� ���� ���� �ҷ�����
	public GoodsPizzaVO getUserDoughGoods(GoodsPizzaVO vo);
	
	//��ٱ��� - ���õ� �޴� ����
	public void insertBasket(UserBasketVO vo);
	//��ٱ��� �޴� �ҷ�����
	public List<UserBasketVO> getBasketList(String userid);
	
	//��ٱ��� - Ư�� ���θ� ����
	public void deleteToppingName(UserBasketVO vo); 
	//��ٱ��� - Ư�� ���μ��� ����
	public void deleteToppingCount(UserBasketVO vo);
	//��ٱ��� - ���� ����
	public void deletePizzaInfo(UserBasketVO vo);
	//��ٱ��� - ���̵��� ����
	public void deleteSideInfo(UserBasketVO vo);
}
