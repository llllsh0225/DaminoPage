package com.damino.web.user.userinfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

@Controller
public class UserInfoController {
	@Autowired 
	private UserInfoService userInfoService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
}
