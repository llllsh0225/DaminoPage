package com.damino.web.user.login;

public interface LoginService {
	public UserVO getUser(UserVO vo);
	public int idcheck(String userid);//id ม฿บน
}
