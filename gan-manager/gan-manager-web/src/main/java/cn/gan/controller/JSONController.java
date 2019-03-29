package cn.gan.controller;

import cn.gan.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Ajax和json
 */
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
        System.out.println(user.toString());
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
    @RequestMapping("/Ajax1")
    public  String Ajax1(){

        return "../jq/Ajax1";
    }

    @RequestMapping("/getAjaxLoad")
    public  String getAjaxLoad(User user){
        System.out.println(user.toString());
        return  "../jq/jqueryTest16";
    }
    @RequestMapping("/getAjaxPost")
    @ResponseBody
    public  User getAjax1(User user){
        System.out.println(user.toString());
        return user;
    }

    @RequestMapping(value = "/getAjaxGet",method = RequestMethod.GET)
    @ResponseBody
    public  User getAjax2(User user){
        System.out.println(user.toString());
        return user;
    }
}
