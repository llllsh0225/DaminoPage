package com.damino.web.admin.homepage.regist;

public interface AdminMemberDAO {
	//������ ���� ���
	public void regAdminMember(AdminMemberVO vo);
	
	//������ id �ߺ�üũ
	public int admincheck(String adminid);
	
	//������ pw �ʱ��й�ȣ
	public void changeTempPW(AdminMemberVO vo);
	
	public void changeNewPw(AdminMemberVO vo); // (��) ������� ����
	
	
}
