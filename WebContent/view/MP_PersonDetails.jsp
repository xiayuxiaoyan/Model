<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>高思实验室首页</title>
<link rel="stylesheet" type="text/css" href="../css/MP_PersonDetails.css">
<script src="../js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
/* 	$(document).ready(function(){
		alert("= =");
		var id=$("#stuid").val();
		$.post("/Model/member/findOne",{"id":id},function(result){
			var detail="<p>姓名：<span id=\"memberName\">"+result.memberName+"</span>学号：<span id=\"studentId\">"+result.memberId+"</span></p>"
		    +"<p>性别：<span id=\"gender\">"+result.gender+"</span>出生日期：<span id=\"birthday\">"+result.birthDate+"</span></p>"
		    +"<p>电话：<span id=\"mobilePhone\">"+result.mobilePhone+"</span>籍贯：<span id=\"address\">"+result.address+"</span></p>"
		    +"<p>邮箱：<span id=\"email\">"+result.email+"</span>分组：<span id=\"category\">"+result.category+"</span></p>"
		    +"<p>班级：<span id=\"classNo\">"+result.classNo+"</span>专业：<span id=\"major\">"+result.major+"</span></p>";
		    $("#addPerson").append(detail);
		},"json");
	}); */
</script>
</head>

<body>
	<input type="hidden" value=<%=request.getParameter("id") %> id="stuid"></input>
	<div class="addPerson">

  </div><!--end of addperson-->
  <script src="../js/mHome.js"></script>
  <script>
  function loadNewsList(num) //请求个人详细信息
  {
    loadXMLDoc("/Model/member/findOne",function()
       {
         if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
               var jsonStr=xmlhttp.responseText;
               var result=JSON.parse(jsonStr); 
               $("#addPerson").empty();
   				var detail="<p>姓名：<span id=\"memberName\">"+result.memberName+"</span>学号：<span id=\"studentId\">"+result.memberId+"</span></p>"
		    +"<p>性别：<span id=\"gender\">"+result.gender+"</span>出生日期：<span id=\"birthday\">"+result.birthDate+"</span></p>"
		    +"<p>电话：<span id=\"mobilePhone\">"+result.mobilePhone+"</span>籍贯：<span id=\"address\">"+result.address+"</span></p>"
		    +"<p>邮箱：<span id=\"email\">"+result.email+"</span>分组：<span id=\"category\">"+result.category+"</span></p>"
		    +"<p>班级：<span id=\"classNo\">"+result.classNo+"</span>专业：<span id=\"major\">"+result.major+"</span></p>";
		    $("#addPerson").append(detail);
            }
                         
       });
} 
  </script>

</body>
</html>