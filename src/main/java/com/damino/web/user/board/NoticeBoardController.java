package com.damino.web.user.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class NoticeBoardController {
	@Autowired
	private NoticeBoardService noticeBoardService;
	
	@RequestMapping("/noticeList.do")
	public ModelAndView getNoticeBoardList(){
		System.out.println("공지사항 목록");
		List<NoticeBoardVO> noticeBoardList = noticeBoardService.getNoticeBoardList();
		int countNoticeBoard = noticeBoardService.countNoticeBoard();
		System.out.println(noticeBoardList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/noticeList");
		mav.addObject("noticeBoardList", noticeBoardList);
		mav.addObject("countNoticeBoard", countNoticeBoard);
		return mav;
	}
	
	@RequestMapping(value="/noticeDetail.do", method=RequestMethod.GET)
	public ModelAndView getNoticeBoard(NoticeBoardVO vo) {
		System.out.println("공지사항 상세");
		noticeBoardService.increaseCnt(vo);//조회수 증가
		NoticeBoardVO noticeBoard = noticeBoardService.getNoticeBoard(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/noticeDetail");
		mav.addObject("noticeBoard", noticeBoard);
		System.out.println(noticeBoard);
		return mav;
	}
}
