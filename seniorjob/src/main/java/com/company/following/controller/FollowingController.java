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
	
	//팔로우 목록
	@RequestMapping("/following")
	public String following() {
		return "following";				  
	}
	
	// 멘토 팔로우
	@RequestMapping("/MentorFollow")
	public String getMentorFollow(Model model, FollowingVO vo) {
		
		FollowingVO followCheck = followingMapper.mentorFollowCheck(vo);
		// 팔로우 중복 체크
		if(followCheck != null) {
			model.addAttribute("msg", "이미 팔로우된 멘토입니다.");
			model.addAttribute("url", "getMentor?mentor_id="+vo.getMentor_id());
			return "common/Fail";
		}else {
			model.addAttribute("msg","팔로우 완료");
			model.addAttribute("url","getMentor?mentor_id="+vo.getMentor_id());
			return "common/Success";
		}
	}
	
	// 멘토 팔로우 취소
	@RequestMapping("/deleteMentorFollow")
	public String deleteMentorFollow(Model model, FollowingVO vo) {
		FollowingVO followCheck = followingMapper.mentorFollowCheck(vo);
		if(followCheck==null) {
			model.addAttribute("msg", "팔로우 하지 않은 멘토입니다.");
			model.addAttribute("url", "getMentor?mentor_id="+vo.getMentor_id());
			return "common/Fail";
		}else {
			followingMapper.deleteMentorFollow(vo);
			model.addAttribute("msg","팔로우 취소 완료");
			model.addAttribute("url","getMentor?mentor_id="+vo.getMentor_id());
			return "common/Success";
		}
	}
	
}
