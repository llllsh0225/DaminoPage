package com.damino.web.user.userinfo;

public interface UserInfoDAO {
	public UserInfoVO passwdCheck(UserInfoVO vo);
	public void updateUserMember(UserInfoVO vo);
}
