package com.damino.web.admin.homepage.member.dao;

import java.util.List;

import com.damino.web.admin.homepage.member.vo.MemberVO;

public interface IMemberDAO {

	public List<MemberVO> selectAllMembers();
	public List<MemberVO> selectAllPhone();
	public void memberDel(MemberVO vo);
	public MemberVO getUserMember(MemberVO vo);
}
