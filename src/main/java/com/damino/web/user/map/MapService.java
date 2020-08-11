package com.damino.web.user.map;

import java.util.List;

public interface MapService {
	public MapVO getMap(MapVO vo);
	public List<MapVO> getStoreList();
	public List<MapVO> getSearchStoreList(String storeRegion);
}
