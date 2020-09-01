package com.damino.web.user.userlevel;

public interface UserLevelDAO {
	public int getUsersOrderCnt(String userid); // 지난 3개월간의 주문 건수를 카운트
	public int getUsersPayCnt(String userid); // 올해 1월 1일부터 현재까지의 주문액을 카운트
	
	//---------- 회원 등급 세팅 메서드 --------------
	public void setRegularLevel(); // 레귤러 등급 만족시
	public void setPremiumLevel(); // 프리미엄 등급 만족시
	public void setVIPLevel(); // VIP 등급 만족시
	public void setRoyalLevel(); // 로얄 등급 만족시
	public void degradeRoyalUser(); // 로얄 등급 회원 중, 로얄 등급 유지 조건을 만족하지 못한 회원을 VIP로 degrade
}
