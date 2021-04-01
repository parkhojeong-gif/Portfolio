package com.company.service_center.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import com.company.service_center.PagingVO;
import com.company.service_center.service.Service_CenterVO;
import com.company.service_center.service.impl.Service_CenterMapper;


@Controller
public class Service_CenterController {
	@Autowired Service_CenterMapper service_CenterMapper;

	@RequestMapping("/serviceCenter")
	public String serviceCenter(Model model, Service_CenterVO vo, PagingVO pvo,
			  @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		int total = service_CenterMapper.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		pvo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", pvo);
		model.addAttribute("list", service_CenterMapper.selectBoard(pvo));
		
		//model.addAttribute("list", service_CenterMapper.getService_CenterList(vo));
		return "/Service_Center/serviceCenter";			  //공지사항
	}
	@RequestMapping("/getService_Center")	//공지사항 단건조회
	public String getService_CenterList(Model model, Service_CenterVO vo) {
		model.addAttribute("gongji", service_CenterMapper.getService_Center(vo));
		service_CenterMapper.updateClick(vo);	 //조회수 증가
		return "/Service_Center/getService_Center";
	}
	@RequestMapping("/insertService_Center") //고객센터 등록 폼
	public String insertService_Center(Service_CenterVO vo) {
		return "/Service_Center/insertService_Center";
	}
	@RequestMapping("/insertService_CenterProc") //고객센터 등록
	public String insertService_CenterProc(Service_CenterVO vo) {
		service_CenterMapper.insertService_Center(vo);
		return "redirect:/getService_CenterList";
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
