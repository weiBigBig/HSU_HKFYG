package com.djw.web.controller.admin.student;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.djw.web.common.BaseController;
@Controller
public class StuList extends BaseController{
	@RequestMapping("admin/studentList")
	@ResponseBody
	public ModelAndView StudentList(){
		ModelAndView mv=new ModelAndView();
		String searchKey=getRequest().getParameter("searchBox").trim();
		if (searchKey==null || searchKey.equals("")) {
			searchKey="%";
		}else {
			searchKey="%"+searchKey+"%";
		}
		//PagingList result =getServiceManager().getUserService().findStudent(searchKey);
		List<Map<String, Object>> sList=getServiceManager().getUserService().findStudent(searchKey);
/*		System.out.println(result.getList().size());
		for(int i=0;i<result.getList().size();i++){
			System.out.println(result.getList().get(i));
		}*/
		mv.addObject("results", sList);
		mv.setViewName("jsp/admin/member/member-list");
		return mv;
	}
}
