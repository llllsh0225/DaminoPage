package com.damino.web.admin.homepage.regist;

public interface AdminMemberDAO {
	//관리자 계정 등록
	public void regAdminMember(AdminMemberVO vo);
	
	//관리자 id 중복체크
	public int admincheck(String adminid);
	
	//관리자 pw 초기비밀번호
	public void changeTempPW(AdminMemberVO vo);
	
	public void changeNewPw(AdminMemberVO vo); // (현) 비번으로 저장
	
	
}
