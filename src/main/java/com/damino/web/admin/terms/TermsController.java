package com.damino.web.admin.terms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.board.BoardVO;

@Controller
public class TermsController {
	@Autowired
	private TermsService termsService;
	
	@RequestMapping("/terms_list.admdo")
	public ModelAndView getTermsList(){
		System.out.println("약관 목록");
		List<TermsVO> termsList = termsService.getTermsList();
		System.out.println(termsList);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/terms/terms_list");
		mav.addObject("termsList", termsList);
		return mav;
	}
	@RequestMapping(value="/terms_view.admdo", method=RequestMethod.GET)
	public ModelAndView getTerms(TermsVO vo) {
		System.out.println("약관 상세");
		TermsVO terms = termsService.getTerms(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/terms/terms_view");
		mav.addObject("terms", terms);
		return mav;
	}
	@RequestMapping(value="/updateTerms.admdo", method=RequestMethod.POST)
	public String updateBoard(@ModelAttribute TermsVO vo) {
		System.out.println("글 수정");
		System.out.println("제목 : " + vo.getTitle());
		System.out.println("내용 : " + vo.getContent());
		termsService.updateTerms(vo);
		return "redirect:terms_list.admdo";
	}
}
