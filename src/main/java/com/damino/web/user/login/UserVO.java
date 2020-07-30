package com.damino.web.user.login;

public class UserVO {
	
	private String userId;
	private String userPasswd;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPasswd() {
		return userPasswd;
	}
	public void setUserPasswd(String userPasswd) {
		this.userPasswd = userPasswd;
	}
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userPasswd=" + userPasswd + "]";
	}	
}
