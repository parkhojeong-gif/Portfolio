package com.company.shopping.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ShoppingService {
	
public int insertShopping(ShoppingVO vo);
	
	public int updateShopping(ShoppingVO vo);
	
	public int deleteShopping(ShoppingVO vo);
	
	public ShoppingVO getShopping(ShoppingVO vo);
	
	public List<ShoppingVO> getSearchShopping(ShoppingVO vo);

	public List<ShoppingVO> getSearchPay(ShoppingVO vo);
	
	// 김찬곤 추가
	public int insertMentoringBasket(ShoppingVO vo); // 멘토 상세페이지_장바구니 담기
	public int deleteMentoringBasket(ShoppingVO vo); // 멘토 상세페이지_장바구니 취소
	public int BasketCheck(ShoppingVO vo); // 멘토 상세페이지_장바구니 중복 체크
	public ShoppingVO getSearchBasket(ShoppingVO vo); // 멘토 상세페이지_장바구니 단건 조회

}
