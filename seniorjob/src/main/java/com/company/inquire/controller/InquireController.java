package com.company.inquire.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.inquire.service.InquireVO;
import com.company.inquire.service.impl.InquireMapper;

@Controller
public class InquireController {
	@Autowired InquireMapper inquireMapper;
	@RequestMapping("/inquire")
	public String inquire() {
		return "inquire";		  			
	}
	
	@RequestMapping("/inquireInsert") //문의하기 등록폼
	public String inquireInsert() {
		return "inquireInsert";		  		
	}
	
	@RequestMapping("/getInquireList")	//문의하기 전체조회
	public String getInquireList(Model model) {
		model.addAttribute("list", inquireMapper.getInquireList());
		return "/inquire/getInquireList";
	}
	
	@RequestMapping("/getInquire")	//문의하기 단건조회
	public String getInquire(Model model, InquireVO vo) {
		model.addAttribute("list",inquireMapper.getInquire(vo));
		return "/inquire/getInquire";			
	}
	@RequestMapping("/insertInquire") //문의 등록 폼
	public String insertInquire(InquireVO vo) {
		return "/inquire/insertInquire";
	}
	@RequestMapping("/insertInquireProc") //문의 등록
	public String insertInquireProc(InquireVO vo) {
		inquireMapper.insertInquire(vo);
		return "redirect:/getInquireList";
	}
	@RequestMapping("/updateInquire")	//문의 수정폼
	public String updateInquire(InquireVO vo, Model model) {
		model.addAttribute("list", inquireMapper.getInquire(vo));
		return "/inquire/updateInquire";
	}
	@RequestMapping("/updateInquireProc")	//문의 수정
	public String updateInquireProc(InquireVO vo) {
		inquireMapper.updateInquire(vo);
		return "redirect:/getInquireList";
	}
	@RequestMapping("/deleteInquire")	//문의 삭제
	public String deleteInquire(InquireVO vo) {
		inquireMapper.deleteInquire(vo);
		return "redirect:/getInquireList";
	}
}
