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
	public List<MapVO> getLocationSearchList(MapVO vo) {
		System.out.println("MapDAOImpl getLocationSearchList(vo)");
		return sqlSessionTemplate.selectList("MapDAO.getLocationSearchList", vo);
	}

	@Override
	public List<MapVO> getNameSearchList(MapVO vo) {
		System.out.println("MapDAOImpl getNameSearchList(vo)");
		return sqlSessionTemplate.selectList("MapDAO.getNameSearchList", vo);
	}
}
