package com.company.businesspalna.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.company.businesspalna.service.BusinessPlanAService;
import com.company.businesspalna.service.BusinessPalnAVO;

@Controller
public class BusinessPlanAController {

	@Autowired BusinessPlanAService bpService;
	

	
	@GetMapping("/getSearchBusinessPlanA") //사업계획서 리스트 //수정중, 작동안됨.
	public String getSearchBusinessPlanA(BusinessPalnAVO vo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		model.addAttribute("list1", bpService.getSearchBusinessPlanA(vo));
		model.addAttribute("list2", bpService.getSearchBusinessPlanB(vo));
		model.addAttribute("list3", bpService.getSearchBusinessPlanC(vo));
		model.addAttribute("list4", bpService.getSearchBusinessPlanD(vo));
		//System.out.println(model);
		return "business/getSearchBusinessPlanA";
	}
	
	
	@RequestMapping("/getBusinessPlanA")			//사업계획서 하나만 조회. //수정중, 작동안됨.
	public String getBusinessPlanA(BusinessPalnAVO vo, Model model) {
		System.out.println("pHidden:"+vo);
		model.addAttribute("bp", bpService.getBusinessPlanA(vo));
		return "business/getBusinessPlanA";
	}
	
	
	@GetMapping("/insertBusinessPlanA") //사업계획서 등록 페이지로 이동
	public String insertBusinessPlanA(BusinessPalnAVO vo) {
		return "business/insertBusinessPlanA";
	}
	
	@PostMapping("/insertBusinessPlanA") //사업계획서 등록 처리
	public String insertBusinessPlanAProc(BusinessPalnAVO vo, HttpServletRequest request ) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id"); //login할 때 session에 저장해둔 id 값을 꺼내씀.
		String seq = bpService.getSeq();
		vo.setId(id);
		vo.setSeq(seq);
		bpService.insertBusinessPlanA(vo);
		System.out.println("prodDiv"+vo.getPHidden());
		if(vo.getPHidden() != null) {
			bpService.insertBusinessPlanB(vo);
		};
		if(vo.getMHidden() != null) {
			bpService.insertBusinessPlanC(vo);
		};
		if(vo.getSHidden() != null) {
			bpService.insertBusinessPlanD(vo);
		};
		
		
		
		return "redirect:/getSearchBusinessPlanA";
	}
	
	@GetMapping("/updateBusinessPlanA")			//수정페이지로
	public String updateBusinessPlanA(BusinessPalnAVO vo, Model model) {
		model.addAttribute("bp", bpService.getBusinessPlanA(vo));
		return "/business/updateBusinessPlanA";
	}

	@PostMapping("/updateBusinessPlanA")			//수정처리
	public String updateBusinessPlanAProc(BusinessPalnAVO vo) {
		bpService.updateBusinessPlanA(vo);
		return "redirect:/getSearchBusinessPlanA";
	}

	@RequestMapping("/deleteBusinessPlanA")			//삭제처리
	public String deleteBusinessPlanA(BusinessPalnAVO vo) {
		bpService.deleteBusinessPlanA(vo);
		return "redirect:/getSearchBusinessPlanA";
	}
	
	@GetMapping("/printBusinessPlanA")			//인쇄
	public String printBusinessPlanA(BusinessPalnAVO vo, Model model) {
		model.addAttribute("bp", bpService.getBusinessPlanA(vo));
		return "business/printBusinessPlanA";
	}
	
	
	@RequestMapping("/getBpWord") //word 다운 수정중
	public String wordView(Model model, BusinessPalnAVO vo) {
		model.addAttribute("bp", bpService.getBusinessPlanA(vo));
		return "wordView";
	}
	

	@RequestMapping("/getBpExcel") //word 다운 수정중
	public ModelAndView getBpExcel(BusinessPalnAVO vo, HttpServletResponse response) throws IOException{
		List<Map<String, Object>> list = bpService.getBpExcel(vo);
		HashMap<String, Object> map = new HashMap<String, Object>(); String[] header = {"BUSINESS_A","BUSINESS_B","BUSINESS_C"};
		map.put("headers", header);
		map.put("filename", "excel_dept");
		map.put("datas", list);
		return new ModelAndView("commonExcelView", map);
	}




}
