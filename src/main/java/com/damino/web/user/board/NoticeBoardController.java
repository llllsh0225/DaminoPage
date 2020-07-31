package com.damino.web.user.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.board.paging.PageMaker;
import com.damino.web.user.board.paging.Paging;


@Controller
public class NoticeBoardController {
	@Autowired
	private NoticeBoardService noticeBoardService;
	
	@RequestMapping(value="/noticeList.do", method = RequestMethod.GET )
	public ModelAndView getNoticeBoardList(Paging pa){
		System.out.println("�������� ���");
		List<NoticeBoardVO> noticeBoardList = noticeBoardService.getNoticeBoardList(pa);//�Խñ� ���
		int countNoticeBoard = noticeBoardService.countNoticeBoard();//�Խñ� ��
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPa(pa);
		pageMaker.setTotalCount(countNoticeBoard);
		System.out.println(noticeBoardList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/noticeList");
		mav.addObject("noticeBoardList", noticeBoardList);
		mav.addObject("countNoticeBoard", countNoticeBoard);
		mav.addObject("noticePageMaker", pageMaker);
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
