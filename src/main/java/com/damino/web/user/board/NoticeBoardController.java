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
	public ModelAndView getNoticeBoardList(NoticePagingVO vo){
		System.out.println("�������� ���");
		List<NoticeBoardVO> noticeBoardList = noticeBoardService.getNoticeBoardList(vo);
		int countNoticeBoard = noticeBoardService.countNoticeBoard();
		NoticePageMaker noticePageMaker= new NoticePageMaker();
		noticePageMaker.setVo(vo);
		noticePageMaker.setTotalCount(noticeBoardService.countNoticeBoard());
		System.out.println(noticeBoardList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/noticeList");
		mav.addObject("noticeBoardList", noticeBoardList);
		mav.addObject("countNoticeBoard", countNoticeBoard);
		mav.addObject("noticePageMaker", noticePageMaker);
		return mav;
	}
	
	@RequestMapping(value="/noticeDetail.do", method=RequestMethod.GET)
	public ModelAndView getNoticeBoard(NoticeBoardVO vo) {
		System.out.println("�������� ��");
		noticeBoardService.increaseCnt(vo);//��ȸ�� ����
		NoticeBoardVO noticeBoard = noticeBoardService.getNoticeBoard(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/noticeDetail");
		mav.addObject("noticeBoard", noticeBoard);
		System.out.println(noticeBoard);
		return mav;
	}
}
