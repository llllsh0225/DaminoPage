package com.damino.web.user.goods;

import java.util.List;

import com.damino.web.user.board.QnaBoardVO;
import com.damino.web.user.quickorder.QuickOrderGoodsVO;

public interface GoodsListDAO {
	public List<GoodsPizzaVO> getPizzaList(); // ���� ��� �ҷ�����
	public List<GoodsPizzaVO> getPizzaClassicList(); // ���� ��� �ҷ�����
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
	
	//��ٱ��� - ���� �޴� ����
	public void insertPizzaBasket(UserBasketVO vo);
	//��ٱ��� - ���� ����
	public void insertToppingBasket(UserBasketVO vo);
		
	//��ٱ��� ���� �޴� �ҷ�����
	public List<UserBasketVO> getBasketPizza(String userid);
	//��ٱ��� ���� �޴� �ҷ�����
	public List<UserBasketVO> getBasketTopping(String userid);
		
	//��ٱ��� - Ư�� ���θ� ����
	public void deleteToppingName(UserBasketVO vo); 
	//��ٱ��� - Ư�� ���μ��� ����
	public void deleteToppingCount(UserBasketVO vo);
	//��ٱ��� - ���� ����
	public void deletePizzaInfo(UserBasketVO vo);
	//��ٱ��� - ���̵��� ����
	public void deleteSideInfo(UserBasketVO vo);
	//��ٱ��� - ���� ����
	public void deleteEtcInfo(UserBasketVO vo);
	
}
