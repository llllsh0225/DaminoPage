package com.damino.web.admin.menu;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController {
	@Autowired
	private MenuService menuService;
	
	/**
	 * 피자 메뉴정보, 영양성분 insert
	 */
	@RequestMapping(value="/insertPizza.admdo", method=RequestMethod.POST)
	public ModelAndView insertPizza(PizzaVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> 피자 메뉴, 영양성분 등록");
		String path = request.getSession().getServletContext().getRealPath("menu_imgs"); // 이미지가 저장될 절대 경로
		
		String p_image = "";
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String orginalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(orginalFileName); // 확장자 구하기
			UUID uuid = UUID.randomUUID(); // UUID 생성 (file id)
			p_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + p_image));
		}
		
		vo.setP_image(p_image);
		
		menuService.insertPizza(vo);
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
}
