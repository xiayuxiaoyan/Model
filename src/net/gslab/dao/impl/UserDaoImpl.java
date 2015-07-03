package net.gslab.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import net.gslab.dao.UserDao;
import net.gslab.entity.User;

@Repository("userDaoImpl")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {
	public User getUserById(int id) {
		return this.get(id);
	}

	@Override
	public User getUserByName(String username) {
		Session session = getSession();//这里用了openSession()
		//hql采取面向对象的思想，比如User类，userName是类中变量
		String hql = "select u from User u where u.userName=?";
		Query query = session.createQuery(hql);
		query.setParameter(0, username);
		return (User) query.uniqueResult();
	}

	@Override
	public List<User> queryUserByUserName(String username) {
		// TODO Auto-generated method stub
		List<User> users = this.find("from User u where u.username=username");
		return users;
	}
	
	
}
