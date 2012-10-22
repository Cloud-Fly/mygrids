package com.matychen.grids.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.matychen.grids.web.controller.WebConstants;

/**
 * 普通用户登陆拦截器
 * 
 * @author cx
 * @date 2011-3-13 下午09:02:00
 */
public class CommonUserLoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		// 如果session中没有user对象
		if (null == request.getSession().getAttribute(WebConstants.COMMON_USER_KEY_IN_SESSION)) {
			String requestedWith = request.getHeader("x-requested-with");
			// ajax请求
			if (requestedWith != null && "XMLHttpRequest".equals(requestedWith)) {
				response.getWriter().print("timeout");
			} else {
				// 普通页面请求
				response.sendRedirect(request.getContextPath());
			}
			return false;
		}
		return true;

	}

}
