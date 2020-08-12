package com.damino.web.admin.member.regist.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.member.regist.AdminMemberDAO;
import com.damino.web.admin.member.regist.AdminMemberVO;

@Repository("adminMemberDAO")
public class AdminMemberDAOImpl implements AdminMemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void regAdminMember(AdminMemberVO vo) {
		System.out.println("[adminDAOImpl 실행]");
		sqlSessionTemplate.insert("AdminMemberDAO.registAdminMember",vo);
		//mapping 파일 생성 후 ""에 넣기

	}

	@Override
	public int admincheck(String adminid) {
		System.out.println("#DAO[admin] : " + adminid);
		return sqlSessionTemplate.selectOne("AdminMemberDAO.admincheck", adminid);
	}

	@Override
	public void changeTempPW(AdminMemberVO vo) {
		System.out.println("#DAO[임시 비밀번호 발급] :" + vo);
		sqlSessionTemplate.update("AdminMemberDAO.changeTempPW", vo);		
	}


}
