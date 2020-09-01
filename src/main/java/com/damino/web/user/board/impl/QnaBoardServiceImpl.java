package com.damino.web.user.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.board.QnaBoardDAO;
import com.damino.web.user.board.QnaBoardService;
import com.damino.web.user.board.QnaBoardVO;
import com.damino.web.user.board.paging.Paging;

@Service("qnaBoardService")
public class QnaBoardServiceImpl implements QnaBoardService {
	@Autowired
	private QnaBoardDAO qnaBoardDAO;
	
	@Override
	public void qnaInsertBoard(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl insertBoard(vo)");
		qnaBoardDAO.qnaInsertBoard(vo);
	}

	@Override
	public void qnaUpdateBoard(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl updateBoard(vo)");
		qnaBoardDAO.qnaUpdateBoard(vo);
	}

	@Override
	public void qnaDeleteBoard(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl deleteBoard(vo)");
		qnaBoardDAO.qnaDeleteBoard(vo);
	}
	


	@Override
	public QnaBoardVO myQuestion(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl myQuestion(vo)");
		return qnaBoardDAO.myQuestion(vo);
	}	

	@Override
	public List<QnaBoardVO> myQuestionList(Paging pa) throws Exception {
		System.out.println("QnaBoardServiceImpl myQuestionList(Paging pa)");
		return qnaBoardDAO.myQuestionList(pa);
	}

	@Override
	public List<QnaBoardVO> myQuestionList_adm() throws Exception {
		System.out.println("QnaBoardServiceImpl myQuestionList_adm()");
		return qnaBoardDAO.myQuestionList_adm();
	}

	@Override
	public List<QnaBoardVO> myQuestionList_adm_notComplete() throws Exception {
		System.out.println("QnaBoardServiceImpl myQuestionList_adm_notComplete()");
		return qnaBoardDAO.myQuestionList_adm_notComplete();
	}
	
	@Override
	public void registQnaReply(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl registQnaReply(QnaBoardVO vo)");
		qnaBoardDAO.registQnaReply(vo);
	}

	@Override
	public int getQnaCount(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl getQnaCount(vo)");
		return qnaBoardDAO.getQnaCount(vo);
	}

	@Override
	public int getQnaCountAdm() {
		System.out.println("QnaBoardServiceImpl getQnaCountAdm()");
		return qnaBoardDAO.getQnaCountAdm();
	}


}
