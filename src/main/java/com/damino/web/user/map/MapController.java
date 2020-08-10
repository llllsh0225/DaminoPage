package com.damino.web.user.map;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.board.BoardVO;

@Controller
public class MapController {
	@Autowired
	private MapService mapService;
	
	@RequestMapping("/branch.do")
	public ModelAndView getMap() {
		System.out.println("지도 검색 페이지");
//		MapVO map = mapService.getMap(vo);
		
		List<MapVO> storeList = mapService.getStoreList();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/branch");
		mav.addObject("storeList", storeList);
//		mav.addObject("name", map.getName());
//		mav.addObject("latitude", map.getLatitude());
//		mav.addObject("longitude", map.getLongitude());
		
		return mav;
	}
}
