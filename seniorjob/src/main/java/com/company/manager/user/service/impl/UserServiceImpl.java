package com.company.manager.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.manager.user.userVO;
import com.company.manager.user.service.UserService;
import com.company.manager.utils.PagingVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired manUserMapper dao;
	
	@Override
	public List<userVO> userList(userVO vo) {
		
		return dao.userList(vo);
	}

	@Override
	public List<userVO> selectBoard(PagingVO vo) {
		
		return dao.selectBoard(vo);
	}

	@Override
	public int countBoard() {
		
		return dao.countBoard();
	}

	@Override
	public userVO getUserList(userVO vo) {
		
		return dao.getUserList(vo);
	}

	@Override
	public int updateUser(userVO vo) {
		
		return dao.updateUser(vo);
	}

	@Override
	public int deleteUser(userVO vo) {
		
		return dao.deleteUser(vo);
	}

	@Override
	public int authUser(userVO vo) {
		
		return dao.authUser(vo);
	}
	
	

}
