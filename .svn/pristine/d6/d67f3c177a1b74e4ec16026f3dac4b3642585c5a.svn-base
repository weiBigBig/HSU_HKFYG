package com.djw.web.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.djw.web.common.BaseService;
import com.djw.web.service.StudentService;
import com.djw.web.serviceImpl.ActivityServiceImpl;
@Service
public class StudentServiceImpl extends BaseService implements StudentService{

	@Override
	public Map<String, Object> stuLogin(String stuName, String stuPass) {
		return 	getDaoManager().getStudentDao().stuLogin(stuName, stuPass);
	}

	@Override
	public boolean stuRegist(String S_name, String S_gender, String S_qq, String S_id, String S_phone, String S_idcard,
			String S_email, String S_teacher, String S_teacher_tel, String S_system, String S_size, String S_team,
			String S_view) {
		return getDaoManager().getStudentDao().stuRegist(S_name, S_gender, S_qq, S_id, S_phone, S_idcard, S_email, S_teacher, S_teacher_tel, S_system, S_size, S_team, S_view);
	}

	@Override
	public Map<String, Object> getStuInfo(String s_id) {
		Map<String, Object> map=getDaoManager().getStudentDao().getStuInfo(s_id);
		map.put("s_teamName", teamChange(map.get("s_team").toString()));
		map.put("s_sizeName", sizeChange(map.get("s_size").toString()));
		map.put("s_departmentName", departmentChange(map.get("s_department").toString()));
		return map;
	}
	/**
	 * 将社团转化为相应中文
	 * @param team
	 * @return teamName
	 */
	private String teamChange(String team){
		String teamName=null;
		switch (team) {
		case "1":
			teamName="青协";
			break;
		case "2":
			teamName="学生会";
			break;
		case "3":
			teamName="社联";
			break;
		case "4":
			teamName="院团委";
			break;
		case "5":
			teamName="分团委";
			break;
		case "6":
			teamName="其他";
			break;
		case "7":
			teamName="个人";
			break;
		default:
			break;
		}
		return teamName;
	}
	/**
	 * 将衣服尺寸转化
	 * @param size
	 * @return sizeName
	 */
	private String sizeChange(String size){
		String sizeName=null;
		switch (size) {
		case "1":
			sizeName="S";
			break;
		case "2":
			sizeName="M";
			break;
		case "3":
			sizeName="L";
			break;
		case "4":
			sizeName="XL";
			break;
		case "5":
			sizeName="XXL";
			break;
		case "6":
			sizeName="XXXL";
			break;
		default:
			break;
		}
		return sizeName;
	}
	/**
	 * 将系别转化为中文
	 * @param department
	 * @return departmentName
	 */
	private String departmentChange(String department){
		String departmentName=null;
		switch (department) {
		case "1":
			departmentName="数艺系";
			break;
		case "2":
			departmentName="信管系";
			break;
		case "3":
			departmentName="计科系";
			break;
		case "4":
			departmentName="外语系";
			break;
		default:
			break;
		}
		return departmentName;
	}

	@Override
	public boolean stuEnroll(String s_id, String ac_id) {
		if (getDaoManager().getStudentDao().stuEnroll(s_id, ac_id)) {
			return true;
		}
		return false;
	}
	/**
	 * 对比筛选出学生已经报名的活动
	 * @return  List<Map<String,String>>
	 */
	@Override
	public List<Map<String, Object>> getStuEnroll_Y(String s_id) {
		//已经报名的信息
		List<Map<String, Object>> enrolled=getDaoManager().getStudentDao().getStuEnroll_Y(s_id);
		//所有活动
		List<Map<String, Object>> allAc=getDaoManager().getActivityDao().getAllActivity();
		if (enrolled.size()==0) {
			for (Map<String, Object> map : allAc) {
				map.put("enroll", "0");
			}
			return allAc;
		}else {
		//标记已经报名的活动
		for(int i=0;i<allAc.size();i++){
			for(int j=0;j<enrolled.size();j++){
			if (allAc.get(i).get("ac_id").equals(enrolled.get(j).get("ac_id"))) {
				allAc.get(i).put("enroll", "1");
				break;
			}else {
				allAc.get(i).put("enroll", "0");
			}
			}
		}
		}
		return allAc;
	}
}
