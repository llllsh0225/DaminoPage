package com.damino.web.user.login;

public interface UserDAO {
	public UserVO getUser(UserVO vo);

	public int idcheck(String userid); //id �ߺ�Ȯ��
}
