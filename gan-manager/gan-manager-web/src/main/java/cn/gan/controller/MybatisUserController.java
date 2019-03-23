package cn.gan.controller;

import cn.gan.pojo.User;
import cn.gan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/user")
public class MybatisUserController {
    /**
     * 查询user返回
     *以下所有方法，因为都有返回值，但是大部分都不是视图，所以前后端都会报错，不用在意
     * 数据库的确是影响了
     * @param
     * @return
     */
    @Autowired
    private UserService userService;

    //通过id得到user
    @RequestMapping("/getUserById/{id}")
    @ResponseBody
    public User getUserById(@PathVariable int id) {
        User user = userService.getUserById(id);
        return user;
    }

    //在get请求后面传参数，通过名字来筛选
    @RequestMapping("/getUserByName")
    @ResponseBody
    public User getUserByName(String name) {
        System.out.println(name);
        User user = userService.getUserByName(name);
        return user;
    }
    //进入添加用户jsp
    @RequestMapping("/insertJsp")
    public String insertJsp() {
        return "insertJsp";
    }
    /**
     * 自增主键返回指的是插入数据时，已经分好id值了，而不是insert方法返回的int值
     * 这个id值，需要通过getid()方法得到,这个insert的值指的是影响的行数
     */
    @RequestMapping("/insertUserReturnId")
    public int insertUserReturnId(User user) {
        System.out.println(user.getUsername());
        userService.insertUserReturnId(user);
        int id=user.getId();
        System.out.println(id);
        return  id;
    }
    @RequestMapping("/findAllUser")
    public List<User> findAllUser(){
        List<User> users=userService.findAllUser();
        for (User user:users){
            System.out.println("id是:"+user.getId());
            System.out.println("名字是"+user.getUsername());
            System.out.println("爱好是"+user.getHobby());
        }
        return users;
    }

    @RequestMapping("/deleteUser/{id}")
    public int deleteUser(@PathVariable int id){
        int status=userService.deleteUser(id);
        System.out.println("deleteUser"+status);
        return  status;
    }

    @RequestMapping("/updateUser")
    public  int updateUser(User user){
        int status=userService.updateUser(user);
        System.out.println("updateUser"+status);
        return  status;
    }

}
