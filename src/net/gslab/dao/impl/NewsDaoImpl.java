package net.gslab.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.hibernate.Query;
import org.hibernate.Session;

import net.gslab.dao.NewsDao;
import net.gslab.entity.News;

@Repository(value="newsDaoImpl")
public class NewsDaoImpl extends BaseDaoImpl<News> implements NewsDao{
	
	@Override
    public News getNewsById(int id)//获取新闻
    {
		System.out.println("in the dao_getNewsById(id)");

    	
		return this.get(id);
    }
	
	@Override
	public News getNewsByID(int id) {
		// TODO Auto-generated method stub
		return this.get(id);
	}
	
	public List<News> queryNewsByNewsId(int id)//查找
	{
		
		List<News> news=this.find("from News u where u.id=id");
		
		return news;
		
	}

	

	

}
