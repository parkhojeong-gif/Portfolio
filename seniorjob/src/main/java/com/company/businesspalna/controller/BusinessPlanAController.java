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
import com.company.mentor.service.MentorService;
import com.company.mentor.service.MentorVO;
import com.company.mentoring.service.MentoringVO;
import com.company.businesspalna.service.BusinessPalnAVO;

@Controller
public class BusinessPlanAController {

	@Autowired BusinessPlanAService bpService;
	@Autowired MentorService mtService;

	
	@GetMapping("/getSearchBusinessPlanA") //사업계획서 리스트 
	public String getSearchBusinessPlanA(BusinessPalnAVO vo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		model.addAttribute("list", bpService.getSearchBusinessPlanA(vo));
		return "business/getSearchBusinessPlanA";
	}
	
	
	@RequestMapping("/getBusinessPlanA")			//사업계획서 하나만 조회. 
	public String getBusinessPlanA(BusinessPalnAVO vo, Model model) {
		bpService.getBusinessPlanA(vo);
		model.addAttribute("bp", vo);
		return "business/getBusinessPlanA";
	}
	
	
	@GetMapping("/insertBusinessPlanA") //사업계획서 등록 페이지로 이동
	public String insertBusinessPlanA(BusinessPalnAVO vo) {
		return "business/insertBusinessPlanA";
	}
	
	@PostMapping("/insertBusinessPlanA") //사업계획서 등록 처리
	public String insertBusinessPlanAProc(BusinessPalnAVO vo, HttpServletRequest request, Model model ) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id"); //login할 때 session에 저장해둔 id 값을 꺼내씀.
		int seq = bpService.getSeq();
		vo.setId(id);
		vo.setSeq(seq);
		bpService.insertBusinessPlanA(vo);
		
		if(vo.getPhidden() != null) {
			bpService.insertBusinessPlanB(vo);
		};
		if(vo.getMhidden() != null) {
			bpService.insertBusinessPlanC(vo);
		};
		if(vo.getShidden() != null) {
			bpService.insertBusinessPlanD(vo);
		};
		
		model.addAttribute("msg", "등록완료");
		model.addAttribute("url", "throughCerti");
		
		return "common/Success";
	}
	
	@GetMapping("/updateBusinessPlanA")			//수정페이지로
	public String updateBusinessPlanA(BusinessPalnAVO vo, Model model) {
		bpService.getBusinessPlanA(vo);
		model.addAttribute("bpp", vo);
		return "/business/updateBusinessPlanA";
	}

	@PostMapping("/updateBusinessPlanA")			//수정처리
	public String updateBusinessPlanAProc(BusinessPalnAVO vo, HttpServletRequest request ) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		bpService.updateBusinessPlanA(vo);
		
		if("1".equals(vo.getPhidden())) {
			bpService.updateBusinessPlanB(vo);
		};
		if("1".equals(vo.getMhidden())) {
			bpService.updateBusinessPlanC(vo);
		};
		if("1".equals(vo.getShidden())) {
			bpService.updateBusinessPlanD(vo);
		};
		return "redirect:/getSearchBusinessPlanA";
	}

	@RequestMapping("/deleteBusinessPlanA")			//삭제처리
	public String deleteBusinessPlanA(BusinessPalnAVO vo) {
		bpService.deleteBusinessPlanA(vo);
		return "redirect:/getSearchBusinessPlanA";
	}
	
	@GetMapping("/printBusinessPlanA")			//인쇄
	public String printBusinessPlanA(BusinessPalnAVO vo, Model model) {
		bpService.getBusinessPlanA(vo);
		model.addAttribute("bp", vo);
		return "business/printBusinessPlanA";
	}
	
	
	@RequestMapping("/getBpWord") //word 다운 수정중
	public String wordView(Model model, BusinessPalnAVO vo) {
		model.addAttribute("bp", bpService.getBusinessPlanA(vo));
		return "wordView";
	}
	

	@RequestMapping("/getBpExcel") //엑셀 다운
	public ModelAndView getBpExcel(BusinessPalnAVO vo, HttpServletResponse response) throws IOException{
		List<Map<String, Object>> list = bpService.getBpExcel(vo);
		
		System.out.println("excel:"+bpService.getBpExcel(vo));
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		String[] header = {"TITLE","BUSINESS_A","BUSINESS_B","BUSINESS_C","PROD_A","PROD_B","PROD_C","MARKET_A","MARKET_B","MARKET_C","MARKET_D","SELLING_A","SELLING_B","SELLING_C"};
		map.put("headers", header);
		map.put("filename", "excel_dept");
		map.put("datas", list);
		return new ModelAndView("commonExcelView", map);
	}

	//첨삭 요청 창으로 이동
	@GetMapping("/checkBp")
	public String checkBp(BusinessPalnAVO vo, Model model) {
		bpService.getBusinessPlanA(vo);
		model.addAttribute("bpp", vo);
		return "/business/checkBusinessPlan";
	}
	
	//첨삭요청 팝업창
	@GetMapping("/checkBpForm")
	public String checkBpForm(MentoringVO vo, Model model, HttpServletRequest request, String seq) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		vo.setMenteeId(id);
		model.addAttribute("ck", bpService.ckMenName(vo));
		model.addAttribute("seq", seq);
		return "/business/checkBpForm";
	};
	
	
	//첨삭요청하면 사업계획서에 멘토아이디 추가
	@PostMapping("/ckUpdate")
	public String ckUpdate(BusinessPalnAVO vo) {
		System.out.println("vo:"+vo);
		bpService.ckUpdate(vo);
		return "/users/throughCerti";
	}
	
	//첨삭요청목록
	@GetMapping("/checkP")
	public String checkP(BusinessPalnAVO vo, MentorVO mvo, HttpServletRequest request, Model model ) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		mvo.setId(id);
		String mId = mtService.getMentorId(mvo);
		vo.setMentorId(mId);
		model.addAttribute("list", bpService.checkP(vo));
		return "/Mentor/checkP";
	}
	
	@GetMapping("/checkBusinessPlan") //첨삭 페이지로 이동
	public String checkBusinessPlan(BusinessPalnAVO vo, Model model) {
		bpService.getBusinessPlanA(vo);
		model.addAttribute("bpp", vo);
		return "business/checkBusinessPlan";
	}
	
	@PostMapping("/collectionUpdate")			//첨삭입력
	public String collectionUpdate(BusinessPalnAVO vo) {
		bpService.collectionUpdate(vo);
		
		return "mypage/mypageHome";
	}
	
	@GetMapping("/seeCkBp") //첨삭받은 거 확인
	public String seeCkBp(BusinessPalnAVO vo, Model model) {
		bpService.getBusinessPlanA(vo);
		model.addAttribute("bpp", vo);
		return "business/seeCkBp";
	}
	
	@RequestMapping("/previewBusiness") //미리보기
	public String previewBusiness() {
		return "business/previewBusiness";
		
	}

}
