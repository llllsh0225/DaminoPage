package com.damino.web.user.join;

public interface JoinService {
	// 핸드폰번호 인증 메서드
	public void certifiedPhoneNumber(String phoneNumber, String authKey);
}
