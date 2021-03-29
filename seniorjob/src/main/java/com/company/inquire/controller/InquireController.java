package com.company.inquire.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InquireController {

	@RequestMapping("/inquire")
	public String inquire() {
		return "inquire";		  			//문의사항
	}
	
	@RequestMapping("/inquireInsert")
	public String inquireInsert() {
		return "inquireInsert";		  		 //문의사항 등록
	}
	
	@RequestMapping("/inquireList")
	public String inquireList() {
		return "inquireList";		  		 //문의사항 목록
	}
}
