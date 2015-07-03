package net.gslab.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.gslab.entity.User;
import net.gslab.service.UserService;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController extends BaseController {
	@Resource(name="userServiceImpl")
	private UserService userService;

	@RequestMapping(value="/userRegister",method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,User user){
		System.out.println("in the register controller");
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("/success");
		mav.addObject("username", user.getUserName());
		if(user==null) System.out.println("null user");
		this.setSessionUser(request, user);
		userService.register(user);
		return mav;
	}

}
