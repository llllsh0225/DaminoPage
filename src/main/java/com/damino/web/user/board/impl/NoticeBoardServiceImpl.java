package com.damino.web.user.board.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.board.NoticeBoardDAO;
import com.damino.web.user.board.NoticeBoardService;
import com.damino.web.user.board.NoticeBoardVO;
import com.damino.web.user.board.paging.Paging;

@Service("noticeBoardService")
public class NoticeBoardServiceImpl implements NoticeBoardService {
	@Autowired
	private NoticeBoardDAO noticeBoardDAO;
	
	//공지사항 전체목록
	@Override
	public List<NoticeBoardVO> getNoticeBoardList(Paging pa) {
		System.out.println("NoticeBoardServiceImpl getNoticeBoardList(pa)");
		return noticeBoardDAO.getNoticeBoardList(pa);
	}
	
	//공지사항 상세보기
	@Override
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo) {

		System.out.println("NoticeBoardServiceImpl getNoticeBoard(vo)");
		return noticeBoardDAO.getNoticeBoard(vo);
	}
	
	//공지사항 전체 게시글 수 
	@Override
	public int countNoticeBoard() {
		System.out.println("NoticeBoardServiceImpl countNoticeBoard()");
		return noticeBoardDAO.countNoticeBoard();
	}

	@Override
	public void increaseCnt(NoticeBoardVO vo, HttpSession session) {
		System.out.println("NoticeBoardServiceImpl increaseCnt(vo, session)");
		long updateTime=0;
		if(session.getAttribute("updateTime_"+vo) != null){
			updateTime=(long)session.getAttribute("updateTime_"+vo);
		}
		long currentTime = System.currentTimeMillis();
		if(currentTime-updateTime > 5*1000) {
			noticeBoardDAO.increaseCnt(vo);
			session.setAttribute("updateTime_"+vo, currentTime);
		}
		//noticeBoardDAO.increaseCnt(vo);
	}

	@Override
	public List<NoticeBoardVO> getNoticeCategory(Paging pa) {
		System.out.println("NoticeBoardServiceImpl getNoticeCategory(Paging pa)");
		return noticeBoardDAO.getNoticeCategory(pa);
	}

	@Override
	public int countNoticeCategory() {
		System.out.println("NoticeBoardServiceImpl countNoticeCategory()");
		return noticeBoardDAO.countNoticeCategory();
	}

	@Override
	public List<NoticeBoardVO> getNewsCategory(Paging pa) {
		System.out.println("NoticeBoardServiceImpl getNewsCategory(Paging pa)");
		return noticeBoardDAO.getNewsCategory(pa);
	}

	@Override
	public int countNewsCategory() {
		System.out.println("NoticeBoardServiceImpl countNoticeCategory()");
		return noticeBoardDAO.countNewsCategory();
	}

	@Override
	public NoticeBoardVO getPrevBoard(int seq) {
		System.out.println("NoticeBoardServiceImpl getPrevBoard(int seq)");
		return noticeBoardDAO.getPrevBoard(seq);
	}

	@Override
	public NoticeBoardVO getNextBoard(int seq) {
		System.out.println("NoticeBoardServiceImpl getNextBoard(int seq)");
		return noticeBoardDAO.getNextBoard(seq);
	}

	
	
}
