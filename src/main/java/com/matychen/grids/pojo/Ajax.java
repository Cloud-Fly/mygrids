package com.matychen.grids.pojo;

import java.io.Serializable;
import java.util.Date;

import org.codehaus.jackson.map.annotate.JsonDeserialize;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import com.matychen.common.jackjson.CustomDateTimeDeserializer;
import com.matychen.common.jackjson.CustomDateTimeSerializer;

/**
 * 
 * @author cx
 * @date 2011-8-19 下午2:29:47
 */
public class Ajax implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer id;

	/**
	 * 内核引擎
	 */
	private String engine;

	/**
	 * 浏览器
	 */
	private String browser;

	/**
	 * 平台
	 */
	private String platform;

	/**
	 * 版本
	 */
	private Float version;

	/**
	 * 评级
	 */
	private String grade;

	/**
	 * 时间
	 */
	private Date datetime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return 内核引擎
	 */
	public String getEngine() {
		return engine;
	}

	/**
	 * @param engine
	 *            内核引擎
	 */
	public void setEngine(String engine) {
		this.engine = engine;
	}

	/**
	 * @return 浏览器
	 */
	public String getBrowser() {
		return browser;
	}

	/**
	 * @param browser
	 *            浏览器
	 */
	public void setBrowser(String browser) {
		this.browser = browser;
	}

	/**
	 * @return 平台
	 */
	public String getPlatform() {
		return platform;
	}

	/**
	 * @param platform
	 *            平台
	 */
	public void setPlatform(String platform) {
		this.platform = platform;
	}

	/**
	 * @return 版本
	 */
	public Float getVersion() {
		return version;
	}

	/**
	 * @param version
	 *            版本
	 */
	public void setVersion(Float version) {
		this.version = version;
	}

	/**
	 * @return 评级
	 */
	public String getGrade() {
		return grade;
	}

	/**
	 * @param grade
	 *            评级
	 */
	public void setGrade(String grade) {
		this.grade = grade;
	}

	/**
	 * @return 时间
	 */
	@JsonSerialize(using = CustomDateTimeSerializer.class)
	public Date getDatetime() {
		return datetime;
	}

	/**
	 * @param datetime
	 *            时间
	 */
	@JsonDeserialize(using = CustomDateTimeDeserializer.class)
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
}