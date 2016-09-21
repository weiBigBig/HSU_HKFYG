/**
 * 
 */
package com.djw.web.controller.validate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.djw.web.common.BaseService;

/**
 * @author Mark
 *
 */
@Controller
public class IsUserExist extends BaseService{
	@RequestMapping("/usernamevalidate")
	@ResponseBody
	private String usernameValidate(@RequestParam(value="name")String username){
		System.out.println(username);
		return "flase";
	}
}
