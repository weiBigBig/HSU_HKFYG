package com.djw.web.common;



import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.djw.web.Dao.DaoManager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

public class BaseService extends CommonBase{
	@Autowired
	private DaoManager daoManager;
	private JdbcTemplate jt=getJt();
	public DaoManager getDaoManager() {
		return daoManager;
	}
	/* NamedParameterJdbcTemplate */
	protected NamedParameterJdbcTemplate npjt;
	public void setNpjt(NamedParameterJdbcTemplate npjt) {
		this.npjt = npjt;
	}

	/* ValueStack */
	public ValueStack getValueStack() {
		return ActionContext.getContext().getValueStack();
	}

	/* PagingList */
	public PagingList getPagingList(String sql) {
		int pageNum = ((Integer) getValueStack().findValue("pageNum")).intValue();
		int pageSize = ((Integer) getValueStack().findValue("pageSize")).intValue();
		return new PagingList(sql, null, pageNum, pageSize, jt);
	}
	
	public PagingList getPagingList(String sql, Object[] params) {
		int pageNum = ((Integer) getValueStack().findValue("pageNum")).intValue();
		int pageSize = ((Integer) getValueStack().findValue("pageSize")).intValue();
		return new PagingList(sql, params, pageNum, pageSize, jt);
	}

	public PagingList getPagingList(String sql, Map namedParams) {
		int pageNum = ((Integer) getValueStack().findValue("pageNum")).intValue();
		int pageSize = ((Integer) getValueStack().findValue("pageSize")).intValue();
		return new PagingList(sql, namedParams, pageNum, pageSize, npjt);
	}
}
