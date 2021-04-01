package com.company.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.certificate.service.CertificateVO2;
import com.company.certificate.service.impl.CertificateMapper;
import com.company.portfolio.service.PortfolioVO;
import com.company.portfolio.service.impl.PortfolioMapper;
import com.company.resume.service.ResumeVO;
import com.company.resume.service.impl.ResumeMapper;
import com.company.self_info.service.Self_InfoVO;
import com.company.self_info.service.impl.Self_InfoMapper;

@Controller
public class ResumeController {
	
	@Autowired ResumeMapper resumemapper;
	@Autowired Self_InfoMapper selfmapper;
	@Autowired PortfolioMapper portmapper;
	@Autowired CertificateMapper certimapper;
	
	// 이력서 전체조회
	@RequestMapping("/getSearchResumeList")
	public String getSearchResumeList(Model model) {
		model.addAttribute("list", resumemapper.getSearchResumeList());
		model.addAttribute("slist", selfmapper.getSearchSelfList());
		return "resume/resumeList";  	  
	}
	// 이력서 등록폼
	@RequestMapping("/resumeInsertForm")
	public String resumeInsertForm() {
		return "resume/resumeInsert";     
	}
	// 이력서 등록
	@RequestMapping("/resumeInsert")
	public String resumeInsert(ResumeVO vo, Self_InfoVO selfvo) {
		resumemapper.insertResume(vo);
		selfmapper.insertSelf(selfvo);
		return "resume/resumeList";     
	}
	//이력서 수정폼
	@RequestMapping("/resumeUpdateForm")
	public String resumeUpdateForm(Model model, ResumeVO vo, Self_InfoVO selfvo) {
		model.addAttribute("resumeVO", resumemapper.getResume(vo));
		model.addAttribute("selfvo", selfmapper.getSelf(selfvo));
		return "resume/resumeUpdate";	  
	}
	//이력서 수정
	@RequestMapping("/resumeUpdate")
	public String resumeUpdate(ResumeVO vo) {
		resumemapper.updateResuem(vo);
		return "resume/resumeList";	  
	}
	
	//이력서 삭제
	@RequestMapping("/resumeDelete")
	public String resumeDelete(ResumeVO vo) {
		resumemapper.deleteResume(vo);
		return "resume/resumeList";	  
	}
	
	//이력서 단건 조회
	@RequestMapping("/getResume")
	public String getResume(Model model, ResumeVO vo, Self_InfoVO selfvo, PortfolioVO portvo, CertificateVO2 certivo) {
		model.addAttribute("resumeVO", resumemapper.getResume(vo));
		model.addAttribute("selfvo", selfmapper.getSelf(selfvo));
		model.addAttribute("portvo", portmapper.getPort(portvo));
		model.addAttribute("certivo", certimapper.getCerti(certivo));
		return "resume/resumeList";
	}
	
	//이미지 업로드
	
	
	
	@RequestMapping("/preview")
	public String preview() {
		return "preview";				  //미리보기
	}
	
	
	@RequestMapping("/collection")
	public String collection() {
		return "resume/collection";		  //첨삭
	}
}
