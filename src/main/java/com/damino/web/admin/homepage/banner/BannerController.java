package com.damino.web.admin.homepage.banner;

import java.io.File;
import java.io.IOException;
import java.util.List;
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
public class BannerController {

	@Autowired
	private BannerService bannerService;
	
	
	// -- ��� ��������� --
	@RequestMapping("/bannerBoardEdit.admdo")
	public ModelAndView getAdminBannerBoardEditPage() {
		System.out.println("��� ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/banner/bannerBoardEdit");
		
		return mav;
	}
	
	
	// -- ��� ��� --
	@RequestMapping(value ="/insertBanner.admdo" , method=RequestMethod.POST)
	public ModelAndView insertBanner(BannerVO vo, ModelAndView mav, HttpServletRequest request) throws IOException {
		System.out.println("[controller banner] ");
		String path = request.getSession().getServletContext().getRealPath("/resources/images/user/banner") ; // �̹��� ����� ���� ���
		
		String banner_image ="";  //���� ����� ���ϸ�
		String orignialFileName =""; //����� ���ε��� original ���ϸ�
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			orignialFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(orignialFileName); //Ȯ���� ���ϱ�
			UUID uuid = UUID.randomUUID(); //file id
			banner_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" +banner_image));
		}
		
		vo.setBanner_image(banner_image);
		vo.setBanner_originalname(orignialFileName);
		System.out.println("[banner_image] : " + banner_image);
		System.out.println("[originalFileName] : " + orignialFileName);
		
		bannerService.insertBanner(vo);
		mav.setViewName("redirect:/bannerBoardView.admdo");
		
		return mav;
		
	}

	// -- ��� ��ȸ--
	@RequestMapping(value="/bannerBoardView.admdo", method = RequestMethod.GET)//get
	public ModelAndView getBannerList() {
		System.out.println("[��� ���]");
		List<BannerVO> bannerList = bannerService.getBannerList();
		System.out.println(bannerList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("sites/banner/bannerBoardView");
		mav.addObject("bannerList", bannerList);
		return mav;
	}

	// -- ��� ���������� �̵� --
	@RequestMapping(value="/getBannerInfo.admdo", method = RequestMethod.GET)
	public ModelAndView getBannerBoardInfoPage(BannerVO vo, ModelAndView mav, HttpServletRequest req) throws IOException {
		System.out.println("��� ���� ������ open");
		
		String seq = req.getParameter("banner_seq");
		System.out.println("bannr_seq Ȯ��=" +seq);
		
		BannerVO bannerList = bannerService.getBanner(vo);
		mav.addObject("bannerList", bannerList);
		mav.setViewName("/sites/banner/bannerBoardInfo");
		
		return mav;
	}
	
	// -- ��� ���� --
	@RequestMapping(value="/deleteBanner.admdo", method = RequestMethod.POST)
	public String deletebanner(BannerVO vo) {
		System.out.println("��� ���� :" + vo); /* Ȯ�ο� */
		bannerService.deleteBanner(vo);
		return "redirect:bannerBoardView.admdo";
	}
	
	// -- ��� ���� --
	@RequestMapping(value="/updateBanner.admdo", method = RequestMethod.POST)
	public ModelAndView updateBanner(ModelAndView mav, BannerVO vo, HttpServletRequest request)throws IOException {
		// -- ���������� �����Ҷ�.(A)
		BannerVO originalBanner = bannerService.getBanner(vo);
		// -- (A)�������
		
		String path = request.getSession().getServletContext().getRealPath("/resources/images/user/banner"); // �̹����� ����� ���� ���
		
		String banner_image ="";  //���� ����� ���ϸ�
		String orignialFileName =""; //����� ���ε��� original ���ϸ�
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			
			orignialFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(orignialFileName); //Ȯ���� ���ϱ�
			UUID uuid = UUID.randomUUID(); // uuid(file id) 
			banner_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + banner_image));
			vo.setBanner_image(banner_image);
			vo.setBanner_originalname(orignialFileName);
			
		}else if(uploadFile.isEmpty()){
			// -- ���������� �����Ҷ�  �̹��� ����..(A)
			String originalBannerImage = originalBanner.getBanner_image();
			String originalBannerName = originalBanner.getBanner_originalname();
			vo.setBanner_image(originalBannerImage);
			vo.setBanner_originalname(originalBannerName);
		}
		
		
		System.out.println("[banner_image] : " + banner_image);
		System.out.println("[originalFileName] : " + orignialFileName);
		
		bannerService.updateBanner(vo);
		mav.setViewName("redirect:/bannerBoardView.admdo");
		
		return mav;
	
	}

	
	
}
