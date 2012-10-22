package com.matychen.grids.web.interceptor;

import java.util.Date;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

public class BindingInitializer implements WebBindingInitializer {
	// @InitBinder
	public void initBinder(WebDataBinder binder, WebRequest request) {
		binder.registerCustomEditor(Date.class, new DateConvertEditor());
	}

	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new DateConvertEditor());
		// binder.registerCustomEditor(Date.class, new
		// DateConvertEditor("yyyy-MM-dd"));
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
	}
}