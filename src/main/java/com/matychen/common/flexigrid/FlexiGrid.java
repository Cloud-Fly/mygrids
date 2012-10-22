package com.matychen.common.flexigrid;

import java.util.List;

import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * flexigrid的一些参数
 * 
 * @author cx
 * @date 2010-7-1 上午11:32:33
 */
public class FlexiGrid {

	/** 当前第几页 */
	private Integer page;
	/** 每页大小 */
	private Integer pagesize;
	/** 排序的列名 */
	private String sortname;
	/** 升序或者降序; desc;asc */
	private String sortorder;
	/** 附件的查询条件 */
	private List<Addparams> addparams;
	/** 总数多少 */
	private Integer total;
	/** 查询出来的数据 */
	private List<?> rows;

	public String toString() {
		// MULTI_LINE_STYLE
		return ReflectionToStringBuilder.toString(this, ToStringStyle.SHORT_PREFIX_STYLE, true, true);
	}

	/**
	 * @return 返回给页面需要用的
	 */
	public Integer getPage() {
		return page;
	}

	/**
	 * @param page
	 *            返回给页面需要用的
	 */
	public void setPage(Integer page) {
		this.page = page;
	}

	/**
	 * @return 每页大小
	 */
	public Integer getPagesize() {
		return pagesize;
	}

	/**
	 * @param pagesize
	 *            每页大小
	 */
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}

	/**
	 * @return 排序的列名
	 */
	public String getSortname() {
		return sortname;
	}

	/**
	 * @param sortname
	 *            排序的列名
	 */
	public void setSortname(String sortname) {
		this.sortname = sortname;
	}

	/**
	 * @return 升序或者降序; desc;asc
	 */
	public String getSortorder() {
		return sortorder;
	}

	/**
	 * @param sortorder
	 *            升序或者降序; desc;asc
	 */
	public void setSortorder(String sortorder) {
		this.sortorder = sortorder;
	}

	/**
	 * @return 附件的查询条件
	 */
	public List<Addparams> getAddparams() {
		return addparams;
	}

	/**
	 * @param addparams
	 *            附件的查询条件
	 */
	public void setAddparams(List<Addparams> addparams) {
		this.addparams = addparams;
	}

	/**
	 * @return 总数多少
	 */
	public Integer getTotal() {
		return total;
	}

	/**
	 * @param total
	 *            总数多少
	 */
	public void setTotal(Integer total) {
		this.total = total;
	}

	/**
	 * @return 查询出来的数据
	 */
	public List<?> getRows() {
		return rows;
	}

	/**
	 * @param rows
	 *            查询出来的数据
	 */
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
}
