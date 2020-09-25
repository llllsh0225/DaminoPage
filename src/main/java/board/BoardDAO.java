package com.damino.web.admin.board;

import java.util.List;



public interface BoardDAO {
	public void insertBoard(BoardVO vo);
	public void updateBoard(BoardVO vo);
	public void deleteBoard(BoardVO vo);
	public List<BoardVO> getBoardList();
	public BoardVO getBoard(BoardVO vo);
	
	public List<BoardVO> BoardListMain(); //홈페이지관리자 main용
}
