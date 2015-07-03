package net.gslab.dao;


import java.util.List;

import net.gslab.entity.User;

public interface UserDao extends BaseDao<User>{


	public User getUserByName(String username);
	
	public User getUserById(int id);

	public List<User> queryUserByUserName(String username);



}
