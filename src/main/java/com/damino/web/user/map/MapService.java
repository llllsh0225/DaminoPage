package com.damino.web.user.map;

import java.util.List;

public interface MapService {
	public List<MapVO> getLocationSearchList(MapVO vo);
	public List<MapVO> getNameSearchList(MapVO vo);
}
