package net.gslab.controller;



import java.util.List;

import javax.annotation.Resource;

import net.gslab.entity.Member;
import net.gslab.entity.Member.Category;
import net.gslab.service.MemberService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;




@Controller(value="memberController")
@RequestMapping("/member")
public class MemberController extends BaseController{
	@Resource(name="memberServiceImpl")
	MemberService memberService;
	public MemberService getMemberService() {
		return memberService;
	}
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	@RequestMapping(value="/adduser",method=RequestMethod.POST)
	public boolean adduser(String loadname,String password,String password2,String category){
		Member member=new Member();
		if(password.equals(password2)){
			member.setLoadname(loadname);
			member.setPassword(password);
			member.setCategory(Category.valueOf(Category.class,category));
		if(member!=null){
			int id=memberService.findByType("user").size()+1;
			member.setMemberId(id);
			memberService.save(member);
		}
		return true;
		}
		return false;
	}
	
	@RequestMapping(value="/findAllmember",method=RequestMethod.GET)
	public @ResponseBody List<Member> findAllmember(){
		List<Member> members= memberService.findByType("member");
		return members;
				
	}
	
	@RequestMapping(value="/deleteMember",method=RequestMethod.POST)
	public void deleteMember(String studentId){
		String stat;
		if(true==memberService.delete(Integer.parseInt(studentId))){
	
		}
		
	}
	
	@RequestMapping(value="/findOne",method=RequestMethod.POST)
	public @ResponseBody Member findOne(String id){
		int i=Integer.parseInt(id);
		Member member=memberService.get(i);
		return member;
	}
	
	
}
