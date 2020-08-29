package com.damino.web.user.board;

import java.util.List;

import com.damino.web.user.board.paging.Paging;

public interface QnaBoardService {
	public QnaBoardVO myQuestion(QnaBoardVO vo);
	public void qnaInsertBoard(QnaBoardVO vo);
	public void qnaUpdateBoard(QnaBoardVO vo);
	public void qnaDeleteBoard(QnaBoardVO vo);
	public int getQnaCount(QnaBoardVO vo);
	public List<QnaBoardVO> myQuestionList(Paging pa) throws Exception;
	
	//어드민 접속 - 전체조회
	public List<QnaBoardVO> myQuestionList_adm(Paging pa) throws Exception;
	//어드민 접속 - 전체 카운트
	public int getQnaCountAdm();
	
	//어드민 접속 - 처리대기
	public List<QnaBoardVO> myQuestionList_adm_notComplete(Paging pa) throws Exception;
	
}
