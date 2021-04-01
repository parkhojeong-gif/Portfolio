package com.company.mentor.service;

import com.company.users.service.UsersVO;

import lombok.Data;

@Data
public class MentorUsersVO { //멘토
	private UsersVO users;
	private MentorVO mentors;
	
}
