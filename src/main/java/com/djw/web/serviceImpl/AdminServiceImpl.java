package com.djw.web.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;


import com.djw.web.common.BaseService;
import com.djw.web.service.AdminService;

@Service
public class AdminServiceImpl extends BaseService implements AdminService{

	@Override
	public boolean AdminLogin(String username,String pass) {
		Map<String, Object> admin=new HashMap<>();
		admin=getDaoManager().getAdminDao().adminLogin(username,pass);
		if (admin!=null) {
			getSession().setAttribute("admin_name", admin.get("admin_name"));
			return true;
		}
		return false;
	}

	@Override
	public List<Map<String, Object>> findStudent(String searchKey) {
		// TODO Auto-generated method stub
		return getDaoManager().getAdminDao().findStudent(searchKey);
	}
}
