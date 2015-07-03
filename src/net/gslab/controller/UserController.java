package net.gslab.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.gslab.entity.User;
import net.gslab.entity.User.ClassType;
import net.gslab.service.UserService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/view")
public class UserController extends BaseController {
	
	@Resource(name="userServiceImpl")
	private UserService userService;
	
	@RequestMapping(value="/userRegister",method=RequestMethod.POST)
	public String register(User user){
		System.out.println("in the userRigster of userController");
		System.out.println("u: "+user.getUserName());
		if(user!=null){
			user.setSetUpTime(new Date());
			user.setCheckUp(false);
			userService.register(user);
			}
		
		return "home";
	}
	
	@RequestMapping(value="/userListUnAuth",method=RequestMethod.GET)
	public ModelAndView showUnAuth(HttpServletRequest request){
		System.out.println("in the show");
		List<User> users=userService.listUsersByAuth("unauthorised");
		System.out.println("result num: "+users.size());
		ModelMap modelMap = new ModelMap();
		modelMap.addAttribute("users",users);
		return new ModelAndView("MA_applay",modelMap);
	}
	
	@RequestMapping(value="/userListAuth",method=RequestMethod.GET)
	public ModelAndView showAuth(HttpServletRequest request){
		System.out.println("in the show of Auth");
		List<User> users=userService.listUsersByAuth("authorised");
		System.out.println("result num: "+users.size());
		ModelMap modelMap = new ModelMap();
		modelMap.addAttribute("users",users);
		return new ModelAndView("MA_haveApplayed",modelMap);
	}
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public @ResponseBody User detailUser(int  userId){
		System.out.println("in the detailUser");
		User user = userService.search(userId);
		if(user!=null){
			System.out.println("查找成功");
			return user;
		}else{
			System.out.println("没有该用户");
			return null;
		}
	}


}
