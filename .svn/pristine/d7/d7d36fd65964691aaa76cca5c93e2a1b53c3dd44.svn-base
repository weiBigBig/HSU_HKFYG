package com.djw.web.controller.enroll;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.djw.web.common.BaseController;

@Controller
public class EnrollerInfo extends BaseController{
	@RequestMapping("/enroll/enrollerInfo")
	@ResponseBody
	public ModelAndView GetEnrollerInfo(@RequestParam("E_name")String E_name,
			@RequestParam("E_gender")String E_gender,
			@RequestParam("E_qq")String E_qq,
			@RequestParam("E_id")String E_id,
			@RequestParam("E_phone")String E_phone,
			@RequestParam("E_idcard")String E_idcard,
			@RequestParam("E_email")String E_email,
			@RequestParam("E_teacher")String E_teacher,
			@RequestParam("E_teacher_tel")String E_teacher_tel,
			@RequestParam("E_system")String E_system,
			@RequestParam("E_size")String E_size,
			@RequestParam("E_team")String E_team,
			@RequestParam("E_view")String E_view){
		getServiceManager().getEnrollService().EnrollInfo(E_name, E_gender, E_qq, E_id, E_phone, E_idcard, 
				E_email, E_teacher, E_teacher_tel, E_system, E_size, E_team, E_view);
		/*System.out.println(E_name);
		System.out.println(E_gender);
		System.out.println(E_qq);
		System.out.println(E_id);
		System.out.println(E_phone);
		System.out.println(E_idcard);
		System.out.println(E_email);
		System.out.println(E_teacher);
		System.out.println(E_teacher_tel);
		System.out.println(E_system);
		System.out.println(E_size);
		System.out.println(E_team);
		System.out.println(E_view);*/
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index1.jsp");
		return mv;
	}
}
