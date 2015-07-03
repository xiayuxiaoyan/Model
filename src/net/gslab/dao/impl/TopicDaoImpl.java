package net.gslab.dao.impl;

import org.springframework.stereotype.Repository;

import net.gslab.dao.TopicDao;
import net.gslab.entity.Topic;
import net.gslab.setting.Page;

@Repository(value="topicDaoImpl")
public class TopicDaoImpl extends BaseDaoImpl<Topic> implements TopicDao {

}
