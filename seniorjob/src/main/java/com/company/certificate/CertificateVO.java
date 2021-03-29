package com.company.certificate;

import lombok.Data;

@Data
public class CertificateVO {		//자격증
	private String certi_no;		//자격증번호
	private String resume_no;		//이력서번호
	private String certi_kinds;		//자격증항목
	private String certi_name;		//자격증명
	private String certi_place;		//발행처
	private String accept;		//합격구분
	private String certi_date;		//취득일
}
