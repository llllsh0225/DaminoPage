package com.damino.web.admin.member.login;

public class AdminMemberLoginVO {
	private String adminid;
	private String adminpassword;
	
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
