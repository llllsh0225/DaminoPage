package com.damino.web.admin.market.member.login;

public class MarketAdminVO {
	private int seq; //���� ȸ�� ������ ���� �Ϸù�ȣ
	private String managername;
	private String managerid;
	private String managerpasswd;
	private String storeregion; //���� ����
	private String storename; //�����
	private String checkMem; //���ο��� üũ�� ���� ����
	
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
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getCheckMem() {
		return checkMem;
	}
	public void setCheckMem(String checkMem) {
		this.checkMem = checkMem;
	}
	public void setManagerpasswd(String managerpasswd) {
		this.managerpasswd = managerpasswd;
	}
	
	@Override
	public String toString() {
		return "MarketAdminVO [seq=" + seq + ", managername=" + managername + ", managerid=" + managerid
				+ ", managerpasswd=" + managerpasswd + ", storeregion=" + storeregion + ", storename=" + storename
				+ ", checkMem=" + checkMem + "]";
	}

	
	
}

