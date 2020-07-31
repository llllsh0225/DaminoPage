package com.damino.web.user.board;

import java.util.List;

import com.damino.web.user.board.paging.Paging;


public interface NoticeBoardDAO {
	public List<NoticeBoardVO> getNoticeBoardList(Paging pa);//게시글 목록
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);//게시글 상세보기
	public int countNoticeBoard();//전체 게시글 수
	public void increaseCnt(NoticeBoardVO vo);//조회수 증가
	
}
