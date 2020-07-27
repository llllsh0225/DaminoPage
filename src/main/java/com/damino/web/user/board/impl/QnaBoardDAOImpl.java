package com.damino.web.user.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.board.BoardDAO;
import com.damino.web.admin.board.BoardVO;

@Repository("boardDAO")
public class QnaBoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public void insertBoard(BoardVO vo) {
		System.out.println("BoardDAOImpl insertBoard(vo)");
		sqlSessionTemplate.insert("BoardDAO.insertBoard", vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		System.out.println("BoardDAOImpl updateBoard(vo)");
		sqlSessionTemplate.update("BoardDAO.updateBoard", vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		System.out.println("BoardDAOImpl deleteBoard(vo)");
		sqlSessionTemplate.delete("BoardDAO.deleteBoard", vo);
	}
	
	@Override
	public List<BoardVO> getBoardList(){
		System.out.println("BoardDAOImpl getBoardList()");
		return sqlSessionTemplate.selectList("BoardDAO.getBoardList");
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("BoardDAOImpl getBoard(vo)");
		return sqlSessionTemplate.selectOne("BoardDAO.getBoard", vo);
	}

	

}
