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
		UsersVO users = (UsersVO) target;

	}

}
