package com.company.shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShoppingController {

	@RequestMapping("/shopping")
	public String shopping() {
		return "shopping";		  			//장바구니
	}
}
