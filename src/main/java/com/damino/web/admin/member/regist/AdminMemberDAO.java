package com.damino.web.admin.member.regist;

public interface AdminMemberDAO {
	//관리자 계정 등록
	public void regAdminMember(AdminMemberVO vo);
	
	//관리자 id 중복체크
	public int admincheck(String adminid);
	
	//관리자 pw 임시비밀번호
	public void changeTempPW(AdminMemberVO vo);
	
	
}
