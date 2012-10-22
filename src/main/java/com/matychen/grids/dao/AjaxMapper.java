package com.matychen.grids.dao;

import com.matychen.grids.pojo.Ajax;
import com.matychen.grids.pojo.Criteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AjaxMapper {
	/**
	 * 根据条件查询记录总数
	 */
	int countByExample(Criteria example);

	/**
	 * 根据条件删除记录
	 */
	int deleteByExample(Criteria example);

	/**
	 * 根据主键删除记录
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * 保存记录,不管记录里面的属性是否为空
	 */
	int insert(Ajax record);

	/**
	 * 保存属性不为空的记录
	 */
	int insertSelective(Ajax record);

	/**
	 * 根据条件查询记录集
	 */
	List<Ajax> selectByExample(Criteria example);

	/**
	 * 根据主键查询记录
	 */
	Ajax selectByPrimaryKey(Integer id);

	/**
	 * 根据条件更新属性不为空的记录
	 */
	int updateByExampleSelective(@Param("record") Ajax record, @Param("example") Criteria example);

	/**
	 * 根据条件更新记录
	 */
	int updateByExample(@Param("record") Ajax record, @Param("example") Criteria example);

	/**
	 * 根据主键更新属性不为空的记录
	 */
	int updateByPrimaryKeySelective(Ajax record);

	/**
	 * 根据主键更新记录
	 */
	int updateByPrimaryKey(Ajax record);
}