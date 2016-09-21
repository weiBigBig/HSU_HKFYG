package com.djw.web.serviceImpl;



import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.djw.web.common.BaseService;
import com.djw.web.service.ActivityService;
@Service
public class ActivityServiceImpl extends BaseService implements ActivityService{

	@Override
	public boolean Ac_Issue(String ac_name, String ac_number, String ac_company, String ac_hour, String ac_begintime,
			String ac_endtime, String ac_starttime, String ac_introduce) {
		return getDaoManager().getActivityDao().Ac_Issue(ac_name, ac_number, ac_company, ac_hour, ac_begintime, ac_endtime, ac_starttime, ac_introduce);
	}

	@Override
	public List<Map<String, Object>> getAllActivity() {
		return getDaoManager().getActivityDao().getAllActivity();
	}

	@Override
	public List<Map<String, Object>> getActivity_Y() {
		List<Map<String, Object>> map=getDaoManager().getActivityDao().getActivity_Y();
		//计算出报名已经报名名额
/*		for (int i = 0; i < map.size(); i++) {
			map.get(i).put("hnumber", Integer.parseInt(map.get(i).get("number").toString())-Integer.parseInt(map.get(i).get("lnumger").toString()));
		}*/
		return map;
	}

}
