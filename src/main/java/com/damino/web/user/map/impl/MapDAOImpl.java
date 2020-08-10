package com.damino.web.user.map.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.map.MapDAO;
import com.damino.web.user.map.MapVO;

@Repository("mapDAO")
public class MapDAOImpl implements MapDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public MapVO getMap(MapVO vo) {
		System.out.println("MapDAOImpl getMap(vo)");
		return sqlSessionTemplate.selectOne("MapDAO.getMap", vo);
	}

	@Override
	public List<MapVO> getStoreList() {
		System.out.println("MapDAOImpl getStoreList(vo)");
		return sqlSessionTemplate.selectList("MapDAO.getStoreList");
	}
}
