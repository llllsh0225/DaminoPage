package com.damino.web.user.map;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapController {
	@Autowired
	private MapService mapService;
	
	@RequestMapping("/branch.do")
	public ModelAndView getMap(MapVO vo, ModelAndView mav) {
		System.out.println("���� �˻� ������");
		
		List<MapVO> locationSearchList = mapService.getLocationSearchList(vo); //���� �˻�
		mav.addObject("locationSearchList", locationSearchList);
		mav.setViewName("/branch");
		
		return mav;
	}
	@RequestMapping(value="/branchSearch.do", method=RequestMethod.POST)
	public ModelAndView getSearchMap(MapVO vo, ModelAndView mav) {
		System.out.println("���� �˻� ������");
		
		List<MapVO> nameSearchList = mapService.getNameSearchList(vo); //����� �˻�
		mav.addObject("nameSearchList", nameSearchList);
		mav.setViewName("/branch");
		
		return mav;
	}
	
}
