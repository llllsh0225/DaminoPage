package com.damino.web.user.userinfo;

import com.damino.web.user.login.UserVO;

public interface UserInfoService {
	public UserInfoVO passwdCheck(UserInfoVO vo);
	public void updateUserMember(UserInfoVO vo);
	public String findUserId(UserVO vo);
	public void updatePasswd(UserVO vo);
	public void memberWithdraw(UserInfoVO vo);
}
