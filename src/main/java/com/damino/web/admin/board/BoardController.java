package com.damino.web.admin.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.board.NoticeBoardService;
import com.damino.web.user.board.NoticeBoardVO;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/boardList.admdo")
	public ModelAndView getBoardList() {
		System.out.println("�� ��� ");
		List<BoardVO> boardList = boardService.getBoardList();
		System.out.println(boardList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/boardList");
		mav.addObject("boardList", boardList);
		return mav;
	}

	@RequestMapping(value = "/boardView.admdo", method = RequestMethod.GET)
	public ModelAndView getBoard(BoardVO vo) {
		System.out.println("�� ��");
		BoardVO board = boardService.getBoard(vo);
		// ������
		BoardVO prevBoard = boardService.getAdminPrevBoard(board.getSeq());
		// ������
		BoardVO nextBoard = boardService.getAdminNextBoard(board.getSeq());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/boardView");
		mav.addObject("board", board);
		mav.addObject("prevBoard", prevBoard);
		mav.addObject("nextBoard", nextBoard);
		return mav;
	}

	@RequestMapping("/boardWrite.admdo")
	public ModelAndView getAdminBoardWritePage() {
		System.out.println("�Խñ� ���� ����");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/boardWrite");

		return mav;
	}

	@RequestMapping(value = "/updateBoard.admdo", method = RequestMethod.POST)
	public String updateBoard(@ModelAttribute BoardVO vo) {
		System.out.println("�� ����");
		System.out.println("���� : " + vo.getTitle());
		System.out.println("���� : " + vo.getContent());
		boardService.updateBoard(vo);
		return "redirect:boardList.admdo";
	}

	@RequestMapping(value="/insertBoard.admdo", method=RequestMethod.POST) 
	public String insertBoard(@ModelAttribute BoardVO vo) { 
		System.out.println("�� �ۼ�");
		System.out.println("�ۼ��� : " + vo.getWriter()); 
		System.out.println("���� : " + vo.getTitle()); System.out.println("���� : " + vo.getContent());
		System.out.println("flag : " + vo.getFlag()); boardService.insertBoard(vo);
		return "redirect:boardList.admdo"; 
	}
	 

	@RequestMapping(value = "/deleteBoard.admdo", method = RequestMethod.POST)
	public String deleteBoard(@ModelAttribute BoardVO vo) {
		System.out.println("�� ����");
		boardService.deleteBoard(vo);
		return "redirect:boardList.admdo";
	}

}
