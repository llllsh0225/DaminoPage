package com.damino.web.user.board;

import java.util.List;

public interface BoardDAO {
	public List<QnaBoardVO> getBoardList();
	public QnaBoardVO getBoard(QnaBoardVO vo);
}
