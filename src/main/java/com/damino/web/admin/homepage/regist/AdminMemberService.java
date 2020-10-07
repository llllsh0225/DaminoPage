package com.damino.web.admin.homepage.regist;

public interface AdminMemberService {
	public void registAdminMember(AdminMemberVO vo); // 계정등록

	public int admincheck(String adminid); // 중복체크
	
	public void changeTempPW(AdminMemberVO vo); // (고정)초기비번으로 저장

	public void changeNewPw(AdminMemberVO vo); // (현) 비번으로 저장

}
