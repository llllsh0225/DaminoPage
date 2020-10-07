package com.damino.web.admin.homepage.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.homepage.board.BoardDAO;
import com.damino.web.admin.homepage.board.BoardService;
import com.damino.web.admin.homepage.board.BoardVO;


@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public void insertBoard(BoardVO vo) {
		System.out.println("BoardServiceImpl insertBoard(vo)");
		boardDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		System.out.println("BoardServiceImpl updateBoard(vo)");
		boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		System.out.println("BoardServiceImpl deleteBoard(vo)");
		boardDAO.deleteBoard(vo);
	}
	
	@Override
	public List<BoardVO> getBoardList(){
		System.out.println("BoardServiceImpl getBoardList()");
		return boardDAO.getBoardList();
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("BoardServiceImpl getBoard(vo)");
		return boardDAO.getBoard(vo);
	}

	//权其捞瘤包府磊 main侩
	@Override
	public List<BoardVO> BoardListMain() {
		System.out.println("BoardListmain [service] ");
		return boardDAO.BoardListMain();
	}



}
