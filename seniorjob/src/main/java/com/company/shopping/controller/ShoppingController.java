package com.company.shopping.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.mentoring.service.MentoringVO;
import com.company.shopping.service.ShoppingService;
import com.company.shopping.service.ShoppingVO;

@Controller
public class ShoppingController {
	
	
	@Autowired ShoppingService spService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/cart")    //장바구니 이동
	@ResponseBody
	public String cart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		ArrayList<MentoringVO> cart = null;
		Object obj = session.getAttribute("cart");
		if(obj == null) {
			cart = new ArrayList<MentoringVO>();
		}else {
			cart = (ArrayList<MentoringVO>) obj;
		}
		
		String name = request.getParameter("mentoring_name");
		String price = request.getParameter("mentoring_price");
		
		int pos = -1;
		for(int i = 0; i < cart.size(); i++) {
			MentoringVO vo = cart.get(i);
			if(vo.getMentoring_name().equals(name)) {
				pos = 1;
				vo.setMentoring_number(vo.getMentoring_number() + 1);
				break;
			}
		}
		
		if(pos == -1) {
			MentoringVO vo = new MentoringVO();
			vo.setMentoring_name(name);
			vo.setMentoring_price(Integer.parseInt(price));
			vo.setMentoring_number(1);
			cart.add(vo);
		}
		session.setAttribute("cart", cart);
		System.out.println("장바구니에 담았습니다.");
		return "shopping";
	}

	
	
	//양소민 추가
	@GetMapping("/getSearchShopping")   //마이페이지_수강중인 멘토링
	public String getSearchShopping(ShoppingVO vo, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		
		model.addAttribute("list", spService.getSearchShopping(vo));
		System.out.println("model:"+model);
		return "mypage/mentoringStatus";
	}
	
	@GetMapping("/getSearchPay")  //마이페이지_결제내역
	public String getSearchPay(ShoppingVO vo, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		model.addAttribute("list", spService.getSearchPay(vo));
		return "mypage/payDetail";
	}
	
	// 김찬곤 추가
	// 멘토 상세페이지_장바구니 중복 체크&장바구니 담기
	@ResponseBody
	@RequestMapping(value="BasketCheck")
	public int BasketCheck(ShoppingVO vo) {
		int result = spService.BasketCheck(vo);
		if(result==0) { // 테이블에 값이 없으면
			spService.insertMentoringBasket(vo); // 장바구니에 담기
			return result;
		}else {
			return result;
		}
	}
	
	@RequestMapping("/goShopping")
	@ResponseBody
	public String goShopping() {
		return "";
	}
	
} // end of class
