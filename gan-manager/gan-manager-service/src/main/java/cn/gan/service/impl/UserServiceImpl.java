package cn.gan.service.impl;

import cn.gan.mapper.UserMapper;
import cn.gan.pojo.User;
import cn.gan.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 *
 */
@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userMapper;

	@Override
	public User getUserById(int id) {
		User user=userMapper.findUserById(id);
		return user;
	}

	@Override
	public User getUserByName(String name) {
		User user=userMapper.findUserByName(name);
		return  user;
	}

	@Override
	public int insertUserReturnId(User user) {
		int id=userMapper.insertUser(user);
		return id;
	}

	@Override
	public List<User> findAllUser() {
		List<User> users=userMapper.findAllUser();
		return users;
	}

	@Override
	public int deleteUser(int id) {
		int status=userMapper.deleteUser(id);
		return status;
	}

	@Override
	public int updateUser(User user) {
		int status=userMapper.updateUser(user);
		return status;
	}

}
