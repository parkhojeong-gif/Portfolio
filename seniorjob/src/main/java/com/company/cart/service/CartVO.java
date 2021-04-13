package com.company.cart.service;

import java.util.Arrays;
import java.util.stream.Collectors;

import lombok.Data;

@Data
public class CartVO {
	private String cart_no;         //장바구니 번호
	private String mentoring_name;  //멘토링 이름
	private String cart_price;		//가격
	private String cart_start;		//주문 시작일
	private String cart_end;		//주문 만료일
	private String id;				//아이디
	private String count;         
	private String mentor_id;
	
	String[] del;
	
	public String getdel1() {
		if(del == null) {
			return "";
		}
		String result = Arrays.asList(del).stream()
						.map(s -> "\"" + s + "\"")
						.collect(Collectors.joining(", "));
		return result;
	}
}
