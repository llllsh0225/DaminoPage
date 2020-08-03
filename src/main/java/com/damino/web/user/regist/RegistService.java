package com.damino.web.user.regist;

public interface RegistService {
	public void registMember(UserMemberVO vo);
	public void certifiedPhoneNumber(String phoneNumber, String authKey);
	
	public int idcheck(String userid);
	public int emailcheck(String email);
	
	
	
}
