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

import com.damino.web.admin.board.BoardVO;

@Controller
public class MapController {
	@Autowired
	private MapService mapService;
	
	@RequestMapping("/branch.do")
	public ModelAndView getMap() {
		System.out.println("지도 검색 페이지");
		
		List<MapVO> storeList = mapService.getStoreList();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/branch");
		mav.addObject("storeList", storeList);
		
		return mav;
	}
	
	@RequestMapping(value="/searchBranch.do", method=RequestMethod.POST)
	@ResponseBody
	public List<MapVO> getSearchMap(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		System.out.println("지역 검색");
		String storeRegion = (String)params.get("storeRegion");
		
		List<MapVO> searchStoreList = mapService.getSearchStoreList(storeRegion);
		System.out.println(mapService.getSearchStoreList(storeRegion));
		return searchStoreList;
	}
}
