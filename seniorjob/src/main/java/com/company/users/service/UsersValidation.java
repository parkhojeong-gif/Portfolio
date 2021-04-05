package com.company.users.service;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class UsersValidation implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		UsersVO users = (UsersVO)target;
		//id 체크
		if(users.getId() == null || users.getId().isEmpty())
			errors.rejectValue("id", null, "※아이디를 입력해주세요");
		//password 체크
		if(users.getPassword() == null || users.getPassword().isEmpty())
			errors.rejectValue("password", null, "※패스워드를 입력해주세요");
		//address 체크
		if(users.getAddress() == null || users.getAddress().isEmpty())
			errors.rejectValue("address", null, "※주소를 입력해주세요");
		//전화번호 체크
		if(users.getPhonenum() == null || users.getPhonenum().isEmpty())
			errors.rejectValue("phonenum", null, "※전화번호를 입력해주세요");
		//email 체크
		if(users.getEmail() == null || users.getEmail().isEmpty())
			errors.rejectValue("email", null, "※이메일을 입력해주세요");
		//생년월일 체크
		if(users.getBirth() == null || users.getBirth().isEmpty())
			errors.rejectValue("birth", null, "※생년월일을 입력해주세요");
		//이름 체크 
		if(users.getName() == null || users.getName().isEmpty())
			errors.rejectValue("name", null, "※이름을 입력해주세요");
	}

}
