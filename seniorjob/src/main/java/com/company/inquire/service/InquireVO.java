package com.company.inquire.service;

import lombok.Data;

@Data
public class InquireVO {  //문의하기
	private String seq; 	//글번호
	private String category_a;		//대분류
	private String category_b;		//중분류
	private String w_date;		//작성일자
	private String click;		//조회수
	private String content;		//글내용
	private String i_file;		//첨부파일
	private String status;		//문의상태
	private String id;		//아이디
	private String title;
}
