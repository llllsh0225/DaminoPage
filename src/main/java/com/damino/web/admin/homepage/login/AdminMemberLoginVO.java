package com.damino.web.admin.homepage.login;

public class AdminMemberLoginVO {
	private String adminid;			//홈페이지 관리자
	private String adminpassword;	//홈페이지 비밀번호
	
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
	
	@Override
	public String toString() {
		return "AdminMemberLoginVO [adminid=" + adminid + ", adminpassword=" + adminpassword + "]";
	}
	
}
