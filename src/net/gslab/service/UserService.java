package net.gslab.service;

import java.util.List;

import net.gslab.entity.User;


public interface UserService extends BaseService<User>{

	void register(User user);

	List<User> listUsers();

	User getUserByName(String userName);

	void loginSuccess(User dbUser);

	List<User> listUsers(String groupName);

	User search(int userId);

	List<User> listUsersByAuth(String string);
	
}
