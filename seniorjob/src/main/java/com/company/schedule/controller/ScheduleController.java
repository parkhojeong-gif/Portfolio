package com.company.schedule.controller;

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
	
	
	
	//마이홈페이지에 있는 calendar에서 일정이 보이는데, mentor와 mentee가 일정을 공유. mentorid와 menteeid에 각각 로그인된 아이디를 넣으면 조회가 가능하다고 생각했으나, mentor가 mentee일 수도 있다는 경우를 고려하지 않아 수정 필요.
	@RequestMapping("/getSearchSchedule")
	@ResponseBody
	public List<Map> getSearchSchedule(ScheduleVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String auth = (String) session.getAttribute("auth");  //로그인 시 session에 저장된 auth(권한)
		vo.setAuth(auth);
		String id = (String)session.getAttribute("id");
		if("USER".equals(auth)) { //권한이 user라면 vo에 멘티 아이디를 저장
			vo.setMenteeid(id);
		} else if ("MENTOR".equals(auth)) {  //권한이 mentor라면 
			vo.setMentorid(id);  //vo에 멘토 아이디를 저장
		}
		List<Map> list = scService.getSearchSchedule(vo); 
		System.out.println(list);
		return list;
	
	}
	
	
	//멘토가 보낸 요청을 멘티의 마이페이지 홈에서 확인.
	@RequestMapping("/getSearchRequest")
	@ResponseBody
	public List<Map> getSearchRequest(ScheduleVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		vo.setMenteeid(id);
		List<Map> list = scService.getSearchRequest(vo);
		return list;
	
	}
	
	//멘토가 멘티에게 멘토링 요청
	@RequestMapping("/insertSchedule") 
	public String insertScheduleProc(ScheduleVO vo) {
		scService.insertSchedule(vo);
		return "schedule/insertScheduleComplete";
	}
	
	//멘티가 멘토의 요청 승낙
	@RequestMapping("/updateSchedule")
	public String updateSchedule(String seq, ScheduleVO vo) {
		vo.setSeq(seq);
		scService.updateSchedule(vo);
		return "mypage/mypageHome";
		
	}
	
	

}
