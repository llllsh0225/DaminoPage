package com.damino.web.user.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.board.NoticeBoardDAO;
import com.damino.web.user.board.NoticeBoardVO;

@Repository("noticeBoardDAO")
public class NoticeBoardDAOImpl implements NoticeBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<NoticeBoardVO> getNoticeBoardList() {
		System.out.println("NoticeBoardDAOImpl getNoticeBoardList()");
		return sqlSessionTemplate.selectList("BoardDAO.getNoticeBoardList");
	}

	@Override
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo) {
		System.out.println("NoticeBoardDAOImpl getNoticeBoard(vo)");
		return sqlSessionTemplate.selectOne("BoardDAO.getNoticeBoard", vo);
	}
	
}
