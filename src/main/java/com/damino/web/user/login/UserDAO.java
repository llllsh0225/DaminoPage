package com.damino.web.user.login;

public interface UserDAO {
	public UserVO getUser(UserVO vo);

	public int idcheck(String userid); //id 중복확인
}
