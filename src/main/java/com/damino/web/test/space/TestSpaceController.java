package com.damino.web.test.space;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class TestSpaceController {
	
	@Autowired
	private TestSpaceService testspaceService;
	

	@RequestMapping(value="/testSpace.admdo", method=RequestMethod.GET)
	public String scavchart(Model model) {
		System.out.println("���� ��� ����");
		
		
		int scavCount = testspaceService.testSpace();
		System.out.println("scav ī���� : "+ scavCount);
		
		model.addAttribute("scavCount", scavCount);
		
		return "/testSpace";
	}
	

}
