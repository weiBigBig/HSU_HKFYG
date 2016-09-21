package com.djw.web.service;

import java.util.List;
import java.util.Map;


public interface StudentService{
	/*
	 * 学生登录
	 */
	public Map<String, Object> stuLogin(String stuName,String stuPass);
	/*
	 * 学生注册
	 * 姓名，性别，qq，学号，电话，身份证，邮箱，辅导员姓名，辅导员电话，系别，衣服尺寸，队伍，详细介绍
	 */
	public boolean stuRegist(String S_name,String S_gender,String S_qq,String S_id,String S_phone,
			String S_idcard,String S_email,String S_teacher,String S_teacher_tel,String S_system,
			String S_size,String S_team,String S_view);
	/*
	 * 通过学号查询详情
	 */
	public Map<String, Object> getStuInfo(String s_id);
	/**
	 * 将此用户可以报名的活动标注出来
	 * @return
	 */
	public List<Map<String, Object>> getStuEnroll_Y(String s_id);
	/*
	 * 学生报名
	 */
	public boolean stuEnroll(String s_id,String ac_id);
}
