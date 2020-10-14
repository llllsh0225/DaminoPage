package com.damino.web.admin.board;

import java.util.List;



public interface BoardService {
	public void insertBoard(BoardVO vo);
	public void updateBoard(BoardVO vo);
	public void deleteBoard(BoardVO vo);
	public List<BoardVO> getBoardList();
	public List<BoardVO> getNoticeBoardListAdm();
	public List<BoardVO> getNewsBoardListAdm();
	
	public BoardVO getBoard(BoardVO vo);
	
	public List<BoardVO> BoardListMain(); //权其捞瘤包府磊 main侩
	public BoardVO getAdminPrevBoard(int seq);
	public BoardVO getAdminNextBoard(int seq);

}
