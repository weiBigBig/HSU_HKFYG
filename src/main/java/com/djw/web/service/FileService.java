/**
 * 
 */
package com.djw.web.service;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;

/**
 * @author Mark
 *
 */
public interface FileService {
	public HSSFWorkbook exportEntryForm(String[] excelHeader);
}
