package com.djw.web.DaoImpl;

import org.springframework.stereotype.Repository;

import com.djw.web.Dao.EnrollDao;
import com.djw.web.common.BaseDao;
@Repository
public class EnrollDaoImpl extends BaseDao implements EnrollDao{
	private static final String SAVE_ENROLLERINFO="INSERT INTO `student` (`S_ID`, `S_NAME`, `S_SEX`, `S_QQ`, `S_PHONE`, `S_PID`, `S_EMAIL`, `S_TNAME`, `S_TPHONE`, `S_DEPARTMENT`, `S_SIZE`, `S_TEAM`, `S_DETAIL`) "
			+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	@Override
	public boolean enrollInfo(String E_name, String E_gender, String E_qq, String E_id, String E_phone, String E_idcard,
			String E_email, String E_teacher, String E_teacher_tel, String E_system, String E_size, String E_team,
			String E_view) {
		// TODO Auto-generated method stub
		getJt().update(SAVE_ENROLLERINFO,new Object[]{E_id,E_name,E_gender,E_qq,E_phone,E_idcard,E_email,E_teacher,E_teacher_tel
				,E_system,E_size,E_team,E_view});
		return false;
	}

}
