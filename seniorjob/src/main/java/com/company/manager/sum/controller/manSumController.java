package com.company.manager.sum.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.manager.sum.DateVO;

import com.company.manager.sum.sumVO;
import com.company.manager.sum.service.impl.manSumMapper;



@Controller
public class manSumController {
	
	@Autowired manSumMapper mansummapper;
	
	
	//쇼핑 전체 조회
	@RequestMapping("/sumList")
	public String sumList(Model model, HttpServletRequest req){
		DateVO vo = new DateVO();
			vo.setSDate(req.getParameter("sDate"));
			vo.setEDate(req.getParameter("eDate"));
		model.addAttribute("sumList", mansummapper.sumList(vo));
		System.out.println(vo);
		System.out.println("asdf:" + model.getAttribute("sumList"));
		model.addAttribute("monsum", mansummapper.monsum(vo)); 
		System.out.println("sdfg:" + model.getAttribute("monsum"));
		return "/manager/sum";
	}
	

	//월별 매출 조회
	@RequestMapping("/monsum")
	public String monsum(Model model, HttpServletRequest req){
		DateVO vo = new DateVO();
		vo.setSDate(req.getParameter("sDate"));
		vo.setEDate(req.getParameter("eDate"));
		model.addAttribute("monsum", mansummapper.monsum(vo)); 
		System.out.println("asdf:" + model.getAttribute("monsum"));
		return "/manager/sum"; 
	}
	
	//월 포함 총 합계
	@ResponseBody
	@RequestMapping("/summonth")
	public List<sumVO> summonth(DateVO vo) {
		System.out.println("summonth");
		return mansummapper.summonth(vo);
		
		
	}

}
