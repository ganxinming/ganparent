package cn.gan.controller;

import cn.e3mall.pojo.TbItem;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class SpringMVCController {

    /**
     * 时间类型转换，springmvc默认不封装这种1997-07-28时间格式，
     * 所以会导致这种时间类型会为空，所以加入这个时间转换器，
     * 他会在参数接受前，将需要转换的参数进行转换，转成yyyy/MM/dd
     * 默认之前执行，牛逼.
     * 但是这个只能针对yyyy-MM-dd，对于别的类型，可以自己改造
     * @param request
     * @param binder
     */
    @InitBinder
    public void initBinder(HttpServletRequest request,
                           ServletRequestDataBinder binder){
        String str = request.getParameter("created");
        if(str.contains("/")){

            binder.registerCustomEditor(Date.class,
                    new CustomDateEditor(new SimpleDateFormat("yyyy/MM/dd"), true));
        }else{

            binder.registerCustomEditor(Date.class,
                    new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
        }
    }

    /**
     * ModeAndView的使用，即可以存值，也可以作为视图
     * @return
     */
    @RequestMapping("/getIndex")
    public ModelAndView getIndex(){
        ModelAndView view=new ModelAndView();
        view.addObject("hello","SpringMvc-First");
        view.setViewName("index");
        return view;
    }

    //测试时间类型
    @RequestMapping("/getItem")
    public void getItem(TbItem item){
        System.out.println(item.getCreated());
    }

    //转发
    @RequestMapping("/testForward")
    public String testForward(){
        return  "forward: /user";
    }
    //重定向
    @RequestMapping("/testRedict")
    public String testRedict(){
        return  "redirect: /user";
    }

}
