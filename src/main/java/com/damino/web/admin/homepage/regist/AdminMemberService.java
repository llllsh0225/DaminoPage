package com.damino.web.admin.homepage.regist;

public interface AdminMemberService {
	public void registAdminMember(AdminMemberVO vo); // �������

	public int admincheck(String adminid); // �ߺ�üũ
	
	public void changeTempPW(AdminMemberVO vo); // (����)�ʱ������� ����

	public void changeNewPw(AdminMemberVO vo); // (��) ������� ����

}
