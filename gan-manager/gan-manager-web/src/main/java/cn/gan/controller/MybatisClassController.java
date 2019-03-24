package cn.gan.controller;

import cn.gan.pojo.SClass;
import cn.gan.pojo.Student;
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

    /**
     * 一对一
     * @param id
     */
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

    /**
     * 一对多
     * @param id
     */
    @RequestMapping("/getSclass1/{id}")
    public void getSclass1(@PathVariable int id) {
        SClass sClass= classService.findClassAndStudent(id);
        System.out.println("SClass的id："+sClass.getcId());
        System.out.println("SClass的名字："+sClass.getClassName());
        System.out.println("teacher的id："+sClass.getTeacher().gettId());
        System.out.println("teacher的名字:"+sClass.getTeacher().gettName());
        System.out.println("teacher的cid:"+sClass.getTeacher().getcId());
        for (Student s:sClass.getStudent()){
            System.out.println("student的id："+s.getsId());
            System.out.println("student的名字："+s.getsName());
            System.out.println("student的cid："+s.getcId());
        }
        return  ;
    }
}
