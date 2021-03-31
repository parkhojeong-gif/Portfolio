package com.company.mentor.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.company.mentor.common.FileRenamePolicy;
import com.company.mentor.service.MentorVO;
import com.company.mentor.service.impl.MentorMapper;

@Controller
public class MentorController {
	
	@Autowired MentorMapper mentorMapper;
	
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
		@RequestMapping("/MentorRegisterProc") // RequestMapping 설정만 해도 GET,POST 둘 다 사용가능
		public String MentorRegisterProc(Model model, MentorVO vo) throws Exception {
			MentorVO mentorCheck = mentorMapper.mentorRegisterCheck(vo); // 멘토 등록 여부 확인
			if(mentorCheck != null) {
				model.addAttribute("msg", "이미 멘토로 등록하셨습니다. 마이페이지를 확인하세요.");
				model.addAttribute("url", "MentorList");
				return "Mentor/alert"; // 이미 멘토 등록되어 있으면 해당 주소로 리턴
			}else {
				// 첨부파일 처리
				MultipartFile mentor_photo_file = vo.getMentor_photo_file();
				MultipartFile mentor_license_file = vo.getMentor_license_file();
				MultipartFile mentor_career_certificate_file = vo.getMentor_career_certificate_file();
				String fileNames = "";
				
				// 마지막 파일 뒤에 콤마(,) 제거
				boolean start = true;

				if(
					mentor_photo_file != null && mentor_photo_file.isEmpty() && mentor_photo_file.getSize() > 0
					&& mentor_license_file != null && mentor_license_file.isEmpty() && mentor_license_file.getSize() > 0
					&& mentor_career_certificate_file != null && mentor_career_certificate_file.isEmpty() && mentor_career_certificate_file.getSize() > 0
				  ) {
					String photo_file_name = mentor_photo_file.getOriginalFilename();
					String license_file_name = mentor_license_file.getOriginalFilename();
					String career_certificate_file_name = mentor_career_certificate_file.getOriginalFilename();
				
					File photo_file_rename = FileRenamePolicy.rename(new File("c:/uploadTest/" + photo_file_name));
					File license_file_rename = FileRenamePolicy.rename(new File("c:/uploadTest/" + license_file_name));
					File career_certificate_file_rename = FileRenamePolicy.rename(new File("c:/uploadTest/" + career_certificate_file_name)); 
				
					if(!start) {
						photo_file_name += ",";
						license_file_name += ",";
						career_certificate_file_name += ",";
					}else {
						start = false;
					}
					photo_file_name += photo_file_rename.getName();
					license_file_name += license_file_rename.getName();
					career_certificate_file_name += career_certificate_file_rename.getName();
					
					mentor_photo_file.transferTo(photo_file_rename);
					mentor_license_file.transferTo(license_file_rename);
					mentor_career_certificate_file.transferTo(career_certificate_file_rename);
				}
				vo.setMentor_photo(fileNames);
				vo.setMentor_license(fileNames);
					
				
				
				
				
				
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
