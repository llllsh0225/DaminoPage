package com.damino.web.user.login;

public interface UserDAO {
	public UserVO login(UserVO vo);
	public void insertGuestInfo(UserVO vo); // ��ȸ�� ���� insert
}
