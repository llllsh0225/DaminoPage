package com.damino.web.admin.homepage.board;

import java.util.List;



public interface BoardService {
	public void insertBoard(BoardVO vo);
	public void updateBoard(BoardVO vo);
	public void deleteBoard(BoardVO vo);
	public List<BoardVO> getBoardList();
	public BoardVO getBoard(BoardVO vo);
	
	public List<BoardVO> BoardListMain(); //权其捞瘤包府磊 main侩

}
