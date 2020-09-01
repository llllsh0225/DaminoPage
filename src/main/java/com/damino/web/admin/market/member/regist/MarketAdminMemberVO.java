package com.damino.web.admin.market.member.regist;

public class MarketAdminMemberVO {

	private int seq; //���� ȸ�� ������ ���� �Ϸù�ȣ
	private String managerName;
	private String managerId;
	private String managerPasswd;
	private String storeRegion; //���� ����
	private String storeName; //�����
	private String checkMem; //���ο��� üũ�� ���� ����
	
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
	public String getCheckMem() {
		return checkMem;
	}
	public void setCheckMem(String checkMem) {
		this.checkMem = checkMem;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	@Override
	public String toString() {
		return "MarketAdminMemberVO [seq=" + seq + ", managerName=" + managerName + ", managerId=" + managerId
				+ ", managerPasswd=" + managerPasswd + ", storeRegion=" + storeRegion + ", storeName=" + storeName
				+ ", checkMem=" + checkMem + "]";
	}
	
}

