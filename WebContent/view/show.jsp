<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,net.gslab.entity.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>简历显示页面</title>
</head>
<body>
 show page
 ${users}<br/>
 <%
 	List list = (List)request.getAttribute("users");
 	for(Iterator is=list.iterator();is.hasNext();)
 	{
 		User user = (User)is.next();
 		%>
 		<br/>
 		<% 
 		out.println(user.getUserId());
 		out.println(user.getUserName());
 		out.println(user.getCredit());
 		out.println(user.getMajor());
 		out.println(user.getCategory().name());
 	}
 %>
 <a href="index.jsp">返回主页</a>
 <a href="secretPage.jsp">访问内部网页</a>
</body>
</html>