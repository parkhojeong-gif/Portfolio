package com.company.shopping.service.impl;

import java.util.List;

import com.company.shopping.service.ShoppingVO;

public interface ShoppingMapper {
	
public int insertShopping(ShoppingVO vo);
	
	public int updateShopping(ShoppingVO vo);
	
	public int deleteShopping(ShoppingVO vo);
	
	public ShoppingVO getShopping(ShoppingVO vo);
	
	public List<ShoppingVO> getSearchShopping(ShoppingVO vo);

	
	public List<ShoppingVO> getSearchPay(ShoppingVO vo);
}
