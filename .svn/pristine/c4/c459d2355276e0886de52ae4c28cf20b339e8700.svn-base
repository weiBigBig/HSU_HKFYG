package com.djw.web.common;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;


public class CommonBase {
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private JdbcTemplate jt;
	@Autowired
	private HttpServletResponse response;
	public JdbcTemplate getJt() {
		return jt;
	}
	public HttpServletRequest getRequest() {
		return request;
	}

	public HttpServletResponse getResponse() {
		return response;
	}
	public HttpSession getSession(){
		return request.getSession();
	}
	public String getBasePath(){
		return request.getContextPath();
	}
	
	/* NamedParameterJdbcTemplate */
	protected NamedParameterJdbcTemplate npjt;

	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.npjt = namedParameterJdbcTemplate;
	}

	/* PagingList */
/*	public PagingList getPagingList(String sql) {
		//return new PagingList(sql, null, pageNum, pageSize, jt);
	}*/
	
	public PagingList getPagingList(String sql, Object[] params,int pageNum) {
		return new PagingList(sql, params, 1, 1, jt);
	}

/*	public PagingList getPagingList(String sql, Map namedParams) {
		//return new PagingList(sql, namedParams, pageNum, pageSize, npjt);
	}*/
}
