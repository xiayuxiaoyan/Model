package net.gslab.test;

import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;

import net.gslab.dao.TopicDao;
import net.gslab.entity.Topic;
import net.gslab.setting.Page;




  
public class TopicDaoTest extends JUnitDaoBase{
	@Resource(name="topicDaoImpl")
	private TopicDao topicDaoImpl;
	
	@Test
	public void test(){
		//Page p = topicDaoImpl.getPagedTopics(1, 1, 2);
//		Page p = topicDaoImpl.getBoardDigestTopics(1, 1, 2);
//		System.out.println(p.getData());
		//Topic topic = new Topic(1,"AmazingTopic",1,new Date(),new Date(),0,0,Topic.Digest.Y);
		//System.out.println(topic.getTopicTitle());
	}

}
