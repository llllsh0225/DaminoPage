package com.damino.web.user.userlevel.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
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

	@Scheduled(cron = "0 0 0 1 * ?") // 매월 1일 0시 0분 0초 마다 실행
	@Override
	public void setRegularLevel() {
		userLevelDAO.setRegularLevel();
	}

	@Scheduled(cron = "0 0 0 1 * ?") // 매월 1일 0시 0분 0초 마다 실행
	@Override
	public void setPremiumLevel() {
		userLevelDAO.setPremiumLevel();
	}

	@Scheduled(cron = "0 0 0 1 * ?") // 매월 1일 0시 0분 0초 마다 실행
	@Override
	public void setVIPLevel() {
		userLevelDAO.setVIPLevel();
	}

	@Scheduled(cron = "0 0 0 1 1 ?") // 매년 1월 1일 0시 0분 0초 마다 실행
	@Override
	public void setRoyalLevel() {
		userLevelDAO.setRoyalLevel();
	}

	@Scheduled(cron = "0 0 0 1 1 ?") // 매년 1월 1일 0시 0분 0초 마다 실행
	@Override
	public void degradeRoyalUser() {
		userLevelDAO.degradeRoyalUser();
	}

}
