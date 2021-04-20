package com.company.resume.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.certificate.service.CertificateVO2;
import com.company.certificate.service.impl.CertificateMapper;
import com.company.portfolio.service.PortfolioVO;
import com.company.portfolio.service.impl.PortfolioMapper;
import com.company.resume.service.ResumeRequestVO;
import com.company.resume.service.ResumeService;
import com.company.resume.service.ResumeVO;
import com.company.resume.service.impl.ResumeMapper;
import com.company.self_info.service.Self_InfoVO;
import com.company.self_info.service.impl.Self_InfoMapper;

@Controller
public class ResumeController {

	@Autowired
	ResumeService resumeservice;
	@Autowired
	ResumeMapper resumemapper;
	@Autowired
	Self_InfoMapper selfmapper;
	@Autowired
	PortfolioMapper portmapper;
	@Autowired
	CertificateMapper certimapper;

	
	// 이력서 전체조회
	@RequestMapping("/getSearchResumeList")
	public String getSearchResumeList(Model model, HttpServletRequest req, ResumeVO vo) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("users.id");
		vo.setId(id);
		model.addAttribute("list", resumemapper.getSearchResumeList(vo));
		return "resume/resumeList";
	}

	// 이력서 등록폼
	@RequestMapping("/resumeInsertForm")
	public String resumeInsertForm() {
		return "resume/resumeInsert";
	}

	// 이력서 등록
	@RequestMapping("/resumeInsert")
	public String resumeInsert(HttpServletRequest req, ResumeVO vo, ResumeRequestVO reqvo, 
			PortfolioVO portvo) throws Exception {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
		vo.setId(id);
		resumeservice.insertResume(vo, reqvo.getClist(), reqvo.getSlist(), portvo, req);
		return "resume/resumeList";
	}
	
	// 이력서 수정
	@PostMapping("/resumeUpdate")
	public String resumeUpdate(HttpServletRequest req, ResumeVO vo, ResumeRequestVO reqvo,
			PortfolioVO portvo) throws Exception {
	HttpSession session = req.getSession();
	String id = (String) session.getAttribute("id");
	System.out.println(id);
	vo.setId(id);
	System.out.println(vo);
	resumeservice.updateResuem(vo, reqvo.getClist(), reqvo.getSlist(), portvo, req);
	return "redirect:/getSearchResumeList";
	}

	// 이력서 수정폼
	@RequestMapping("/resumeUpdateForm")
	public String resumeUpdateForm(Model model, ResumeVO vo, Self_InfoVO selfvo, CertificateVO2 certivo,
			PortfolioVO portvo) {
		vo = resumemapper.getResume(vo);
		model.addAttribute("resumeVO", vo);
		selfvo.setResume_no(vo.getResume_no()); // resume 테이블의 resume_no라는 거 명시
		model.addAttribute("slist", selfmapper.getSelf(selfvo));
		certivo.setResume_no(vo.getResume_no());
		model.addAttribute("clist", certimapper.getCerti(certivo));
		portvo.setResume_no(vo.getResume_no());
		model.addAttribute("plist", portmapper.getPort(portvo));
		return "resume/resumeUpdate";
	}

	// 이력서 워드폼
	@RequestMapping("/resumeWord")
	public String resumeWord(Model model, ResumeVO vo, Self_InfoVO selfvo, CertificateVO2 certivo, PortfolioVO portvo) {
		vo = resumemapper.getResume(vo);
		model.addAttribute("resumeVO", vo);
		selfvo.setResume_no(vo.getResume_no()); // resume 테이블의 resume_no라는 거 명시
		model.addAttribute("slist", selfmapper.getSelf(selfvo));
		certivo.setResume_no(vo.getResume_no());
		model.addAttribute("clist", certimapper.getCerti(certivo));
		portvo.setResume_no(vo.getResume_no());
		model.addAttribute("portvo", portmapper.getPort(portvo));
		return "resume/resumeWord";
	}

	// 이력서 삭제
	@PostMapping("/resumeDelete")
	public String resumeDelete(ResumeVO vo) {
		System.out.println(vo);
		resumemapper.deleteResume(vo);
		return "redirect:/getSearchResumeList";
	}

	// 이력서 단건 조회
	@RequestMapping("/getResume")
	public String getResume(Model model, ResumeVO vo, Self_InfoVO selfvo, PortfolioVO portvo, CertificateVO2 certivo) {
		model.addAttribute("resumeVO", resumemapper.getResume(vo));
		model.addAttribute("selfvo", selfmapper.getSelf(selfvo));
		model.addAttribute("portvo", portmapper.getPort(portvo));
		model.addAttribute("certivo", certimapper.getCerti(certivo));
		return "resume/resumeList";
	}
	
	// 미리보기
	@RequestMapping("/preview")
	public String preview() {
		return "resume/preview";
	}

	// 첨삭
	@RequestMapping("/collection")
	public String collection(Model model, ResumeVO vo, Self_InfoVO selfvo, CertificateVO2 certivo, PortfolioVO portvo) {
		vo = resumemapper.getResume(vo);
		model.addAttribute("resumeVO", vo);
		model.addAttribute("selfvo", selfmapper.getSelf(selfvo));
		model.addAttribute("certivo", certimapper.getCerti(certivo));
		model.addAttribute("portvo", portmapper.getPort(portvo));
		return "resume/collection"; 
	}
	
	//영상통화
	@RequestMapping("/videoIn")
	public String videoIn() {
		return "videoIn";
	}
}
