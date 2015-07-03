<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,net.gslab.entity.News" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻显示页面</title>
</head>
<body>
 show news page
 ${news}<br/>
 <%
 	List list = (List)request.getAttribute("news");
 	for(Iterator is=list.iterator();is.hasNext();)
 	{
 		News news = (News)is.next();
 		%>
 		<br/>
 		<% 
 		out.println(news.getNewsId());
 		out.println(news.getNewsName());
 		out.println(news.getPublishDate());
 		out.println(news.getPublishName());
 		out.println(news.getContent());
 	}
 %>
 <a href="index.jsp">返回主页</a>
 <a href="secretPage.jsp">访问内部网页</a>
</body>
</html>