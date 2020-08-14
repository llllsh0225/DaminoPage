package com.damino.web.user.goods;

import java.util.List;

import com.damino.web.user.board.QnaBoardVO;

public interface GoodsListDAO {
	public List<GoodsPizzaVO> getPizzaList(); // ���� ��� �ҷ�����
	public List<GoodsPizzaVO> getPizzaClassicList(); // ���� ��� �ҷ�����
	public List<GoodsSideVO> getSideList(); // ���̵�޴� ��� �ҷ�����
	public List<GoodsToppingVO> getMainTopping(); // ���� ���� ��� �ҷ����� 
	public List<GoodsToppingVO> getCheezeTopping(); // ġ�� ���� ��� �ҷ����� 
	public List<GoodsToppingVO> getAfterTopping(); // ������ ���� ��� �ҷ����� 
	
	public List<GoodsDrinkEtcVO> getDrinkEtcList(); // ���� �� ��Ÿ ��� �ҷ����� 
	
//------------------����� ���� --------------------
	//����� ���� -���� �޴� �ҷ�����
	public GoodsPizzaVO getUserPizzaGoods(GoodsPizzaVO vo);
	//����� ���� - ���̵��� �޴� �ҷ�����
	public GoodsSideVO getUserSideGoods(GoodsSideVO vo);
	
	//����� ���� - ���� ���� ���� �ҷ�����
	public GoodsPizzaVO getUserDoughGoods(GoodsPizzaVO vo);
}
