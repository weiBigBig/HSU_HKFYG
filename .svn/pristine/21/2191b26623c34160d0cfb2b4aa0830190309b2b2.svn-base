package com.djw.web.serviceImpl;

import org.springframework.stereotype.Service;

import com.djw.web.common.BaseService;
import com.djw.web.service.EnrollService;

@Service
public class EnrollServiceImpl extends BaseService implements EnrollService{

	@Override
	public boolean EnrollInfo(String E_name, String E_gender, String E_qq, String E_id, String E_phone, String E_idcard,
			String E_email, String E_teacher, String E_teacher_tel, String E_system, String E_size, String E_team,
			String E_view) {
		getDaoManager().getEnrollDao().enrollInfo(E_name, E_gender, E_qq, E_id, E_phone, E_idcard, E_email, E_teacher, E_teacher_tel, E_system, E_size, E_team, E_view);
		return false;
	}

}
