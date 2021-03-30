package com.company.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.resume.service.ResumeVO;
import com.company.resume.service.impl.ResumeMapper;

@Controller
public class ResumeController {
	
	@Autowired ResumeMapper resumemapper;
	// 이력서 전체조회
	@RequestMapping("/getSearchResumeList")
	public String getSearchResumeList(Model model) {
		model.addAttribute("list", resumemapper.getSearchResumeList());
		return "resume/resumeList";  	  
	}
	// 이력서 등록폼
	@RequestMapping("/resumeInsertForm")
	public String resumeInsertForm() {
		return "resume/resumeInsert";     
	}
	// 이력서 등록
	@RequestMapping("/resumeInsert")
	public String resumeInsert(ResumeVO vo) {
		resumemapper.insertResume(vo);
		return "resume/resumeList";     
	}
	//이력서 수정폼
	@RequestMapping("/resumeUpdateForm")
	public String resumeUpdateForm() {
		return "resume/resumeUpdate";	  
	}
	//이력서 수정
	@RequestMapping("/resumeUpdate")
	public String resumeUpdate(ResumeVO vo) {
		resumemapper.updateResuem(vo);
		return "resume/resumeList";	  
	}
	//이력서 단건 조회
	@RequestMapping("/getResume")
	public String getResume(Model model, ResumeVO vo) {
		model.addAttribute("resumeVO", resumemapper.getResume(vo));
		return "";
	}
	
	@RequestMapping("/preview")
	public String preview() {
		return "preview";				  //미리보기
	}
	
	
	@RequestMapping("/collection")
	public String collection() {
		return "resume/collection";		  //첨삭
	}
}
