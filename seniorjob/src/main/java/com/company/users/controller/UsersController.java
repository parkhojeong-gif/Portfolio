package com.company.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.users.service.UsersVO;
import com.company.users.service.impl.UsersMapper;

@Controller
public class UsersController {
	
	@Autowired UsersMapper usersMapper;

	@RequestMapping("/getUsersList")		//전체조회
	public String userstest(Model model) {
		model.addAttribute("list", usersMapper.getUsersList());
		return "/users/getUsersList";
	}
	
	@RequestMapping("/insertUsers") //회원가입 폼
	public String insertInquire(UsersVO vo) {
		return "memberRegister";
	}
	@RequestMapping("/insertUsersProc") // 회원가입 처리
	public String insertUsersProc(UsersVO vo) {
		usersMapper.insertUsers(vo);
		return "redirect:/";
	}
	
	@RequestMapping("/updateUsers")	//유저 정보 수정폼
	public String updateUsers(UsersVO vo, Model model) {
		model.addAttribute("list", usersMapper.getUsers(vo));
		return "/users/updateUsers";
	}
	@RequestMapping("/updateUsersProc")	//유저 수정처리
	public String updateInquireProc(UsersVO vo) {
		usersMapper.updateUsers(vo);
		return "redirect:/getUsersList";
	}
	@RequestMapping("/deleteUsers")	//유저 삭제
	public String deleteUsers(UsersVO vo) {
		usersMapper.deleteUsers(vo);
		return "redirect:/getInquireList";
	}
	
	
}
