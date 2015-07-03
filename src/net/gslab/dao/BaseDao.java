package net.gslab.dao;

import java.io.Serializable;
import java.util.List;

import net.gslab.setting.Page;

public interface BaseDao<T> {

	public abstract T load(Serializable id);

	public abstract List<T> loadAll();

	public abstract void save(T entity);

	public abstract boolean remove(T entity);

	public abstract void update(T entity);

	public abstract List<T> find(String hql);

	public abstract List<T> find(String hql, Object... params);
	public abstract Class<T> getEntityClass();
	public abstract int getCount(String hql);
	public abstract Page<T> getPage(int pageIndex,int pageSize);
    public abstract Page<T> getPage(final String hql,int pageIndex,int pageSize);

	public abstract T get(Serializable id);
	
}