package com.company.temp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class managerController {
	
	private static final Logger logger = LoggerFactory.getLogger(managerController.class);
	
	//메인으로
	@RequestMapping("/managerMain")
	public String manager() {
		
		return "/manager/manager";
	}
	
}
