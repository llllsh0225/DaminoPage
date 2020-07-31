package com.damino.web.user.login;

public interface LoginService {
	public UserVO getUser(UserVO vo);
//	public UserVO checkSignup(UserVO vo);
	
//	public int idcheck(String userid);
	public int idcheck(String user_id);
}
