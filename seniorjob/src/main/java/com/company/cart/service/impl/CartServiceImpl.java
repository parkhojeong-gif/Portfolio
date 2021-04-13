package com.company.cart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.cart.service.CartService;
import com.company.cart.service.CartVO;

@Service
public class CartServiceImpl implements CartService{

	@Autowired CartMapper cartmapper;
	
	@Override
	public List<CartVO> getSearchCartList(CartVO vo) {
		return cartmapper.getSearchCartList(vo);
	}

	@Override
	public int insertCart(CartVO vo) {
		return cartmapper.insertCart(vo);
	}

	@Override
	public int deleteCart(CartVO vo) {
		return cartmapper.deleteCart(vo);
	}

	@Override
	public int updateCart(CartVO vo) {
		return cartmapper.updateCart(vo);
	}

	@Override
	public CartVO getCart(CartVO vo) {
		return cartmapper.getCart(vo);
	}

	@Override
	public int countCart(CartVO vo) {
		return cartmapper.countCart(vo);
	}

	@Override
	public int deleteCartAll(CartVO vo) {
		return cartmapper.deleteCartAll(vo);
	}

}
