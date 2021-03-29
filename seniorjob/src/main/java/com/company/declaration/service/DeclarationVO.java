package com.company.declaration.service;

import lombok.Data;

@Data
public class DeclarationVO { 		//신고
	private String dec_num;		//글번호
	private String dec_title;		//신고제목
	private String dec_content;		//신고내용
	private String dec_date;		//작성일자
	private String dec_measure;		//신고조치
	private String dec_dela;		//고소인
	private String dec_defend;		//피고인
	private String dec_start;		//제재시작
	private String dec_end;		//제재끝
}
