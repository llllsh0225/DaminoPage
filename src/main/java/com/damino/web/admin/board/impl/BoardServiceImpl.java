package com.damino.web.admin.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.board.BoardDAO;
import com.damino.web.admin.board.BoardService;
import com.damino.web.admin.board.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> getBoardList(){
		System.out.println("BoardServiceImpl getBoardList()");
		return boardDAO.getBoardList();
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("BoardServiceImpl getBoard()");
		return boardDAO.getBoard(vo);
	}

}
