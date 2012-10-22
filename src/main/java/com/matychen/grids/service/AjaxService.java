package com.matychen.grids.service;

import java.util.List;

import com.matychen.common.datatable.DataTable;
import com.matychen.common.datatable.DataTableReturn;
import com.matychen.common.flexigrid.FlexiGrid;
import com.matychen.common.sigmagrid.SigmaGrid;
import com.matychen.grids.pojo.Ajax;
import com.matychen.grids.pojo.Criteria;
import com.matychen.grids.pojo.JQReturn;
import com.matychen.grids.pojo.JqGrid;

public interface AjaxService {

	DataTableReturn selectByDatatables(DataTable dataTable);

	FlexiGrid selectByFlexiGrid(FlexiGrid flexigrid);
	
	SigmaGrid<Ajax> selectBySigmaGrid(SigmaGrid<Ajax> sigma);

	/**
	 * 更新或者增加对象
	 * 
	 * @param ajax
	 * @return
	 * @throws Exception
	 */
	JQReturn updateOrSave(Ajax ajax);

	/**
	 * sigma的增删改
	 * 
	 * @param sigma
	 */
	void updateBySigmaGrid(SigmaGrid<Ajax> sigma);
	
	int countByExample(Criteria example);

	Ajax selectByPrimaryKey(Integer id);
	
	JqGrid selectByJqGrid(JqGrid jqGrid);

	List<Ajax> selectByExample(Criteria example);

	int deleteByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Ajax record);

	int updateByPrimaryKey(Ajax record);

	int deleteByExample(Criteria example);

	int updateByExampleSelective(Ajax record, Criteria example);

	int updateByExample(Ajax record, Criteria example);

	int insert(Ajax record);

	int insertSelective(Ajax record);
}