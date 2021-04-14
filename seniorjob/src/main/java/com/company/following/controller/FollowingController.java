package com.company.following.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.following.service.FollowService;
import com.company.following.service.FollowingVO;

@Controller
public class FollowingController {

	@Autowired FollowService followService;
	
	//팔로우 목록
	@RequestMapping("/following")
	public String following(HttpServletRequest req, FollowingVO vo) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		return "following";				  
	}
	
	// 멘토 팔로우
	@RequestMapping("/MentorFollow")
	public String getMentorFollow(HttpServletRequest req, Model model, FollowingVO vo) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		FollowingVO followCheck = followService.mentorFollowCheck(vo);
		// 팔로우 중복 체크
		if(followCheck != null) {
			model.addAttribute("msg", "이미 팔로우된 멘토입니다.");
			model.addAttribute("url", "getMentor?mentor_id="+vo.getMentor_id());
			return "common/Fail";
		}else {
			followService.MentorFollow(vo);
			model.addAttribute("msg","팔로우 완료");
			model.addAttribute("url","getMentor?mentor_id="+vo.getMentor_id());
			System.out.println("팔로잉"+vo);
			return "common/Success";	
		}
	}
	
	// 멘토 팔로우 취소
	@RequestMapping("/deleteMentorFollow")
	public String deleteMentorFollow(Model model, FollowingVO vo) {
		FollowingVO followCheck = followService.mentorFollowCheck(vo);
		if(followCheck==null) {
			model.addAttribute("msg", "팔로우 하지 않은 멘토입니다.");
			model.addAttribute("url", "getMentor?mentor_id="+vo.getMentor_id());
			return "common/Fail";
		}else {
			followService.deleteMentorFollow(vo);
			model.addAttribute("msg","팔로우 취소 완료");
			model.addAttribute("url","getMentor?mentor_id="+vo.getMentor_id());
			return "common/Success";
		}
	}
	
}
