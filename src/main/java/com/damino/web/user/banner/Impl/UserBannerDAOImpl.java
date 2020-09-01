package com.damino.web.user.banner.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.banner.UserBannerDAO;
import com.damino.web.user.banner.UserBannerVO;

@Repository("userBannerDAO")
public class UserBannerDAOImpl implements UserBannerDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<UserBannerVO> getUserBannerList() {
		return sqlSessionTemplate.selectList("BannerDAO.getBannerList");
	}

}
