package edu.seu.cs.service;

import edu.seu.cs.model.User;
import edu.seu.cs.model.UserInMysql;

public interface UserService {
	public User selectByName(String userName);
	public User login(String shortName);
	public UserInMysql login(String name, String password);
	public int changePsd(int id, String oldPsd, String newPsd);
}
