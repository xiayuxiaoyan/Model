package net.gslab.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.gslab.entity.User;
import net.gslab.service.UserService;





import net.gslab.setting.CommonConstant;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/view")
public class LoginController extends BaseController{
	
	@Resource(name="userServiceImpl")
	private UserService userService;

	@RequestMapping(value="/doLogin",method=RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request,User user){
		//System.out.println("in the login");
		User dbUser = userService.getUserByName(user.getUserName());
		ModelAndView mav = new ModelAndView();
		//mav.addObject(ERROR_MSG_KEY,"一切正常");
		if(dbUser==null) {
			mav.addObject(ERROR_MSG_KEY, "用户名不存在");
			mav.setViewName("redirect:/common/resource_not_found.jsp");
			}
//		else if(!dbUser.getPassword().equals(user.getPassword())){
//			mav.addObject(ERROR_MSG_KEY,"用户密码不正确");
//			mav.setViewName("redirect:/common/resource_not_found.jsp");
//		}else{
//			dbUser.setLastIp(request.getRemoteAddr());
//			dbUser.setLastVisit(new Date());
			userService.loginSuccess(dbUser);
			this.setSessionUser(request, dbUser);
			String toUrl=(String)request.getSession().getAttribute(CommonConstant.LOGIN_TO_URL);
			//toUrl要访问的页面，由于拦截器，如果不能通过拦截器不能访问到正确的页面
			request.getSession().removeAttribute(CommonConstant.LOGIN_TO_URL);
			//mav.setViewName("success");//逻辑视图，与applicationContext-mvc下定义的viewResolver对应，不光前面，还有后面的Jsp也不能加
			//这里解析为：/view/success.jsp
			//System.out.println("用户申请跳转到页面："+toUrl);
			if(StringUtils.isEmpty(toUrl)){
				toUrl="/view/success.jsp";
			}
			mav.setViewName("redirect:"+toUrl);
		//}
		//System.out.println(ERROR_MSG_KEY);
		return mav;
	}
}
