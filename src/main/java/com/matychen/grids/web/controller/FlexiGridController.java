package com.matychen.grids.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.matychen.common.flexigrid.FlexiGrid;
import com.matychen.common.jackjson.JackJson;
import com.matychen.grids.service.AjaxService;
import com.matychen.grids.web.interceptor.DateConvertEditor;

/**
 *
 *
 * @author cx
 * @date 2011-8-1 下午1:58:10
 */
@RequestMapping("/flexigrid")
@Controller
public class FlexiGridController {
	private static final Logger logger = LoggerFactory.getLogger(FlexiGridController.class);

	@Autowired
	private AjaxService ajaxService;

	private FlexiGrid flexigrid;

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

	@RequestMapping("/all")
	@ResponseBody
	public Object selectAll(@RequestParam String _fg_json) {
		logger.info("selectAll(String) - String _fg_json=" + _fg_json);
		this.flexigrid = JackJson.fromJsonToObject(_fg_json, FlexiGrid.class);
		return this.ajaxService.selectByFlexiGrid(flexigrid);
	}
	@RequestMapping("/flex")
	public void flexTest(HttpServletResponse response,@RequestParam String name) throws IOException{
		PrintWriter pw=response.getWriter();
		pw.write("hello1 "+name);
		pw.flush();
		pw.close();
	}
}
