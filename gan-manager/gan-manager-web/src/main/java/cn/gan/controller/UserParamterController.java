package cn.gan.controller;

import cn.gan.pojo.User;
import cn.gan.pojo.UserCustom;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**参数的封装，以及数据用c标签回显
 * RESTFUL风格设计
 * @author 12714
 */
@Controller
@RequestMapping("/user")
public class UserParamterController {


    @RequestMapping("")
    public  String user(){
        return  "user";
    }
    /**
     * 简单参数的封装,自动匹配
     * @return
     */
    @RequestMapping("/getPar")
    public void getPar(Integer id,String username,String[] hobby){
        System.out.println(id);
        System.out.println(username);
        for (String i:hobby){
            System.out.println(i);
        }
    }
    /**
     *对象封装,自动匹配
     */
    @RequestMapping("/getUser")
    public ModelAndView getUser(User user){
        System.out.println(user.getId());
        System.out.println(user.getUsername());
        for (String i:user.getHobby()){
            System.out.println(i);
        }
        //返回到前端
        ModelAndView model=new ModelAndView();
        model.setViewName("user");
        model.addObject("userObject",user);
        return  model;
    }

    /**
     * 对象中的单个对象封装,前端参数 对象名.属性
     * @param custom
     */
    @RequestMapping("/getUserCustom/user")
    public void getcustomUser(UserCustom custom){
        System.out.println(custom.getUser().getId());
        System.out.println(custom.getUser().getUsername());
        for (String i:custom.getUser().getHobby()){
            System.out.println(i);
        }
    }

    /**
     * 对象中的list对象封装,前端参数 List对象名[0].属性
     * @param custom
     */
    @RequestMapping("/getUserCustom/list")
    public ModelAndView getcustomList(UserCustom custom){
      List list= custom.getUserList();
      for (Object user : list){
          User user1=(User)user;
          System.out.println( user1.getId());
          System.out.println( user1.getUsername());

      }
        //返回到前端
        ModelAndView model=new ModelAndView();
        model.setViewName("user");
        model.addObject("list",list);
        return  model;
    }

    /**
     * 对象中的map对象封装 ，前端参数 Map对象名['键名']
     * @param custom
     */
    @RequestMapping("/getUserCustom/maps")
    public void getcustomMaps(UserCustom custom){
        Map<String,String> maps=custom.getMaps();
        for (Map.Entry<String,String> entry: maps.entrySet()){
            System.out.println("K="+entry.getKey());
            System.out.println("K="+entry.getValue());
        }
    }

    /**
     * url模板映射
     * restful风格设计
     * 这样设计好处，像以前就是?id=001,现在restful风格是http://.../001
     * 简约，美观
     */
    @RequestMapping("restful/{id}")
    public  void restfulTest(@PathVariable int id){
        System.out.println("id:"+id);
    }

}
