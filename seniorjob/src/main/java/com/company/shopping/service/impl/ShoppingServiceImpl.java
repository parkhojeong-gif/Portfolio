package com.company.shopping.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.shopping.service.ShoppingService;
import com.company.shopping.service.ShoppingVO;

@Service
public class ShoppingServiceImpl implements ShoppingService {

	@Autowired ShoppingMapper dao;
	
	@Override
	public int insertShopping(ShoppingVO vo) {
		return dao.insertShopping(vo);
	}

	@Override
	public int updateShopping(ShoppingVO vo) {
		return dao.updateShopping(vo);
	}

	@Override
	public int deleteShopping(ShoppingVO vo) {
		return dao.deleteShopping(vo);
	}

	@Override
	public ShoppingVO getShopping(ShoppingVO vo) {
		return dao.getShopping(vo);
	}

	@Override
	public List<ShoppingVO> getSearchShopping(ShoppingVO vo) {
		return dao.getSearchShopping(vo);
	}


}
