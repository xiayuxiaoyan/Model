package net.gslab.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import net.gslab.dao.BaseDao;
import net.gslab.dao.MemberDao;
import net.gslab.entity.Member;
import net.gslab.service.MemberService;

@Service("memberServiceImpl")
public class MemberServiceImpl extends BaseServiceImpl<Member> implements MemberService{

	
	MemberDao memberDao;
	
/*	@Override
	public void setBaseDao(BaseDao<Member> memberDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(memberDao);
		this.memberDao=(MemberDao) memberDao;
	}*/


	public MemberDao getMemberDao() {
		return memberDao;
	}
	@Resource(name = "memberDaoImpl")
	public void setMemberDao(MemberDao memberDao) {
		super.setBaseDao(memberDao);
		this.memberDao = memberDao;
	}

	public List<Member> listMembers(String groupName){
		int groupId;
		if(groupName.equals("fep")){
			groupId=0;
		}else if(groupName.equals("xnn")){
			groupId=1;
		}else if(groupName.equals("vlab")){
			groupId=2;
		}else if(groupName.equals("ome")){
			groupId=3;
		}else{
			groupId=4;
		}
		System.out.println("in the UserServiceImpl"+groupName);
		List<Member> members = memberDao.find("from Member m where m.category="+groupId);
		System.out.println(members.size());
		return members;
	}
	
	public List<Member> findByType(String type){  
		if(type.equals("user")) return memberDao.find("from Member where loadname is not null");
		if(type.equals("member")) return memberDao.find("from Member where memberName is not null");
		else return memberDao.find("from Member");
	}
	public void save(Member member){
		memberDao.save(member);
	}
}
