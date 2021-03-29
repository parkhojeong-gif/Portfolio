package com.company.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PortfolioController {
	
	@RequestMapping("/portfolio")
	public String portfolio() {
		return "resume/portfolio";		  // 포트폴리오
	}
}
