package com.djw.web.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class DaoManager {
	@Autowired
	private AdminDao adminDao;
	@Autowired
	private EnrollDao enrollDao;
	@Autowired
	private StudentDao studentDao;
	@Autowired
	private ActivityDao activityDao;
	
	public ActivityDao getActivityDao() {
		return activityDao;
	}
	public EnrollDao getEnrollDao() {
		return enrollDao;
	}
	public StudentDao getStudentDao() {
		return studentDao;
	}
	public AdminDao getAdminDao() {
		return adminDao;
	}

}
