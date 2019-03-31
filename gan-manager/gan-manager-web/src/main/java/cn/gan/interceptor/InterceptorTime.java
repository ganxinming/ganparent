package cn.gan.interceptor;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class InterceptorTime  implements HandlerInterceptor{
    private  static  final Logger LOGGER= Logger.getLogger(InterceptorTime.class);
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
       long start=System.currentTimeMillis();
        System.out.println("开始时间是"+start);
       request.setAttribute("start",start);
       //返回ture才会去找下一个拦截器，如果没有就去找controller
       return  true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

        long end=System.currentTimeMillis();
        System.out.println("结束时间是:"+end);
        long start= (long) request.getAttribute("start");
        System.out.println("总共耗时:"+(end-start));

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
