package edu.seu.cs.service;

import edu.seu.cs.model.User;

public interface UserService {
	public User selectByName(String userName);
	public User login(String shortName);
}
