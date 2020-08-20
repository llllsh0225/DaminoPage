package com.damino.web.admin.market.member.login;

public class MarketAdminVO {

	private String managername;
	private String managerid;
	private String managerpasswd;
	private String storeregion; //매장 지역
	private String storename; //매장명
	
	public String getManagername() {
		return managername;
	}
	public void setManagername(String managername) {
		this.managername = managername;
	}
	public String getManagerid() {
		return managerid;
	}
	public void setManagerid(String managerid) {
		this.managerid = managerid;
	}
	public String getManagerpasswd() {
		return managerpasswd;
	}
	public void setManagepasswd(String managepasswd) {
		this.managerpasswd = managerpasswd;
	}
	public String getStoreregion() {
		return storeregion;
	}
	public void setStoreregion(String storeregion) {
		this.storeregion = storeregion;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	@Override
	public String toString() {
		return "MarketAdminVO [managername=" + managername + ", managerid=" + managerid + ", managerpasswd="
				+ managerpasswd + ", storeregion=" + storeregion + ", storename=" + storename + "]";
	}
	

	
	
}

