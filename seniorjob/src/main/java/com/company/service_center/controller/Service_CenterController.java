package com.company.service_center.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import com.company.service_center.service.Service_CenterVO;
import com.company.service_center.service.impl.Service_CenterMapper;


@Controller
public class Service_CenterController {
	@Autowired Service_CenterMapper service_CenterMapper;

	@RequestMapping("/serviceCenter")
	public String serviceCenter() {
		return "serviceCenter";			  //공지사항
	}
	@RequestMapping("/getService_CenterList")	//고객센터 리스트
	public String getService_CenterList(Model model) {
		model.addAttribute("list", service_CenterMapper.getService_CenterList());
		return "/Service_Center/getService_CenterList";
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
