package com.damino.web.user.regist;

public interface UserMemberDAO {
	public void registUserMember(UserMemberVO vo);
	
	public int idcheck(String userid);
	public int emailcheck(String email); //이메일 중복확인
}
