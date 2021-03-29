package com.company.businesspalna.service;

import lombok.Data;

@Data
public class BusinessPalnAVO { //사업계획서a(필수)
	private String seq;		//사업계획서 글번호
	private String business_a;		//사업의 배경과 필요성
	private String business_b;		//사업의 목적
	private String business_c;		//사업 기대효과
	private String id;		//작성자
	private String collection;		//지도내용
}
