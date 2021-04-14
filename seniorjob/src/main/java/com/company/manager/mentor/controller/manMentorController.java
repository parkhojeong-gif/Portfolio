package com.company.manager.mentor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.manager.mentor.mentorVO;
import com.company.manager.mentor.service.impl.manMentorMapper;
import com.company.manager.utils.PagingVO;

@Controller
public class manMentorController {

	@Autowired manMentorMapper manmentormapper;
	
	//페이징 처리 후 게시글 조회 
		@RequestMapping("/mentorList")
		public String boardList(PagingVO vo, Model model
				, @RequestParam(value="nowPage", required=false)String nowPage
				, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
			
			int total = manmentormapper.countBoard();
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "5";
			} else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "5";
			}
			vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			model.addAttribute("paging", vo);
			model.addAttribute("viewAll", manmentormapper.selectBoard(vo));
			return "mentor";
		}
		
		//회원 단건 조회
		@RequestMapping("/getMentorList")
		public String getMentorList(mentorVO vo) {
			return "mentor";
		}
		//회원 수정 폼
		@RequestMapping("/updateMentor")
		public String updateMentor(mentorVO vo, Model model) {
			model.addAttribute("upmentor", manmentormapper.updateMentor(vo));
			return "mentor";
		}
		
		//회원 수정 
		@RequestMapping("/updateMentorProc")
		public String updateMentorProc(mentorVO vo) {
			return "redirect:/mentor";
		}
		
		//회원 삭제
		@RequestMapping("/deleteMentor")
		public String deleteMentor(mentorVO vo) {
			return "mentor";
		}
		
	
}
