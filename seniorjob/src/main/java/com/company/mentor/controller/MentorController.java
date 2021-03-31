package com.company.mentor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.mentor.service.MentorVO;
import com.company.mentor.service.impl.MentorMapper;
import com.company.users.service.impl.UsersMapper;

@Controller
public class MentorController {
	
	@Autowired MentorMapper mentorMapper;
	@Autowired UsersMapper usersMapper;
	
		// 로그인, 회원가입 미비 시 호출되는 페이지
		// 로그아웃 상태에서 멘토등록 클릭하면 호출
		@RequestMapping("loginCheckAlert")
		public String loginCheckAlert() {
			return "Mentor/loginCheckAlert";
		}
	
		// 멘토 리스트 페이지 호출
		@RequestMapping("/MentorList")
		public String MentorList(Model model) {
			model.addAttribute("list", mentorMapper.MentorList());
			return "Mentor/mentorList";
		}
		
		// 멘토 등록 페이지 호출
		@RequestMapping("/MentorRegister")
		public String MentorRegister() {
			return "Mentor/mentorRegister";
		}
		
		// 멘토 등록 요청
		@RequestMapping(value = "/MentorRegisterProc")
		public String MentorRegisterProc(Model model, MentorVO vo) {
			MentorVO mentorCheck = mentorMapper.mentorRegisterCheck(vo);
			if(mentorCheck != null) {
				model.addAttribute("msg", "이미 멘토로 등록하셨습니다. 마이페이지를 확인하세요.");
				model.addAttribute("url", "MentorList");
				return "Mentor/alert";
			}else {
				mentorMapper.MentorRegisterProc(vo);
				return "Mentor/mentorRegisterSuccess";
			}
		}
		
		// 멘토 상세 페이지 호출
		@RequestMapping("/getMentor")
		public String getMentor(Model model, MentorVO vo) {
			model.addAttribute("list", mentorMapper.getMentor(vo));
			return "Mentor/getMentor";
		}

}
