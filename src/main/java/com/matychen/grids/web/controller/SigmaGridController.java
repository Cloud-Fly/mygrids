package com.matychen.grids.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.type.TypeReference;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.matychen.common.jackjson.JackJson;
import com.matychen.common.sigmagrid.SGReturn;
import com.matychen.common.sigmagrid.SigmaGrid;
import com.matychen.grids.pojo.Ajax;
import com.matychen.grids.service.AjaxService;
import com.matychen.grids.web.interceptor.DateConvertEditor;

/**
 * SigmaGrid
 *
 * @author cx
 * @date 2011-7-27 上午9:44:24
 */
@RequestMapping("/sigmagrid")
@Controller
public class SigmaGridController {
	private static final Logger logger = LoggerFactory
			.getLogger(SigmaGridController.class);

	@Autowired
	private AjaxService ajaxService;

	private SigmaGrid<Ajax> sigma;

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
	public SGReturn selectAll(@RequestParam String _gt_json) {
		logger.info(" _gt_json={}", _gt_json);
		sigma = JackJson.fromJsonToObject(_gt_json,
				new TypeReference<SigmaGrid<Ajax>>() {
				});
		sigma = this.ajaxService.selectBySigmaGrid(sigma);

		return new SGReturn(sigma.getData(), sigma.getPageInfo());
	}

	@RequestMapping("/all2")
	public void selectAll2(@RequestParam String _gt_json,
			HttpServletResponse response) {
		logger.info(" _gt_json={}", _gt_json);
		sigma = JackJson.fromJsonToObject(_gt_json,
				new TypeReference<SigmaGrid<Ajax>>() {
				});
		sigma = this.ajaxService.selectBySigmaGrid(sigma);

		SGReturn sgReturn=new SGReturn(sigma.getData(), sigma.getPageInfo());
		String json=JackJson.fromObjectHasDateToJson(sgReturn);
		PrintWriter pw=null;
		try {
			pw = response.getWriter();
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			logger.error("Exception:",e);
		} finally {
			pw.close();
		}
	}

	/**
	 * 增加、删除、修改
	 *
	 * @param gtjson
	 * @return
	 */
	@RequestMapping(value = "/save")
	@ResponseBody
	public Map<String, Object> updateBySigmaGrid(@RequestParam String _gt_json) {
		Map<String, Object> map = new HashMap<String, Object>();
		logger.info(" gtjson={}", _gt_json);
		sigma = JackJson.fromJsonToObject(_gt_json,
				new TypeReference<SigmaGrid<Ajax>>() {
				});
		try {
			this.ajaxService.updateBySigmaGrid(sigma);
			map.put("success", true);
		} catch (Exception e) {
			logger.error("Exception: ", e);
			map.put("success", false);
			map.put("exception", e);
		}
		return map;
	}
}
