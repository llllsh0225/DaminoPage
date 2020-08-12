package com.damino.web.user.map;

import java.util.List;

public interface MapDAO {
	public List<MapVO> getLocationSearchList(MapVO vo);
	public List<MapVO> getNameSearchList(MapVO vo);
}
