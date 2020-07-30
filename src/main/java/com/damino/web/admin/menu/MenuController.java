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
	 * ���� �޴�����, ���缺�� insert
	 */
	@RequestMapping(value="/insertPizza.admdo", method=RequestMethod.POST)
	public ModelAndView insertPizza(PizzaVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> ���� �޴�, ���缺�� ���");
		String path = request.getSession().getServletContext().getRealPath("menu_imgs"); // �̹����� ����� ���� ���
		
		String p_image = "";
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String orginalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(orginalFileName); // Ȯ���� ���ϱ�
			UUID uuid = UUID.randomUUID(); // UUID ���� (file id)
			p_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + p_image));
		}
		
		vo.setP_image(p_image);
		
		menuService.insertPizza(vo);
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
	
	@RequestMapping(value="/insertSide.admdo", method=RequestMethod.POST)
	public ModelAndView insertSide(SideVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> ���̵� �޴�, ���缺�� ���");
		String path = request.getSession().getServletContext().getRealPath("menu_imgs"); // �̹����� ����� ���� ���
		
		String s_image = "";
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename(); // ���ε��� ���� ���ϸ�
			String ext = FilenameUtils.getExtension(originalFileName); // ���ϸ����� Ȯ���ڸ� ����
			UUID uuid = UUID.randomUUID(); // uuid ����
			
			s_image = uuid + "." + ext; // ������ ����� ���ϸ�
			uploadFile.transferTo(new File(path + "/" + s_image));
		}
		
		vo.setS_image(s_image);
		menuService.insertSide(vo);
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
	
	@RequestMapping(value="/insertDrinkEtc.admdo", method=RequestMethod.POST)
	public ModelAndView insertDrinkEtc(DrinkEtcVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> ����&��Ÿ �޴� ���");
		
		String path = request.getSession().getServletContext().getRealPath("menu_imgs");
		String d_image = "";
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName);
			UUID uuid = UUID.randomUUID();
			
			d_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + d_image));
		}
		
		vo.setD_image(d_image);
		menuService.insertDrinkEtc(vo);
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
	
	@RequestMapping(value="/insertTopping.admdo", method=RequestMethod.POST)
	public ModelAndView insertTopping(ToppingVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> ���� �޴� ���");
		
		String path = request.getSession().getServletContext().getRealPath("menu_imgs");
		String t_image = "";
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName);
			UUID uuid = UUID.randomUUID();
			
			t_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + t_image));
		}
		
		vo.setT_image(t_image);
		menuService.insertTopping(vo);
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
}