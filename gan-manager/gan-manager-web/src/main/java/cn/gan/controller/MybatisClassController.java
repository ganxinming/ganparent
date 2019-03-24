package cn.gan.controller;

import cn.gan.pojo.SClass;
import cn.gan.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Sclass")
public class MybatisClassController {

    @Autowired
    private ClassService classService;

    //通过id得到user
    @RequestMapping("/getSclass/{id}")
    public void getSclass(@PathVariable int id) {
        SClass sClass= classService.findClass(id);
        System.out.println("SClass的id："+sClass.getcId());
        System.out.println("SClass的名字："+sClass.getClassName());
        System.out.println("teacher的id："+sClass.getTeacher().gettId());
        System.out.println("teacher的名字:"+sClass.getTeacher().gettName());
        System.out.println(sClass.getTeacher().getcId());
        return  ;
    }

}
