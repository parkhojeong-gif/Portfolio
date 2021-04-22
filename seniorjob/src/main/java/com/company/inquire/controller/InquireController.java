package com.company.inquire.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;
import com.company.inquire.service.InquireVO;
import com.company.inquire.service.Inquire_AnswerVO;
import com.company.inquire.service.impl.InquireMapper;
import com.company.service_center.PageMaker;
import com.company.service_center.SearchCriteria;

@Controller
public class InquireController {
	@Autowired InquireMapper inquireMapper;
	@RequestMapping("/inquire")
	public String inquire() {
		return "inquire";		  			
	}
	
	@RequestMapping("/insertInquireForm") //문의 등록 폼
	public String insertInquire(InquireVO vo) {
		return "/inquire/inquireInsert";
	}
	
	@RequestMapping("/getInquireList")	//문의 목록 전체조회
	public String getInquireList(Model model, @ModelAttribute("scri") SearchCriteria scri) {
		model.addAttribute("list", inquireMapper.getInquireList(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(inquireMapper.inquireCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/inquire/getInquireList";
	}
	
	@RequestMapping("/getInquire")	//문의 목록 단건조회
	public String getInquire(Model model, InquireVO vo) {
		model.addAttribute("list",inquireMapper.getInquire(vo));
		return "/inquire/getInquire";			
	}
	@RequestMapping("/insertInquire") //문의 등록
	public String insertInquireProc(InquireVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");	//연결된 세션 id값 vo에 담기
		vo.setId(id);
		inquireMapper.insertInquire(vo);
		return "redirect:/getInquireList";
	}


	@RequestMapping("/deleteInquire")	//문의 삭제
	public String deleteInquire(InquireVO vo) {
		inquireMapper.deleteInquire(vo);
		return "redirect:/getInquireList";
	}
	
	@RequestMapping("/userInquireList")	//내문의목록 조회
	public String userInquireList(Model model, HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		InquireVO vo = new InquireVO();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");	//연결된 세션 id값 vo에 담기
		map.put("id", id);
		vo.setId(id);
		model.addAttribute("list", inquireMapper.userInquireList(map));
		
		return "/inquire/userInquireList";
	}
	@RequestMapping("/getUserInquire") //내문의목록 단건조회
	public String getUserInquire(InquireVO vo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");	//연결된 세션 id값 vo에 담기
		vo.setId(id);
		model.addAttribute("list",inquireMapper.getUserInquire(vo));
		return "/inquire/getUserInquire";
	}
	@RequestMapping("/updateUserInquireForm")	//내문의목록 단건조회 후 수정폼
	public String updateUserInquireForm(InquireVO vo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");	//연결된 세션 id값 vo에 담기
		vo.setId(id);
		
		model.addAttribute("list", inquireMapper.getUserInquire(vo));
		return "/inquire/updateUserInquireForm";
	}
	@RequestMapping("/updateUserInquire")	//내문의목록 단건조회 후  수정
	public String updateUserInquireProc(InquireVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");	//연결된 세션 id값 vo에 담기
		vo.setId(id);
		
		
		inquireMapper.updateInquire(vo);
		return "redirect:/userInquireList";
	}
	
	//======================================답변=========================================
	@RequestMapping("/insertAnswerPorm") //답변작성 폼
	public String insertAnswerProm(InquireVO vo, String seq, Inquire_AnswerVO avo, Model model) {
		model.addAttribute("list",inquireMapper.getInquire(vo)); //전체문의목록에서 단건조회 후 답변등록버튼 
		seq = vo.getSeq();							     //누를시 질문 단건 조회 및 답변작성까지
		avo.setSeq(seq);
		return "/inquire/answer/insertAnswerPorm";
	}
	@RequestMapping("/insertAnswer") //답변작성 
	public String insertAnswer(InquireVO vo, String seq, Inquire_AnswerVO avo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");	//연결된 세션 id값 vo에 담기
		
		avo.setId(id);
		inquireMapper.insertAnswer(avo); 						//전체문의목록에서 단건조회 후 답변등록버튼
		inquireMapper.updateConfirm(vo);
															     //누를시 질문 단건 조회 및 답변작성까지
		return "redirect:/getInquireList";
	}
	@ResponseBody
	@RequestMapping("/getAnswer") //답변조회
	public Map<String, Object> getAnswer( Inquire_AnswerVO avo, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Inquire_AnswerVO> list = inquireMapper.userAnswerList(avo);
		
		map.put("list", list);
		return map;
	}
	
	
	
	
	
	
}
