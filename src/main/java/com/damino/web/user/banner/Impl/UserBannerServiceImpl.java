package com.damino.web.user.banner.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.banner.UserBannerDAO;
import com.damino.web.user.banner.UserBannerService;
import com.damino.web.user.banner.UserBannerVO;

@Service("userBannerService")
public class UserBannerServiceImpl implements UserBannerService {

	@Autowired
	private UserBannerDAO userBannerDAO;
	
	@Override
	public List<UserBannerVO> getUserBannerList() {
		return userBannerDAO.getUserBannerList();
	}
	
	// banner controller는 viewtestcontroller에서 실행.


}
