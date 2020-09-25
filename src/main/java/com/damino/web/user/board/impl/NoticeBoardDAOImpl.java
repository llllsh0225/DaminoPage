package com.damino.web.user.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.board.NoticeBoardDAO;
import com.damino.web.user.board.NoticeBoardVO;
import com.damino.web.user.board.paging.Paging;

@Repository("noticeBoardDAO")
public class NoticeBoardDAOImpl implements NoticeBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//�������� ��ü���
	@Override
	public List<NoticeBoardVO> getNoticeBoardList(Paging pa) {
		System.out.println("NoticeBoardDAOImpl getNoticeBoardList(pa)");
		return sqlSessionTemplate.selectList("BoardDAO.getNoticeBoardList", pa);
	}
	
	//�������� �󼼺���
	@Override
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo) {
		System.out.println("NoticeBoardDAOImpl getNoticeBoard(vo)");
		return sqlSessionTemplate.selectOne("BoardDAO.getNoticeBoard", vo);
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

	@Override
	public List<NoticeBoardVO> getNoticeCategory(Paging pa) {
		System.out.println("NoticeBoardDAOImpl getNoticeCategory(Paging pa)");
		return sqlSessionTemplate.selectList("BoardDAO.getNoticeCategory", pa);
	}

	@Override
	public int countNoticeCategory() {
		System.out.println("NoticeBoardDAOImpl countNoticeCategory()");
		return sqlSessionTemplate.selectOne("BoardDAO.countNoticeCategory");
	}

	@Override
	public List<NoticeBoardVO> getNewsCategory(Paging pa) {
		System.out.println("NoticeBoardDAOImpl getNewsCategory(Paging pa)");
		return sqlSessionTemplate.selectList("BoardDAO.getNewsCategory", pa);
	}

	@Override
	public int countNewsCategory() {
		System.out.println("NoticeBoardDAOImpl countNewsCategory()");
		return sqlSessionTemplate.selectOne("BoardDAO.countNewsCategory");
	}

	@Override
	public NoticeBoardVO getPrevBoard(int seq) {
		System.out.println("NoticeBoardDAOImpl getPrevBoard(int seq)");
		return sqlSessionTemplate.selectOne("BoardDAO.getPrevBoard", seq);
	}

	@Override
	public NoticeBoardVO getNextBoard(int seq) {
		System.out.println("NoticeBoardDAOImpl getNextBoard(int seq)");
		return sqlSessionTemplate.selectOne("BoardDAO.getNextBoard", seq);
	}
	
	
	
}
