package com.djw.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceManager {
	@Autowired
	private AdminService userService;
	@Autowired
	private FileService fileService;
	@Autowired
	private EnrollService enrollService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private ActivityService activityService;
	
	public EnrollService getEnrollService() {
		return enrollService;
	}
	public ActivityService getActivityService() {
		return activityService;
	}
	public StudentService getStudentService() {
		return studentService;
	}
	public FileService getFileService() {
		return fileService;
	}
	public AdminService getUserService() {
		return userService;
	}

	
}
