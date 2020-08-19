package com.damino.web.user.userlevel;

public interface UserLevelDAO {
	public int getUsersOrderCnt(String userid); // 지난 3개월간의 주문 건수를 카운트
	public int getUsersPayCnt(String userid); // 올해 1월 1일부터 현재까지의 주문액을 카운트
}
