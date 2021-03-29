package com.company.self_info.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Self_InfoController {
	
	@RequestMapping("/selfInfo")
	public String selfInfo() {
		return "resume/selfInfo";		  // 자기소개서
	}
}
