package com.djw.web.controller.admin.activity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.djw.web.common.BaseController;

@Controller
public class Issue extends BaseController{
	@RequestMapping(value="admin/activity/issue",method=RequestMethod.POST)
	public ModelAndView ActivitiIssue(@RequestParam("ac_name")String ac_name,
			@RequestParam("ac_number")String ac_number,
			@RequestParam("ac_company")String ac_company,
			@RequestParam("ac_hour")String ac_hour,
			@RequestParam("ac_begintime")String ac_begintime,
			@RequestParam("ac_endtime")String ac_endtime,
			@RequestParam("ac_starttime")String ac_starttime,
			@RequestParam("ac_introduce")String ac_introduce){
		ModelAndView mv=new ModelAndView();
		if (getServiceManager().getActivityService().Ac_Issue(ac_name, ac_number, ac_company, ac_hour, ac_begintime, ac_endtime, ac_starttime, ac_introduce)) {
			System.out.println("issue success");
			mv.setViewName("jsp/admin/active/active-list");
		}else {
			mv.addObject("errMsg", "添加活动失败！");
			mv.setViewName("jsp/admin/index");
		}
		return mv;
	}
}
