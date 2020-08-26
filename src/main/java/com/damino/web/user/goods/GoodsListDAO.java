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
	//��ٱ��� - ���̵��� ����
	public void insertSideBasket(UserBasketVO vo);
	//��ٱ��� - ���� �� ��Ÿ ����
	public void insertEtcBasket(UserBasketVO vo);
	
	//��ٱ��� - ���̺� ������ �ҷ�����
	public int getNextGubun(String userid);
	
	//��ٱ��� ���� �޴� �ҷ�����
	public List<UserBasketVO> getBasketPizza(String userid);
	//��ٱ��� ���� �޴� �ҷ�����
	public List<UserBasketVO> getBasketTopping(String userid);
	//��ٱ��� ���̵��� �޴� �ҷ�����
	public List<UserBasketVO> getBasketSide(String userid);
	//��ٱ��� ���� �� ��Ÿ �޴� �ҷ�����
	public List<UserBasketVO> getBasketEtc(String userid);	
	
//-----���� ����-------------------------------
	//��ٱ��� - ���� �� ��Ÿ ����
	public void changeEtcCnt(UserBasketVO vo);
	//��ٱ��� - ���̵��� ����
	public void changeSideCnt(UserBasketVO vo);
	//��ٱ��� - ���� ����
	public void changePizzaCnt(UserBasketVO vo);

//------����-----------------------------------
	//��ٱ��� - ��ü ����(����)
	public void allDeleteP(UserBasketVO vo);
	//��ٱ��� - ��ü ����(����)
	public void allDeleteT(UserBasketVO vo);
	//��ٱ��� - ��ü ����(���̵���)
	public void allDeleteS(UserBasketVO vo);
	//��ٱ��� - ��ü ����(����ױ�Ÿ)
	public void allDeleteE(UserBasketVO vo);
	
	//��ٱ��� - ���� ����
	public void deleteTopping(UserBasketVO vo);		
	//��ٱ��� - ���� ����
	public void deletePizzaInfo(UserBasketVO vo);
	//��ٱ��� - ���� ���� �������� ����
	public void deletePizzasTopping(UserBasketVO vo);
	
	//��ٱ��� - ���̵��� ����
	public void deleteSideInfo(UserBasketVO vo);
	//��ٱ��� - ���� ����
	public void deleteEtcInfo(UserBasketVO vo);
	
}
