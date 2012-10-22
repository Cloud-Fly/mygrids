package com.matychen.common.jackjson.test;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ser.FilterProvider;
import org.codehaus.jackson.map.ser.impl.SimpleBeanPropertyFilter;
import org.codehaus.jackson.map.ser.impl.SimpleFilterProvider;

/**
 * 
 * 
 * @author cx
 * @date 2011-5-12 下午02:31:26
 */
public class MainTest {
	public static void main(String[] args) throws Exception {
		test1();
	}

	private static void test1() throws JsonGenerationException, JsonMappingException, IOException {
		User user = new User();
		user.setAge(23);
		user.setName("cx");
		user.setPassword("123456");
		ObjectMapper mapper = new ObjectMapper();
		FilterProvider filters = new SimpleFilterProvider().addFilter("myFilter",
				SimpleBeanPropertyFilter.serializeAllExcept("password"));
		// SimpleBeanPropertyFilter.filterOutAllExcept("password"));
		// and then serialize using that filter provider:
		String json = mapper.filteredWriter(filters).writeValueAsString(user);
		System.out.println(json);
	}
}
