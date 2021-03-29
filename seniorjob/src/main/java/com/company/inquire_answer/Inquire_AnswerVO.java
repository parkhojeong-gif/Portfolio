package com.company.inquire_answer;

import lombok.Data;

@Data
public class Inquire_AnswerVO { 		//문의답변
	private String seq;		//글번호
	private String title;		//제목
	private String content;		//내용
	private String w_date;		//작성일자
	private String id;		//아이디
}
