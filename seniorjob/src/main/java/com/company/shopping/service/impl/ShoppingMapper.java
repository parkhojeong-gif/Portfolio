package com.company.shopping.service.impl;

import java.util.List;

import com.company.shopping.service.ShoppingVO;

public interface ShoppingMapper {
	
public int insertShopping(ShoppingVO vo);
	
	public int updateShopping(ShoppingVO vo);
	
	public int deleteShopping(ShoppingVO vo);
	
	public ShoppingVO getShopping(ShoppingVO vo);
	
	//양소민 추가
	public List<ShoppingVO> getSearchShopping(ShoppingVO vo); //마이페이지_수강중인 멘토링
	
	public List<ShoppingVO> getSearchPay(ShoppingVO vo); //마이페이지_결제내역
}
