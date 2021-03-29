package com.company.service_center;

import lombok.Data;

@Data
public class Service_CenterVO { 		//고객센터
	private String seq;		//글번호
	private String category_a;		//대분류
	private String category_b;		//중분류
	private String w_date;		//작성일자
	private String click;		//조회수
	private String content;		//글내용
	private String s_file;		//첨부파일
	private String id;		//아이디
}
