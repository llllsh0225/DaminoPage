package com.damino.web.user.board;

import java.util.List;

import com.damino.web.user.board.paging.Paging;


public interface NoticeBoardDAO {
	public List<NoticeBoardVO> getNoticeBoardList(Paging pa);//게시글 목록
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);//게시글 상세보기
	public int countNoticeBoard();//전체 게시글 수
	public void increaseCnt(NoticeBoardVO vo);//조회수 증가
	public List<NoticeBoardVO> getNoticeCategory(Paging pa); // 공지사항 목록
	public int countNoticeCategory(); // 공지사항 게시글 수
	public List<NoticeBoardVO> getNewsCategory(Paging pa); // 보도자료 목록
	public int countNewsCategory(); // 보도자료 게시글 수
	public NoticeBoardVO getPrevBoard(int seq); // 이전글 조회
	public NoticeBoardVO getNextBoard(int seq); // 다음글 조회
} 
