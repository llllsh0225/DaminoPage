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
	
	//���� ���� - ��ü��ȸ
	public List<QnaBoardVO> myQuestionList_adm(Paging pa) throws Exception;
	//���� ���� - ��ü ī��Ʈ
	public int getQnaCountAdm();
	
	//���� ���� - ó�����
	public List<QnaBoardVO> myQuestionList_adm_notComplete(Paging pa) throws Exception;
	
}
