package com.company.users.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.users.service.UsersService;
import com.company.users.service.UsersVO;

@Service
public class UsersServiceImpl implements UsersService {

	@Autowired UsersMapper dao;
	
	@Override
	public List<UsersVO> getUsersList() {
		return dao.getUsersList();
	}

	@Override
	public int insertUsers(UsersVO vo) {
		return dao.insertUsers(vo);
	}

	@Override
	public int updateUsers(UsersVO vo) {
		return dao.updateUsers(vo);
	}

	@Override
	public int deleteUsers(UsersVO vo) {
		return dao.deleteUsers(vo);
	}

	@Override
	public UsersVO getUsers(UsersVO vo) {
		return dao.getUsers(vo);
	}

}
