package com.company.service_center.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Service_CenterController {

	@RequestMapping("/serviceCenter")
	public String serviceCenter() {
		return "serviceCenter";			  //공지사항
	}
}
