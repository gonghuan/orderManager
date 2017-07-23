package edu.seu.cs.mapper;

import edu.seu.cs.model.User;

public interface UserMapper {
	public User selectByName(String name);
	public void updatePsd(int id, String newPsd);
	public String selectPsd(int id);
}
