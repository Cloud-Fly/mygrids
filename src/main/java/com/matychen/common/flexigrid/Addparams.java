package com.matychen.common.flexigrid;

import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * flexigrid的附加查询条件
 * 
 * @author cx
 * @date 2010-7-1 上午11:39:38
 */
public class Addparams {

	/** 查询的名称 */
	private String name;
	/** 查询的值 */
	private Object value;

	public String toString() {
		// MULTI_LINE_STYLE
		return ReflectionToStringBuilder.toString(this, ToStringStyle.SHORT_PREFIX_STYLE, true, true);
	}

	/**
	 * @return 查询的名称
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            查询的名称
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return 查询的值
	 */
	public Object getValue() {
		return value;
	}

	/**
	 * @param value
	 *            查询的值
	 */
	public void setValue(Object value) {
		this.value = value;
	}
}
