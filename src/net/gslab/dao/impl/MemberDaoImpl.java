package net.gslab.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import net.gslab.dao.MemberDao;
import net.gslab.dao.UserDao;
import net.gslab.entity.Member;
import net.gslab.entity.User;

@SuppressWarnings("unchecked")
@Repository("memberDaoImpl")
public class MemberDaoImpl extends BaseDaoImpl<Member> implements MemberDao {
	
}
