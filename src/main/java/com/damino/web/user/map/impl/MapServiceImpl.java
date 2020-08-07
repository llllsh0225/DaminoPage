package com.damino.web.user.map.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.map.MapDAO;
import com.damino.web.user.map.MapService;
import com.damino.web.user.map.MapVO;

@Service("mapService")
public class MapServiceImpl implements MapService{
	@Autowired
	private MapDAO mapDAO;

	@Override
	public MapVO getMap(MapVO vo) {
		System.out.println("MapServiceImpl getMap(vo)");
		return mapDAO.getMap(vo);
	}
}
