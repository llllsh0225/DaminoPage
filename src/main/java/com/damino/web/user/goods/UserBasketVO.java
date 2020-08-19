package com.damino.web.user.goods;

public class UserBasketVO {
	private String userid;
	private int seq; //��ٱ��� ������
	private String pizzaName; //���� �̸�
	private int pizzaCount; //���� ����
	private String pizzaImage; //���� �̹���
	private int pizzaPrice; //���� ���� ����
	private String pizzaSize; //���� ������
	private String pizzaDough; //���� ����
	
	private String toppingName; //�����̸�
	private String toppingImage; //���� �̹���
	private String toppingPrice; //���� ����
	private String toppingCount; //���� ����
	
	private String sideName; //���̵��� �̸�
	private String sideImage; //���̵��� �̹���
	private String sidePrice; //���̵��� ����
	private String sideCount; //���̵��� ����

	private String etcName; //���� �̸�
	private String etcImage; //���� �̹���
	private String etcPrice; //���� ����
	private String etcCount; //���� ����
	
	
	public String getUserId() {
		return userid;
	}
	public void setUserId(String userid) {
		this.userid = userid;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getPizzaName() {
		return pizzaName;
	}
	public void setPizzaName(String pizzaName) {
		this.pizzaName = pizzaName;
	}
	public int getPizzaCount() {
		return pizzaCount;
	}
	public void setPizzaCount(int pizzaCount) {
		this.pizzaCount = pizzaCount;
	}
	public String getPizzaImage() {
		return pizzaImage;
	}
	public void setPizzaImage(String pizzaImage) {
		this.pizzaImage = pizzaImage;
	}
	public int getPizzaPrice() {
		return pizzaPrice;
	}
	public void setPizzaPrice(int pizzaPrice) {
		this.pizzaPrice = pizzaPrice;
	}
	public String getPizzaSize() {
		return pizzaSize;
	}
	public void setPizzaSize(String pizzaSize) {
		this.pizzaSize = pizzaSize;
	}
	public String getPizzaDough() {
		return pizzaDough;
	}
	public void setPizzaDough(String pizzaDough) {
		this.pizzaDough = pizzaDough;
	}
	public String getToppingName() {
		return toppingName;
	}
	public void setToppingName(String toppingName) {
		this.toppingName = toppingName;
	}
	public String getToppingImage() {
		return toppingImage;
	}
	public void setToppingImage(String toppingImage) {
		this.toppingImage = toppingImage;
	}
	public String getToppingPrice() {
		return toppingPrice;
	}
	public void setToppingPrice(String toppingPrice) {
		this.toppingPrice = toppingPrice;
	}
	public String getToppingCount() {
		return toppingCount;
	}
	public void setToppingCount(String toppingCount) {
		this.toppingCount = toppingCount;
	}
	public String getSideName() {
		return sideName;
	}
	public void setSideName(String sideName) {
		this.sideName = sideName;
	}
	public String getSideImage() {
		return sideImage;
	}
	public void setSideImage(String sideImage) {
		this.sideImage = sideImage;
	}
	public String getSidePrice() {
		return sidePrice;
	}
	public void setSidePrice(String sidePrice) {
		this.sidePrice = sidePrice;
	}
	public String getSideCount() {
		return sideCount;
	}
	public void setSideCount(String sideCount) {
		this.sideCount = sideCount;
	}
	public String getEtcName() {
		return etcName;
	}
	public void setEtcName(String etcName) {
		this.etcName = etcName;
	}
	public String getEtcImage() {
		return etcImage;
	}
	public void setEtcImage(String etcImage) {
		this.etcImage = etcImage;
	}
	public String getEtcPrice() {
		return etcPrice;
	}
	public void setEtcPrice(String etcPrice) {
		this.etcPrice = etcPrice;
	}
	public String getEtcCount() {
		return etcCount;
	}
	public void setEtcCount(String etcCount) {
		this.etcCount = etcCount;
	}
	
	@Override
	public String toString() {
		return "UserBasketVO [userid=" + userid + ", seq=" + seq + ", pizzaName=" + pizzaName + ", pizzaCount="
				+ pizzaCount + ", pizzaImage=" + pizzaImage + ", pizzaPrice=" + pizzaPrice + ", pizzaSize=" + pizzaSize
				+ ", pizzaDough=" + pizzaDough + ", toppingName=" + toppingName + ", toppingImage=" + toppingImage
				+ ", toppingPrice=" + toppingPrice + ", toppingCount=" + toppingCount + ", sideName=" + sideName
				+ ", sideImage=" + sideImage + ", sidePrice=" + sidePrice + ", sideCount=" + sideCount + ", etcName="
				+ etcName + ", etcImage=" + etcImage + ", etcPrice=" + etcPrice + ", etcCount=" + etcCount + "]";
	}
	
	
	
}
