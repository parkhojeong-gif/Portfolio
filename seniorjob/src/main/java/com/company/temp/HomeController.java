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
		return "resume/resumeInsert";
	}
	
	@RequestMapping("/resumeList")
	public String resumeList() {
		return "resume/resumeList";
	}
	
	@RequestMapping("/certi")
	public String certi() {
		return "resume/certi";
	}
	
	@RequestMapping("/portfolio")
	public String portfolio() {
		return "resume/portfolio";
	}
	@RequestMapping("/selfInfo")
	public String selfInfo() {
		return "resume/selfInfo";
	}
	
	@RequestMapping("/preview")
	public String preview() {
		return "preview";
	}
	
	@RequestMapping("/resumeUpdate")
	public String resumeUpdate() {
		return "resume/resumeUpdate";
	}
	
	@RequestMapping("/collection")
	public String collection() {
		return "resume/collection";
	}
	
	@RequestMapping("/following")
	public String following() {
		return "following";
	}
	
	@RequestMapping("/serviceCenter")
	public String serviceCenter() {
		return "serviceCenter";
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
	
}
