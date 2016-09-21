/**
 * 
 */
package com.djw.web.controller.file.export;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.djw.web.common.BaseController;

/**
 * @author Mark
 *
 */
@Controller
public class entryForm extends BaseController{
	@RequestMapping(value="excel/export/entryForm")
	private void exportEntryForm(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException{
		String[] excelHeader={"姓名","性别","年级专业","T恤尺码","联系电话","QQ号码","身份证号","辅导员","辅导员电话","团队"};
		HSSFWorkbook wb=getServiceManager().getFileService().exportEntryForm(excelHeader);
		String fileName="测试报名信息表";
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/vnd.ms-excel");
		response.setHeader("Content-disposition", "attachment;filename="+new String(fileName.getBytes(),"ISO8859-1")+".xls");    
        OutputStream ouputStream;
		try {
			ouputStream = response.getOutputStream();
			 wb.write(ouputStream);    
		     ouputStream.flush();    
		     ouputStream.close(); 
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    
        
	}
}
