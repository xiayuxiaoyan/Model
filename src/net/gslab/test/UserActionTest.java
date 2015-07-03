package net.gslab.test;

import static org.junit.Assert.*;
import net.gslab.service.UserService;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

public class UserActionTest extends JUnitActionBase {  
	@Autowired 
	private UserService service;  
    @Test  
    public void testUserShow() throws Exception{  
        MockHttpServletRequest request = new MockHttpServletRequest();  
        MockHttpServletResponse response = new MockHttpServletResponse();  
//        request.setServletPath("/userManager/user.show");  
//        request.addParameter("name", "张三");  
//        request.addParameter("password", "123456");  
//        request.setMethod("post");  
//        request.setAttribute("msg", "测试action成功");  
//        final ModelAndView mav = this.excuteAction(request, response);  
//        Assert.assertEquals("userManager/userlist", mav.getViewName());  
//        String msg=(String)request.getAttribute("msg");  
//        System.out.println(msg);  
        request.setServletPath("/view/register.jsp");  
        request.addParameter("username", "张三");  
        request.addParameter("password", "123456");  
        request.setMethod("post");  
        request.setAttribute("msg", "测试action成功");  
        final ModelAndView mav = this.excuteAction(request, response); 
        System.out.println("view:"+mav.getViewName());
        System.out.println(mav.getModel().get("username"));
        String msg=(String)request.getAttribute("msg");  
        System.out.println(msg);  
    }  
} 