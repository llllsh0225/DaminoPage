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
	public List<BoardVO> getBoardList(){
		System.out.println("BoardDAOImpl getBoardList()");
		return sqlSessionTemplate.selectList("BoardDAO.getBoardList");
	}

}
