package com.djw.web.DaoImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.djw.web.Dao.AdminDao;
import com.djw.web.common.BaseDao;

@Repository
public class AdminDaoImpl extends BaseDao implements AdminDao{
	
	//private static final String SQL_LOGIN="CALL PRO_USERSINFO(?,?)";
	private static final String LOGIN="SELECT * FROM admin WHERE ADMIN_NAME=? and ADMIN_PASS=?";
	@Override
	public Map<String, Object> adminLogin(String admin_name,String admin_pass) {
		// TODO Auto-generated method stub
		Map<String, Object> adminMap=new HashMap<>();
		try {
			adminMap=getJt().queryForMap(LOGIN,new Object[]{admin_name,admin_pass});
		} catch (Exception e) {
			return null;
		}
		return adminMap;
	}
	private static final String STUDENT_LIST="SELECT * FROM student WHERE s_name LIKE ?";
	@Override
	public List<Map<String, Object>> findStudent(String searchKey) {
		List<Map<String, Object>> maps=new ArrayList<>();
		maps=getJt().queryForList(STUDENT_LIST,new Object[]{searchKey});
		return maps;
		//return getPagingList(STUDENT_LIST,new Object[]{searchKey});
	}

}
