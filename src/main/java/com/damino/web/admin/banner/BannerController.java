package com.damino.web.admin.banner;

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
	
	@RequestMapping(value ="/insertBanner.admdo" , method=RequestMethod.POST)
	public ModelAndView insertBanner(BannerVO vo, ModelAndView mav, HttpServletRequest request) throws IOException {
		System.out.println("[controller banner] ");
		String path = request.getSession().getServletContext().getRealPath("/resources/images/user/banner") ;
		
		String banner_image ="";  //실제 저장될 파일명
		String orignialFileName =""; //사용자 업로드한 original 파일명
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			orignialFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(orignialFileName); //확장자 구하기
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
	
	@RequestMapping(value="/bannerBoardView.admdo", method = RequestMethod.GET)//get
	public ModelAndView getBannerList() {
		System.out.println("[배너 목록]");
		List<BannerVO> bannerList = bannerService.getBannerList();
		System.out.println(bannerList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("sites/banner/bannerBoardView");
		mav.addObject("bannerList", bannerList);
		return mav;
	}

/*	
	@RequestMapping("/getBannerList.admdo")
	public ModelAndView getAdminBannerBoardPage(BannerVO vo, ModelAndView mav) {
		System.out.println("배너 정보 페이지 open");
		
		BannerVO banner = bannerService.getBanner(vo);
		mav.addObject("banner", banner);
		mav.setViewName("/sites/banner/bannerInfo");
		
		return mav;
	}
	
*/	
	
	
}
