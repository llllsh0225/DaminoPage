package com.damino.web.user.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.board.QnaBoardDAO;
import com.damino.web.user.board.QnaBoardService;
import com.damino.web.user.board.QnaBoardVO;

@Service("qnaBoardService")
public class QnaBoardServiceImpl implements QnaBoardService {
	@Autowired
	private QnaBoardDAO qnaBoardDAO;
	
	@Override
	public void qnaInsertBoard(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl insertBoard(vo)");
		qnaBoardDAO.insertBoard(vo);
	}

	@Override
	public void qnaUpdateBoard(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl updateBoard(vo)");
		qnaBoardDAO.updateBoard(vo);
	}

	@Override
	public void qnaDeleteBoard(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl deleteBoard(vo)");
		qnaBoardDAO.deleteBoard(vo);
	}
	
	@Override
	public List<QnaBoardVO> myQuestionList(){
		System.out.println("QnaBoardServiceImpl myQuestionList()");
		return qnaBoardDAO.getBoardList();
	}

	@Override
	public QnaBoardVO myQuestion(QnaBoardVO vo) {
		System.out.println("QnaBoardServiceImpl myQuestion(vo)");
		return qnaBoardDAO.getBoard(vo);
	}



}
