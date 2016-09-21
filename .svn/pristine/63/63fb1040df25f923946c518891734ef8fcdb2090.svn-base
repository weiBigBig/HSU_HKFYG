package com.djw.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Interceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("执行到了afterCompletion");
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("执行到了postHandle");
		//可以通过ModelandView参数来改变现实的视图，或修改视图方法
		//arg3.addObject("msg","这里传回的是被拦截器修改之后的消息！");
	}

	
	//返回值，表示我们是否需要将当前的请求拦截下来
	//  如果返回false，请求将被终止
	// 	如果返回true，请求会被继续进行
	//object arg2，表示的是被拦截的目标对象
	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("执行到了preHandle");
		return true;
	}

}
