package com.djw.web.controller.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.djw.web.common.BaseController;

@Controller
@RequestMapping(value="student")
public class StuEnroll extends BaseController{
	@RequestMapping(value="/preEnroll")
	public ModelAndView stuPreEnroll(@RequestParam("ac_id")String ac_id,
			@RequestParam("s_id")String s_id){
		ModelAndView mv=new ModelAndView();	
		Map<String, Object>	map=getServiceManager().getStudentService().getStuInfo(s_id);
		map.put("ac_id", ac_id);
		mv.addObject("stu", map);
		mv.setViewName("jsp/user/member-add");
		return mv;
	}
	@RequestMapping(value="/enroll")
	public ModelAndView stuEnroll(@RequestParam("ac_id")String ac_id,
			@RequestParam("id")String s_id){
		ModelAndView mv=new ModelAndView();
		
		if (getServiceManager().getStudentService().stuEnroll(s_id, ac_id)) {	

			PrintWriter out;
			try {
				System.out.println("out");
				out = getResponse().getWriter();
				out.flush();		     
				out.println("<script>");
			    out.println("var index = parent.layer.getFrameIndex(window.name);");
			    out.println("parent.$('.btn-refresh').click();");
			    out.println("parent.location.reload();");
			    out.println(" parent.layer.close(index);");
			    out.println("</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Map<String, Object> stu=new HashMap<>();
			stu.put("s_id", getSession().getAttribute("s_id"));
			stu.put("s_name", getSession().getAttribute("s_name"));
			mv.addObject("stu", stu);
			List<Map<String, Object>> ac=getServiceManager().getStudentService().getStuEnroll_Y(stu.get("s_id").toString());
			mv.addObject("activities", ac);
			System.out.println(ac.get(0).get("enroll"));
			mv.setViewName("jsp/user/welcome-user-1");
		}
		return mv;
	}
}
