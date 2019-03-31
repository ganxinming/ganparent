package cn.gan.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 拦截器,需要在springmvc配置文件里配置。
 */
public class Interceptor1 implements HandlerInterceptor{
	
	//preHandle在处理器映射器之前进行执行，在寻找controller之前
	//return false:拦截 return true:放行
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		System.out.println("这是第一个拦截器Interceptor1。。。preHandle");
		return true;
	}

	//调用Controller，还没返回视图前一刻执行
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		System.out.println("这是第一个拦截器Interceptor1。。。postHandle");
		
	}
	
	//返回modelAndView之后执行
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
					throws Exception {
		System.out.println("这是第一个拦截器Interceptor1。。。afterCompletion");
		
	}

}
