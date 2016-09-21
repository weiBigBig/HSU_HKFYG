package com.djw.web.DaoImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.djw.web.Dao.StudentDao;
import com.djw.web.common.BaseDao;
import com.djw.web.common.Constants;
@Repository
public class StudentDaoImpl extends BaseDao implements StudentDao{
	//通过用户名和密码判断是否能够登陆
	private static final String STUDENT_LOGIN="select s_name,s_id from student where "
			+ "s_id=? and s_pass=?";
	@Override
	public Map<String, Object> stuLogin(String stuName, String stuPass) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<>();
		try {
			map=getJt().queryForMap(STUDENT_LOGIN,new Object[]{stuName,stuPass});
		} catch (Exception e) {
			System.out.println("没有此人");
			return null;
		}
		return map;
	}
	//插入学生信息
	private static final String SAVE_STUDENTINFO="INSERT INTO `student` (`S_ID`, `S_NAME`,`S_PASS`, `S_SEX`, `S_QQ`, `S_PHONE`, `S_PID`, `S_EMAIL`, `S_JOINTIME`,`S_TNAME`, `S_TPHONE`, `S_DEPARTMENT`, `S_SIZE`, `S_TEAM`, `S_DETAIL`) "
			+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
	@Override
	public boolean stuRegist(String S_name, String S_gender, String S_qq, String S_id, String S_phone, String S_idcard,
			String S_email, String S_teacher, String S_teacher_tel, String S_system, String S_size, String S_team,
			String S_view) {
		// TODO Auto-generated method stub
		SimpleDateFormat time=new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(time.format(new Date().getTime()));
		try {
			getJt().update(SAVE_STUDENTINFO,new Object[]{S_id,S_name,Constants.USER_INITIAL_PASSWORD,S_gender,S_qq,S_phone,S_idcard,S_email,time.format(new Date().getTime()),S_teacher,S_teacher_tel
				,S_system,S_size,S_team,S_view});
			return true;
		} catch (Exception e) {
			System.out.println("注册失败");
		}

		return false;
	}
	//查询学生详细信息
	private static final String GET_STUDENT_DETAIL_INFO="select * from student where s_id=?";
	@Override
	public Map<String, Object> getStuInfo(String s_id) {
		Map<String, Object> map=new HashMap<>();
		try {
			map=getJt().queryForMap(GET_STUDENT_DETAIL_INFO,new Object[]{s_id});
			return map;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("查询详情出错");
			return null;
		}
	}
	//学生报名
	private static final String SET_STUENROLL="INSERT INTO `enrol` (`S_ID`, `AC_ID`) VALUES (?, ?)";
	@Override
	public boolean stuEnroll(String s_id, String ac_id) {
		// TODO Auto-generated method stub
		try {
			getJt().update(SET_STUENROLL,new Object[]{s_id,ac_id});
			return true;
		} catch (Exception e) {
			System.err.println(e);
			System.out.println("报名失败");
		}
		return false;
	}
	//查询此用户可以报名的活动，并标注
	private static final String getStuEnroll_Y="SELECT s_id,ac_id FROM enrol WHERE s_id=?";
	@Override
	public List<Map<String, Object>> getStuEnroll_Y(String s_id) {
		try {
			List<Map<String, Object>> map=getJt().queryForList(getStuEnroll_Y,new Object[]{s_id});
		return map;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("对应表查询失败");
		}
		
		return null;
	}

}
