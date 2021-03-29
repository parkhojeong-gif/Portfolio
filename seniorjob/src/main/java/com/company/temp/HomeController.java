package com.company.temp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
	
	@RequestMapping("/resumeInsert")
	public String resumeInsert() {
		return "resumeInsert";
	}
	

	@RequestMapping("/businessPlanInsert")
	public String businessPlanInsert() {
		return "businessPlanInsert";
	}
	
	@RequestMapping("/businessPlanList")
	public String businessPlanList() {
		return "businessPlanList";
	}
	
	@RequestMapping("/mentoringStatus")
	public String mentoringStatus() {
		return "mentoringStatus";
	}
	
	@RequestMapping("/profileModification")
	public String profileModification() {
		return "profileModification";
	}
	
	@RequestMapping("/pwNotFound")
	public String pwNotFound() {
		return "pwNotFound";
	}
	
	@RequestMapping("/mypageHome")
	public String mypageHome() {
		return "mypageHome";
	}
	
	@RequestMapping("/payDetail")
	public String payDetail() {
		return "payDetail";
	}
	
	@RequestMapping("/mentoringCourse")
	public String mentoringCourse() {
		return "mentoringCourse";
	}
	
}
