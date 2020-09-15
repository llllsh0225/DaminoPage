package com.damino.web.admin.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/noticeBoardEdit.admdo")
	public ModelAndView getAdminNoticeBoardEditPage() {
		System.out.println("게시판 리스트 수정 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/noticeBoard/noticeBoardEdit");
		
		return mav;
	}
	
	@RequestMapping("/noticeBoardView.admdo")
	public ModelAndView getAdminNoticeBoardViewPage() {
		System.out.println("게시판 리스트 목록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/noticeBoard/noticeBoardView");
		
		return mav;
	}
	
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
	@RequestMapping("/boardWrite.admdo")
	   public ModelAndView getAdminBoardWritePage() {
	      System.out.println("게시글 쓰기 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/board/boardWrite");
	      
	      return mav;
	   }
	@RequestMapping(value="/updateBoard.admdo", method=RequestMethod.POST)
	public String updateBoard(@ModelAttribute BoardVO vo) {
		System.out.println("글 수정");
		System.out.println("제목 : " + vo.getTitle());
		System.out.println("내용 : " + vo.getContent());
		boardService.updateBoard(vo);
		return "redirect:boardList.admdo";
	}
	
	@RequestMapping(value="/insertBoard.admdo", method=RequestMethod.POST)
	public String insertBoard(@ModelAttribute BoardVO vo) {
		System.out.println("글 작성");
		System.out.println("작성자 : " + vo.getWriter());
		System.out.println("제목 : " + vo.getTitle());
		System.out.println("내용 : " + vo.getContent());
		System.out.println("flag : " + vo.getFlag());
		boardService.insertBoard(vo);
		//System.out.println(insertBoard(vo).toString());//버그있음
		return "redirect:boardList.admdo";
	}
	
	@RequestMapping(value="/deleteBoard.admdo", method=RequestMethod.POST)
	public String deleteBoard(@ModelAttribute BoardVO vo) {
		System.out.println("글 삭제");
		boardService.deleteBoard(vo);
		return "redirect:boardList.admdo";
	}
}
