package edu.seu.cs.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.seu.cs.mapper.UserMapper;
import edu.seu.cs.mapper2.UserMapper2;
import edu.seu.cs.model.User;
import edu.seu.cs.service.UserService;
import edu.seu.cs.model.UserInMysql;

@Service
public class UserServiceImpl implements UserService {
	
	@Resource(name="userMapper")
	private UserMapper userMapper;
	
	@Resource(name="userMapper2")
	private UserMapper2 userMapper2;
	
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
	
	public UserInMysql login(String name, String password){
		return userMapper2.selectByName(name, password);
	}

	@Override
	public int changePsd(int id, String oldPsd, String newPsd) {
		// TODO Auto-generated method stub
		if(oldPsd != userMapper2.selectPsd(id)){
			return -1;
		}else{
			userMapper2.updatePsd(id, newPsd);
			return 1;
		}
	}

}
