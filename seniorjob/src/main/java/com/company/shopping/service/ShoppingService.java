package com.company.shopping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.company.mentoring.service.MentoringVO;

@Service
public interface ShoppingService {
	
public int insertShopping(ShoppingVO vo);
	
	public int updateShopping(ShoppingVO vo);
	
	public int deleteShopping(ShoppingVO vo);
	
	public ShoppingVO getShopping(ShoppingVO vo);
	
	public List<ShoppingVO> getSearchShopping(ShoppingVO vo);

	public List<ShoppingVO> getSearchPay(ShoppingVO vo);
	
	// 김찬곤 추가
	public void insertMentoringBasket(MentoringVO vo); // 멘토 상세페이지_장바구니 담기
	public ShoppingVO BasketCheck(ShoppingVO vo); // 멘토 상세페이지_장바구니 중복 체크
	
}
