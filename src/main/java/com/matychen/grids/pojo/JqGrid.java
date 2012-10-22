package com.matychen.grids.pojo;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 
 * @author chenxin
 * @date 2012-5-6 下午7:28:46
 */
public class JqGrid {

	private Boolean search;
	/** 每页显示条数. 这个值决定于 你创建grid时的设置 */
	private Integer pageSize;
	/** 当前页数 */
	private Integer page;
	/** 排序 desc\asc */
	private String sortOrder;
	/** 排序值 */
	private String sortValue;
	/** 具体数据 */
	private List<?> rows;
	/*Integer remainder = this.records % this.pageSize;
	Integer t = this.records / this.pageSize;
	this.setTotal(remainder > 0 ? t + 1 : t);*/
	/** 总页数 */
	private Integer total;
	/** 总行数 */
	private Integer records;
	/** 操作符 'eq','ne','lt','le','gt','ge','bw','bn','in','ni','ew','en','cn','nc' 见:grid.locale-cn.js */
	private String searchOper;
	/** 查询的字符串 */
	private String searchString;
	/** 查询的字段 */
	private String searchField;

	/** 查询条件存放的地方 */
	private Map<String,String> map;
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	public Boolean getSearch() {
		return search;
	}

	public void setSearch(Boolean search) {
		this.search = search;
	}

	/**
	 * @return 每页显示条数. 这个值决定于 你创建grid时的设置
	 */
	public Integer getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize
	 *            每页显示条数. 这个值决定于 你创建grid时的设置
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @return 当前页数
	 */
	public Integer getPage() {
		return page;
	}

	/**
	 * @param page
	 *            当前页数
	 */
	public void setPage(Integer page) {
		this.page = page;
	}

	/**
	 * @return 排序 desc\asc
	 */
	public String getSortOrder() {
		return sortOrder;
	}

	/**
	 * @param sortOrder
	 *            排序 desc\asc
	 */
	public void setSortOrder(String sortOrder) {
		this.sortOrder = sortOrder;
	}

	/**
	 * @return 排序值
	 */
	public String getSortValue() {
		return sortValue;
	}

	/**
	 * @param sortValue
	 *            排序值
	 */
	public void setSortValue(String sortValue) {
		this.sortValue = sortValue;
	}

	/**
	 * @return 具体数据
	 */
	public List<?> getRows() {
		return rows;
	}

	/**
	 * @param rows
	 *            具体数据
	 */
	public void setRows(List<?> rows) {
		this.rows = rows;
	}

	/**
	 * @return 总页数
	 */
	public Integer getTotal() {
		Integer remainder = this.records % this.pageSize;
		Integer t = this.records / this.pageSize;
		this.setTotal(remainder > 0 ? t + 1 : t);
		return total;
	}

	/**
	 * @param total
	 *            总页数
	 */
	public void setTotal(Integer total) {
		this.total = total;
	}

	/**
	 * @return 数据行总数
	 */
	public Integer getRecords() {
		return records;
	}

	/**
	 * @param records
	 *            数据行总数
	 */
	public void setRecords(Integer records) {
		this.records = records;
	}

	/**
	 * @return 操作符 'eq','ne','lt','le','gt','ge','bw','bn','in','ni','ew','en','cn','nc' 见:grid.locale-cn.js */
	public String getSearchOper() {
		return searchOper;
	}

	/**
	 * @param searchOper 操作符 'eq','ne','lt','le','gt','ge','bw','bn','in','ni','ew','en','cn','nc' 见:grid.locale-cn.js */
	public void setSearchOper(String searchOper) {
		this.searchOper = searchOper;
	}

	/**
	 * @return 查询的字符串 */
	public String getSearchString() {
		return searchString;
	}

	/**
	 * @param searchString 查询的字符串 */
	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}

	/**
	 * @return 查询的字段 */
	public String getSearchField() {
		return searchField;
	}

	/**
	 * @param searchField 查询的字段 */
	public void setSearchField(String searchField) {
		this.searchField = searchField;
	}

}
