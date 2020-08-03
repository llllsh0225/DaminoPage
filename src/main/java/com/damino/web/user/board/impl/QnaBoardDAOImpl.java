package com.damino.web.user.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.board.QnaBoardDAO;
import com.damino.web.user.board.QnaBoardVO;
import com.damino.web.user.board.paging.Paging;


@Repository("qnaBoardDAO")
public class QnaBoardDAOImpl implements QnaBoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public void qnaInsertBoard(QnaBoardVO vo) {
		System.out.println("QnaBoardDAOImpl qnaInsertBoard(vo)");
		sqlSessionTemplate.insert("BoardDAO.qnaInsertBoard", vo);
	}

	@Override
	public void qnaUpdateBoard(QnaBoardVO vo) {
		System.out.println("QnaBoardDAOImpl qnaUpdateBoard(vo)");
		sqlSessionTemplate.update("BoardDAO.qnaUpdateBoard", vo);
	}

	@Override
	public void qnaDeleteBoard(QnaBoardVO vo) {
		System.out.println("QnaBoardDAOImpl qnaDeleteBoard(vo)");
		sqlSessionTemplate.delete("BoardDAO.qnaDeleteBoard", vo);
	}
	
	/*
	 * @Override public List<QnaBoardVO> myQuestionList(){
	 * System.out.println("QnaBoardDAOImpl myQuestionList()"); return
	 * sqlSessionTemplate.selectList("BoardDAO.myQuestionList"); }
	 */

	@Override
	public QnaBoardVO myQuestion(QnaBoardVO vo) {
		System.out.println("QnaBoardDAOImpl myQuestion(vo)");
		return sqlSessionTemplate.selectOne("BoardDAO.myQuestion", vo);
	}

	@Override
	public int getQnaCount() throws Exception{
		System.out.println("QnaBoardDAOImpl getQnaCount()");
		return sqlSessionTemplate.selectOne("BoardDAO.getQnaCount");
	}

	@Override
	public List<QnaBoardVO> myQuestionList(Paging pa) throws Exception {
		System.out.println("QnaBoardDAOImpl myQuestionList(Paging pa)");
		return sqlSessionTemplate.selectList("BoardDAO.myQuestionList", pa);
	}

	@Override
	public List<QnaBoardVO> myQuestionList_adm(Paging pa) throws Exception {
		System.out.println("QnaBoardDAOImpl myQuestionList_adm(Paging pa)");
		return sqlSessionTemplate.selectList("BoardDAO.myQuestionList_adm", pa);
	}
	
	@Override
	public List<QnaBoardVO> myQuestionList_adm_notComplete(Paging pa) throws Exception {
		System.out.println("QnaBoardDAOImpl myQuestionList_adm_notComplete(Paging pa)");
		return sqlSessionTemplate.selectList("BoardDAO.myQuestionList_adm_notComplete", pa);
	}
	

}
