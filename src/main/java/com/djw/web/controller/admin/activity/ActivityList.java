package com.djw.web.controller.admin.activity;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.djw.web.common.BaseController;
@Controller
public class ActivityList extends BaseController{
	@RequestMapping("admin/activity/alllist")
	public ModelAndView getAllactivity(){
		ModelAndView mv=new ModelAndView();
		List<Map<String, Object>> ac=getServiceManager().getActivityService().getAllActivity();//查询所有活动列表
		mv.addObject("activities", ac);
		mv.setViewName("jsp/admin/active/active-list");
		return mv;
	}
}
