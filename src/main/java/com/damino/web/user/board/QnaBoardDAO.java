package com.damino.web.user.board;

import java.util.List;

public interface QnaBoardDAO {
	public List<QnaBoardVO> getBoardList();
	public QnaBoardVO getBoard(QnaBoardVO vo);
	public void insertBoard(QnaBoardVO vo);
	public void updateBoard(QnaBoardVO vo);
	public void deleteBoard(QnaBoardVO vo);
}
