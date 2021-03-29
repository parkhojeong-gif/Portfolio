package com.company.businesspalnc.service;

import lombok.Data;

@Data
public class BusinessPlanCVO { 		//사업계획서c(선택)
	private String seq;		//사업계획서 글번호
	private String market_a;		//국내외 목표시장
	private String market_b;		//국내외 관련기술(제품)동향
	private String market_c;		//경쟁사현황
	private String market_d;		//시장진출가능성

}
