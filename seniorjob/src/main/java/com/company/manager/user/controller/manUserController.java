package com.company.manager.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.manager.user.userVO;
import com.company.manager.user.service.impl.manUserMapper;
import com.company.manager.utils.PagingVO;

@Controller
public class manUserController {
	
	@Autowired manUserMapper manusermapper;
 
	//페이징 처리 후 게시글 조회 
	@RequestMapping("/userList")
	public String boardList(PagingVO vo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		int total = manusermapper.countBoard();
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
		model.addAttribute("viewAll", manusermapper.selectBoard(vo));
		return "user";
	}
	
	//회원 단건 조회
	@RequestMapping("/getUserList")
	public String getUserList(userVO vo) {
		return "user";
	}
	//회원 수정 폼
	@RequestMapping("/updateUser")
	public String updateUser(userVO vo, Model model) {
		model.addAttribute("upuser", manusermapper.updateUser(vo));
		return "user";
	}
	
	//회원 수정 
	@RequestMapping("/updateUserProc")
	public String updateUserProc(userVO vo) {
		return "redirect:/user";
	}
	
	//회원 삭제
	@RequestMapping("/deleteUser")
	public String deleteUser(userVO vo) {
		return "user";
	}
	
	
	
	//회원 승급
	@RequestMapping("/authList")
	public String authList(userVO vo) {
		return "user";

	}
}