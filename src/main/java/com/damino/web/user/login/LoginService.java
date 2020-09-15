package com.damino.web.user.login;

public interface LoginService {
	public UserVO login(UserVO vo);
	public void insertGuestInfo(UserVO vo); // 비회원 정보 insert
}
