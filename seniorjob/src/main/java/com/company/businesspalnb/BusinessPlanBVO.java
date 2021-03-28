package com.company.businesspalnb;

import lombok.Data;

@Data
public class BusinessPlanBVO {		//사업계획서b(선택)
	private String seq;		//사업계획서 글번호
	private String prod_a;		//제품(서비스)명
	private String prod_b;		//제품(서비스)소개
	private String prod_c;		//제품(서비스)차별성
}
