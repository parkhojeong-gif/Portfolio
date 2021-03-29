package com.company.businesspalnd.service;

import lombok.Data;

@Data
public class BusinessPlanDVO {		//사업계획서d(선택)
	private String seq;		//사업계획서글번호
	private String selling_a;		//제품홍보방법
	private String selling_b;		//수익창출방안
	private String selling_c;		//시장성공요인  
}
