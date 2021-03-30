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
	private String prod_a;		//제품(서비스)명
	private String prod_b;		//제품(서비스)소개
	private String prod_c;		//제품(서비스)차별성
	private String market_a;		//국내외 목표시장
	private String market_b;		//국내외 관련기술(제품)동향
	private String market_c;		//경쟁사현황
	private String market_d;		//시장진출가능성
	private String selling_a;		//제품홍보방법
	private String selling_b;		//수익창출방안
	private String selling_c;		//시장성공요인 
}
