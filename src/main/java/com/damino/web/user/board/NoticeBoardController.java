package com.damino.web.user.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeBoardController {
	@Autowired
	private NoticeBoardService noticeBoardService;
	
	@RequestMapping("/noticeList.do")
	public ModelAndView getNoticeBoardList(){
		System.out.println("�������� ���");
		List<NoticeBoardVO> noticeBoardList = noticeBoardService.getNoticeBoardList();
		System.out.println(noticeBoardList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/noticeList");
		mav.addObject("noticeBoardList", noticeBoardList);
		return mav;
	}
}
