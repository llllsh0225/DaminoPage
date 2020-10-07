package com.damino.web.admin.homepage.member;

import java.util.List;

public interface MemberDAO {

	public List<MemberVO> selectAllMembers();
	public List<MemberVO> selectAllPhone();
	public void memberDel(MemberVO vo);
	public MemberVO getUserMember(MemberVO vo);
}
