package com.damino.web.admin.member.regist;

public class AdminMemberVO {
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
		return "AdminMemberVO [adminid=" + adminid + ", adminpassword=" + adminpassword + "]";
	}
	
	
	
	
}
