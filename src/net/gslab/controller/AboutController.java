package net.gslab.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.gslab.entity.Member;
import net.gslab.service.MemberService;
import net.gslab.service.UserService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/view")
public class AboutController extends BaseController {

	@Resource(name = "userServiceImpl")
	private UserService userService;
	
	@Resource(name = "memberServiceImpl")
	private MemberService memberService;

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public @ResponseBody List<Member> list(HttpServletRequest request,
			HttpServletResponse response,@RequestParam(value="groupName")String groupName) {
		System.out.println(groupName);
		System.out.println("in the AboutController");
		List<Member> memberLists = new ArrayList<Member>();


		memberLists = memberService.listMembers(groupName);

		if (memberService == null) {
			System.err.println("NUll userService in the About Controller");
		} else {
			for (int i = 0; i < memberLists.size(); i++) {
				Member member = memberLists.get(i);
				member.setImgUrl("../images/"+member.getImgUrl());
				//SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
				
				System.out.println(member.getBirthDate());
				System.out.println(member.getCategory());
			}
		}
		System.out.println();
		return memberLists;

	}

}
