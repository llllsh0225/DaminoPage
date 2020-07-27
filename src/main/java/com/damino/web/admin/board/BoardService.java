package com.damino.web.admin.board;

import java.util.List;

public interface BoardService {
	public List<BoardVO> getBoardList();
	public BoardVO getBoard(BoardVO vo);
}
