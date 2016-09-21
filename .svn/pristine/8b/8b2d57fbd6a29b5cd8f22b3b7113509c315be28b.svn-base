package com.djw.web.controller.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.djw.web.common.BaseController;
@Controller
public class StuRegist extends BaseController{
	@RequestMapping("student/regist")
	public ModelAndView stu_Regist(@RequestParam("name")String S_name,
			@RequestParam("gender")String S_gender,
			@RequestParam("qq")String S_qq,
			@RequestParam("id")String S_id,
			@RequestParam("phone")String S_phone,
			@RequestParam("idcard")String S_idcard,
			@RequestParam("email")String S_email,
			@RequestParam("teacher")String S_teacher,
			@RequestParam("t_phone")String S_teacher_tel,
			@RequestParam("system")String S_system,
			@RequestParam("size")String S_size,
			@RequestParam("team")String S_team,
			@RequestParam("view")String S_view){
		ModelAndView mv=new ModelAndView();
		if (getServiceManager().getStudentService().stuRegist(S_name, S_gender, S_qq, S_id, S_phone, S_idcard, S_email, S_teacher, S_teacher_tel, S_system, S_size, S_team, S_view)) {
			mv.setViewName("jsp/admin/login");
			return mv;
		}else{
			mv.addObject("errMsg", "注册失败！");
			mv.setViewName("jsp/user/member-add");
			return mv;
		}
		
	}
}
