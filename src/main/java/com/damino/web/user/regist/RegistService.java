package com.damino.web.user.regist;

public interface RegistService {
	public void registMember(UserMemberVO vo);
	public void certifiedPhoneNumber(String phoneNumber, String authKey);
}
