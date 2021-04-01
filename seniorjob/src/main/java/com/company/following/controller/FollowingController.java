package com.company.following.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.following.service.FollowingVO;
import com.company.following.service.impl.FollowingMapper;

@Controller
public class FollowingController {

	@Autowired FollowingMapper followingMapper;
	
	@RequestMapping("/following")
	public String following() {
		return "following";				  //팔로우 목록
	}
	
	// 멘토 팔로우
	@RequestMapping("/MentorFollow")
	public String getMentorFollow(Model model, FollowingVO vo) {
		followingMapper.MentorFollow(vo);
		model.addAttribute("msg","팔로우 완료");
		model.addAttribute("url","getMentor");
		return "following/followSuccess";
	}
	
	// 멘토 팔로우 취소
	@RequestMapping("/deleteMentorFollow")
	public String deleteMentorFollow(Model model) {
		model.addAttribute("msg","팔로우 취소 완료");
		model.addAttribute("url","getMentor");
		return "following/followDeleteSuccess";
	}
	
	// 멘토 팔로우 중복 확인
	@RequestMapping("/mentorFollowCheck")
	public String mentorFollowCheck(FollowingVO vo) {
		return "Mentor/getMentor";
	}
	
	
}
