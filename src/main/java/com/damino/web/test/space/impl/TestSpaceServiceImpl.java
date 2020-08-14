package com.damino.web.test.space.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.test.space.TestSpaceDAO;
import com.damino.web.test.space.TestSpaceService;

@Service("testspcaeService")
public class TestSpaceServiceImpl implements TestSpaceService {

	@Autowired
	private TestSpaceDAO testspaceDAO;
	
	@Override
	public int testSpace() {
		System.out.println("## Chart scav Service..");
		return testspaceDAO.testSpace();
	}

}
