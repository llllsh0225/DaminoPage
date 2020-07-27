package com.damino.web.user.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class QnaBoardController {
	@Autowired
	private QnaBoardService qnaBoardService;
	
	@RequestMapping("/myquestionlist.do")
	public ModelAndView getMyQuestionList() {
		System.out.println("내 질문내역 1:1 열기");
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList();
		System.out.println(boardList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myQuestionList");
		return mav;
	}
	
	@RequestMapping(value="/myquestion_view.do", method=RequestMethod.POST)
	public ModelAndView getBoard(QnaBoardVO vo) {
		System.out.println("1:1 문의글 상세");
		QnaBoardVO board = qnaBoardService.myQuestion(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myquestion_view");
		mav.addObject("board", board);
		return mav;
	}
	
}
