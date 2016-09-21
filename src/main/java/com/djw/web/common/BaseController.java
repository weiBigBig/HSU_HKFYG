package com.djw.web.common;

import org.springframework.beans.factory.annotation.Autowired;

import com.djw.web.service.ServiceManager;

public class BaseController extends CommonBase{
	@Autowired
	private ServiceManager serviceManager;

	public ServiceManager getServiceManager() {
		return serviceManager;
	}
}
