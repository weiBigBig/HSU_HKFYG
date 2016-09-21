package com.djw.web.controller.student;

/*import java.io.IOException;
import java.io.PrintWriter;*/
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.djw.web.common.BaseController;

@Controller
public class StuDetailSearch extends BaseController{
	@RequestMapping(value="student/detailInfo", method=RequestMethod.POST)
	public ModelAndView getStuInfo(@RequestParam("s_id") String s_id){
		ModelAndView mv=new ModelAndView();
		Map<String, Object> map=new HashMap<>();
		map=getServiceManager().getStudentService().getStuInfo(s_id);
		if (map==null) {
			mv.addObject("errMsg", "抱歉，查询出错！");
			mv.setViewName("jsp/user/welcome-user-1");
		}else {
			mv.addObject("s_detail", map);
			mv.setViewName("jsp/user/member-show");
		}
		return mv;
	}
}
