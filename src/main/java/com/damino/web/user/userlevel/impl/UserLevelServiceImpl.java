package com.damino.web.user.userlevel.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.userlevel.UserLevelDAO;
import com.damino.web.user.userlevel.UserLevelService;

@Service("userLevelService")
public class UserLevelServiceImpl implements UserLevelService {
	@Autowired
	private UserLevelDAO userLevelDAO;
	
	@Override
	public int getUsersOrderCnt(String userid) {
		return userLevelDAO.getUsersOrderCnt(userid);
	}

	@Override
	public int getUsersPayCnt(String userid) {
		return userLevelDAO.getUsersPayCnt(userid);
	}

}
