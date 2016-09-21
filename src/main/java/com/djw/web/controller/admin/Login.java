package com.djw.web.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.djw.web.common.BaseController;
@Controller
public class Login extends BaseController {
	@RequestMapping("/admin/login")
	@ResponseBody
	public ModelAndView adminLogin(@RequestParam("login_name")String admin_name,
			@RequestParam("login_pass")String admin_pass,
			@RequestParam("picCode")String picCode){
		ModelAndView mv=new ModelAndView();
		getResponse().setContentType("text/html;charset=UTF-8");
		if (picCode.equalsIgnoreCase((String)getSession().getAttribute("code"))) {
			if (getServiceManager().getUserService().AdminLogin(admin_name, admin_pass)) {
				mv.setViewName("/jsp/admin/index");
			}else {
				PrintWriter out;
				try {
					out = getResponse().getWriter();
					out.flush();
					out.println("<script>");
					out.println("alert('用户名或密码错误，请重新输入！');");
				    out.println("history.back();");
				    out.println("</script>");
				    return null;
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}else{
			try {
				PrintWriter out=getResponse().getWriter();
				out.flush();
				out.println("<script>");
				out.println("alert('验证码输入错误，请重新输入！');");
			    out.println("history.back();");
			    out.println("</script>");
			    return null;
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return mv;
	}
}
