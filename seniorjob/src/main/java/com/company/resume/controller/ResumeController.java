package com.company.resume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResumeController {

	@RequestMapping("/resumeInsert")
	public String resumeInsert() {
		return "resume/resumeInsert";     // 이력서 등록
	}
	
	@RequestMapping("/resumeList")
	public String resumeList() {
		return "resume/resumeList";  	  // 이력서 조회
	}
	
	@RequestMapping("/preview")
	public String preview() {
		return "preview";				  //미리보기
	}
	
	@RequestMapping("/resumeUpdate")
	public String resumeUpdate() {
		return "resume/resumeUpdate";	  //이력서 수정
	}
	
	@RequestMapping("/collection")
	public String collection() {
		return "resume/collection";		  //첨삭
	}
}
