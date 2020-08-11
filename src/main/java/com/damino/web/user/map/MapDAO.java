package com.damino.web.user.map;

import java.util.List;

public interface MapDAO {
	public MapVO getMap(MapVO vo);
	public List<MapVO> getStoreList();
	public List<MapVO> getSearchStoreList(String storeRegion);
}
