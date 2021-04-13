package com.company.cart.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.cart.service.CartService;
import com.company.cart.service.CartVO;
import com.company.mentoring.service.MentoringVO;

@Controller
public class CartController {

	@Autowired CartService cartservice;
	
	@RequestMapping("/cart")
	public String cart(HttpServletRequest req, CartVO vo, Model model) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		model.addAttribute("list", cartservice.getSearchCartList(vo));
		return "cart";
	}
	
	@PostMapping("/insertCart")
	public String insertCart(HttpServletRequest req, CartVO vo, HttpSession session, MentoringVO mentovo) {
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		System.out.println(vo);
		cartservice.insertCart(vo);
		return "redirect:/cart";
	}
	
	
	@PostMapping("/deleteCart")
	public String deleteCart(CartVO vo, HttpServletRequest req) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		cartservice.deleteCart(vo);
		return "redirect:/cart";
	}
	
	@RequestMapping("/getCart")
	public String getCart(CartVO vo) {
		cartservice.getCart(vo);
		return "";
	}
	
	@PostMapping("/deleteCartAll")
	public String deleteCartAll(CartVO vo, HttpServletRequest req) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		cartservice.deleteCartAll(vo);
		return "redirect:/cart";
	}
}
