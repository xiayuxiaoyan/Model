/*
 * Copyright 2005-2013 shopxx.net. All rights reserved.
 * Support: http://www.shopxx.net
 * License: http://www.shopxx.net/license
 */
package net.gslab.setting;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import net.gslab.entity.User;

public class Page<T> implements Serializable {
	private static final long serialVersionUID = -3930180379790344299L;

	private List<T> data;              // List数据
	private long totalCount;      		//总记录数
    private int pageSize;             //每页的记录数
	public Page(long totalCount,List data,int pageSize){
		this.totalCount = totalCount;
		this.data = data;
		this.pageSize=pageSize;
	}
	
	

	/**
	 * @param data the data to set
	 */
	public void setData(List<T> data) {
		this.data = data;
	}
	/**
	 * @return the data
	 */
	public List getData() {
		return data;
	}

	


	/**
	 * @return the pageSize
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	

	/**
	 * @return the totalCount
	 */
	public long getTotalCount() {
		return totalCount;
	}

	/**
	 * @param totalCount the totalCount to set
	 */
	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}