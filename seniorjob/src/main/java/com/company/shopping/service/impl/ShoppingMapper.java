package com.company.shopping.service.impl;

import java.util.List;

import com.company.mentoring.service.MentoringVO;
import com.company.shopping.service.ShoppingVO;

public interface ShoppingMapper {
	
public int insertShopping(ShoppingVO vo);
	
	public int updateShopping(ShoppingVO vo);
	
	public int deleteShopping(ShoppingVO vo);
	
	public ShoppingVO getShopping(ShoppingVO vo);
	
	//양소민 추가
	public List<ShoppingVO> getSearchShopping(ShoppingVO vo); //마이페이지_수강중인 멘토링
	
	public List<ShoppingVO> getSearchPay(ShoppingVO vo); //마이페이지_결제내역
	
	// 김찬곤 추가
	public void insertMentoringBasket(MentoringVO vo); // 멘토 상세페이지_장바구니 담기
	public ShoppingVO BasketCheck(ShoppingVO vo); // 멘토 상세페이지_장바구니 중복 체크
}
