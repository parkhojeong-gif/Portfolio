package com.company.shopping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.shopping.service.ShoppingService;
import com.company.shopping.service.ShoppingVO;

@Controller
@SessionAttributes({"cart"})
public class ShoppingController {
	
	@Autowired ShoppingService spService;
	
	@RequestMapping(value="/shopping")    //장바구니 이동
//	@ResponseBody
	public String shopping(ShoppingVO vo, HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
		/*
		 * ArrayList<String> arr = (ArrayList<String>)
		 * (session.getAttribute("cartlist"));
		 * 
		 * if(session.getAttribute("cartlist") == null) { arr = new ArrayList<String>();
		 * } session.setAttribute("cartlist", arr);
		 */
		//cart가 없으면 생성(하는중)
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
