package com.company.certificate.controller;

import lombok.Data;

@Data
public interface CertificateVO {
	private String certi_no;		//자격증 번호
	private String resume_no;		//이력서 번호
	private String certi_kinds;		//자격증 분류
	private String certi_name;		//자격증 이름
	private String certi_place;		//자격증 발급장소
	private String accept;			//합격여부
	private String certi_date;		//취득일
}
