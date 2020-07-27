package com.damino.web.user.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.board.QnaBoardDAO;
import com.damino.web.user.board.QnaBoardVO;


@Repository("qnaBoardDAO")
public class QnaBoardDAOImpl implements QnaBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public void insertBoard(QnaBoardVO vo) {
		System.out.println("BoardDAOImpl insertBoard(vo)");
		sqlSessionTemplate.insert("BoardDAO.insertBoard", vo);
	}

	@Override
	public void updateBoard(QnaBoardVO vo) {
		System.out.println("BoardDAOImpl updateBoard(vo)");
		sqlSessionTemplate.update("BoardDAO.updateBoard", vo);
	}

	@Override
	public void deleteBoard(QnaBoardVO vo) {
		System.out.println("BoardDAOImpl deleteBoard(vo)");
		sqlSessionTemplate.delete("BoardDAO.deleteBoard", vo);
	}
	
	@Override
	public List<QnaBoardVO> getBoardList(){
		System.out.println("BoardDAOImpl getBoardList()");
		return sqlSessionTemplate.selectList("BoardDAO.getBoardList");
	}

	@Override
	public QnaBoardVO getBoard(QnaBoardVO vo) {
		System.out.println("BoardDAOImpl getBoard(vo)");
		return sqlSessionTemplate.selectOne("BoardDAO.getBoard", vo);
	}



}
