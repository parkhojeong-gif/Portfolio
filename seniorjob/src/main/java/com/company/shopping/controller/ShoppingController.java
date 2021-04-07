package com.company.shopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.mentoring.service.MentoringVO;
import com.company.shopping.service.ShoppingService;
import com.company.shopping.service.ShoppingVO;

@Controller
public class ShoppingController {
	
	@Autowired ShoppingService spService;
	
	@RequestMapping("/shopping")
	public String shopping() {
		return "shopping";		  			//장바구니
	}
	
	//양소민 추가
	@GetMapping("/getSearchShopping")   //마이페이지_수강중인 멘토링
	public String getSearchShopping(ShoppingVO vo, Model model) {
		model.addAttribute("list", spService.getSearchShopping(vo));
		return "mypage/mentoringStatus";
	}
	
	@GetMapping("/getSearchPay")  //마이페이지_결제내역
	public String getSearchPay(ShoppingVO vo, Model model) {
		model.addAttribute("list", spService.getSearchPay(vo));
		return "mypage/payDetail";
	}
	
	// 김찬곤 추가
	// 멘토 상세페이지_장바구니 담기
	@RequestMapping(value="/insertMentoringBasket", method=RequestMethod.POST)
	@ResponseBody
	public String insertMentoringBasket(MentoringVO mVo, ShoppingVO sVo, Model model) {
		//ShoppingVO basketChk = spService.BasketCheck(sVo);
			spService.insertMentoringBasket(mVo);
			return "redirect:/getMentor";
	}
	
}
