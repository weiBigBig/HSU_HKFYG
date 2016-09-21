package com.djw.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.djw.web.common.BaseController;
/**
 * TODO 控制层代码
 * @author mark
 */
@Controller
public class MyController extends BaseController{
	
	@RequestMapping("/login") //用来处理前台的login请求
	private @ResponseBody ModelAndView hello(
			@RequestParam(value = "username", required = false)String username,
			@RequestParam(value = "password", required = false)String password
			){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		mv.addObject("msg","从viewAll方法传回视图的数据！");
		System.out.println("nicenicenice");
		getServiceManager().getUserService().AdminLogin(username, password);
		System.out.println(username+":"+password);
		return mv;
		
	}
	@RequestMapping("registe") //用来处理前台的registe请求
	private @ResponseBody ModelAndView registe(
			@RequestParam(value = "username", required = false)String username,
			@RequestParam(value = "password", required = false)String password
			){
		System.out.println("nicenicenice");
		//serviceManager.getUserService().userLogin(username, password);
		System.out.println(username+":"+password);
		return new ModelAndView("login");
	}

}
