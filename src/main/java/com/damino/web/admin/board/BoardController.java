package com.damino.web.admin.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/boardList.admdo")
	public ModelAndView getBoardList(){
		System.out.println("글 목록 ");
		List<BoardVO> boardList = boardService.getBoardList();
		System.out.println(boardList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/boardList");
		mav.addObject("boardList", boardList);
		return mav;
	}
	
	@RequestMapping(value="/boardView.admdo", method=RequestMethod.GET)
	public ModelAndView getBoard(BoardVO vo) {
		System.out.println("글 상세");
		BoardVO board = boardService.getBoard(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/boardView");
		mav.addObject("board", board);
		return mav;
	}
	
}
