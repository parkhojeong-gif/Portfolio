package com.company.shopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.shopping.service.ShoppingService;
import com.company.shopping.service.ShoppingVO;

@Controller
public class ShoppingController {
	
	@Autowired ShoppingService spService;

	@RequestMapping("/shopping")
	public String shopping() {
		return "shopping";		  			//장바구니
	}
	
	@GetMapping("/getSearchShopping")
	public String getSearchShopping(ShoppingVO vo, Model model) {
		model.addAttribute("list", spService.getSearchShopping(vo));
		return "mypage/mentoringStatus";
	}
	
	
	
}
