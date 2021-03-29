package com.company.shopping;

import lombok.Data;

@Data
public class ShoppingVO { //주문정보
	private String shopping_no; //주문번호
	private String id; //아이디
	private String mentoring_number; // 멘토링 코스 번호
	private String s_date; //주문일
	private String men_start; //멘토링 시작일
	private String met_end; //멘토링 종료일
}
