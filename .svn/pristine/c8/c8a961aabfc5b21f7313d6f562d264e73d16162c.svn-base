package com.djw.web.service;

import java.util.List;
import java.util.Map;

public interface ActivityService{
	/*
	 * 向数据库写入活动，并判断是否成功
	 */
	public boolean Ac_Issue(String ac_name,String ac_number,String ac_company,String ac_hour,String ac_begintime,
			String ac_endtime,String ac_starttime,String ac_introduce);
	/**
	 * 查询所有活动列表
	 * @return 返回一个list集合
	 */
	public List<Map<String, Object>> getAllActivity();
	/**
	 * 获取可以报名的活动
	 * @return 可以报名的活动信息
	 */
	public List<Map<String, Object>> getActivity_Y();
}
