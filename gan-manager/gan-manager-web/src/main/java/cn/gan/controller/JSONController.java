package cn.gan.controller;

import cn.gan.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/json")
public class JSONController {
    @RequestMapping("")
    public String jsonJsp(){
        return "jsonTest";
    }

    /**
     *   返回JSON数据给前端
     * @param user
     * @return
     */
    @RequestMapping("/testJson")
    @ResponseBody
    public User testJson(@RequestBody User user){
        System.out.println(user);
        for (String value:user.getHobby()){
            System.out.println(value);
        }
    return user;
    }
    /**
     * 前端展示json数据
     */
    @RequestMapping("/testJson1")
    @ResponseBody
    public  User testJson1(){
       User user=new User();
       user.setId(1);
       user.setUsername("将");
        return user;
    }
}
