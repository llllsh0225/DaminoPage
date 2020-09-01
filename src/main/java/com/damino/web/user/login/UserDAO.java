package com.damino.web.user.login;

public interface UserDAO {
	public UserVO login(UserVO vo);
	public void insertGuestInfo(UserVO vo); // 비회원 정보 insert
}
