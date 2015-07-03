package net.gslab.dao;

import net.gslab.entity.News;
import java.util.List;

public interface NewsDao extends BaseDao<News> {
	public News getNewsByID(int id);//获取新闻
	
	public List<News> queryNewsByNewsId(int id);//查找

	public News getNewsById(int id);
   
	
}
