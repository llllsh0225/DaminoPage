package com.damino.web.user.regist;

public interface UserMemberDAO {
	public void registUserMember(UserMemberVO vo);
	
	public int emailcheck(String email); //�̸��� �ߺ�Ȯ��
}
