package com.company.businesspalna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.businesspalna.service.BusinessPlanAService;
import com.company.businesspalna.service.BusinessPalnAVO;

@Controller
public class BusinessPlanAController {

	@Autowired BusinessPlanAService bpService;

	@GetMapping("/getSearchBusinessPlanA") //전체조회
	public String getSearchBusinessPlanA(BusinessPalnAVO vo, Model model) {
		model.addAttribute("list", bpService.getSearchBusinessPlanA(vo));
		return "business/getSearchBusinessPlanA";
	}
	
	@GetMapping("/getBusinessPlanA")			//단건조회
	public String getBusinessPlanA(BusinessPalnAVO vo, Model model) {

		model.addAttribute("bp", bpService.getBusinessPlanA(vo));
		return "business/getBusinessPlanA";
	}
	
	@GetMapping("/insertBusinessPlanA") //등록페이지로
	public String insertBusinessPlanA(BusinessPalnAVO vo) {
		return "business/insertBusinessPlanA";
	}
	
	@PostMapping("/insertBusinessPlanA") //등록처리
	public String insertBusinessPlanAProc(BusinessPalnAVO vo) {
		bpService.insertBusinessPlanA(vo);
		return "redirect:/getSearchBusinessPlanA";
	}
	
	@GetMapping("/updateEmp")			//수정페이지로
	public String updateEmp(BusinessPalnAVO vo, Model model) {
		
		model.addAttribute("emp", bpService.getBusinessPlanA(vo));
		return "/emp/updateEmp";
	}

	@PostMapping("/updateEmp")			//수정처리
	public String updateEmpProc(BusinessPalnAVO vo) {

		bpService.updateBusinessPlanA(vo);
		return "redirect:/getSearchEmp";
	}

	@RequestMapping("/deleteEmp")			//삭제처리
	public String deleteEmp(BusinessPalnAVO vo) {
		bpService.deleteBusinessPlanA(vo);
		return "redirect:/getSearchEmp";
	}




}
