package com.damino.web.user.login;

public interface LoginService {
	public UserVO login(UserVO vo);
	public void insertGuestInfo(UserVO vo); // ��ȸ�� ���� insert
}
