package com.company.service_center.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import com.company.service_center.Criteria;
import com.company.service_center.PageMaker;
import com.company.service_center.PagingVO;
import com.company.service_center.SearchCriteria;
import com.company.service_center.service.Service_CenterVO;
import com.company.service_center.service.impl.Service_CenterMapper;


@Controller
public class Service_CenterController {
	@Autowired Service_CenterMapper service_CenterMapper;

	
	//게시판 목록 조회
	@RequestMapping("/serviceCenter")
	public String list(Model model,  @ModelAttribute("scri") SearchCriteria scri) {
		
		model.addAttribute("list", service_CenterMapper.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service_CenterMapper.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/Service_Center/serviceCenter";			  //공지사항
	}
	
	
	
	@RequestMapping("/getService_Center")	//공지사항 단건조회
	public String getService_CenterList(Model model, Service_CenterVO vo) {
		model.addAttribute("gongji", service_CenterMapper.getService_Center(vo));
		service_CenterMapper.updateClick(vo);	 //조회수 증가
		
		model.addAttribute("num", service_CenterMapper.preNext(vo));
		service_CenterMapper.preNext(vo);		//게시글 이전/다음
		return "/Service_Center/getService_Center";
	}
	
	
	
	
	//검색
	@RequestMapping("/searchService")
	public String searchService(Model model, @RequestParam("searchKeyword") String searchKeyword) {
		List<Service_CenterVO> list= service_CenterMapper.searchService(searchKeyword);
		model.addAttribute("list", list);
	return "/Service_Center/searchService";	
	}
	
	

	@RequestMapping("/insertService_CenterForm") //고객센터 등록 폼
	public String insertService_Center(Service_CenterVO vo) {
		return "/Service_Center/insertService_CenterForm";
	}
	@RequestMapping("/insertService_Center") //고객센터 등록
	public String insertService_CenterProc(Service_CenterVO vo) {
		service_CenterMapper.insertService_Center(vo);
		return "redirect:/serviceCenter";
	}
	@RequestMapping("/updateService_Center")	//고객센터 수정폼
	public String updateService_Center(Service_CenterVO vo, Model model) {
		model.addAttribute("list", service_CenterMapper.getService_Center(vo));
		return "/Service_Center/updateService_Center";
	}
	@RequestMapping("/updateService_CenterProc")	//고객센터 수정
	public String updateService_CenterProc(Service_CenterVO vo) {
		service_CenterMapper.updateService_Center(vo);
		return "redirect:/getService_CenterList";
	}
	@RequestMapping("/deleteService_Center")	//고객센터 삭제
	public String deleteService_Center(Service_CenterVO vo) {
		service_CenterMapper.deleteService_Center(vo);
		return "redirect:/getService_CenterList";
	}
}
