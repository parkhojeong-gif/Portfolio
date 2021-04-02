package com.company.schedule.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.schedule.service.ScheduleService;
import com.company.schedule.service.ScheduleVO;

@Controller
public class ScheduleController {
	
	@Autowired ScheduleService scService;
	
	/*
	 * @GetMapping("/getSearchSchedule") public String getSearchSchedule(ScheduleVO
	 * vo, Model model) { model.addAttribute("list",
	 * scService.getSearchSchedule(vo)); return "mypage/mypageHome"; }
	 */
	
	@RequestMapping("/getSearchSchedule")
	@ResponseBody
	public List<Map> getSearchSchedule(ScheduleVO vo) {
		List<Map> list = scService.getSearchSchedule(vo);
		System.out.println(list);
		return list;
	
	}
	
	@RequestMapping("/insertSchedule") //멘토가 멘티에게 멘토링 요청
	public String insertScheduleProc(ScheduleVO vo) {
		scService.insertSchedule(vo);
		return "schedule/insertScheduleComplete";
	}

}
