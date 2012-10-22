package com.matychen.grids.service.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.matychen.common.datatable.DataTable;
import com.matychen.common.datatable.DataTableReturn;
import com.matychen.common.datatable.SortInfo;
import com.matychen.common.flexigrid.Addparams;
import com.matychen.common.flexigrid.FlexiGrid;
import com.matychen.common.grid.Grids;
import com.matychen.common.sigmagrid.SigmaGrid;
import com.matychen.grids.dao.AjaxMapper;
import com.matychen.grids.pojo.Ajax;
import com.matychen.grids.pojo.Criteria;
import com.matychen.grids.pojo.JQReturn;
import com.matychen.grids.pojo.JqGrid;
import com.matychen.grids.service.AjaxService;

@Service
public class AjaxServiceImpl implements AjaxService {
	@Autowired
	private AjaxMapper ajaxMapper;

	private static final Logger logger = LoggerFactory.getLogger(AjaxServiceImpl.class);

	public int countByExample(Criteria example) {
		int count = this.ajaxMapper.countByExample(example);
		logger.debug("count: {}", count);
		return count;
	}

	public Ajax selectByPrimaryKey(Integer id) {
		return this.ajaxMapper.selectByPrimaryKey(id);
	}

	public List<Ajax> selectByExample(Criteria example) {
		return this.ajaxMapper.selectByExample(example);
	}

	public int deleteByPrimaryKey(Integer id) {
		return this.ajaxMapper.deleteByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Ajax record) {
		return this.ajaxMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Ajax record) {
		return this.ajaxMapper.updateByPrimaryKey(record);
	}

	public int deleteByExample(Criteria example) {
		return this.ajaxMapper.deleteByExample(example);
	}

	public int updateByExampleSelective(Ajax record, Criteria example) {
		return this.ajaxMapper.updateByExampleSelective(record, example);
	}

	public int updateByExample(Ajax record, Criteria example) {
		return this.ajaxMapper.updateByExample(record, example);
	}

	public int insert(Ajax record) {
		return this.ajaxMapper.insert(record);
	}

	public int insertSelective(Ajax record) {
		return this.ajaxMapper.insertSelective(record);
	}

	@Override
	public DataTableReturn selectByDatatables(DataTable dataTable) {
		Criteria criteria = new Criteria();
		DataTableReturn tableReturn = new DataTableReturn();
		tableReturn.setsEcho(dataTable.getEcho());

		criteria.setMysqlLength(dataTable.getDisplayLength());
		criteria.setMysqlOffset(dataTable.getDisplayStart());

		// 排序
		if (null != dataTable.getSortInfo()) {
			StringBuffer order = new StringBuffer();
			List<SortInfo> list = dataTable.getSortInfo();
			for (int i = 0; i < list.size(); i++) {
				SortInfo si = list.get(i);
				order.append(si.getColumnId()).append(' ').append(si.getSortOrder()).append(',');
			}
			logger.debug("order:{}", order.toString());
			criteria.setOrderByClause(order.substring(0, order.length() - 1));
		}
		// 模糊查询
		if (StringUtils.isNotBlank(dataTable.getSearch())) {
			criteria.put("search", dataTable.getSearch());
		}

		List<Ajax> list = this.ajaxMapper.selectByExample(criteria);
		tableReturn.setAaData(list);

		Integer count = this.ajaxMapper.countByExample(criteria);
		tableReturn.setiTotalDisplayRecords(count);
		tableReturn.setiTotalRecords(count);

		return tableReturn;
	}

	@Override
	@Transactional
	public JQReturn updateOrSave(Ajax ajax) {
		if (null != ajax.getId()) {
			// 更新操作
			this.ajaxMapper.updateByPrimaryKey(ajax);
			return new JQReturn(true, "保存成功!");
		} else {
			// 新增操作
			this.ajaxMapper.insert(ajax);
			return new JQReturn(true, "添加成功!");
		}
	}

	@Override
	public FlexiGrid selectByFlexiGrid(FlexiGrid flexigrid) {
		Criteria criteria = new Criteria();
		// 设置分页信息
		criteria.setMysqlLength(flexigrid.getPagesize());
		criteria.setMysqlOffset((flexigrid.getPage() - 1) * flexigrid.getPagesize());
		// 设置排序
		if (StringUtils.isNotBlank(flexigrid.getSortname()) && StringUtils.isNotBlank(flexigrid.getSortorder())) {
			if ("id".equals(flexigrid.getSortname())) {
				// 怕排序字段与数据库的字段不一致时要做判断
				criteria.setOrderByClause(" id " + flexigrid.getSortorder());
			} else {
				criteria.setOrderByClause(flexigrid.getSortname() + " " + flexigrid.getSortorder());
			}
		}
		// 条件查询
		if (null != flexigrid.getAddparams()) {
			List<Addparams> params = flexigrid.getAddparams();
			for (int i = 0; i < params.size(); i++) {
				if ("datetime".equals(params.get(i).getName())) {
					criteria.put("datetime", params.get(i).getValue());
				} else {
					criteria.put(params.get(i).getName(), params.get(i).getValue());
				}
			}
		}

		List<Ajax> list = this.ajaxMapper.selectByExample(criteria);
		flexigrid.setRows(list);

		Integer count = this.ajaxMapper.countByExample(criteria);
		flexigrid.setTotal(count);

		return flexigrid;
	}

	@Override
	public JqGrid selectByJqGrid(JqGrid jqGrid) {
		Criteria example = new Criteria();
		// 分页
		example.setMysqlLength(jqGrid.getPageSize());
		example.setMysqlOffset(jqGrid.getPageSize() * (jqGrid.getPage() - 1));
		// 排序
		if ("desc".equalsIgnoreCase(jqGrid.getSortOrder()) || "asc".equalsIgnoreCase(jqGrid.getSortOrder())) {
			if(StringUtils.isNotBlank(jqGrid.getSortValue())){
				example.setOrderByClause(Grids.toClumn(jqGrid.getSortValue())+' '+jqGrid.getSortOrder());
			}
		}
		// 查询出所有的记录
		List<Ajax> list = this.ajaxMapper.selectByExample(example);
		jqGrid.setRows(list);
		// 总数
		Integer count = this.ajaxMapper.countByExample(example);
		logger.debug("count:{}", count);
		jqGrid.setRecords(count);

		return jqGrid;
	}

	@Override
	public SigmaGrid<Ajax> selectBySigmaGrid(SigmaGrid<Ajax> sigma) {
		// TODO Auto-generated method stub
		Criteria example = new Criteria();
		// oracle排序
		example.setMysqlLength(sigma.getPageInfo().getPageSize());
		example.setMysqlOffset(sigma.getPageInfo().getPageSize() * (sigma.getPageInfo().getPageNum() - 1));
		// 组装排序信息
		StringBuilder order = new StringBuilder();
		for (int i = 0; i < sigma.getSortInfo().size(); i++) {
			String fieldName = sigma.getSortInfo().get(i).getFieldName();
			String sortOrder = sigma.getSortInfo().get(i).getSortOrder();
			// 升序或者降序的时候
			if (!"defaultsort".equals(sortOrder) && !"".equals(sortOrder))
				order.append(Grids.toClumn(fieldName)).append(' ').append(sortOrder).append(',');
		}
		// 去掉最后一个逗号并设置排序
		if (null != order) {
			example.setOrderByClause(order.substring(0, order.length() - 1));
		}

		// TODO:条件查询

		// 查询出所有的记录
		List<Ajax> list = this.ajaxMapper.selectByExample(example);
		sigma.setData(list);
		// 总数
		Integer count = this.ajaxMapper.countByExample(example);
		logger.debug("count:{}", count);
		sigma.getPageInfo().setTotalRowNum(count);

		return sigma;
	}

	@Override
	@Transactional
	public void updateBySigmaGrid(SigmaGrid<Ajax> sigma) {
		List<Ajax> list = null;
		list = sigma.getInsertedRecords();
		if (null != list) {
			for (int i = 0; i < list.size(); i++) {
				this.ajaxMapper.insert(list.get(i));
			}
		}
		list = sigma.getUpdatedFields();
		if (null != list) {
			for (int i = 0; i < list.size(); i++) {
				this.ajaxMapper.updateByPrimaryKeySelective(list.get(i));
			}
		}
		list = sigma.getDeletedRecords();
		if (null != list) {
			for (int i = 0; i < list.size(); i++) {
				// 最后删除自己
				this.ajaxMapper.deleteByPrimaryKey(list.get(i).getId());
			}
		}
	}

}