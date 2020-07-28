package com.damino.web.user.board;

import java.util.List;

public interface QnaBoardDAO {
	public static QnaBoardDAO instance = null;
	
	public List<QnaBoardVO> myQuestionList();
	public QnaBoardVO myQuestion(QnaBoardVO vo);
	public void qnaInsertBoard(QnaBoardVO vo);
	public void qnaUpdateBoard(QnaBoardVO vo);
	public void qnaDeleteBoard(QnaBoardVO vo);
	public int getArticleCount();
	
	
	public static QnaBoardDAO getInstance() {
		if(instance == null) {
			synchronized(QnaBoardDAO.class) {
			}
		}
		return instance;
	}
		
}
