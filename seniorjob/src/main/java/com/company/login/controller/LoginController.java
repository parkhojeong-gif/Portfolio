package com.company.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.users.service.UsersVO;
import com.company.users.service.impl.UsersMapper;

@Controller
public class LoginController {
	
	@Autowired UsersMapper usersMapper;
	
	//login
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	//login 처리
	@RequestMapping(value="/loginProc", method= {RequestMethod.GET, RequestMethod.POST})
	public String loginProc(UsersVO vo, HttpServletRequest request, RedirectAttributes rttr) {
		HttpSession session = request.getSession();
		UsersVO users = usersMapper.logCheck(vo);
		if(users == null) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/login";
		}else {
			session.setAttribute("users", users);
			System.out.println(users);
		}
		return "redirect:/";
	}
	
	//logout 
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}
