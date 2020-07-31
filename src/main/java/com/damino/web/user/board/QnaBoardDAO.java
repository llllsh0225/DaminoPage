package com.damino.web.user.board;

import java.util.List;

import com.damino.web.user.board.paging.Paging;

public interface QnaBoardDAO {
	public static QnaBoardDAO instance = null;
	
	//public List<QnaBoardVO> myQuestionList();
	public QnaBoardVO myQuestion(QnaBoardVO vo);
	public void qnaInsertBoard(QnaBoardVO vo);
	public void qnaUpdateBoard(QnaBoardVO vo);
	public void qnaDeleteBoard(QnaBoardVO vo);
	public int getQnaCount() throws Exception;
	public List<QnaBoardVO> myQuestionList(Paging pa) throws Exception;
	
	public static QnaBoardDAO getInstance() {
		if(instance == null) {
			synchronized(QnaBoardDAO.class) {
			}
		}
		return instance;
	}
	
		
}
