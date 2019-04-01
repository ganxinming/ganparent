package cn.gan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

/**参数的封装，以及数据用c标签回显
 * RESTFUL风格设计
 * @author 12714
 */
@Controller
@RequestMapping("/ftl")
public class FreemarkerController {


    @RequestMapping("/getFtl")
        public  String getFtl(Model model){
            model.addAttribute("hello","第一个flt");
            return "ftl";
    }
    @RequestMapping("/getDemo")
    public  String getDemo(Model model){
        boolean flag=true;
        model.addAttribute("helloFreeMarker","你好啊！这是通过${}取值");
        //flag值在这里是true，在ftl里是yes或者on
        model.addAttribute("flag",flag);
        //空值可以用默认值代替！
        model.addAttribute("nullValue",null);
        Date date1=new Date();
        model.addAttribute("date1",date1);

        List<String> listString=new ArrayList<>();
        listString.add("123");
        listString.add("456");
        listString.add("789");
        listString.add(null);
        model.addAttribute("listString",listString);

        Map<String,Object> mapFreeMarker=new HashMap<>();
        mapFreeMarker.put("姓名","Freemarker");
        mapFreeMarker.put("语言","java");
        mapFreeMarker.put("类型","模板语言");
        model.addAttribute("mapFreeMarker",mapFreeMarker);

        return "demo";
    }
}
