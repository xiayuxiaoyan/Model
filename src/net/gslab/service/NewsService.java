package net.gslab.service;

import java.util.List;

import net.gslab.entity.News;

public interface NewsService extends BaseService<News>{
	 List<News> listNews();
	 public News getByID(int id);//获取新闻 
}
