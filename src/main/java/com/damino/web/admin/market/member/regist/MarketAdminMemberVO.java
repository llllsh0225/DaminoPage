package com.damino.web.admin.market.member.regist;

public class MarketAdminMemberVO {

	private String managerName;
	private String managerId;
	private String managerPasswd;
	private String storeRegion; //매장 지역
	private String storeName; //매장명
	
	
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public String getManagerPasswd() {
		return managerPasswd;
	}
	public void setManagerPasswd(String managerPasswd) {
		this.managerPasswd = managerPasswd;
	}
	public String getStoreRegion() {
		return storeRegion;
	}
	public void setStoreRegion(String storeRegion) {
		this.storeRegion = storeRegion;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	
	@Override
	public String toString() {
		return "MarketAdminMemVO [managerName=" + managerName + ", managerId=" + managerId + ", managerPasswd="
				+ managerPasswd + ", storeRegion=" + storeRegion + ", storeName=" + storeName + "]";
	}
	
	
}

