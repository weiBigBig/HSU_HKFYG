/**
 * 
 */
package com.djw.web.serviceImpl;


import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Service;

import com.djw.web.common.ExcelExport;
import com.djw.web.service.FileService;

/**
 * @author Mark
 *
 */
@Service
public class exportEntryFormImpl extends ExcelExport implements FileService {

	/* (non-Javadoc)
	 * @see com.djw.web.service.FileService#exportEntryForm()
	 */
	@Override
	public HSSFWorkbook exportEntryForm(String[] excelHeader) {
		HSSFWorkbook wb=dataToExcle(excelHeader);
		return wb;
	}

}
