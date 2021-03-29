package com.company.businesspalna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.company.businesspalna.service.BusinessPlanAService;
import com.company.businesspalna.service.BusinessPalnAVO;

@Controller
public class BusinessPlanAController {

	@Autowired BusinessPlanAService bpService;

	@GetMapping("/getSearchBusinessPlanA")
	public String getSearchBusinessPlanA(BusinessPalnAVO vo, Model model) {
		model.addAttribute("list", bpService.getSearchBusinessPlanA(vo));
		return "business/getSearchBusinessPlanA";
	}


}
