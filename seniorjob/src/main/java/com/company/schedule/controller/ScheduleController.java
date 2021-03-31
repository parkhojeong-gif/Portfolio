package com.company.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.company.schedule.service.ScheduleService;
import com.company.schedule.service.ScheduleVO;

@Controller
public class ScheduleController {
	
	@Autowired ScheduleService scService;
	
	@GetMapping("/getSearchSchedule")
	public String getSearchSchedule(ScheduleVO vo, Model model) {
		model.addAttribute("list", scService.getSearchSchedule(vo));
		return "mypage/mypageHome";
	}

}
