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
	
	//공지사항 전체목록
	@Override
	public List<NoticeBoardVO> getNoticeBoardList() {
		System.out.println("NoticeBoardDAOImpl getNoticeBoardList()");
		return sqlSessionTemplate.selectList("BoardDAO.getNoticeBoardList");
	}
	
	//공지사항 상세보기
	@Override
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo) {
		System.out.println("NoticeBoardDAOImpl getNoticeBoard(vo)");
		return sqlSessionTemplate.selectOne("BoardDAO.getNoticeBoard", vo);
	}
	
	//공지사항 전체 게시글 수 
	@Override
	public int countNoticeBoard() {
		System.out.println("NoticeBoardDAOImpl countNoticeBoard()");
		return sqlSessionTemplate.selectOne("BoardDAO.countNoticeBoard");
	}

	@Override
	public void increaseCnt(NoticeBoardVO vo) {
		System.out.println("NoticeBoardDAOImpl increaseCnt()");
		sqlSessionTemplate.update("BoardDAO.increaseCnt", vo);
	}
	
	
	
}
