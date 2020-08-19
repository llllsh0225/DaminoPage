package com.damino.web.user.goods;

public class UserBasketVO {
	private String userid;
	private int seq; //장바구니 시퀀스
	private String pizzaName; //피자 이름
	private int pizzaCount; //피자 수량
	private String pizzaImage; //피자 이미지
	private int pizzaPrice; //피자 개별 가격
	private String pizzaSize; //피자 사이즈
	private String pizzaDough; //피자 도우
	
	private String toppingName; //토핑이름
	private String toppingImage; //토핑 이미지
	private String toppingPrice; //토핑 가격
	private String toppingCount; //토핑 수량
	
	private String sideName; //사이드디시 이름
	private String sideImage; //사이드디시 이미지
	private String sidePrice; //사이드디시 가격
	private String sideCount; //사이드디시 수량

	private String etcName; //음료 이름
	private String etcImage; //음료 이미지
	private String etcPrice; //음료 가격
	private String etcCount; //음료 수량
	
	
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
