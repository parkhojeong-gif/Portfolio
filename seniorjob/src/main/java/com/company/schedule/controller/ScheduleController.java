package com.company.schedule.controller;

import java.util.HashMap;
import java.util.List;

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
	public HashMap<String, Object> getSearchSchedule(ScheduleVO vo) {
		HashMap<String, Object> map = new HashMap<>();
		List<ScheduleVO> plan = scService.getSearchSchedule(vo);
		map.put("plan", plan);
		return map;
	
	}

}
