package com.damino.web.user.board;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.board.BoardVO;


@Controller
public class QnaBoardController {
	@Autowired
	private QnaBoardService qnaBoardService;
	
	@RequestMapping("/myquestionlist.do")
	public ModelAndView getMyQuestionList(HttpServletRequest request, HttpServletResponse response) throws Throwable{
		System.out.println("내 질문내역 1:1 열기");
		
		//1:1 문의게시판 페이징처리
		/*
		 * String pageNum = request.getParameter("pageNum"); if(pageNum == null) {
		 * pageNum = "1"; } int pageSize = 5; int currentPage =
		 * Integer.parseInt(pageNum); int startRow = (currentPage - 1)*pageSize + 1; int
		 * endRow = currentPage * pageSize; int count = 0; int number = 0;
		 * 
		 * List<QnaBoardVO> articleList = null; QnaBoardDAO dbPro =
		 * QnaBoardDAO.getInstance(); count = dbPro.getArticleCount(); if(count > 0) {
		 * articleList = dbPro.myQuestionList(startRow, endRow);
		 * 
		 * }else { articleList = Collections.emptyList(); } number = count -
		 * (currentPage - 1)*pageSize; request.setAttribute("currentPage", new
		 * Integer(currentPage)); request.setAttribute("startRow", new
		 * Integer(startRow)); request.setAttribute("endRow", new Integer(endRow));
		 * request.setAttribute("count", new Integer(count));
		 * request.setAttribute("pageSize", new Integer(pageSize));
		 * request.setAttribute("number", new Integer(number));
		 * request.setAttribute("articleList", articleList);
		 */
		
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList();
		System.out.println(boardList.toString());
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myQuestionList");
		mav.addObject("boardList", boardList);
		return mav;
	}
	
	@RequestMapping(value="/myquestion_view.do", method=RequestMethod.GET)
	public ModelAndView myQuestion(QnaBoardVO vo) {
		System.out.println("1:1 문의글 상세");
		QnaBoardVO qnaBoard = qnaBoardService.myQuestion(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myQuestion_view");
		mav.addObject("qnaboard", qnaBoard);
		return mav;
	}
	
	@RequestMapping(value="/qnaDeleteBoard.do", method=RequestMethod.POST)
	public String deleteBoard(@ModelAttribute QnaBoardVO vo) {
		System.out.println("1:1 글 삭제");
		qnaBoardService.qnaDeleteBoard(vo);
		return "redirect:myquestionlist.do";
	}
	
	@RequestMapping(value="/qnaInsertBoard.do", method=RequestMethod.POST)
	public String insertBoard(@ModelAttribute QnaBoardVO vo) {
		System.out.println("1:1 글 작성");
		System.out.println("작성자 : " + vo.getWriterId());
		System.out.println("제목 : " + vo.getTitle());
		System.out.println("내용 : " + vo.getContent());
		qnaBoardService.qnaInsertBoard(vo);
		return "redirect:myquestionlist.do";
	}
}
