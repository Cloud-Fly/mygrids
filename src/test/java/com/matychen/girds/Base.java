package com.matychen.girds;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

/**
 * 基本测试类
 * 
 * @author cx
 * @date 2011-08-10 下午04:34:17
 */
@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/config/spring-*.xml" })
@TransactionConfiguration(defaultRollback = true)
public class Base extends AbstractTransactionalJUnit4SpringContextTests {

	@Override
	@Resource(name = "oracleDataSource")
	public void setDataSource(DataSource dataSource) {
		super.setDataSource(dataSource);
	}

	@Test
	public void testA(){
		
	}
}
