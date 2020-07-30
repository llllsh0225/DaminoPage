package com.damino.web.user.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.board.NoticeBoardDAO;
import com.damino.web.user.board.NoticeBoardVO;
import com.damino.web.user.board.NoticePagingVO;

@Repository("noticeBoardDAO")
public class NoticeBoardDAOImpl implements NoticeBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//�������� ��ü���
	@Override
	public List<NoticeBoardVO> getNoticeBoardList(NoticePagingVO vo) {
		System.out.println("NoticeBoardDAOImpl getNoticeBoardList(vo)");
		return sqlSessionTemplate.selectList("BoardDAO.getNoticeBoardList", vo);
	}
	
	//�������� �󼼺���
	@Override
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo) {
		System.out.println("NoticeBoardDAOImpl getNoticeBoard(vo)");
		return sqlSessionTemplate.selectOne("BoardDAO.noticePaging", vo);
	}
	
	//�������� ��ü �Խñ� �� 
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
