package edu.seu.cs.mapper2;

import org.apache.ibatis.annotations.Param;

import edu.seu.cs.model.User;
import edu.seu.cs.model.UserInMysql;

public interface UserMapper2 {
	public UserInMysql selectByName(@Param("name")String name, @Param("password")String password);
	public void updatePsd(int id, String newPsd);
	public String selectPsd(int id);
}
