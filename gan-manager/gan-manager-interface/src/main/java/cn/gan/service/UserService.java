package cn.gan.service;

import cn.gan.pojo.User;

import java.util.List;

public interface UserService {

	User getUserById(int id);
	User getUserByName(String name);
	int insertUserReturnId(User user);
	List<User> findAllUser();
	int deleteUser(int id);
	int updateUser(User user);
}
