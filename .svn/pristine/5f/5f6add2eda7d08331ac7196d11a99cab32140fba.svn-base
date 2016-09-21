package com.djw.web.controller.student;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.djw.web.common.BaseController;
@Controller
public class StuLogin extends BaseController{
	@RequestMapping("/student/login")
	@ResponseBody
	public void stuLogin(@RequestParam(value="login_name")String stuName,
			@RequestParam(value="login_pass")String stuPass,
			@RequestParam(value="picCode")String code,HttpServletRequest request,
			HttpServletResponse response){
		if (code.equalsIgnoreCase((String) request.getSession().getAttribute("code"))) {
			Map<String, Object> stu=getServiceManager().getStudentService().stuLogin(stuName, stuPass);
			//List<Map<String, Object>> ac=getServiceManager().getActivityService().getActivity_Y();
			if (stu==null) {
				request.setAttribute("errMsg", "用户名或密码错误");
			}
			else{
				//查询已经报名的活动
				//List<Map<String, Object>> ac=getServiceManager().getStudentService().getStuEnroll_Y(stu.get("s_id").toString());
				request.getSession().setAttribute("stu", stu);
				try {
					response.sendRedirect(request.getContextPath()+"/jsp/user/welcome-user-1.jsp");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}		
		}
		else{
			request.setAttribute("errMsg", "验证码错误！");
			try {
				request.getRequestDispatcher("/jsp/admin/login.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
}
