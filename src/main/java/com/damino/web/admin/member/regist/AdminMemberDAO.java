package com.damino.web.admin.member.regist;

public interface AdminMemberDAO {
	//������ ���� ���
	public void regAdminMember(AdminMemberVO vo);
	
	//������ id �ߺ�üũ
	public int admincheck(String adminid);
	
	//������ pw �ӽú�й�ȣ
	public void changeTempPW(AdminMemberVO vo);
	
	
}
