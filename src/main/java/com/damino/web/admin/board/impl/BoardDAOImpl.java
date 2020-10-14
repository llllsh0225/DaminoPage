package com.damino.web.admin.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.board.BoardDAO;
import com.damino.web.admin.board.BoardVO;


@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {
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

	/* main 홈페이지용 */
	@Override
	public List<BoardVO> BoardListMain() {
		System.out.println(" BoardListmain [dao]");
		return sqlSessionTemplate.selectList("BoardDAO.getBoardListMain");
	}

	@Override
	public BoardVO getAdminPrevBoard(int seq) {
		System.out.println("게시글 관리 - 이전글 조회");
		return sqlSessionTemplate.selectOne("BoardDAO.getAdminPrevBoard", seq);
	}

	@Override
	public BoardVO getAdminNextBoard(int seq) {
		System.out.println("게시글 관리 - 다음글 조회");
		return sqlSessionTemplate.selectOne("BoardDAO.getAdminNextBoard", seq);
	}

	

}
