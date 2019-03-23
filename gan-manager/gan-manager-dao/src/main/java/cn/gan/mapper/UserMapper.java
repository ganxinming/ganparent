package cn.gan.mapper;

import cn.gan.pojo.User;

import java.util.List;

/**
 * 用于User的测试,测试UserMapper的各种写法
 */
public interface UserMapper {
     User findUserById(int id);
     User findUserByName(String name);
     int insertUser(User user);
     List<User> findAllUser();
     int deleteUser(int id);
     int updateUser(User user);

}
