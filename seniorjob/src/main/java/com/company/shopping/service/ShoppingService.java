package com.company.shopping.service;

import java.util.List;


public interface ShoppingService {
	
public int insertShopping(ShoppingVO vo);
	
	public int updateShopping(ShoppingVO vo);
	
	public int deleteShopping(ShoppingVO vo);
	
	public ShoppingVO getShopping(ShoppingVO vo);
	
	public List<ShoppingVO> getSearchShopping(ShoppingVO vo);

	public List<ShoppingVO> getSearchPay(ShoppingVO vo);

	
}
