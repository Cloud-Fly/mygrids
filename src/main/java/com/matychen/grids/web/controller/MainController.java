package com.matychen.grids.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 主要方法是
 * 
 * @author cx
 * @date 2011-7-4 上午10:38:14
 */
@Controller
public class MainController {

	/**
	 * 首页
	 */
	@RequestMapping("/")
	public String user() {
		return "index";
	}

	/**
	 * 定期交易查询
	 */
	@RequestMapping("/sigmagrid")
	public String regularEnquiry() {
		return "sigmagrid";
	}

	/**
	 * 活期交易查询
	 */
	@RequestMapping("/flexigrid")
	public String currentEnquiry() {
		return "flexigrid";
	}

	/**
	 * 行内账户转账
	 */
	@RequestMapping("/jquerygrid")
	public String jqueryGrid() {
		return "jqgrid";
	}
	/**
	 * 行内账户转账
	 */
	@RequestMapping("/datatables")
	public String accountTransfer() {
		return "datatables";
	}

}
