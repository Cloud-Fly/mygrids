package com.matychen.grids.web.controller;

import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.matychen.common.datatable.DataTable;
import com.matychen.common.datatable.DataTableReturn;
import com.matychen.common.jackjson.JackJson;
import com.matychen.grids.pojo.Ajax;
import com.matychen.grids.pojo.JQReturn;
import com.matychen.grids.service.AjaxService;
import com.matychen.grids.web.interceptor.DateConvertEditor;

/**
 * datatables
 * 
 * @author cx
 * @date 2011-7-27 上午9:44:24
 */
@RequestMapping("datatable/*")
@Controller
public class DataTableController {
	private static final Logger logger = LoggerFactory.getLogger(DataTableController.class);

	@Autowired
	private AjaxService ajaxService;

	private DataTable dataTable;

	/**
	 * 日期转换
	 * 
	 * @param binder
	 */
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new DateConvertEditor());
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
	}

	@RequestMapping("all")
	@ResponseBody
	public Object select(@RequestParam("_dt_json") String dtjson) {
		logger.info("String dtjson=" + dtjson);
		this.dataTable = JackJson.fromJsonToObject(dtjson, DataTable.class);

		DataTableReturn tableReturn = this.ajaxService.selectByDatatables(dataTable);

		return tableReturn;
	}

	@RequestMapping("save")
	@ResponseBody
	public Object saveOrUpdate(Ajax ajax) {
		if (StringUtils.isBlank(ajax.getEngine())) {
			return new JQReturn(false, "内核引擎不能为空!");
		}
		try {
			return this.ajaxService.updateOrSave(ajax);
		} catch (Exception e) {
			logger.error("Exception: ", e);
			return new JQReturn(false, "系统繁忙，请稍候再试!");
		}
	}

	@RequestMapping("del/{id}")
	@ResponseBody
	public Object delete(@PathVariable Integer id) {
		if (id == null) {
			return new JQReturn(false, "主键不能为空!");
		}
		try {
			if (this.ajaxService.deleteByPrimaryKey(id) == 1) {
				return new JQReturn(true, "删除成功!");
			} else {
				return new JQReturn(false, "删除失败!");
			}
		} catch (Exception e) {
			logger.error("Exception: ", e);
			return new JQReturn(false, "系统繁忙，请稍候再试!");
		}
	}
}
