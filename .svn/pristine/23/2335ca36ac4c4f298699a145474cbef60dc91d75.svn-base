package com.djw.web.Dao;

import java.util.List;
import java.util.Map;

public interface ActivityDao {
	/**
	 * 把活动数据写入数据库
	 * @param ac_name
	 * @param ac_number
	 * @param ac_company
	 * @param ac_hour
	 * @param ac_begintime
	 * @param ac_endtime
	 * @param ac_starttime
	 * @param ac_introduce
	 * @return
	 */
	public boolean Ac_Issue(String ac_name,String ac_number,String ac_company,String ac_hour,String ac_begintime,
			String ac_endtime,String ac_starttime,String ac_introduce);
	/**
	 * 
	 * @return 活动的list集合
	 */
	public List<Map<String, Object>> getAllActivity();
	/**
	 * 获取可以报名的活动
	 * @return 可以报名的活动信息
	 */
	public List<Map<String, Object>> getActivity_Y();
}
