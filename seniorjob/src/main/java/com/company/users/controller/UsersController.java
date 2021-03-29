package com.company.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.users.service.impl.UsersMapper;

@Controller
public class UsersController {
	@Autowired UsersMapper usersMapper;
	
	@RequestMapping("/userstest")
	public String userstest(Model model) {
		model.addAttribute("list", usersMapper.getUsersList());
		return "usertest/userstest";
	}
	
	
}
