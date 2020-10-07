package com.damino.web.admin.member.login;

import java.util.List;

import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;

public interface AdminMemberLoginService {
	public AdminMemberLoginVO login(AdminMemberLoginVO vo);

	//���� ������ ����Ʈ �ҷ�����
	public List<MarketAdminMemberVO> marketAdminList();
	
	//��������� ���� ���� ����
	public void changeCheckMem(MarketAdminMemberVO vo);
	
	//��������� ����
	public void marketMemDel(MarketAdminMemberVO vo);
	
	 //��������� ���� ��ȸ
	public MarketAdminMemberVO marketMemView(MarketAdminMemberVO vo);
	
	//��������� ��й�ȣ ����
	public void changeManagerPasswd(MarketAdminMemberVO vo);
		
}
