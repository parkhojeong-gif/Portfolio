package com.company.manager.declaration;

import java.util.Date;

import lombok.Data;
@Data
public class declarationVO {
	//declaration
	private int dec_num;
	private String dec_title;
	private String dec_content;
	private Date dec_date;
	private String dec_measure;
	private String dec_dela;
	private String dec_defend;
	private Date dec_start;
	private Date dec_end;
}
