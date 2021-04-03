package com.company.schedule.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public List<Map> getSearchSchedule(ScheduleVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String auth = (String) session.getAttribute("auth");
		vo.setAuth(auth);
		String id = (String)session.getAttribute("id");
		if("USER".equals(auth)) {
			vo.setMenteeid(id);
		} else if ("MENTOR".equals(auth)) {
			vo.setMentorid(id);
		}
		List<Map> list = scService.getSearchSchedule(vo);
		System.out.println(list);
		return list;
	
	}
	
	
	
	@RequestMapping("/getSearchRequest")
	@ResponseBody
	public List<Map> getSearchRequest(ScheduleVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		vo.setMenteeid(id);
		System.out.println("mentee:"+vo.getMenteeid());
		List<Map> list = scService.getSearchRequest(vo);
		System.out.println(list);
		return list;
	
	}
	
	@RequestMapping("/insertSchedule") //멘토가 멘티에게 멘토링 요청
	public String insertScheduleProc(ScheduleVO vo) {
		scService.insertSchedule(vo);
		return "schedule/insertScheduleComplete";
	}
	
	@RequestMapping("/updateSchedule")
	public String updateSchedule(String seq, ScheduleVO vo) {
		vo.setSeq(seq);
		scService.updateSchedule(vo);
		return "mypage/mypageHome";
		
	}
	
	

}
