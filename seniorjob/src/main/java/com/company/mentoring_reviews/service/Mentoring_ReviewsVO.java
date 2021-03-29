package com.company.mentoring_reviews.service;

import lombok.Data;

@Data
public class Mentoring_ReviewsVO { //멘토링 후기
	private String seq;		//글번호
	private String 	category_a;		//대분류
	private String category_b;		//중분류
	private String w_date;		//작성일자
	private String click;		//조회수
	private String content;		//글내용
	private String r_file;		//첨부파일
	private String id;		//아이디
	private String mentoring_number;		//멘토링 코스 번호
}
