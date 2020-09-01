package com.damino.web.user.map.impl;

import java.util.List;

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
	public List<MapVO> getLocationSearchList(MapVO vo) {
		System.out.println("MapServiceImpl getLocationSearchList(vo)");
		return mapDAO.getLocationSearchList(vo);
	}

	@Override
	public List<MapVO> getNameSearchList(MapVO vo) {
		System.out.println("MapServiceImpl getNameSearchList(vo)");
		return mapDAO.getNameSearchList(vo);
	}
}
