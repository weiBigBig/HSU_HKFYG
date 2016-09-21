package com.djw.web.controller.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.djw.web.common.BaseController;
import com.djw.web.entity.Activity;
import com.djw.web.entity.Student;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@Controller
@RequestMapping(value="/student")
public class StuActivity extends BaseController{
	@RequestMapping(value="/get_stu_activity" )
	public void getActivity_Y(@RequestParam("s_id")String s_id,
			HttpServletRequest request,
			HttpServletResponse response){
		System.out.println("进入");
		//查询已经报名的活动
		List<Map<String, Object>> ac=getServiceManager().getStudentService().getStuEnroll_Y(s_id);
		System.out.println(ac.get(0).get("ac_name"));
		JSONObject activity=new JSONObject();
		JSONArray result=null;
		result =new JSONArray();
		for (int i = 0; i < ac.size(); i++) {
			JSONObject jsonPart=new JSONObject();
			jsonPart.put("ac_id", ac.get(i).get("ac_id"));
			jsonPart.put("ac_name", ac.get(i).get("ac_company"));
			jsonPart.put("ac_name", ac.get(i).get("ac_name"));
			result.add(jsonPart);
		}
		activity.put("activities", result.toString());
		
		PrintWriter out;
		
			try {
				out = response.getWriter();
				activity.write(out);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
}