package com.damino.web.user.map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapController {
	@Autowired
	private MapService mapService;
	
	@RequestMapping("/branch.do")
	public ModelAndView getMap(MapVO vo) {
		System.out.println("지도 검색 페이지");
		MapVO map = mapService.getMap(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/branch");
		mav.addObject("name", map.getName());
		mav.addObject("latitude", map.getLatitude());
		mav.addObject("longitude", map.getLongitude());
		return mav;
	}
}
