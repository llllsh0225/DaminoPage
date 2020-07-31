package com.damino.web.user.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.damino.web.user.board.paging.Paging;

public interface NoticeBoardService {
	public List<NoticeBoardVO> getNoticeBoardList(Paging pa);//공지사항 목록
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);//공지사항 상세보기
	public int countNoticeBoard();//공지사항 게시글 수
	public void increaseCnt(NoticeBoardVO vo, HttpSession session);//공지사항 조회수
}
