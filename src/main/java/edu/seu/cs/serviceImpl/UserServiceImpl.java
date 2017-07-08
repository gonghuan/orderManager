package edu.seu.cs.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.seu.cs.mapper.UserMapper;
import edu.seu.cs.model.User;
import edu.seu.cs.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	
	@Resource(name="userMapper")
	private UserMapper userMapper;
	
	@Override
	public User selectByName(String userName) {
		// TODO Auto-generated method stub
		return userMapper.selectByName(userName);
	}

	@Override
	public User login(String shortName) {
		// TODO Auto-generated method stub
		return userMapper.selectByName(shortName);
	}

}
