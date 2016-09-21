package com.djw.web.DaoImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.djw.web.Dao.ActivityDao;
import com.djw.web.common.BaseDao;
@Repository
public class ActivityDaoImpl extends BaseDao implements ActivityDao{
	/*
	 * 将活动id，名称，报名开始，截止时间，需要人数，工时，介绍插入存入数据库
	 */
	private static final String ADD_ACTIVITY="INSERT INTO `activities` (`AC_ID`, `AC_NAME`, `AC_NUMBER`, `AC_COMPANY`,`AC_BEGINTIME`, `AC_ENDTIME`, `AC_HOUR`, `AC_INTRO`) "
			+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	/*
	 * 查询今天发布过几个活动
	 */
	private static final String GET_AC_NUMBER="SELECT COUNT(*) FROM activities WHERE AC_BEGINTIME=?";
	@Override
	public boolean Ac_Issue(String ac_name, String ac_number, String ac_company, String ac_hour, String ac_begintime,
			String ac_endtime, String ac_starttime, String ac_introduce) {
		// TODO Auto-generated method stub
		String ac_id=null;
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
		String time=df.format(new Date().getTime());
		int count=getJt().queryForObject(GET_AC_NUMBER,new Object[]{time},Integer.class);
		ac_id=time.replace("-", "")+String.valueOf(count+1);
		System.out.println(ac_id);
		try {
			getJt().update(ADD_ACTIVITY,new Object[]{ac_id,ac_name,ac_number,ac_company,ac_begintime,ac_endtime,ac_hour,ac_introduce});
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("添加失败");
		}
		return false;
	}
	private static final String GET_ALL_ACTIVITY="SELECT * FROM activities";
	@Override
	public List<Map<String, Object>> getAllActivity() {
		try {
			return getJt().queryForList(GET_ALL_ACTIVITY);
			//return getPagingList(GET_ALL_ACTIVITY, null,pageNum);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("查询所有活动失败");
		}
		return null;
	}
	//获取还可以报名的活动
	private static final String GET_ACTIVITIES_Y="SELECT * FROM activities WHERE AC_ENDTIME>CURDATE()";
	@Override
	public List<Map<String, Object>> getActivity_Y() {
		try {
			return getJt().queryForList(GET_ACTIVITIES_Y);
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println(e);
			System.out.println("获取信息失败");
		}
		// TODO Auto-generated method stub
		return null;
	}

}
