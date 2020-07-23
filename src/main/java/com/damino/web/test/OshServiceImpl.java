package com.damino.web.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("oshtest")
public class OshServiceImpl implements OshService {
	@Autowired
	private OshTestDAO oshTestDAO;
	@Override
	public void insertContent(OshTestVO vo) {
		oshTestDAO.insertContent(vo);
	}

}
