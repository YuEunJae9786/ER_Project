package com.erproject.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erproject.command.UserVO;
import com.erproject.user.mapper.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int join(UserVO vo) {
		
		return userMapper.join(vo);
	}

	@Override
	public int idCheck(UserVO vo) {
		
		return userMapper.idCheck(vo);
	}

	@Override
	public UserVO login(UserVO vo) {
		
		return userMapper.login(vo);
	}

	@Override
	public UserVO getInfo(String userId) {
		
		return userMapper.getInfo(userId);
	}

	@Override
	public int update(UserVO vo) {
	
		return userMapper.update(vo);
	}

	@Override
	public int delete(UserVO vo) {
		
		return userMapper.delete(vo);
	}


	


	


}
