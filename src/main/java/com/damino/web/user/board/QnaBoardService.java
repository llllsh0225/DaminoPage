package com.damino.web.user.board;

import java.util.List;

public interface BoardService {
	public List<QnaBoardVO> getBoardList();
	public QnaBoardVO getBoard(QnaBoardVO vo);
}
